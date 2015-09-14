<?php

$_inc = dirname(__FILE__); // includes
$b_dir = dirname( $_inc ); // folder sites directory
global $config, $smarty;
require_once $_inc.'/lib/class.phpmail.php';

$_mail = new Phpmail( $config['db_blog'] );

$_result = array(
    'error' => false,
    'success' => false,
);

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

    // $_request = $_GET['params'];

    $_request = (isset($_POST['params']) and !empty($_POST['params'])) ? $_POST['params']: false;



    // register function and modifier
    $smarty->registerPlugin("modifier",'json', 'json_modifier');
    $smarty->registerPlugin("function",'json', 'json_function');

    //echo "<pre>";
    //var_dump( $_request );
    //echo "</pre>";

    // generate params
    $smarty->assign('arr', $_mail -> _sendContactUs($_request) );

    // init output params
    $smarty->display($b_dir.'/templates/json/faq.tpl');
} else {
    
    // validate
    if(isset($_POST['name']) and empty($_POST['name']))
        $_result['error']['name'] = "The Name field is empty";

    if(isset($_POST['email']) and !$_mail->validateEmail($_POST['email'])) 
       $_result['error']['email'] = "The Email field is empty";

    if(isset($_POST['captcha']) and !$_mail->validateCaptcha( $_POST['captcha'] )) 
        $_result['error']['captcha'] = "Invalid CAPTCHA.";

    if(isset($_POST['os']) and empty($_POST['os'])  )
        $_result['error']['os'] = "The field Choose your OS is empty";

    if(isset($_POST['description']) and empty($_POST['description']))
        $_result['error']['description'] = "The Question field is empty";

    if(!$_result['error']) {

        if($mailFaq = $_mail -> _sendContactUs($_POST)) {
            $_result = array_merge($_result, $mailFaq);
        }

    }

    if($_result['success']) unset($_POST);

    // init output params!
    $smarty->assign('getOut', $_result);

    // init output params
    $smarty->display($b_dir.'/templates/pages/faq.tpl');
}