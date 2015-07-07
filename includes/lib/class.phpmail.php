<?php
include dirname(__FILE__).'/apiMail/sendMail.php';
include dirname(__FILE__).'/apiMail/Settings.php';
include dirname(__FILE__).'/users/Order.php';
require_once dirname(__FILE__).'/CDb.php';


use api\ApiMail as ApiMail;
use api\Settings as Settings; 
use includes\lib\users\Order as Order;
use includes\lib\CDb as DB;

class Phpmail extends Settings 
{  
    CONST start_id = 11701;
    
    CONST MOBILEOPERATORS_START_ID = 1000000;
    CONST COMPATIBILITY_START_ID = 100000;
    CONST CONTACT_US_START_ID = 10000;
    
    CONST mail_support = 'support@pumpic.com';
    CONST mail_noreply = 'noreply@pumpic.com';
    
    CONST error_email = 'Invalid email format';
    CONST error_captcha = 'Invalid CAPTCHA.';
    
    CONST FAQ_SUCCESS = 'Your Request has been sent, our support representative will contact you as soon as possible';
    CONST CONTACTUS_SUCCESS = 'Your Request has been sent, our support representative will contact you as soon as possible';
    
    private $_api;
    private $_data;
    private $_order;
    private $_pdo;
    
    /**
     *
     * @var \CS\Mail\MailSender
     */
    private $sender;
    
    private $_browser = array();
    
    private $_messange = [
        'error' => false,
        'success' => false
    ];
    
    public function __construct($_settings = array()) 
    {
        $this -> _pdo = new DB($_settings);
        $this -> _order = new Order;
        $this -> setLocale('en-En') 
                ->setSiteId(1)
                ->setSystem(0);

        $this -> initBrowser();
        
        $di = di();
        
        $this->sender = $di['mailSender'];
    }
    
    private function setData($_from, $_to, $type = 'main', $replyTo = '', $_params = array()) 
    {
        $this -> _data = [
            'site_id'   => $this ->getSiteId(), // request ( !systems )
            'locale'    => $this ->getLocale(), // 'locale' => 'ru-RU' (default: false - request FATAL ERROR )
            'type'      => $type,  // request ( !systems )
            'email'     => $_from, // request ( !systems )
            'replyTo'   => $replyTo, // not request!
            'response'  => 'json', // json, string or false ( request status_header )
            'system'    => $this ->getSystem(), // 1 or 0
            'to'        => $_to,
            'params'    => $_params,
        ];
        
        return $this;
    }
    
    private function validateEmail($email)
    {
	return filter_var($email, FILTER_VALIDATE_EMAIL);
    }
    
    private function sendMAil() 
    {
        $_client = new ApiMail();
        return $_client -> setParams($this ->getData()) 
                    -> init() 
                    -> run();
    }

    public function getData() 
    {
        return $this -> _data;
    }
    
    public function send( $_params ) 
    {
        
        
        if(!$this -> validateEmail($_params['to'])) {
            $this -> _messange['error'] = "Invalid email format";
        } else {
            
            // sendMail Api
            $_data = $this ->setData($_params['from'], 
                                    $_params['to'], 
                                    $_params['type'],
                                    '',
                                    $_params['params']) 
                -> sendMAil();
            
            
            if($_data === true) {
                $this -> _messange['success'] = "Your email has been successfully sent";
            } else
                $this -> _messange['error'] = "Invalid email format"; // Invalid System Params
            
            
            
        }   
        
        return $this -> _messange;
    }
    
