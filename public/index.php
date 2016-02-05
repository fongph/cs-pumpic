<?php
global $smarty, $config;
date_default_timezone_set("UTC");
// include __DIR__.'/scroogefrog_tcp.php';
require dirname( __DIR__ ).'/vendor/autoload.php';
require dirname( __DIR__ ).'/includes/config.php';
require dirname( __DIR__ ).'/includes/functions.php';
require dirname( __DIR__ ).'/smarty/Smarty.class.php';
require dirname( __DIR__ ).'/includes/lib/Request.php';
require dirname( __DIR__ ).'/includes/smarty.config.php';

ini_set('display_errors', 1);
error_reporting(E_ALL ^ E_NOTICE);

$smarty->assign('di', di(), true);
$smarty->assign('templatesDir', dirname(__DIR__) . '/templates');
$_obj = new includes\lib\HTTPRequest;
$_obj -> init();

initPages();
dispatch(getURI(), $config);