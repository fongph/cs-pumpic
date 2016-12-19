<?php
$_inc = dirname(__FILE__); // includes
$b_dir = dirname( $_inc ); // folder sites directory

require_once $_inc.'/config.php';
require_once $_inc.'/di_function.php';
require_once $_inc.'/functions.php';
require_once $_inc.'/lib/users/Order.php';
$obj = new includes\lib\users\Order;

// smarty config
require_once 'smarty.config.php';

/* restore */
$_result = array(
    '_error' => false,
    '_success' => false,
);

$_sID = (isset($_POST['site_id']) and !empty($_POST['site_id'])) ? $_POST['site_id'] : false;

if(isset($_POST['email']) and !$obj -> validateEmail($_POST['email'])) {
   $_result['_error']['email'] = "Invalid email format.";
} else if(!empty($_POST['email']) and $_sID) {
     $_params = array(
        'siteId' => SITE_ID,
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