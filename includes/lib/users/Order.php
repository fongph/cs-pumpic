<?php
namespace includes\lib\users;

use System\DI;
use System\Session;
use System\Auth;

use CS\Users\UsersManager as Manager;
use CS\Users\UserAlreadyExistsException as UserAlreadyExistsException;
use CS\Users\UserNotFoundException as UserNotFoundException;
USE CS\Users\InvalidPasswordException as InvalidPasswordException;
use CS\Users\UserLockedException as UserLockedException;

use CS\Users\InvalidSenderObjectException as InvalidSenderObjectException; // exception sender mail

use CS\Mail\MailSender;
use CS\Settings\GlobalSettings;
use CS\Mail\Processor\RemoteProcessor;

use includes\lib\CDb as DB;

defined('PATH') or define('PATH',dirname(__FILE__));

require_once dirname( PATH ).'/CDb.php';
$loader = require dirname( dirname( dirname( PATH ) ) ).'/vendor/autoload.php';

class ManagerUser extends Manager {
    const SITE_ID = 1;
    const LANG = 'en-GB';
    
    static $_obj;
    
    private $_pdo;
    private $_params;
    
    private $_data; // cache user
    private $_respons = array(
        '_error' => false,
        '_success' => false
    ); // cache messange
    
    
    /* prod */
//    private $_db = array(
//        'dbname'    => 'main',
//        'host'      => '188.40.64.2',
//        'user'      => 'ci_user',
//        'password'  => 'qmsgrSR8qhxeNSC44533hVBqwNajd62z2QtXwN6E'
//        
//    );
    
    
    private $_db = [
        'dev' => array(
                    'dbname'    => 'main',
                    'host'      => 'localhost',
                    'user'      => 'root',
                    'password'  => 'password'
                 ),
        'prod' => array(
                    'dbname'    => 'main',
                    'host'      => '188.40.64.2',
                    'user'      => 'ci_user',
                    'password'  => 'qmsgrSR8qhxeNSC44533hVBqwNajd62z2QtXwN6E'
                ),
    ];
    
    private $_session;
    private $_di;
    private $_auth;
    private $_mail_sender;
    
    public function __construct(Array $_settings ) {
        $this -> _di = new DI();
        $this -> _session = new Session(array('rememberMeTime' => 5));
        $this -> _di -> set('session', $this -> _session);
        $this -> _auth = new Auth($this -> _di);
        
        $db = new DB($this -> getSettingsDB());
        $this -> _pdo = $db -> getConnected();
        parent::__construct($this -> _pdo);
        
        // mailProcessor
        $mailProcessor = new RemoteProcessor(
                GlobalSettings::getMailSenderURL(1), 
                GlobalSettings::getMailSenderSecret(1)
        );
        
        // set sender
        $this -> _mail_sender = new MailSender( $mailProcessor );
        $this -> _mail_sender
               ->setLocale( self::LANG )
               ->setSiteId( self::SITE_ID );
        parent::setSender( $this -> _mail_sender ); // init mail sender
        
        
        self::$_obj = $this;
        self::init($_settings);
        
        
        return self::$_obj;
    }
    
    private function getSettingsDB() {
        $_type = 'prod';
        if (in_array(@$_SERVER['REMOTE_ADDR'], ['127.0.0.1', '::1'])) {
            $_type = 'dev';
        }
        return $this -> _db[ $_type ];
    }
    
    public static function init(Array $_settings ) {
            self::$_obj -> setParams($_settings);
    }
    
