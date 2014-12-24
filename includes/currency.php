<?php
header("Content-Type: application/json");
header("Cache-Control: no-cache");
header("Pragma: no-cache");

$_inc = dirname(__FILE__); // includes
$b_dir = dirname( $_inc ); // folder sites directory

require_once $_inc.'/config.php';
require_once $_inc.'/lib/Currency.php';

$_currBase = (isset($_POST['_base'])) ? $_POST['_base'] : false;
$_filter = (isset($_POST['_filter'])) ? $_POST['_filter'] : false;

$_curr = system\Currency::getInstance();

$_curr -> setCurrBase( $_currBase );
$_curr -> setFilter( $_filter );

$_currencies = $_curr -> getCurrencies();

echo json_encode( $_currencies, JSON_FORCE_OBJECT );