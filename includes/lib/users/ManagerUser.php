<?php
namespace includes\lib\users;

use System\DI;
use System\Session;
use CS\Users\UsersManager as Manager;
use CS\Users\UsersNotes as UsersNotes;
use CS\Users\UserAlreadyExistsException as UserAlreadyExistsException;
use CS\Users\UserNotFoundException as UserNotFoundException;
USE CS\Users\InvalidPasswordException as InvalidPasswordException;
use CS\Users\UserLockedException as UserLockedException;

use CS\Users\InvalidSenderObjectException as InvalidSenderObjectException; // exception sender mail

defined('PATH') or define('PATH',dirname(__FILE__));
require_once dirname( dirname( dirname( PATH ) ) ).'/vendor/autoload.php';

class ManagerUser extends Manager 
{
    const SITE_ID = SITE_ID;
    const LANG = 'en-GB';
    const ERROR_USER_ALREADY_EXISTS_EXCEPTION = 'Your email address is already registered with Pumpic. Restore <a href="https://cp.pumpic.com/lostPassword">password</a>.'; // This email exists already.
    const ERROR_ACCOUNT_LOCK = 'Your account is locked. The instructions on how to unlock your account were sent to your email.';
    
    static $_obj;
    
    protected $_pdo;
    private $_params;
    
    private $_data; // cache user
    private $_respons = array(
        '_error' => false,
        '_success' => false
    ); // cache messange
    
    protected $_session;
    protected $_di;
    private $_auth;
    protected $_mail_sender;
    
    protected $_dbblog;
    
    protected $mail_processor;
    
    public function __construct( $settings = array() ) 
    {
        $this -> _di = \di();
        $this -> _session = $this -> _di -> get('session');
        $this -> _auth = $this -> _di -> get('auth');
        $this -> _pdo =  $this -> _di -> get('db');
        $this -> _mail_sender = $this -> _di -> get('mailSender');
        $this -> _dbblog = $this->_di->get('dbBlog');
        
        parent::__construct($this -> _pdo);
        parent::setSender( $this -> _mail_sender ); // init mail sender
        
        self::$_obj = $this;
        
        $this -> _initAfter( $settings );
        
        return self::$_obj;
    }
    
    public function _initAfter(Array $_settings) 
    {
        return self::init($_settings);
    }
    
    public static function init(Array $_settings ) 
    {
           return self::$_obj -> setParams($_settings);
    }
    
    public function __get($name) 
    {
        $getter = 'get' . ucfirst($name);
        if (method_exists($this, $getter)) {
            return $this->$getter();
        } 
        if (method_exists($this, 'set' . ucfirst($name))) {
            throw new \Exception('Getting write-only property: ' . get_class($this) . '::' . $name);
        } else {
            throw new \Exception('Getting unknown property: ' . get_class($this) . '::' . $name);
        }
    }
    
    public function __set($name, $value) 
    {
        $setter = 'set' . ucfirst($name);
        if (method_exists($this, $setter)) {
            // set property
            $this->$setter($value);
            return;
        } 
        if (method_exists($this, 'get' . ucfirst($name))) {
            throw new \Exception('Setting read-only property: ' . get_class($this) . '::' . $name);
        } else {
            throw new \Exception('Setting unknown property: ' . get_class($this) . '::' . $name);
        }
    }
    
    public function __isset($name) 
    {
        $getter = 'get' . ucfirst($name);
        if (method_exists($this, $getter)) {
            return $this->$getter() !== null;
        } 
        return false;
    }
    
    public function __unset($name) 
    {
        $setter = 'set' . ucfirst($name);
        if (method_exists($this, $setter)) {
            $this->$setter(null);
            return;
        } 
        throw new \Exception('Unsetting an unknown or read-only property: ' . get_class($this) . '::' . $name);
    }
    
    public function __call($name, $params) 
    {
        
        if ($this->hasMethod($name)) {
            return call_user_func_array([$name], $params);
        }
        throw new \Exception('Calling unknown method: ' . get_class($this) . "::$name()");
    }
    
    
    public function hasMethod($name, $checkBehaviors = true) 
    {
        if (method_exists($this, $name)) {
            return true;
        } 
        return false;
    }
    
