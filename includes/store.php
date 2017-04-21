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

if (isset($_COOKIE['store']) && !empty($_COOKIE['store'])){
    $namespace = $_COOKIE['store'];
    //@TODO do something

} elseif (!isset($_COOKIE['store']) || empty($_COOKIE['store'])) {
  $namespace = getNamespace($obj);
    //@TODO show needed page
}

/* list order */
$products = $obj->getProducts($namespace);

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
    if(isset($products['iosiCloud'])) {
        foreach($products['iosiCloud'] as $item) :
            if ($item['period'] == 24 && $item['id']) {
                $smarty->assign('defaultIosiCloud', $item['id']);
                $smarty->assign('defaultIosiCloudPrice', round($item['price'] / $item['period'], 2));
            }
        endforeach;
    }
    // Basic
    if(isset($products['androidBasic'])) {
        foreach($products['androidBasic'] as $item) :
            if ($item['period'] == 12 && $item['id']) {
                $smarty->assign('defaultAndriodBasicProduct', $item['id']);
                $smarty->assign('defaultAndriodBasicPrice', round($item['price'] / $item['period'], 2));
            }
        endforeach;
    }
    if(isset($products['androidPremium'])) {
        foreach($products['androidPremium'] as $item) :
            if ($item['period'] == 12 && $item['id']) {
                $smarty->assign('defaultAndroidPremiumProduct', $item['id']);
                $smarty->assign('defaultAndroidPremiumPrice', round($item['price'] / $item['period'], 2));
            }
        endforeach;
    }

}



// init output params!
$smarty->assign('getProducts', $products);
if ($namespace == 'third'){
    $smarty->display($b_dir . '/templates/pages/store-ab-test.tpl');
} else {
    $smarty->display($b_dir . '/templates/pages/store.tpl');

}



function getNamespace($obj)
{
    $stores = array(0 =>'second-store', 1 => 'third');

    $clientsNumber = $obj ->getStoreClientsCount();
    $obj->incrementStoreClientsCount();
    $store = $clientsNumber % 2;
    $namespace = $stores[$store];
    setcookie("store", $namespace, time()+365*24*60*60, '/');

    return $namespace;
}

