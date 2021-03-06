<?php
$_inc = dirname(__FILE__); // includes
$b_dir = dirname( $_inc ); // folder sites directory

require_once $_inc.'/config.php';
require_once $_inc.'/lib/users/Order.php';
require_once $_inc.'/di_function.php';

$obj = new includes\lib\users\Order;

// smarty config
require_once 'smarty.config.php';

//$smarty = new Smarty;
//
//// settings smarty
//$smarty->compile_check = true;
//$smarty->debugging = false;
//$smarty->force_compile = 1;
//
//$smarty->setTemplateDir($config['smarty']['tpl_path']);
//$smarty->setCacheDir($config['smarty']['cache_path']);
//$smarty->setCompileDir($config['smarty']['tpl_path_compile']);
//
//$smarty->registerPlugin("function","year_now","print_current_year");
//$smarty->assign("domain",$config['domain']);
//$smarty->assign("domain_http",$config['domain_http']);
//$smarty->assign("img",$config['path_img']);
//$smarty->assign("css",$config['path_css']);
//$smarty->assign("js",$config['path_js']);
//$smarty ->assign('api_device', $config['api_device']);
//$smarty ->assign('site_id', $config['site_id']);

/* list order */
$products = $obj ->getProducts('test');
    
/* form_order */
$_request = (isset($_POST['price']) and !empty($_POST['price'])) ? $_POST['price']: false;
if($_request['productID']) {
    // $_order ->setSession('pumpic_order', array('productID' => (int)$_request['productID']));

    if($_request['productID'] and $obj -> getUserIdByAuth()) {
        // $_order ->unsetSession('pumpic_order'); // clear session
        $_url = $obj -> createOrder((int)$_request['productID'], true);
        if($_url) {
            $obj -> _redirect( $_url );
        } 
        // create order
    } else if((int)$_request['productID']) {
        $obj -> _redirect('/buy.html?productID='.$_request['productID']);
        
    }

}

//if(!$obj->getSession('orders_referer') or ($obj->getSession('orders_referer') != $_SERVER['HTTP_REFERER'])) {
//    $obj->setSession('orders_referer', $_SERVER['HTTP_REFERER']);
//}

// init output params!
$smarty->assign('getProducts', $products);

// $smarty ->assign('referer', $_SERVER['HTTP_REFERER']);
// init output params
$smarty->display($b_dir.'/templates/pages/store-test.tpl');