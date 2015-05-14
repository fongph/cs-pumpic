<?php
date_default_timezone_set("UTC");
	
require_once './scroogefrog_tcp.php';

require '../includes/config.php';
require '../includes/functions.php';
//require '../fenom/Fenom.php';
require '../smarty/Smarty.class.php';
require_once '../includes/lib/Request.php';

$_obj = new includes\lib\HTTPRequest;
$_obj -> init();

initPages();
dispatch(getURI(),$config);


?>