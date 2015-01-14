<?php 

try {
    set_error_handler(function($errno, $errstr, $errfile, $errline) {
        throw new ErrorException($errstr, 0, $errno, $errfile, $errline);
    });

    $config = array(
        'db' => array(
            'host' =>  '188.40.64.2', 
            'username' => 'pumpic_blog_user', 
            'password' => '57ge8j9SNg9EkhryWA3KV9ZB9NUue6',
            'dbname' =>  'pumpic_blog', 
            
            'options' => array(
                PDO::MYSQL_ATTR_INIT_COMMAND => 'set names utf8;',
                PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
                PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
            )
        ),
        'recordsOnPage' => 11
    );

    date_default_timezone_set('UTC');

    function getDb() {
        global $config;
        return new \PDO("mysql:host={$config['db']['host']};dbname={$config['db']['dbname']}", $config['db']['username'], $config['db']['password'], $config['db']['options']);
    }
    
    function getRates() {
        $_url = "http://openexchangerates.org/api/latest.json?app_id=aef6d4fe78d94707b26b14e5aaa2a143";
        $_currancies = file_get_contents( $_url );
        if($_currancies) {
            $_currancies = json_decode( $_currancies, JSON_OBJECT_AS_ARRAY );
            
            if(isset($_currancies['rates']) 
                    and is_array($_currancies['rates']) 
                    and count($_currancies['rates']) > 0) {
                foreach($_currancies['rates'] as $_iso => $_rate) :
                    if($_iso) setRates($_iso, $_rate);
                endforeach;
            } else
                \Exception ( 'Error! Result Rates Empty!' );
            
        } else
            \Exception ( 'Error! Can not load RATES. in( '.$_url.' )' );
        
    }
    
    function hasRates( $_iso ) {
        $pdo = getDb();
        $_iso = $pdo->quote( $_iso );
        $_result = $pdo->query("SELECT currID FROM `currencies` WHERE `iso` = {$_iso}")->fetchAll();
        if(is_array($_result) and count($_result) > 0) {
            return $_result;
        } else 
            return false;
    }
    
    
    function setRates( $iso, $rates ) {
        $iso = strtolower( trim( $iso ) );
        $_data = array('iso'        => $iso, 
                       'rates'      => $rates,
                       'date'       => 'NOW()',
                       'hidden'     => 0);
        
       
        if($_currID = hasRates( $iso )) {
            
            foreach($_currID as $_key => $_id) {
                updateRates($_id, $_data);
            }
        } else {
            insertRates($_data);
        }
            
    }
    
    // insert
    function insertRates( array $_data) {
        $pdo = getDb();
        $fields = '';
        
        foreach($_data as $_name => $_value) :
            $fields .= $_name." = '". $_value."',";
        endforeach;
        
        $sql = "INSERT INTO `currencies` SET currID = null, ".trim( $fields ,',');
        
        $stmt = $pdo->prepare($sql); 
        return $stmt->execute();
    }
    
    //update
    function updateRates($currID, array $_data) {
        $pdo = getDb();
        $fields = '';
        
        foreach($_data as $_name => $_value) :
            $fields .= $_name." = '". $_value."',";
        endforeach;
        
        $sql = "UPDATE `currencies` SET ".trim( $fields ,',')." WHERE currID = ".(int)$currID;
        
        $stmt = $pdo->prepare($sql);  
        return $stmt->execute();
    }
    
    
    getRates();
    
} catch (Exception $e) {
    file_put_contents(dirname(__FILE__) . '/logs/exceptions.log', PHP_EOL . date("Y-m-d H:i:s -> ") . $e->getMessage() . PHP_EOL . $e->getTraceAsString() . PHP_EOL . print_r($_REQUEST, true), FILE_APPEND);
}