    /*
     * Compatibility (send form and validater)
     */
    public function _sendCompatibility($params) 
    {
        
        if(is_array($params) and count($params) > 0) {
            if(!$this -> validateEmail($params['email'])) {
                $this -> _messange['error']['email'] = self::error_email;
            } else if(empty($params['device-model']) or strlen( $params['device-model']) < 3 ) {
                $this -> _messange['error']['device-model'] = "The Device Model field is empty";
            } elseif( isset($params['captcha']) and !$this ->_order-> validateCaptcha( $params['captcha'] ) ) {
                $this -> _messange['error']['captcha'] = self::error_captcha;
            } else {
                if ($opt_value = $this ->getOptionValue('Compatibility_pumpic') and $opt_value >= self::COMPATIBILITY_START_ID) {
                    $_uid = $opt_value + 1; 
                } else {
                    $_uid = self::COMPATIBILITY_START_ID;
                }
                
                $browserInfo = $this->getBrowser();
                
                try {
                    $this->sender->sendSystemCompatibility(self::mail_support, $params['email'], $params['device-model'], $browserInfo);
                    $this->sender->sendCompatibility($params['email'], $params['device-model'], $browserInfo);
                    
                     $this ->updateOptionValue('Compatibility_pumpic', $_uid);
                    
                    $this -> _messange['success'] =  'Ticket #'. $_uid .' has been successfully sent.<br />
                                                     Our support representative will contact you as soon as possible.';
                } catch(\Exception $e) {
                    $this -> _messange['error'] = 'Something went wrong! Please contact support!';
                }
            }    
        }
        
        return $this -> _messange;
        
    }
    
    /*
     * MobileOperators (send form and validater)
     */
    public function _sendMobileOperators($params) 
    {
        
        if(is_array($params) and count($params) > 0) {
            if(!$this -> validateEmail($params['email'])) {
                $this -> _messange['error']['email'] = self::error_email;
            } else if(empty($params['carrier']) or strlen( $params['carrier']) < 3 ) {
                $this -> _messange['error']['carrierl'] = "The carrier field is empty";
            } elseif( isset($params['captcha']) and !$this ->_order-> validateCaptcha( $params['captcha'] ) ) {
                $this -> _messange['error']['captcha'] = self::error_captcha;
            } else {
                
                $_params = array(
                   'carrier'    => $params['carrier'],
                   'email'          => $params['email'],
                    '_browser'      => $this -> getBrowser()
                );
                
                if($opt_value = $this ->getOptionValue( 'Mobile_operators_pumpic' ) and $opt_value >= self::MOBILEOPERATORS_START_ID) {
                    $_uid = $opt_value + 1; 
                } else {
                    $_uid = self::MOBILEOPERATORS_START_ID;
                }
                
                $browserInfo = $this->getBrowser();
                
                try {
                    $this->sender->sendSystemMobileOperators(self::mail_support, $params['email'], $params['carrier'], $browserInfo);
                    $this->sender->sendMobileOperators($params['email'], $params['carrier'], $browserInfo);
                    
                    $this ->updateOptionValue('Mobile_operators_pumpic', $_uid);
                    
                    $this -> _messange['success'] =  'Ticket #'. $_uid .' has been successfully sent.<br />
                                                     Our support representative will contact you as soon as possible.';
                } catch (\Exception $e) {
                    $this -> _messange['error'] = 'Something went wrong! Please contact support!';
                }                
            }    
        }
        
        return $this -> _messange;
        
    }
    
    
    /* Faq Send mail*/
    public function _sendFaq($params) 
    {
        
        if(is_array($params) and count($params) > 0) {
            
            if(!$this -> validateEmail($params['email'])) {
                $this -> _messange['error']['email'] = "Invalid email format";
            } elseif( isset($params['captcha']) and !$this ->_order-> validateCaptcha( $params['captcha'] ) ) {
                $this -> _messange['error']['captcha'] = self::error_captcha;
            } else {
                
//                // sendMail Api
                $_data = $this ->setData(self::mail_noreply, self::mail_support, 'FAQ_pumpic', $params['email'], array( //support@pumpic.com
                   'name'           => $params['name'],
                   'email'          => $params['email'],
                   'question'       => strip_tags( htmlspecialchars( trim( $params['question'] ) ) ),
                )) -> sendMAil();
                
                if($_data === true) {
                    $this -> _messange['success'] = self::FAQ_SUCCESS; // "Your email has been successfully sent";
                } else
                    $this -> _messange['error']['email'] = "Invalid email format"; // Invalid System Params
                
                
            }    

            
        }
        
        return $this -> _messange;
        
    }
    
    
    /* Faq Send mail
     * $params (array): GET or POST.
     * $type (string): api mail template.      
     */
    public function _sendPopUp($params, $type = false) 
    {
        
        if(is_array($params) and count($params) > 0) {
            
            if(!$this -> validateEmail($params['email'])) {
                $this -> _messange['error']['email'] = "Invalid email format";
            } else {
                
                // sendMail Api
                $_data = $this ->setData($params['email'], 
                                self::mail_support, 
                                $type,
                                '',
                                $params) -> sendMAil();
                
                if($_data === true) {
                    $this -> _messange['success'] = "Your Request has been sent, our support representative will contact you as soon as possible"; // "Your email has been successfully sent";
                } else
                    $this -> _messange['error']['email'] = "Invalid email format"; // Invalid System Params
                
                
            }    

            
        }
        
        return $this -> _messange;
        
    }
    
