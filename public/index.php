<?php
global $smarty, $config;
date_default_timezone_set("UTC");
include __DIR__.'/scroogefrog_tcp.php';
require dirname( __DIR__ ).'/vendor/autoload.php';
require dirname( __DIR__ ).'/includes/config.php';
require dirname( __DIR__ ).'/includes/functions.php';
require dirname( __DIR__ ).'/smarty/Smarty.class.php';
require dirname( __DIR__ ).'/includes/lib/Request.php';
require dirname( __DIR__ ).'/includes/smarty.config.php';

$smarty->assign('di', di(), true);
$_obj = new includes\lib\HTTPRequest;
$_obj -> init();

initPages();
dispatch(getURI(), $config);