<?php
$_inc = dirname(__FILE__); // includes
$b_dir = dirname( $_inc ); // folder sites directory

require_once $_inc.'/config.php';
require_once $_inc.'/di_function.php';
require_once $_inc.'/lib/users/Order.php';
$obj = new includes\lib\users\Order;

// smarty config
require_once 'smarty.config.php';

/* authorization */
$_url = '';
$_result = array(
    '_error' => false,
    '_success' => false,
);

if($obj -> getLoginUser()) $obj -> _redirect('/');
    
// $_session_order = $obj -> getSession('pumpic_order');
$_productID = (isset($_GET['productID']) and !empty($_GET['productID'])) ? $_GET['productID'] : false;
$_pass = (isset($_POST['password']) and !empty($_POST['password'])) ? trim($_POST['password']) : null;
    
if($_productID) {
    $_url = '?'.$_SERVER['QUERY_STRING'];
}

if((isset($_POST['email']) and !$obj ->validateEmail($_POST['email']))) {
   $_result['_error']['email'] = "Invalid email format.";
} else if(isset($_POST['email']) and !empty($_POST['email'])) {
     $_params = array(
        'siteId' => SITE_ID,
        'email' => $_POST['email'],
        'password' => $_pass
    );

    $_respons = $obj ->_initAfter($_params) -> auth -> respons;

    if(is_array($_respons) and count($_respons) > 0)
        $_result = array_merge ($_result, $_respons);
}

if($_result['_success']) {
    
    if($_productID) {
        $_url = $obj -> createOrder( (int)$_productID );
        if($_url) {
           $obj -> _redirect( $_url ); 
        } else
            $obj -> _redirect('/#popUp=auth');
    } else
        $obj -> _redirect('/#popUp=auth'); // redirect home page!
} 
    
// init output params!
$smarty->assign('getOut', $_result);
$smarty->assign('getUrl', $_url);

// init output params
$smarty->display($b_dir.'/templates/pages/login.tpl');