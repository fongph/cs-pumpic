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
$products = $obj->getProducts('third', 'third-landing');

// default
if(is_array($products)) {
    if (isset($products['iosiCloud'])) {
        foreach ($products['iosiCloud'] as $item) {
            if ($item['period'] == 1 && $item['id']) {
                $smarty->assign('defaultIosiCloud', $item['id']);
                $smarty->assign('defaultIosiCloudPath', $item['path']);
                $smarty->assign('defaultIosiCloudPrice', round($item['price'] / $item['period'], 2));
            }
            else{
                $itemNumber = array_search($item, $products['iosiCloud']);
                unset($products['iosiCloud'][$itemNumber]);
            }

        }
    }

    // Basic
    if(isset($products['androidBasic'])) {
        foreach($products['androidBasic'] as $item) :
            if ($item['period'] == 1 && $item['id']) {
                $smarty->assign('defaultAndriodBasic', $item['id']);
                $smarty->assign('defaultAndriodBasicPath', $item['path']);
                $smarty->assign('defaultAndriodBasicPrice', round($item['price'] / $item['period'], 2));
            }
            else{
                $itemNumber = array_search($item, $products['androidBasic']);
                unset($products['androidBasic'][$itemNumber]);
            }

        endforeach;
    }
    if(isset($products['androidPremium'])) {
        foreach($products['androidPremium'] as $item) :
            if ($item['period'] == 1 && $item['id']) {
                $smarty->assign('defaultAndroidPremium', $item['id']);
                $smarty->assign('defaultAndroidPremiumPath', $item['path']);
                $smarty->assign('defaultAndroidPremiumPrice', round($item['price'] / $item['period'], 2));
            }
            else{
                $itemNumber = array_search($item, $products['androidPremium']);
                unset($products['androidPremium'][$itemNumber]);
            }

        endforeach;
    }

}


// init output params!
$smarty->assign('getProducts', $products);
// $smarty->assign('_ga', (isset($_COOKIE['_ga'])) ? trim( strtolower($_COOKIE['_ga']), 'ga') : '' );
$smarty->display($b_dir.'/templates/pages/espiao-movel.tpl');