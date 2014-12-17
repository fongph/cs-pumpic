<?php
//$config
$_inc = dirname(__FILE__); // includes

require_once $_inc.'/lib/users/Order.php';
$order      = new includes\lib\users\Order;
$user_id    = $order->getUserID();
$_productID = (!empty($_POST['price']['productID'])) ? (int)$_POST['price']['productID'] : false;
//logged
if ($_productID) {
    $_url = $order -> createOrder($_productID);
    $order -> _redirect($_url);
}else {
    $order -> _redirect('/');
}

?>
