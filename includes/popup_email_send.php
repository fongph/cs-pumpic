<?php
// header("Content-Type: application/json");
// header("Cache-Control: no-cache");
// header("Pragma: no-cache");

$_inc = dirname(__FILE__); // includes
$b_dir = dirname( $_inc ); // folder sites directory

require_once $_inc.'/config.php';
require_once $_inc.'/di_function.php';
require_once $_inc.'/lib/class.phpmail.php';

$_mail = new Phpmail;
$_params = (isset($_REQUEST['params'])) ? $_REQUEST['params'] : false; 
$_status = ['success' => false, 'error' => false];

if(isset($_params['email']) and !empty($_params['email'])) {
    // send mail
    $_status = $_mail -> _sendPopUp($_params, 'popUp_email');
} else {
    $_status['error'] = 'Please enter correct email';
}

$json = json_encode( $_status, JSON_FORCE_OBJECT ); // JSON_FORCE_OBJECT

if (isset($_GET['callback'])) {
    header('Content-Type: application/javascript');
    echo $_GET['callback'] . '(' . $json . ')';
} else {
    header('Content-Type: application/json');
    header("Cache-Control: no-cache");
    header("Pragma: no-cache");
    echo $json;
}

//echo json_encode( $_status, JSON_FORCE_OBJECT );