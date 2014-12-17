<?php
namespace system;

use includes\lib\CDb as DB;

require_once dirname( __FILE__ ).'/CDb.php';

class Currency {
    private function __clone() {}

    private function __construct(){
        $this -> _db = new DB(array(
            'dbname'    => 'blog_pumpic',
            'host'      => 'localhost',
            'user'      => 'root',
            'password'  => 'password'
        ));
        // $this -> _pdo = $this -> _db -> getConnected();
    }

    private static  $instance; 
    
    private  $_ip; 
    private $_currency = 'USD';
    // private $_pdo;
    private $_db;
    
    public static function getInstance(){
        if ( ! isset(self::$instance))
            self::$instance = new self();
        return self::$instance;
    } 
    
    
    public function getCurrencies() {
       $_rates = $this -> _db -> query("SELECT currID as id, rates, iso as curr_code FROM currencies WHERE hidden = 0");
       return (!empty($_rates)) ? $_rates : array();
    }
    
}

