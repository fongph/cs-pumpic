<?php
// ini_set('display_errors', 1);
// error_reporting(-1);
/**
 * @var $smarty Smarty
 * @var $config array
 * @var $urlParams array
 */
 
$_inc = dirname(__FILE__); // includes
$b_dir = dirname( $_inc ); // folder sites directory

$filename = dirname(dirname(__FILE__)).'/templates/pages/compatibility.tpl';
if(file_exists($filename)) {
    $LastModified_unix = filemtime($filename); // время последнего изменения страницы
    $LastModified = gmdate("D, d M Y H:i:s \G\M\T", $LastModified_unix);
    $IfModifiedSince = false;
    if (isset($_ENV['HTTP_IF_MODIFIED_SINCE']))
        $IfModifiedSince = strtotime(substr($_ENV['HTTP_IF_MODIFIED_SINCE'], 5));  
    if (isset($_SERVER['HTTP_IF_MODIFIED_SINCE']))
        $IfModifiedSince = strtotime(substr($_SERVER['HTTP_IF_MODIFIED_SINCE'], 5));
    if ($IfModifiedSince && $IfModifiedSince >= $LastModified_unix) {
        header($_SERVER['SERVER_PROTOCOL'] . ' 304 Not Modified');
        exit;
    }
    header('Last-Modified: '. $LastModified);   
}

use Models\Compatibility;
require dirname( __DIR__ ).'/vendor/autoload.php';
require_once $_inc.'/config.php';
require_once $_inc.'/functions.php';
require_once $_inc.'/lib/class.phpmail.php';

smarty_function_getUserInfo(array(), $smarty);
$_mail = new Phpmail( $config['db_blog'] );

// echo "<pre>"; var_dump( $smarty ); echo "</pre>";

 $smarty->caching = true;
 $smarty->compile_check = true;
 $smarty->force_compile =  false;
 $smarty->debugging = false;
 $smarty->cache_modified_check = false;

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

$_result = array(
        'error' => false,
        'success' => false,
    );

if(isset($_POST['submit']) and $_POST['submit']) {

    
    // validate
    if(isset($_POST['device-model']) and empty($_POST['device-model']))
        $_result['error']['device_model'] = "This field is required.";

    if(isset($_POST['email']) && empty($_POST['email'])) {
        $_result['error']['email'] = 'The Email field is empty';
    }elseif(isset($_POST['email']) and !$_mail->validateEmail($_POST['email'])) {
       $_result['error']['email'] = "Invalid email format.";
    }
    
    if(isset($_POST['captcha']) and !$_mail->validateCaptcha( $_POST['captcha'] )) 
        $_result['error']['captcha'] = "Invalid CAPTCHA.";

    if(!$_result['error']) {

        if($successMail = $_mail -> _sendCompatibility($_POST)) {
            $_result = array_merge($_result, $successMail);
        }

    }

    if($_result['success']) unset($_POST);
}

// clearCahce
//if($smarty ->isCached('compatibility.tpl', 'compatibility_'.date("dmY", strtotime("now"))))
//        $smarty -> clearCache('compatibility.tpl', 'compatibility_'.date("dmY", strtotime("now")));
//
//$cache_id = 'compatibility_'.date("dmY", strtotime("+1 day"));

$cache_id = 'compatibility_start';
if(is_array($smarty->getTemplateVars('getUserInfo'))) {
    $cache_id = 'compatibility_'.$smarty->getTemplateVars('getUserInfo')['name'].$smarty->getTemplateVars('getUserInfo')['login'];
}
$cache_id = md5($cache_id);
if(is_array($smarty->getTemplateVars('getUserInfo'))) {
    $smarty->clearCache('compatibility.tpl', $cache_id);
}

//$hash = md5($cache_id);
//$endTime = strtotime("+1 day");
//
//$caheTime = explode('_', $cache_id);
//
//if(is_array($caheTime) and count($caheTime) > 0) {
//    $hash = $caheTime[0];
//    $endTime = $caheTime[1];
//}

//if(strtotime("now") > $endTime && $smarty ->isCached('compatibility.tpl', $hash.$endTime) 
//        || is_array($smarty->getTemplateVars('getUserInfo'))) {
//    $smarty->clearCache('compatibility.tpl', $hash.$endTime);
//}

// if($smarty ->isCached('compatibility.tpl', $cache_id))
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

// init output params!
$smarty->assign('getOut', $_result);

$smarty->cache_lifetime = 3600;
$smarty->display('compatibility.tpl', $cache_id);