    /* Contact US Send mail*/
    public function _sendContactUs($params) 
    {
        if(is_array($params) and count($params) > 0) {
            if(!$this -> validateEmail($params['email'])) {
                $this -> _messange['error']['email'] = "Invalid email format";
            } elseif( isset($params['captcha']) and !$this ->_order-> validateCaptcha( $params['captcha'] ) ) {
                $this -> _messange['error']['captcha'] = self::error_captcha;
            } else {
                if($opt_value = $this ->getOptionValue('contactUs_pumpic') and $opt_value >= self::CONTACT_US_START_ID) {
                    $_uid = $opt_value + 1; 
                } else {
                    $_uid = self::CONTACT_US_START_ID;
                }
                
                $browserInfo = $this->getBrowser();
                
                try {
                    $this->sender->sendSystemContactUs(self::mail_support, $params['name'], $params['email'], $params['os'], $params['description'], $browserInfo);
                    $this->sender->sendContactUs($params['email'], $params['name'], $params['os'], $params['description'], $browserInfo);
                 
                    $this ->updateOptionValue('contactUs_pumpic', $_uid);
                    $this -> _messange['success'] = 'Ticket #'. $_uid .' has been successfully sent.<br />Our support representative will contact you as soon as possible.';
                } catch (\Exception $e) {
                    $this -> _messange['error'] = 'Something went wrong! Please contact support!';
                }
            }      
        } 
        
        return $this -> _messange;
        
    }
    
    /**
     * getBrowser
     */
    protected function initBrowser() {
        $info = get_browser();
        if (isset($info->browser, $info->version)) {
            $this -> _browser['browser'] = $info->browser;
            $this -> _browser['browser_version'] = $info->version;
        }
        
        if (isset($info->platform)) {
            $this -> _browser['platform'] = $info->platform;
            if (isset($info->platform_version)) {
                $this -> _browser['platform_version'] = $info->platform_version;
            }
        }

        if (isset($info->ismobiledevice))
            $this -> _browser['ismobiledevice'] = $info->ismobiledevice;
        
        if (isset($info->istablet))
            $this -> _browser['istablet'] = $info->istablet;
        
        if(isset($_COOKIE['_screen']))
            $this -> _browser['_screen'] = $_COOKIE['_screen'];
        
        return $this -> _browser;
    }
    
    public function getBrowser() {
        return $this -> _browser;
    }
    
