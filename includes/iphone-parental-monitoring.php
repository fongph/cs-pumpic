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


if (isset($_COOKIE['amp']) && !empty($_COOKIE['amp'])){
    //get value ABtest
    $amp = $_COOKIE['amp'];
    $smarty->assign('ABtest', $amp);

} else {
    $urls = array(0 => 'ABtest-1', 1 => 'ABtest-2');
    $clientsNumber = $obj ->getAmpStoreClientsCount();
    $obj->incrementAmpStoreClientsCount();
    $url = $clientsNumber % 2;
    $amp = $urls[$url];
    setcookie('amp', $amp, time()+365*24*60*60, '/');
    //get value ABtest
    $smarty->assign('ABtest', $amp);
}


/* list order */
$products = $obj->getProducts('second-new-amp');


// default
if(is_array($products)) {
//    var_dump($products['iosiCloud']);
    if (isset($products['iosiCloud'])) {
        foreach ($products['iosiCloud'] as $item) :
            if ($item['period'] == 12 && $item['id']) {
                $smarty->assign('defaultIosiCloudProduct', $item['id']);
                $smarty->assign('defaultIosiCloudPrice', round($item['price'] / $item['period'], 2));
            }
        endforeach;
    }
}

// init output params!
$smarty->assign('getProducts', $products);
$smarty->display($b_dir . '/templates/pages/amp/iphone-parental-monitoring.tpl');