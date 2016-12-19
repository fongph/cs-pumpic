<?php
;

$_inc = dirname(__FILE__); // includes
$b_dir = dirname( $_inc ); // folder sites directory

// require_once $_inc.'/config.php';
require_once $_inc.'/config.php';
require_once $_inc.'/di_function.php';
require_once $_inc.'/functions.php';
require_once $_inc.'/lib/class.phpmail.php';


$_mail = new Phpmail( $config['db_blog'] );

$_result = array(
    'error' => false,
    'success' => false,
);

smarty_function_getUserInfo(array(), $smarty);

if(isset($_SERVER['HTTP_X_REQUESTED_WITH']) && !empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') { 
  
header("Content-Type: application/json");
header("Cache-Control: no-cache");
header("Pragma: no-cache");

 $smarty->caching = false;
 $smarty->compile_check = false;
 $smarty->force_compile = false;
 $smarty->debugging = false;

// init function json
function json_modifier($value) {
    return json_encode($value);
}

function json_function($params, &$smarty) {
    return json_encode($params);
}

$_request = (isset($_POST['params']) and !empty($_POST['params'])) ? $_POST['params']: false;

// register function and modifier
$smarty->registerPlugin("modifier",'json', 'json_modifier');
$smarty->registerPlugin("function",'json', 'json_function');

// generate params
$smarty->assign('arr', $_mail ->_sendMobileOperators($_request) );

// init output params
$smarty->display($b_dir.'/templates/json/MobileOperators_json.tpl');

} else { 
    // validate
if(isset($_POST['carrier']) and empty($_POST['carrier']))
    $_result['error']['carrier'] = "The Carrier field is empty";

if(isset($_POST['email']) and !$_mail->validateEmail($_POST['email'])) 
   $_result['error']['email'] = "The Email field is empty";

if(isset($_POST['captcha']) and !$_mail->validateCaptcha( $_POST['captcha'] )) 
    $_result['error']['captcha'] = "Invalid CAPTCHA.";


if(!$_result['error']) {
    
    if($mailFaq = $_mail ->_sendMobileOperators($_POST)) {
        $_result = array_merge($_result, $mailFaq);
    }
        
}

if($_result['success']) unset($_POST);

// init output params!
$smarty->assign('getOut', $_result);

// init output params
$smarty->display($b_dir.'/templates/pages/gps-wireless-tracking-phone.tpl');
}