    public function __get($name) {
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
    
    public function __set($name, $value) {
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
    
    public function __isset($name) {
        $getter = 'get' . ucfirst($name);
        if (method_exists($this, $getter)) {
            return $this->$getter() !== null;
        } 
        return false;
    }
    
    public function __unset($name) {
        $setter = 'set' . ucfirst($name);
        if (method_exists($this, $setter)) {
            $this->$setter(null);
            return;
        } 
        throw new \Exception('Unsetting an unknown or read-only property: ' . get_class($this) . '::' . $name);
    }
    
    public function __call($name, $params) {
        
        if ($this->hasMethod($name)) {
            return call_user_func_array([$name], $params);
        }
        throw new \Exception('Calling unknown method: ' . get_class($this) . "::$name()");
    }
    
    
     public function hasMethod($name, $checkBehaviors = true) {
        if (method_exists($this, $name)) {
            return true;
        } 
        return false;
    }
    
    public function __toString() {
        ob_start();
        $content = ob_get_contents();
        ob_get_clean();
        ob_get_flush();
        return $content;
    }
   
    /* Авторизация */
    private function _login(\ArrayAccess $params, $remember = false) {
        
        try {
                $_data = $this->login($params['siteId'], $params['email'], $params['password']);
                $this -> _auth -> setIdentity($_data);
                self::$_obj -> _data = $this -> _auth ->getIdentity();
                
                if ($remember) {
                    Session::rememberMe();
                } else {
                    Session::regenerateId();
                }

                self::$_obj -> _respons['_success'] = true;
            
        } catch (UserNotFoundException $e) {
           self::$_obj -> _respons['_error'] = "The email was not found.";
        } catch (InvalidPasswordException $e) {
           self::$_obj -> _respons['_error'] = "Invalid email or password.";
        } catch (UserLockedException $e) {
           self::$_obj -> _respons['_error'] = "учетная запись пользователя заблокирована"; // ?????
        }
        
        return self::$_obj -> _respons;
    }
    
    
    
    // method registration
    private function _registration(\ArrayAccess $params) {
        try {
            $user_id = $this -> createUser($params['siteId'], $params['email']);
            if((int)$user_id) {
                $_data = $this->getUserDataById( self::SITE_ID, (int)$user_id );
                $this -> _auth ->setIdentity( $_data );
                
                self::$_obj -> _data  = $this -> _auth->getIdentity();
                self::$_obj -> _respons['_success'] = true;
                
            } else
               self::$_obj -> _respons['_error'] = 'System Error! User not created!'; // ????
            
        } catch( UserAlreadyExistsException $e ) { 
            self::$_obj -> _respons['_error'] = 'This email exists already.';
        } catch( InvalidSenderObjectException $e ) {
            self::$_obj -> _respons['_error'] = ($e ->getMessage()) ? $e ->getMessage() : 'System Error! Email not send!'; // ????    
        } catch (Exception $ex) {
            self::$_obj -> _respons['_error'] = 'Error! '.$e ->getMessage(); // ????
        }
        return self::$_obj -> _respons;
    }
    
    // method restore
    private function _restore(\ArrayAccess $params) {
        
        if($this -> has()) {
            $this -> lostPassword($params['siteId'], $params['email']);
            self::$_obj -> _respons['_success'] = true;
        } else 
            self::$_obj -> _respons['_error'] = 'The email was not found.';
        
        
        return self::$_obj -> _respons;
    }
    
    
    protected function setParams( $_params ) {
        if(is_array($_params))
            $this -> _params = new \includes\lib\users\Params( $_params );
        return $this;
    }
    
    public function getParams() {
        return $this -> _params;
    }
    
    public function has() {
        
        if(parent::isUser( self::$_obj->getParams()['siteId'], self::$_obj->getParams()['email'])) 
             return true;
        else
            return false;
    }
    
    public function getAuth() {
        $this -> _login( self::$_obj -> getParams() );
        return $this;
    }
    
    public function getRegistration() {
        $this -> _registration( self::$_obj -> getParams() );
        return $this;
    }
    
    public function getRestore() {
        $this -> _restore( self::$_obj -> getParams() );
        return $this;
    }
    /* return result */
    public function getRespons() {
        return $this -> _respons;
    }
    
    public function getData() {
        return $this -> _data;
    }
    
    public function logout()
    {
        $this->_auth->clearIdentity();
    }
    
    public function getLoginUser() {
        $data = $this->_auth->getIdentity();
        if(isset($data['id']) and !empty($data['id']))
            return $this->getUserDataById(self::SITE_ID, (int)$data['id']);
        else
            return false;
    }
    
    
}

class Params implements \ArrayAccess {
    private $container = array();
    public function __construct( Array $_params ) {
        $this->container = $_params;
    }
    public function offsetSet($offset, $value) {
        if (is_null($offset)) {
            $this->container[] = $value;
        } else {
            $this->container[$offset] = $value;
        }
    }
    public function offsetExists($offset) {
        return isset($this->container[$offset]);
    }
    public function offsetUnset($offset) {
        unset($this->container[$offset]);
    }
    public function offsetGet($offset) {
        return isset($this->container[$offset]) ? $this->container[$offset] : null;
    }
}

