<?php
$_inc = dirname(__FILE__); // includes
$b_dir = dirname( $_inc ); // folder sites directory

require_once $_inc.'/config.php';
require_once $_inc.'/di_function.php';

require_once $_inc.'/lib/Currency.php';
require_once $_inc.'/lib/users/Order.php';
$obj = new includes\lib\users\Order;

// smarty config
require_once 'smarty.config.php';

/* list order */
$products = $obj ->getProducts('second-landing');


// default
if(is_array($products)) {
    if(isset($products['iosiCloud'])) {
        foreach($products['iosiCloud'] as $item) :
            if ($item['period'] == 6 && $item['id']) {
                $smarty->assign('defaultIosiCloudProduct', $item['id']);
                $smarty->assign('defaultIosiCloudPrice', round($item['price'] / $item['period'], 2));
            }
            if ($item['period'] == 12 || $item['period'] == 24) {
                $itemNumber = array_search($item, $products['iosiCloud']);
                unset($products['iosiCloud'][$itemNumber]);
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
// init output params!
$smarty->assign('getProducts', $products);
// $smarty->assign('_ga', (isset($_COOKIE['_ga'])) ? trim( strtolower($_COOKIE['_ga']), 'ga') : '' );
$smarty->display($b_dir.'/templates/pages/espiao-movel/index.tpl');