<?php
date_default_timezone_set("UTC");
	
require '../includes/config.php';
require '../includes/functions.php';
//require '../fenom/Fenom.php';
require '../smarty/Smarty.class.php';
require_once '../includes/lib/Request.php';
// statictic
require_once '../statistic/scroogefrog_udp_tcp.php';

$_obj = new includes\lib\HTTPRequest;
$_obj -> init();

initPages();
dispatch(getURI(),$config);


?>