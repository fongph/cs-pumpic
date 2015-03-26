<?php
include dirname(__FILE__).'/apiMail/sendMail.php';
include dirname(__FILE__).'/apiMail/Settings.php';
include dirname(__FILE__).'/users/Order.php';


use api\ApiMail as ApiMail;
use api\Settings as Settings; 
use includes\lib\users\Order as Order;

class Phpmail extends Settings 
{  
    CONST mail_support = 'support@pumpic.com';
    CONST mail_noreply = 'noreply@pumpic.com';
    
    CONST error_email = 'Invalid email format';
    CONST error_captcha = 'Invalid CAPTCHA.';
    
    CONST FAQ_SUCCESS = 'Your Request has been sent, our support representative will contact you as soon as possible';
    CONST CONTACTUS_SUCCESS = 'Your Request has been sent, our support representative will contact you as soon as possible';
    
    private $_api;
    private $_data;
    private $_order;
    
    private $_messange = [
        'error' => false,
        'success' => false
    ];
    
    public function __construct() 
    {
        $this -> _order = new Order;
        $this -> setLocale('en-En') 
                ->setSiteId(1)
                ->setSystem(0);
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
            $_id = rand(0, 9000000);
            
            if(!$this -> validateEmail($params['email'])) {
                $this -> _messange['error']['email'] = self::error_email;
            } else if(empty($params['device-model']) or strlen( $params['device-model']) < 3 ) {
                $this -> _messange['error']['device-model'] = "The Device Model field is empty";
            } elseif( isset($params['captcha']) and !$this ->_order-> validateCaptcha( $params['captcha'] ) ) {
                $this -> _messange['error']['captcha'] = self::error_captcha;
            } else {
                
                // sendMail Api
                $_data = $this ->setData($params['email'], self::mail_support, 'Compatibility_pumpic', '', array(
                   'deviceModel'    => $params['device-model'],
                   'email'          => $params['email'],
                   // 'subject'        => [ 'Compatibility_pumpic' => "Compatibility ".$_id], 
                )) -> sendMAil();
                
                
                if($_data === true) {
                    $this -> _messange['success'] = "Your Request has been sent, our support representative will contact you as soon as possible"; //"Your email has been successfully sent";
                } else
                    $this -> _messange['error']['email'] = self::error_email; 
                
                
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
            $_id = rand(0, 9000000);
            
            if(!$this -> validateEmail($params['email'])) {
                $this -> _messange['error']['email'] = "Invalid email format";
            } elseif( isset($params['captcha']) and !$this ->_order-> validateCaptcha( $params['captcha'] ) ) {
                $this -> _messange['error']['captcha'] = self::error_captcha;
            } else {
                
                // sendMail Api
                $_data = $this ->setData(self::mail_noreply, self::mail_support, 'contactUs_pumpic', $params['email'], array(
                   'name'           => $params['name'],
                   'email'          => $params['email'],
                   'os'             => $params['os'],
                   'description'    => $params['description'],
                   // 'subject'        => [ 'contactUs_pumpic' => 'Contact US #pp '.$_id], 
                )) -> sendMAil();
                
                
                if($_data === true) {
                    $this -> _messange['success'] = self::CONTACTUS_SUCCESS; //"Your email has been successfully sent";
                } else
                    $this -> _messange['error']['email'] = "Invalid email format"; // Invalid System Params
                
            }    

            
        }
        
        return $this -> _messange;
        
    }
    
    
}

