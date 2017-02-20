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

$url = $_COOKIE['page'];

$lastTestedPages = array('/store-sub-same', '/store-sub-new', '/store-sub-new-hyp1', '/store-sub-new-1', '/store-sub-new-3');
if (isset($_COOKIE['page']) && in_array($url, $lastTestedPages)){
    unset($_COOKIE['page']);
    setcookie('page', null, -1, '/');
}

if (isset($_COOKIE['page']) && !empty($_COOKIE['page'])){

  if ($url != '/store'){
        header("Location: //".$config['domain'].$url.".html");
    }

} elseif (!isset($_COOKIE['page']) || empty($_COOKIE['page'])) {
    $urls = array(0 =>'/store', 1 => '/store-sub-new-2');
    $clientsNumber = $obj ->getStoreClientsCount();
    $obj->incrementStoreClientsCount();
    $url = $clientsNumber % 2;
    $redirectUrl = $urls[$url];
//    setcookie('page', $redirectUrl, time()+365*24*60*60, '/', '.pumpic.com');
    setcookie('page', $redirectUrl);
    if ($redirectUrl != '/store'){
        header("Location: //".$config['domain'].$redirectUrl.".html");
    }

}

/* list order */
$products = $obj ->getProducts('second');

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
            if ($item['period'] == 12 && $item['id']) {
                $smarty->assign('defaultIosiCloudProduct', $item['id']);
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
$_curr = system\Currency::getInstance();
$_curr -> setFilter( ['iso' => ['USD','EUR','GBP','CAD','AUD'] ] );
$_rates = $_curr -> getCurrencies();

$smarty->assign('rates', json_encode($_rates));
$smarty->assign('showRobots', 'no');

// init output params!
$smarty->assign('getProducts', $products);

$smarty->display($b_dir . '/templates/pages/store.tpl');



