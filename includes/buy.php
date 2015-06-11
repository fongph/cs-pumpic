<?php
//$config
$_inc = dirname(__FILE__); // includes

require_once $_inc.'/lib/users/Order.php';
$order   = new includes\lib\users\Order;
$user_id = $order->getUserIdByAuth();
$_request= (isset($_POST['price']) and !empty($_POST['price'])) ? $_POST['price']: false;
//$_referer = (isset($_POST['referer']) and !empty($_POST['referer'])) ? $_POST['referer']: false;
// $_productID = (!empty($_GET['productID'])) ? (int)$_GET['productID'] : false;


$_referer = (isset($_COOKIE['orders_referer']) and !empty($_COOKIE['orders_referer'])) ? $_COOKIE['orders_referer'] : "--"; // $_SERVER['HTTP_REFERER']
$_landing = (isset($_COOKIE['landing']) and !empty($_COOKIE['landing'])) ? $_COOKIE['landing'] : "--";

// $_referer = ($order ->getSession('orders_referer')) ? $order ->getSession('orders_referer'): false;
$order ->setReferer( $_referer );
$order ->setLanding( $_landing );

 // echo "<pre>"; var_dump( $_REQUEST, $_SESSION, $_COOKIE, $_COOKIE['PHPSESSID'] ); echo "</pre>"; die('stop');

//logged
if (isset($_request['productID']) and $_productID = (int)$_request['productID']) {
    $_url = $order -> createOrder($_productID);
    
//    if (isset($_GET['_ga'])) {
//        $_url .= (parse_url($_url, PHP_URL_QUERY) ? '&' : '?') . '_ga=' . $_GET['_ga'];
//    }
//    if (isset($_GET['_ga'])) {
//        $_url .= (parse_url($_url, PHP_URL_QUERY) ? '&' : '?') . '_ga=' . $_GET['_ga'];
//    }
    
//    if (isset($_COOKIE['PHPSESSID'])) {
//        $_url .= (parse_url($_url, PHP_URL_QUERY) ? '&' : '?') . 'PHPSESSID=' . $_COOKIE['PHPSESSID'];
//    }
    
    $order -> _redirect($_url);
}else {
    if (isset($_GET['product'])) {
        try {
            $_url = $order -> createOrderByProduct($user_id, $_GET['product'], isset($_GET['device'])? $_GET['device'] : null);
//            if (isset($_GET['_ga'])) {
//                $_url .= (parse_url($_url, PHP_URL_QUERY) ? '&' : '?') . '_ga=' . $_GET['_ga'];
//            }
            
//            if (isset($_COOKIE['PHPSESSID'])) {
//                $_url .= (parse_url($_url, PHP_URL_QUERY) ? '&' : '?') . 'PHPSESSID=' . $_COOKIE['PHPSESSID'];
//            }
            
            $order -> _redirect($_url);
        } catch (CS\Models\Product\ProductNotFoundException $e) {
            $order -> _redirect('/');
        }
    }else {
        $order -> _redirect('/');
    }

}



?>
