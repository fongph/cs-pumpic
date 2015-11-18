<?php

//$config
$_inc = dirname(__FILE__); // includes

require_once $_inc . '/lib/users/Order.php';
$order = new includes\lib\users\Order;

if( isset($_POST['link']) and !empty($_POST['link']) ) {
        $_url = $_POST['link'];
        
        $add_get = '';
        foreach($_POST as $key => $value) {
            if(!in_array($key, ['link', 'submit'])) {
                $value = trim($value);
                $add_get .= $key .'='. $value . '&';
                
                // mailChimp Jira
                if($order->validateEmail($value))
                    $order->subscriptionFromMailChimp( $value );
                
            }
        }
        
        $_url .= (parse_url($_url, PHP_URL_QUERY) ? '&' : '?') . trim($add_get, '&') ;
        $order->_redirect( $_url );
} else
    $order->_redirect('/security/404');