    public function __toString() 
    {
        ob_start();
        $content = ob_get_contents();
        ob_get_clean();
        ob_get_flush();
        return $content;
    }
   
    /* Авторизация по UserID */
    protected function authUserID( $user_id ) {
        if(empty($user_id)) return false;
        $_data = $this->getUserDataById( self::SITE_ID, (int)$user_id );        
        if($_data) {
            $this -> _auth ->setIdentity( $_data );
            self::$_obj -> _data  = $this -> _auth->getIdentity();
            return true;
        } else
            return false;
    }
    
    public function getOrderLast($userId) {
        if($this -> _pdo === null) return;
        
        $userId = $this -> _pdo->quote($userId);
        $rows = $this -> _pdo-> query("SELECT `id`, `trial` FROM `orders` WHERE `user_id` = {$userId} AND `status` = 'completed' ORDER BY `created_at` DESC LIMIT 1") -> fetch();
        return (is_array($rows) and count($rows) > 0) ? $rows : NULL;
    }


    /* Авторизация */
    protected function _login(\ArrayAccess $params, $remember = false) 
    {
        
        try {
                $_data = $this->login($params['siteId'], $params['email'], $params['password']);
                $this -> _auth -> setIdentity($_data);
                self::$_obj -> _data = $this -> _auth ->getIdentity();
                
                if ($remember) {
                    Session::rememberMe();
                } else {
                    Session::regenerateId();
                }
                
                $this->setCookieNotice( self::$_obj -> _data );
                // setcookie('s', 1, time() + 3600 * 6, '/', '.pumpic.com');
                self::$_obj -> _respons['_success'] = true;
            
        } catch (UserNotFoundException $e) {
           self::$_obj -> _respons['_error'] = "The email was not found.";
        } catch (InvalidPasswordException $e) {
           self::$_obj -> _respons['_error'] = "Invalid email or password.";
        } catch (UserLockedException $e) {
           self::$_obj -> _respons['_error'] = self::ERROR_ACCOUNT_LOCK;
        }
        
        return self::$_obj -> _respons;
    }
    
    
    
    // method registration
    private function _registration(\ArrayAccess $params) 
    {
        try {
            $user_id = $this -> createUser($params['siteId'], $params['email']);
            if((int)$user_id) {
                $_data = $this->getUserDataById( self::SITE_ID, (int)$user_id );
                $this -> _auth ->setIdentity( $_data );
                
                self::$_obj -> _data = $this -> _auth->getIdentity();
                
                $this -> setNotice(); // self::$_obj -> _data
                self::$_obj -> _respons['_success'] = true;
                
            } else
               self::$_obj -> _respons['_error'] = 'System Error! User not created!'; // ????
            
        } catch( UserAlreadyExistsException $e ) { 
            self::$_obj -> _respons['_error'] = self::ERROR_USER_ALREADY_EXISTS_EXCEPTION;
        } catch( InvalidSenderObjectException $e ) {
            self::$_obj -> _respons['_error'] = ($e ->getMessage()) ? $e ->getMessage() : 'System Error! Email not send!'; // ????    
        } catch (\Exception $e) {
            self::$_obj -> _respons['_error'] = 'Error! '.$e ->getMessage(); // ????
        }
        return self::$_obj -> _respons;
    }
    
    // freeTrialRegistration
    public function getCreateUsersFreeTrial() 
    {
        $this -> _createUsersFreeTrial( self::$_obj -> getParams());
        return $this;
    }
    
    // method freeTrialRegistration
    private function _createUsersFreeTrial(\ArrayAccess $params) 
    {
        try {
            $user_id = $this -> createUserFreeTrial($params['siteId'], $params['email'], $params['name']);
            self::$_obj -> _respons['user_id'] = $user_id;

            $this->_saveUserLegacyConfirm($user_id);
            /*if((int)$user_id) {
                
                $_data = $this->getUserDataById( self::SITE_ID, (int)$user_id );
                $this -> _auth ->setIdentity( $_data );
                
                self::$_obj -> _data  = $this -> _auth->getIdentity();
                self::$_obj -> _respons['_success'] = true;
                
            } else if((int)$user_id and !$_auth) {
                self::$_obj -> _respons['_success'] = true;
            } else
               self::$_obj -> _respons['_error'] = 'System Error! User not created!'; // ????
            */
            
        } catch( UserAlreadyExistsException $e ) { 
            self::$_obj -> _respons['_error'] = self::ERROR_USER_ALREADY_EXISTS_EXCEPTION;
        } catch( InvalidSenderObjectException $e ) {
            self::$_obj -> _respons['_error'] = ($e ->getMessage()) ? $e ->getMessage() : 'System Error! Email not send!'; // ????    
        } catch (\Exception $e) {
            self::$_obj -> _respons['_error'] = 'Error! '.$e ->getMessage(); // ????
        }
        return self::$_obj -> _respons;
    }
    
