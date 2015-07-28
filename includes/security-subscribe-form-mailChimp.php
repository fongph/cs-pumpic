<?php

//$config
$_inc = dirname(__FILE__); // includes

require_once $_inc . '/lib/users/Order.php';
$order = new includes\lib\users\Order;
$user_id = $order->getUserIdByAuth();
$_request = (isset($_POST['price']) and ! empty($_POST['price'])) ? $_POST['price'] : false;

$_referer = (isset($_COOKIE['orders_referer']) and ! empty($_COOKIE['orders_referer'])) ? $_COOKIE['orders_referer'] : "--"; // $_SERVER['HTTP_REFERER']
$_landing = (isset($_COOKIE['landing']) and ! empty($_COOKIE['landing'])) ? $_COOKIE['landing'] : "--";

$order->setReferer($_referer);
$order->setLanding($_landing);

//echo "<pre>";
//var_dump( $_REQUEST, $_COOKIE );
//echo "</pre>"; die('stop');
//logged

if (isset($_request['productID']) and $_productID = (int) $_request['productID']) {
    $_url = $order->createOrder($_productID);

    if ($user_id !== false) {
        $eventManager = EventManager\EventManager::getInstance();
        $eventManager->emit('front-order-pending', array(
            'userId' => $user_id
        ));
    }

    if (isset($_GET['_ga'])) {
        $_url .= (parse_url($_url, PHP_URL_QUERY) ? '&' : '?') . '_ga=' . $_GET['_ga'];
    }
    $order->_redirect($_url);
} else {
    if (isset($_GET['product'])) {
        try {
            $_url = $order->createOrderByProduct($user_id, $_GET['product'], isset($_GET['device']) ? $_GET['device'] : null);

            if (isset($_GET['_ga'])) {
                $_url .= (parse_url($_url, PHP_URL_QUERY) ? '&' : '?') . '_ga=' . $_GET['_ga'];
            }

            $order->_redirect($_url);
        } catch (CS\Models\Product\ProductNotFoundException $e) {
            $order->_redirect('/');
        }
    } else {
        $order->_redirect('/');
    }
}
?>
