<?php
$_inc = dirname(__FILE__); // includes
$b_dir = dirname( $_inc ); // folder sites directory

require_once $_inc.'/config.php';
require_once $_inc.'/lib/Currency.php';
require_once $_inc.'/lib/users/Order.php';
require_once $_inc.'/di_function.php';
$obj = new includes\lib\users\Order;

// smarty config
require_once 'smarty.config.php';

$products = $obj->getProducts('third', 'third-landing');

/* form_order */
$_request = (isset($_POST['price']) and !empty($_POST['price'])) ? $_POST['price']: false;
if($_request['productID']) {
    // $_order ->setSession('pumpic_order', array('productID' => (int)$_request['productID']));

    if($_request['productID'] and $obj -> getUserIdByAuth()) {
        // $_order ->unsetSession('pumpic_order'); // clear session

        $_url = $obj -> createOrder((int)$_request['productID']);
        if($_url) {
            $obj -> _redirect( $_url );
        }
        // create order
    } else if((int)$_request['productID']) {
        $obj -> _redirect('/buy.html?productID='.$_request['productID']);

    }

}

// default
if(is_array($products)) {
    if (isset($products['iosiCloud'])) {
        foreach ($products['iosiCloud'] as $item) {
            if ($item['period'] == 1 && $item['id']) {
                $smarty->assign('defaultIosiCloud', $item['id']);
                $smarty->assign('defaultIosiCloudPath', $item['path']);
                $smarty->assign('defaultIosiCloudPrice', $item['price']);
            }
            else{
                $itemNumber = array_search($item, $products['iosiCloud']);
                unset($products['iosiCloud'][$itemNumber]);
            }
        }
    }


}
// init output params!
$smarty->assign('getProducts', $products);
$smarty->display($b_dir . '/templates/pages/iphone-parental-monitoring.tpl');