    // method restore
    private function _restore(\ArrayAccess $params) 
    {

        if($this -> has()) {
            $this -> lostPassword($params['siteId'], $params['email']);
            self::$_obj -> _respons['_success'] = true;
        } else 
            self::$_obj -> _respons['_error'] = 'The email was not found.';
        
        
        return self::$_obj -> _respons;
    }
    
    
    protected function setParams( $_params ) 
    {
        if(is_array($_params))
            $this -> _params = new \includes\lib\users\Params( $_params );
        return $this;
    }
    
    public function getParams() 
    {
        return $this -> _params;
    }
    
    public function has() 
    {
        
        if(parent::isUser( self::$_obj->getParams()['siteId'], self::$_obj->getParams()['email'])) 
             return true;
        else
            return false;
    }
    
    public function getAuth() 
    {
        $this -> _login( self::$_obj -> getParams() );
        return $this;
    }
    
    public function getRegistration() 
    {
        $this -> _registration( self::$_obj -> getParams() );
        return $this;
    }
    
    public function getRestore() 
    {
        $this -> _restore( self::$_obj -> getParams() );
        return $this;
    }
    /* return result */
    public function getRespons() 
    {
        return $this -> _respons;
    }
    
    public function getData() 
    {
        return $this -> _data;
    }
    
    public function logout() 
    {
        $this->_auth->clearIdentity();
    }
    
    public function getLoginUser() 
    {
        $data = $this->_auth->getIdentity();
        if(isset($data['id']) and !empty($data['id'])) { 
            return $this->getUserDataById(self::SITE_ID, (int)$data['id']);
        } else
            return false;
    }
    
    //getUserDataEmail
    public function getUserDataEmail( $email ) {
        return $this ->getUserData(self::SITE_ID, $email);
    }
    
    // get UserID
    public function getUserIdByAuth() 
    {
        $user = $this -> getLoginUser();
        return (isset($user['id'])) ? $user['id'] : false;  
    }
    
    // set Session 
    public function setSession( $_name, $_data ) 
    {
        if(!empty($_data))
            $this -> _session[$_name] = $_data;
        return $this -> _session;
    }
    
    public function getSession( $_name ) 
    {
        return (isset($this -> _session[$_name])) ? $this -> _session[$_name] : null; 
    }
    
    public function unsetSession($_name) 
    {
        if(isset($this -> _session[$_name]))
            unset($this -> _session[$_name]);
    }
    
    
    // redirect
    public function _redirect( $_url ) 
    {
        header('Location: '.$_url);
        die();
    }
    
    // validate Captcha
    public function validateCaptcha($_captcha) 
    {
        
        if(!empty($_captcha)) {
            if (!isset($this -> _session['captcha']) 
                    or (empty($this -> _session['captcha']) || trim(strtolower($_captcha)) != $this -> _session['captcha'])) {
                return false;
            } else
                return true;
        } else 
            return false;
    }
    
    // validate Email
    public function validateEmail($email) 
    {
        return filter_var($email, FILTER_VALIDATE_EMAIL);
    }
    
    // cookir Notice
    public function setCookieNotice( $authData ) {
        if ($this -> _auth ->hasIdentity() 
                && !isset($_COOKIE['s']) 
                && !isset($authData['admin_id'])
                && isset($authData['id'])) {
            setcookie('s', 1, time() + 3600 * 6, '/', '.pumpic.com'); //, 'pumpic.com'
        }
    }
    
