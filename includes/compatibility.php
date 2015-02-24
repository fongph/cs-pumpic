<?php
// ini_set('display_errors', 1);
// error_reporting(-1);
/**
 * @var $smarty Smarty
 * @var $config array
 * @var $urlParams array
 */

 $smarty->caching = false;
 $smarty->compile_check = false;
 $smarty->force_compile = false;
 $smarty->debugging = false;
 
use Models\Compatibility;
require dirname( __DIR__ ).'/vendor/autoload.php';

$compatibility = new Compatibility(new PDO(
    "mysql:dbname={$config['db_phones']['dbname']};host={$config['db_phones']['host']}",
    $config['db_phones']['username'],
    $config['db_phones']['password'],
    $config['db_phones']['options']
));

$currentPage = (int)$_GET['page'] ?: 0;

//$res = $compatibility->getPhones(Compatibility::FIND_BY_QUERY, $currentPage, $_GET['query']);
//echo "<pre>";
//var_dump( $res );
//echo "</pre>";

if(isAjax()){
    if(!$_GET['json']) header('Content-Type: application/json');
    $res = array();
    if($_GET['os']) {
        $res = $compatibility->getPhones(Compatibility::FIND_BY_OS, $currentPage, $_GET['os']);
    } elseif($_GET['query']) {
        $res = $compatibility->getPhones(Compatibility::FIND_BY_QUERY, $currentPage, $_GET['query']);
    }
    die(json_encode($res, true));
}


$phones = $compatibility->getPhones(Compatibility::FIND_ALL,$currentPage);
$paginationList = paginationByCount($currentPage, ceil($phones['count'] / Compatibility::devicesPerPage()));

$smarty->assign('phones', $phones['list'], false);
$smarty->assign('currentPage', $currentPage, false);
$smarty->assign('pages', $paginationList, false);
$smarty->assign('api_device', $config['api_device']);

$smarty->display('compatibility.tpl');