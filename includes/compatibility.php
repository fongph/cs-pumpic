<?php
// ini_set('display_errors', 1);
// error_reporting(-1);
/**
 * @var $smarty Smarty
 * @var $config array
 * @var $urlParams array
 */
 
use Models\Compatibility;
require dirname( __DIR__ ).'/vendor/autoload.php';

// echo "<pre>"; var_dump( $smarty ); echo "</pre>";

 $smarty->caching = true;
 $smarty->compile_check = false;
 $smarty->force_compile = false;
 $smarty->debugging = false;

$compatibility = new Compatibility(di()->get('dbPhones'));

$currentPage = (isset($_GET['page']) and (int)$_GET['page']) ?: 0;

//$res = $compatibility->getPhones(Compatibility::FIND_BY_QUERY, $currentPage, $_GET['query']);


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

/*
$phones = $compatibility->getPhones(Compatibility::FIND_ALL,$currentPage);
$paginationList = paginationByCount($currentPage, ceil($phones['count'] / Compatibility::devicesPerPage()));

$smarty->assign('phones', $phones['list'], false);
$smarty->assign('currentPage', $currentPage, false);
$smarty->assign('pages', $paginationList, false);
*/

// clearCahce
if($smarty ->isCached('compatibility.tpl', 'compatibility_'.date("dmY", strtotime("now"))))
        $smarty -> clearCache('compatibility.tpl', 'compatibility_'.date("dmY", strtotime("now")));

$cache_id = 'compatibility_'.date("dmY", strtotime("+1 day"));
// $compatibility->getCategoriesCount();
if(!$smarty ->isCached('compatibility.tpl', $cache_id)) {
     $cat_phones = $compatibility->getCategoryModels();
    $smarty->assign('phones', $cat_phones, false);
    //$cats = $compatibility->getCategories();
    //$smarty->assign('phones', $cats, false);
    $smarty->assign("cols_cats", 6);

    // domain
    $smarty->assign('domain', $config['domain']);
    $smarty->assign('api_device', $config['api_device']);
}
$smarty->display('compatibility.tpl', $cache_id);
