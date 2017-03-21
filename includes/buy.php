<?php

//$config
$_inc = dirname(__FILE__); // includes

require __DIR__ . '/../vendor/autoload.php';
require_once $_inc . '/lib/users/Order.php';
require_once $_inc.'/di_function.php';

$logger = new Monolog\Logger('logger');
Monolog\ErrorHandler::register($logger);
$logger->pushProcessor(new Monolog\Processor\WebProcessor());
$logger->pushHandler(new Monolog\Handler\StreamHandler(__DIR__ . '/../logs/buy.log', Monolog\Logger::DEBUG));
$logger->info('event');
$order = new includes\lib\users\Order;
$user_id = $order->getUserIdByAuth();
$_request = (isset($_POST['price']) and ! empty($_POST['price'])) ? $_POST['price'] : false;


$_referer = (isset($_COOKIE['orders_referer']) and ! empty($_COOKIE['orders_referer'])) ? $_COOKIE['orders_referer'] : "--"; // $_SERVER['HTTP_REFERER']
$_landing = (isset($_COOKIE['landing']) and ! empty($_COOKIE['landing'])) ? $_COOKIE['landing'] : "--";
$_params = getURI();

$order->setReferer($_referer);
$order->setLanding($_landing);

if (isset($_request['productID']) and $_productID = (int) $_request['productID']) {
    $_url = $order->createOrder($_productID);

    $_utm = '';
    if(isset($_GET['utm_source']) || isset($_GET['utm_medium']) || isset($_GET['utm_campaign']) || isset($_GET['utm_term'])) {
    
        if(!empty($_GET['utm_source']))
            $_utm .= 'utm_source='.$_GET['utm_source'].'&';
        if(!empty($_GET['utm_medium']))
            $_utm .= 'utm_medium='.$_GET['utm_medium'].'&';
        if(!empty($_GET['utm_campaign']))
            $_utm .= 'utm_campaign='.$_GET['utm_campaign'].'&';
        if(!empty($_GET['utm_term']))
            $_utm .= 'utm_term='.$_GET['utm_term'].'&';

        $_url .= (parse_url($_url, PHP_URL_QUERY) ? '&' : '?') . trim($_utm, '&');
    
    }
    
    $_url .= (parse_url($_url, PHP_URL_QUERY) ? '&' : '?') . 'sessionOption=new&member=new';
    if (isset($_GET['_ga'])) {
        $_url .= (parse_url($_url, PHP_URL_QUERY) ? '&' : '?') . '_ga=' . $_GET['_ga'] ;
    }

    $order->_redirect($_url);
} elseif(!empty($_params['getParams'])){
    $_url = $order->createOrder((int) $_params['getParams']['productID']);
    $order->_redirect($_url);
} else {
    if (isset($_GET['product'])) {
        try {
            $_url = $order->createOrderByProduct($user_id, $_GET['product'], isset($_GET['device']) ? $_GET['device'] : null);

            $_utm = '';
            if(isset($_GET['utm_source']) || isset($_GET['utm_medium']) || isset($_GET['utm_campaign']) || isset($_GET['utm_term'])) {

                if(!empty($_GET['utm_source']))
                    $_utm .= 'utm_source='.$_GET['utm_source'].'&';
                if(!empty($_GET['utm_medium']))
                    $_utm .= 'utm_medium='.$_GET['utm_medium'].'&';
                if(!empty($_GET['utm_campaign']))
                    $_utm .= 'utm_campaign='.$_GET['utm_campaign'].'&';
                if(!empty($_GET['utm_term']))
                    $_utm .= 'utm_term='.$_GET['utm_term'].'&';

                $_url .= (parse_url($_url, PHP_URL_QUERY) ? '&' : '?') . trim($_utm, '&');

            }
            
            $_url .= (parse_url($_url, PHP_URL_QUERY) ? '&' : '?') . 'sessionOption=new&member=new';
            if (isset($_GET['_ga'])) {
                $_url .= (parse_url($_url, PHP_URL_QUERY) ? '&' : '?') . '_ga=' . $_GET['_ga'] ;
            }

            $order->_redirect($_url);
        } catch (CS\Models\Product\ProductNotFoundException $e) {
            $order->_redirect('/');
        }
    } else {
        $order->_redirect('/');
    }
}