    public function getTmpBrowser() {
        $_html ='';
        if(count( $this ->getBrowser() ) > 0) {
            $_b = $this ->getBrowser();
            $browser = (isset($_b['browser'])) ? $_b['browser'].'( '.$_b['browser_version'].' )' : '-';
            $platform = (isset($_b['platform'])) ? $_b['platform'].'( '.$_b['platform_version'].' )' : '-';
            $screen = (isset($_b['_screen'])) ? $_b['_screen'] : '-';
            
            $mobile = (isset($_b['ismobiledevice'])) ? true : false;
            $tablet = (isset($_b['istablet'])) ? true : false;
            
            $device = 'Desktop';
            if($mobile) $device = 'Phone';
            else if($tablet) $device = 'Tablet';
            
            $_html .= 'Browser: '. $browser .'<br />';
            $_html .= 'OS: '. $platform .'<br />';
            $_html .= 'Screen Resolution: '. $screen .'<br />';
            $_html .= 'Device: '. $device .'<br />';
            
        }
        return $_html;
    }
    
    /**
     * Svae DB
     */
    function saveDB( $_params ) {
        $_setParams = array();
       // $_uid = 1000;

        if(!isset($_params['to']))
            return false;

       foreach($_params as $_name => $_value) :
           $_setParams[ $_name ] = htmlspecialchars( trim($_value) );
       endforeach;

        $from = ($_setParams['from']) ? $_setParams['from'] : '';
        $params = ($_setParams['params']) ? $_setParams['params'] : ''; 
        $query = '';

        if(isset($_setParams['uid'])) {
            $query .= "`uid` = '".(int)$_setParams['uid']."',";
        }
        
        if(isset($_setParams['subject'])) {
            $query .= "`subject` = '".$_setParams['subject']."',";
        }

        $_sql = "INSERT INTO `sendmail` SET `cdate` = NOW(),
                `to` = '".$_setParams['to']."',
                `from` = '".$from."',
                `type` = '".$_setParams['type']."',
                ".$query."    
                `params` = '".$params."'"; // `subject` = '".$_subject."', ".$_uid." + LAST_INSERT_ID() `body` = '".serialize(mysql_escape_string($_setParams['body']))."',
        if($this -> _pdo -> query($_sql)) {
            return $this ->getSendmailID( $this -> _pdo -> lastInsertId() );
        } else
            return false;

    }
    
    function getSendmailID( $_id ) {
        $_row = $this -> _pdo -> query("SELECT * FROM `sendmail` WHERE `id` = ". (int)$_id);
        if(is_array($_row) and count($_row) > 0) {
            return $_row[0];
        } else 
            return false; 
    }
    
    
    function getOptionValue( $type ) {
        if(empty($type)) return false;
        $type = htmlspecialchars(trim( $type ));
        $_row = $this -> _pdo -> query("SELECT value FROM `sendmail_options` WHERE `type` = '". $type."'");
        if(is_array($_row) and count($_row) > 0) {
            return $_row[0]['value'];
        } else 
            return false; 
    }
    
    function updateOptionValue($type, $value) {
        if(empty($type)) return false;
        $type = htmlspecialchars(trim( $type ));
        if((int)$value) :
            $_query = "UPDATE `sendmail_options` SET `value` = ".(int)$value." WHERE `type` = '". $type ."'";
            if($this -> _pdo -> query( $_query )) {
                return true;
            } else
                return false;
        endif;
    }
    
    function getMaxUID( $type ) {
        $_row = $this -> _pdo -> query("SELECT MAX(`uid`) as uid FROM `sendmail` WHERE `type` = '". $type."'");
        if(is_array($_row) and count($_row) > 0) {
            return $_row[0];
        } else 
            return false; 
    }
    
    function setSendmail($_params, $_where) {
        $_sql = '';
        if(!is_array($_params) or empty($_params))
            return false;
        foreach($_params as $_name => $_value) :
           $_sql .= $_name . " = '" . mysql_escape_string( htmlspecialchars( trim($_value) ) )."',";
       endforeach;
       
       $_query = "UPDATE `sendmail` SET ". trim($_sql, ',') ." WHERE ".$_where;
       
       if($this -> _pdo -> query( $_query )) {
           return true;
       } else
           return false;
        
    }
}

