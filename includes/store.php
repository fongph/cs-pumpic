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
$url = $_COOKIE['banner'];

//var_dump($_SERVER['REQUEST_URI']);

function preserve_qs() {
    $queryString = str_replace ('/store.html', '', $_SERVER['REQUEST_URI']);
    if (empty($queryString) && strpos($queryString, "?") === false) {
        return "";
    }
    return $queryString;
}

if (isset($_COOKIE['banner']) && !empty($_COOKIE['banner'])){

    if ($url != '/store'){
        header("Location: //".$config['domain'].$url.".html" .  preserve_qs());
    }

} elseif (!isset($_COOKIE['page']) || empty($_COOKIE['page'])) {
    $urls = array(0 =>'/store', 1 => '/store-deal');
    $clientsNumber = $obj ->getStoreClientsCount();
    $obj->incrementStoreClientsCount();
    $url = $clientsNumber % 2;
    $redirectUrl = $urls[$url];
    setcookie('banner', $redirectUrl, time()+365*24*60*60, '/');
//    setcookie('page', $redirectUrl);
    if ($redirectUrl != '/store'){
        header("Location: //".$config['domain'].$redirectUrl.".html" .  preserve_qs());
    }

}
/* list order */
$products = $obj->getProducts('second-store');

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



