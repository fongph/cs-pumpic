<?php
// ini_set('display_errors', 1);
// error_reporting(-1);

$_inc = dirname(__FILE__); // includes
$b_dir = dirname( $_inc ); // folder sites directory

require_once $_inc.'/config.php';
require_once $_inc.'/lib/users/Order.php';
$obj = new includes\lib\users\Order;

/* test mail */
//require_once $_inc.'/lib/class.phpmail.php';
//$_mail = new Phpmail();
//
//$_data = $_mail -> send( array(
//    'from' => 'noreply@pumpic.com',
//    'to' => 'edii87shadow@gmail.com',
//    'type' =>  'freeTrialExpiresSoon',
//    'params' => [
//        // 'subject' => ['OpenigSoonThanks_pumpic' => 'Openig Soon Thanks'],
//        'customerName' => 'edii',
//        'numberDays' => '1',
//    ],
//) );
/* end */

// smarty config
require_once 'smarty.config.php';

$_productID = 20; // free trial productID ( 20 )

// $smarty->caching = false;
// $smarty->compile_check = false;
// $smarty->force_compile = false;
// $smarty->debugging = false;

/* registration */
$_result = array(
    '_error' => false,
    '_success' => false,
);
    

$_referer = (isset($_COOKIE['orders_referer']) and ! empty($_COOKIE['orders_referer'])) ? $_COOKIE['orders_referer'] : "--"; // $_SERVER['HTTP_REFERER']
$_landing = (isset($_COOKIE['landing']) and ! empty($_COOKIE['landing'])) ? $_COOKIE['landing'] : "--";

$obj->setReferer($_referer);
$obj->setLanding($_landing);

// if($obj -> getLoginUser()) $obj -> _redirect('/');

// $_session_order = $obj -> getSession('pumpic_order');
//$_productID = (isset($_GET['productID']) and !empty($_GET['productID'])) ? $_GET['productID'] : false;
$_phone = (isset($_POST['phone']) and !empty($_POST['phone'])) ? $_POST['phone'] : false;
$_name = (isset($_POST['name']) and !empty($_POST['name'])) ? $_POST['name'] : false;
$_captcha = (isset($_POST['captcha']) and !empty($_POST['captcha'])) ? $_POST['captcha'] : false;
$_sID = (isset($_POST['site_id']) and !empty($_POST['site_id'])) ? $_POST['site_id'] : false;

if(isset($_POST['email']) and !$obj -> validateEmail($_POST['email'])) {
   $_result['_error'] = "Invalid email format.";
} else if(isset($_POST['captcha']) and !$obj -> validateCaptcha( $_captcha )) { 
    $_result['_error'] = "Invalid CAPTCHA.";
} else if(!empty($_POST['email']) and $_sID and $obj -> validateCaptcha( $_captcha )) {

    $_params = array(
        'siteId' => $_sID,
        'email' => $_POST['email'],
        'name' => $_name,
    );

    $_respons = $obj->_initAfter($_params) -> CreateUsersFreeTrial -> respons;

    if(is_array($_respons) and count($_respons) > 0)
        $_result = array_merge ($_result, $_respons);
    
    if(isset($_result['user_id'])) {
        $_result['_success'] = 'Successful registration.';
        
//        // fly free trial stick 
//        // landing
//        if (!isset($_COOKIE['free_trial_stick']) || !(int)$_COOKIE['free_trial_stick']) {
//            setcookie("free_trial_stick", '1', time() + 3600 * 24 * 90, '/', '.' . $config['domain']);
//        }
        
        $eventManager = EventManager\EventManager::getInstance();
        $eventManager->emit('front-registration-trial-completed', array(
            'userId' => $_result['user_id'],
            'name' => $_name
        ));
    } 
}

if(isset($_result['user_id'])) {
    
    if(!isset($_COOKIE['fb_pixel']) || isset($_COOKIE['fb_pixel']) && !(int)$_COOKIE['fb_pixel'])
        setcookie("fb_pixel", '1', 0, '/');
    
    if($_productID) {
      if($obj -> createOrderByFreeTrial( $_result['user_id'], (int)$_productID, $_phone, $_name ))  
        $obj -> _redirect('/?fb=1#popUp=free-trial-registration'); // /#popUp=free-trial-registration
    } else
        $obj -> _redirect('/?fb=1#popUp=free-trial-registration'); // /#popUp=free-trial-registration
}
    
// init output params!
$smarty->assign('getOut', $_result);
$smarty->assign('productID', $_productID);

// init output params
$smarty->display($b_dir.'/templates/pages/free-trial.tpl');