    // set Notice
    public function setNotice() { // , $userId $authData
        $authData = $this->_auth->getIdentity();
        if ($this -> _auth ->hasIdentity() 
                && !isset($_COOKIE['s']) 
                && !isset($authData['admin_id'])
                && isset($authData['id'])) {
            
            // $usersManager = new CS\Users\UsersManager($db);
            $usersNotes = new UsersNotes($this -> _pdo, $authData['id']);

            $this->setUsersNotesProcessor($usersNotes)
                ->logAuth($authData['id']);
            setcookie('s', 1, time() + 3600 * 6, '/', '.pumpic.com');
        }
    }
    
    public function setLogMailSender($userId, $type) {
        if($this -> _pdo === null) return;
        
        $userId = $this -> _pdo->quote($userId);
        $messageType = $this -> _pdo->quote($type);
        
        $this -> _pdo->exec("INSERT INTO `users_emails_log` SET `user_id` = {$userId}, `type` = {$messageType}");
    }
    
    public function isPhone() {
        $show = $this -> _pdo-> query("SELECT `value` FROM `options` WHERE `name` = 'pumpic-phone-show' LIMIT 1") -> fetch();
        return (is_array($show) and count($show) > 0) ? $show['value'] : 0;
    }

    public function _saveUserLegacyConfirm($userId)
    {
        $userId = (int) $userId;
        $this->_pdo->exec("INSERT INTO users_acceptance (user_id,legal_id,legal_version_id)
                                VALUES 
                                ( {$userId}, (SELECT legal_id FROM legal_types WHERE `code` = 'tos') , (SELECT legal_version_id FROM legal_versions WHERE `status` = 'active' AND legal_id = (SELECT legal_id FROM legal_types WHERE `code` = 'tos'))),
                                ( {$userId}, (SELECT legal_id FROM legal_types WHERE `code` = 'policy') , (SELECT legal_version_id FROM legal_versions WHERE `status` = 'active' AND legal_id = (SELECT legal_id FROM legal_types WHERE `code` = 'policy'))),
                                ( {$userId}, (SELECT legal_id FROM legal_types WHERE `code` = 'direct-notice') , (SELECT legal_version_id FROM legal_versions WHERE `status` = 'active' AND legal_id = (SELECT legal_id FROM legal_types WHERE `code` = 'direct-notice')))");

    }
    // 
    public function subscriptionFromMailChimp( $email ) {
        Manager::registerListeners( $this->_pdo );
        $eventManager = \EventManager\EventManager::getInstance();
        
        if(!$this ->validateEmail($email)) return false;
        
        if( $eventManager->emit('front-subscription-completed', array(
            'email' => $email,
            'seller' => 'pumpic.com'
        )) ) {
            return true;
        } else 
            return false;
        
    }
    
}

class Params implements \ArrayAccess 
{
    private $container = array();
    public function __construct( Array $_params ) 
    {
        $this->container = $_params;
    }
    public function offsetSet($offset, $value) 
    {
        if (is_null($offset)) {
            $this->container[] = $value;
        } else {
            $this->container[$offset] = $value;
        }
    }
    public function offsetExists($offset) 
    {
        return isset($this->container[$offset]);
    }
    public function offsetUnset($offset) 
    {
        unset($this->container[$offset]);
    }
    public function offsetGet($offset) 
    {
        return isset($this->container[$offset]) ? $this->container[$offset] : null;
    }
}

//class Order {
//    private $di;
//    private $authKey = null;
//    private $session = null;
//
//    public function __construct(DI $di, $name = 'pumpic_order')
//    {
//        $this->di = $di;
//        $this->authKey = $name;
//        $this->session = $this->di->get('session');
//
//        if (!($this->session instanceof Session)) {
//            throw new DI\InvalidOffsetException("Session object not defined!");
//        }
//    }
//
//    /**
//     * 
//     * @return DI
//     */
//    public function getDI()
//    {
//        return $this->di;
//    }
//
//    public function hasIdentity()
//    {
//        return isset($this->session[$this->authKey]);
//    }
//
//    public function setIdentity($data)
//    {
//        $this->session[$this->authKey] = $data;
//    }
//
//    public function getIdentity()
//    {
//        return $this->session[$this->authKey];
//    }
//
//    public function clearIdentity()
//    {
//        unset($this->session[$this->authKey]);
//    }
//
//}
//
