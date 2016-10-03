<?php
$_inc = dirname(__FILE__); // includes
$b_dir = dirname( $_inc ); // folder sites directory

require_once $_inc.'/config.php';
require_once $_inc.'/lib/Currency.php';
require_once $_inc.'/lib/users/Order.php';
$obj = new includes\lib\users\Order;

// smarty config
require_once 'smarty.config.php';

/* list order */
$products = $obj ->getProducts('first');

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
    // Basic
    if(isset($products['basic'])) {
        foreach($products['basic'] as $item) :
            if ($item['period'] == 12 && $item['id']) {
                $smarty->assign('defaultBasicProduct', $item['id']);
                $smarty->assign('defaultBasicPrice', round($item['price'] / $item['period'], 2));
            }
        endforeach;
    }
    // Premium
    if(isset($products['premium'])) {
        foreach($products['premium'] as $item) :
            if ($item['period'] == 12 && $item['id']) {
                $smarty->assign('defaultPremiumProduct', $item['id']);
                $smarty->assign('defaultPremiumPrice', round($item['price'] / $item['period'], 2));
            }
        endforeach;
    }
}
// currency
$_curr = system\Currency::getInstance();
$_curr -> setFilter( ['iso' => ['USD','EUR','GBP','CAD','AUD'] ] );
$_rates = $_curr -> getCurrencies();

$smarty->assign('rates', json_encode($_rates));

// init output params!
$smarty->assign('getProducts', $products);

// init output params
$smarty->display($b_dir.'/templates/pages/store.tpl');
