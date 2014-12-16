<?php
header("Content-Type: application/json");
header("Cache-Control: no-cache");
header("Pragma: no-cache");

$_inc = dirname(__FILE__); // includes
$b_dir = dirname( $_inc ); // folder sites directory

require_once $_inc.'/config.php';
require_once $_inc.'/lib/Currancy.php';

$_region = system\Currancy::getInstance();
$_currancies = $_region -> getCurrancies();

echo json_encode( $_currancies );