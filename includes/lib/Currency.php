<?php
namespace system;

use includes\lib\CDb as DB;

require_once dirname( __FILE__ ).'/CDb.php';

class Currency 
{
    private function __clone() {}

    private function __construct()
    {
        $this -> _db = new DB(array(
            'dbname'    => 'blog_pumpic',
            'host'      => 'localhost',
            'user'      => 'root',
            'password'  => 'password'
        ));
        // $this -> _pdo = $this -> _db -> getConnected();
    }

    private static  $instance; 
    
    // private $_pdo;
    private $_db;
    
    private $_searchCurr = [];
    private $_base;
    
    public static function getInstance()
    {
        if ( ! isset(self::$instance))
            self::$instance = new self();
        return self::$instance;
    } 
    
    private function _validateValue( $_val ) {
        return $this -> _db -> getConnected() -> quote( strtolower( trim($_val) ) );
    }
    
    public function setCurrBase( $_base ) 
    {
        if(!empty($_base))
            return $this -> _base = $_base;
    }
    
    public function setFilter( $_filter ) 
    {
        if(!empty($_filter) and is_array($_filter)) {
            
            foreach($_filter as $_key => $_value) :
                if(isset($_filter[ $_key ]))
                    $this -> _searchCurr[$_key] = array_map(array($this, '_validateValue'), $_value);
            endforeach;
            
            return $this -> _searchCurr;
        }
            
    }
    
    public function getCurrencies() 
    {
        //iso
        $_filter = '';
        if(isset($this -> _searchCurr['iso']) 
                and !empty($this -> _searchCurr['iso'])) 
        {
            if(is_array($this -> _searchCurr['iso']))
                $_filter .= "AND iso IN (".  implode($this -> _searchCurr['iso'], ',') . ")";
            if(is_string( $this -> _searchCurr['iso'] ))
                $_filter .= "AND iso = ". $this->_validateValue ( $this -> _searchCurr['iso'] );
        } 
        
        
        $_rates = $this -> _db -> query("SELECT currID as id, rates, iso FROM `currencies` WHERE hidden = 0 ".$_filter);
        return (!empty($_rates)) ? $_rates : array();
    }
    
}

