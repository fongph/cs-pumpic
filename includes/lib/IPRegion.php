<?php
namespace system;

class IPRegion {
    private function __clone() {}

    private function __construct(){}

    private static  $instance; 
    
    private  $_ip; 
    private $_currancy = 'USD';
    
    public static function getInstance(){

        if ( ! isset(self::$instance))
            self::$instance = new self();

        return self::$instance;
    } 
    
    public function init() {
        $this ->setIP();
        $this ->setCurrancy();
    }
    
    private function setIP() {
        if (isset($_SERVER["HTTP_CLIENT_IP"])){
            return $this -> _ip = $_SERVER["HTTP_CLIENT_IP"];
        } elseif (isset($_SERVER["HTTP_X_FORWARDED_FOR"])){
            return $this -> _ip = $_SERVER["HTTP_X_FORWARDED_FOR"];
        } elseif (isset($_SERVER["HTTP_X_FORWARDED"])){
            return $this -> _ip = $_SERVER["HTTP_X_FORWARDED"];
        } elseif (isset($_SERVER["HTTP_FORWARDED_FOR"])){
            return $this -> _ip = $_SERVER["HTTP_FORWARDED_FOR"];
        } elseif (isset($_SERVER["HTTP_FORWARDED"])){
            return $this -> _ip = $_SERVER["HTTP_FORWARDED"];  
        } else{
            return $this -> _ip = $_SERVER["REMOTE_ADDR"];
        }
    }
    
    public function getIP() {
        return (!empty($this -> _ip)) ? $this -> _ip : null;
    }
    
    private function setCurrancy() {
        if(!$this -> _ip) return $this -> _currancy;
 
        $this -> _ip = '176.38.120.13';
        
        $geoplugin = unserialize( file_get_contents('http://www.geoplugin.net/php.gp?ip='.$this -> _ip) );
        if ( is_array($geoplugin) and isset($geoplugin['geoplugin_currencyCode'])) {
            return $this -> _currancy = $geoplugin['geoplugin_currencyCode'];
        }
    }
    
    public function getCurrancy() {
        return $this -> _currancy;
    }


}

