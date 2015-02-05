<?php
$_inc = dirname(__FILE__); // includes
$b_dir = dirname( $_inc ); // folder sites directory

require_once $_inc.'/config.php';
require_once $_inc.'/functions.php';
require_once $_inc.'/lib/users/Order.php';
$obj = new includes\lib\users\Order;

// smarty config
require_once 'smarty.config.php';

//$smarty = new Smarty;
//
//// settings smarty
//$smarty->compile_check = false;
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

/* restore */
$_result = array(
    '_error' => false,
    '_success' => false,
);

$_sID = (isset($_POST['site_id']) and !empty($_POST['site_id'])) ? $_POST['site_id'] : false;

if(isset($_POST['email']) and !$obj -> validateEmail($_POST['email'])) {
   $_result['_error'] = "Invalid email format.";
} else if(!empty($_POST['email']) and $_sID) {
     $_params = array(
        'siteId' => $_sID,
        'email' => $_POST['email']
    );

    $_respons = $obj->_initAfter($_params) -> restore -> respons;

    if(is_array($_respons) and count($_respons) > 0)
        $_result = array_merge ($_result, $_respons);
}

if($_result['_success']) {
    $_result['_success'] = 'Your request was successfully sent. Check your email for further instructions.'; // 'Your request was successfully sent. Check your inbox and follow the instructions from the received email.';
}
    
    
// init output params!
$smarty->assign('getOut', $_result);

// init output params
$smarty->display($b_dir.'/templates/pages/restore.tpl');