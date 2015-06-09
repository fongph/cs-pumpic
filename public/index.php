<?php
global $smarty, $config;
date_default_timezone_set("UTC");
require dirname( __DIR__ ).'/vendor/autoload.php';
include_once './scroogefrog_tcp.php';
require '../includes/config.php';
require '../includes/functions.php';
require '../smarty/Smarty.class.php';
require_once '../includes/lib/Request.php';
require_once '../includes/smarty.config.php';

$smarty->assign('di', di(), true);
$_obj = new includes\lib\HTTPRequest;
$_obj -> init();

initPages();
dispatch(getURI(), $config);