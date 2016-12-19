<?php
$_inc = dirname(__FILE__); // includes
$b_dir = dirname( $_inc ); // folder sites directory

require_once $_inc.'/config.php';
require_once $_inc.'/di_function.php';
require_once $_inc.'/lib/users/Order.php';
$obj = new includes\lib\users\Order;

// smarty config
require_once 'smarty.config.php';

/* registration */
$_result = array(
    '_error' => false,
    '_success' => false,
);
    
if($obj -> getLoginUser()) $obj -> _redirect('/');

    
// $_session_order = $obj -> getSession('pumpic_order');
$_productID = (isset($_GET['productID']) and !empty($_GET['productID'])) ? $_GET['productID'] : false;
$_captcha = (isset($_POST['captcha']) and !empty($_POST['captcha'])) ? $_POST['captcha'] : false;
$_sID = (isset($_POST['site_id']) and !empty($_POST['site_id'])) ? $_POST['site_id'] : 1;

if(isset($_POST['email']) and !$obj -> validateEmail($_POST['email'])) {
   $_result['_error']['email'] = "Invalid email format.";
} else if(isset($_POST['captcha']) and !$obj -> validateCaptcha( $_captcha )) { 
    $_result['_error']['captcha'] = "Invalid CAPTCHA.";
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
    } else {
        $eventManager = \EventManager\EventManager::getInstance();
        $eventManager->emit('front-registration-completed', array(
            'email' => $_POST['email'],
            'seller' => 'pumpic.com'
        ));
        
        $obj -> _redirect('/#popUp=registration'); 
    }

}

// init output params!
$smarty->assign('getOut', $_result);
$smarty->assign('productID', $_productID);

// init output params
$smarty->display($b_dir.'/templates/pages/registration.tpl');