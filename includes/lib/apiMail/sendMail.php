<?php

namespace api;

$apiMailPath = dirname( __FILE__ );
$_lib = dirname( $apiMailPath );

require_once $_lib.'/Curl.php';
require_once $apiMailPath.'/Component.php';
// require_once './Settings.php';

use system\Component as Component;
use system\Curl as Curl;

class ApiMail extends Component 
{ 
    const API_URL = 'http://sender-mail.pumpic.com/';
    const LICEN_KEY = '258EAFA5-E914-47DA-95CA-C5AB0DC85B11';
    
    static $_curl;
    static $_api;
    
    private static $_logerr = array();
    
    private $hash;
    private $_params;
    private $_api_client;
    
    public $_components;
    
    public function __construct() 
    {
        Component::__construct();
        self::$_api = $this;
        self::$_curl = new Curl();
    }
    
    public function init() 
    {
        return self::$_api;
    }
    
    public function __get($name) 
    {
        if($this->has($name))
            return $this->get($name);
        else
            return parent::__get($name);
    }
    
    public function __isset($name) 
    {
        if($this->has($name))
            return $this->get($name)!==null;
        else
            return parent::__isset($name);
    }
    
    public function has($id) 
    {
        return isset($this->_components[$id]);
    }
    
    public function get( $id ) 
    {
        if(isset($this->_components[$id]) 
                and !empty($this->_components[$id])
                and is_object( $this->_components[$id] )) 
            return $this->_components[$id];
        else
           return null;
    }
    
    public function set( $components = [] ) 
    {
        if(is_array($components) and count($components) > 0) {
            foreach( $components as $_id => $class_name ) :
                if(class_exists($class_name['alies'])) {
                    $object = new $class_name['alies'];
                    $object = $object -> init();
                    if(is_object( $object ) ) {
                        $this -> _components[$_id] = $object;
                    }
                }

            endforeach;  
        } else
            return false;
    }
    
    /* http curl */
    public function run() 
    {
        
        if(is_array($this ->getParams())
                and count($this ->getParams()) > 0) {
            
            $_params = $this ->getParams();
            $_curl = $this -> curl();
            
            
            $_post = array(
                'site_id'   => (isset($_params['site_id'])) ? $_params['site_id'] : false,
                'type'      => (isset($_params['type'])) ? $_params['type'] : false,
                'system'    => (isset($_params['system'])) ? $_params['system'] : false,
                'locale'    => (isset($_params['locale'])) ? $_params['locale'] : false,
                'email'     => (isset($_params['email'])) ? $_params['email'] : false,
                'replyTo'   => (isset($_params['replyTo'])) ? $_params['replyTo'] : false,
                'to'        => (isset($_params['to'])) ? $_params['to'] : false,
                'params'    => (isset($_params['params'])) ? $_params['params'] : array(),
                'response'  => (isset($_params['response'])) ? $_params['response'] : 'json',
            );
            
            if(self::LICEN_KEY)
                $_post = array_merge ($_post, ['_hash' => self::LICEN_KEY]);
            
            $_curl-> post(self::API_URL, $_post);
            
            $_respons = json_decode($_curl->response); 
            if(is_object($_respons)
                    && isset($_respons -> {'_success'})
                    && !empty($_respons-> {'_success'})) {
                return true;
            } else
                return false;
            
        } else
            return false;
        
    }
    
    protected function curl() 
    {
        return self::$_curl;
    }
    
    public function getParams() 
    {
        return $this -> _params;
    }
    
    public function setParams($_data) 
    {
        if(!empty($_data))
            $this -> _params = $_data;
        return $this;
    }
    
}