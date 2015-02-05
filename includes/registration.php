<?php
$_inc = dirname(__FILE__); // includes
$b_dir = dirname( $_inc ); // folder sites directory

require_once $_inc.'/config.php';
require_once $_inc.'/lib/users/Order.php';
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

/* registration */
$_result = array(
    '_error' => false,
    '_success' => false,
);
    
if($obj -> getLoginUser()) $obj -> _redirect('/');

    
// $_session_order = $obj -> getSession('pumpic_order');
$_productID = (isset($_GET['productID']) and !empty($_GET['productID'])) ? $_GET['productID'] : false;
$_captcha = (isset($_POST['captcha']) and !empty($_POST['captcha'])) ? $_POST['captcha'] : false;
$_sID = (isset($_POST['site_id']) and !empty($_POST['site_id'])) ? $_POST['site_id'] : false;

if(isset($_POST['email']) and !$obj -> validateEmail($_POST['email'])) {
   $_result['_error'] = "Invalid email format.";
} else if(isset($_POST['captcha']) and !$obj -> validateCaptcha( $_captcha )) { 
    $_result['_error'] = "Invalid CAPTCHA.";
} else if(!empty($_POST['email']) and $_sID and $obj -> validateCaptcha( $_captcha )) {

    $_params = array(
        'siteId' => $_sID,
        'email' => $_POST['email']
    );


    $_respons = $obj->_initAfter($_params) -> registration -> respons;

    if($_result['_success']) {
        $_result['_success'] = 'Successful registration.';
    } 

    if(is_array($_respons) and count($_respons) > 0)
        $_result = array_merge ($_result, $_respons);

}

if($_result['_success']) {

    if($_productID) {
        $_url = $obj -> createOrder( (int)$_productID );
        if($_url) {
           $obj -> _redirect( $_url ); 
        } else
            $obj -> _redirect('/#popUp=registration');
    } else
        $obj -> _redirect('/#popUp=registration'); 

}
    
// init output params!
$smarty->assign('getOut', $_result);
$smarty->assign('productID', $_productID);

// init output params
$smarty->display($b_dir.'/templates/pages/registration.tpl');