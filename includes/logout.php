<?php

$_inc = dirname(__FILE__); // includes
$b_dir = dirname( $_inc ); // folder sites directory

require_once $_inc.'/lib/users/ManagerUser.php';

// smarty config
require_once 'smarty.config.php';
require_once $_inc.'/di_function.php';
require_once $_inc.'/config.php';
require_once $_inc.'/functions.php';

// $smarty->setCacheLifetime(-1);
// $smarty->clearAllCache(); // clear all cahes

smarty_function_getUserInfo(array(), $smarty);

$_managerUser  = new includes\lib\users\ManagerUser;
if($_managerUser -> getLoginUser()) {
    $_managerUser -> logout();
}

$cache_id = 'compatibility_start';
if(is_array($smarty->getTemplateVars('getUserInfo')) && isset($smarty->getTemplateVars('getUserInfo')['login'])) {
    $cache_id = 'compatibility_'.$smarty->getTemplateVars('getUserInfo')['name'].$smarty->getTemplateVars('getUserInfo')['login'];
}
$cache_id = md5($cache_id);
$smarty->clearCache('compatibility.tpl', $cache_id);


// clear cookie
//if(isset($_COOKIE['popUp'])) {
//    setcookie("popUp","", time()-3600, '/');
//    unset ($_COOKIE['popUp']);
//}

$_managerUser -> _redirect('/');