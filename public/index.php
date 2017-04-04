<?php

// router for php built-in server
if (php_sapi_name() == 'cli-server') {
    if ($_SERVER['SCRIPT_NAME'] != '/index.php') {
        $fileExists = file_exists(dirname(__FILE__) . $_SERVER['SCRIPT_NAME']);
        $notDirecotry = !is_dir(dirname(__FILE__) . $_SERVER['SCRIPT_NAME']);
        if ($fileExists && $notDirecotry) {
            return false;
        }
    }
}


global $smarty, $config;
date_default_timezone_set("UTC");
// include __DIR__.'/scroogefrog_tcp.php';
require dirname( __DIR__ ).'/vendor/autoload.php';
require dirname( __DIR__ ).'/includes/config.php';
require dirname( __DIR__ ).'/includes/functions.php';
require dirname( __DIR__ ).'/smarty/Smarty.class.php';
require dirname( __DIR__ ).'/includes/lib/Request.php';
require dirname( __DIR__ ).'/includes/smarty.config.php';


$smarty->assign('templatesDir', dirname(__DIR__) . '/templates');
$_obj = new includes\lib\HTTPRequest;
$_obj -> init();

initPages();
dispatch(getURI(), $config);
