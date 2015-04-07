<?php
date_default_timezone_set("UTC");
	
require '../includes/config.php';
require '../includes/functions.php';
//require '../fenom/Fenom.php';
require '../smarty/Smarty.class.php';

dispatch(getURI(),$config);
?>