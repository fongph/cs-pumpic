<?php
$_inc = dirname(__FILE__); // includes
$b_dir = dirname( $_inc ); // folder sites directory

require_once $_inc.'/config.php';
require_once $_inc.'/lib/users/Order.php';
$obj = new includes\lib\users\Order;

// smarty config
require_once 'smarty.config.php';

/* list order */
$products = $obj ->getProducts('first');
$_sortingProducts = array('basic' => array(), 'premium' => array());
if(is_array($products)) {
    // Basic
    if(isset($products['basic'])) {
        $_sortingProducts['basic'] = $obj -> _arsort( $products['basic'] );
    }
    // Premium
    if(isset($products['premium'])) {
        $_sortingProducts['premium'] = $obj -> _arsort( $products['premium'] );
    }
}
    
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

// conver to evro
if(is_array($_sortingProducts)) {
    if(isset($_sortingProducts['basic']) && is_array($_sortingProducts['basic'])) {
        foreach($_sortingProducts['basic'] as $bkey => $bitem) {
            $_sortingProducts['basic'][$bkey]['price'] = round($obj->converting($bitem['price'], 'eur'), 2);
        }
    }
    if(isset($_sortingProducts['premium']) && is_array($_sortingProducts['premium'])) {
        foreach($_sortingProducts['premium'] as $pkey => $pitem) {
            $_sortingProducts['premium'][$pkey]['price'] = round($obj->converting($pitem['price'], 'eur'), 2);
        }
    }
}

// default
if(is_array($products)) { 
    
    // Basic
    if(isset($products['basic'])) {
        foreach($products['basic'] as $item) :
            if($item['period'] == 12 && $item['id']) { 
                $smarty->assign('getDefaultBasic', $item['id']);
                $smarty->assign('getDefaultBasicMoth', round( $obj->converting( ($item['price']/12), 'eur'), 2));
            }    
        endforeach;
    }
    // Premium
    if(isset($products['premium'])) {
        foreach($products['premium'] as $item) :
            if($item['period'] == 12 && $item['id']) {
                $smarty->assign('getDefaultPremium', $item['id']);
                $smarty->assign('getDefaultPremiumMoth', round( $obj->converting( ($item['price']/12), 'eur'), 2));
            }    
        endforeach;
    }
}

// init output params!
$smarty->assign('getProducts', $_sortingProducts);
// $smarty->assign('_ga', (isset($_COOKIE['_ga'])) ? trim( strtolower($_COOKIE['_ga']), 'ga') : '' );
$smarty->display($b_dir.'/templates/pages/mobile-spion.tpl');