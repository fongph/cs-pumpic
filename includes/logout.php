<?php

$_inc = dirname(__FILE__); // includes
$b_dir = dirname( $_inc ); // folder sites directory

require_once $_inc.'/lib/users/ManagerUser.php';

// smarty config
require_once 'smarty.config.php';
// $smarty->setCacheLifetime(-1);
// $smarty->clearAllCache(); // clear all cahes

$_managerUser  = new includes\lib\users\ManagerUser;
if($_managerUser -> getLoginUser()) {
    $_managerUser -> logout();
}

// clear cookie
//if(isset($_COOKIE['popUp'])) {
//    setcookie("popUp","", time()-3600, '/');
//    unset ($_COOKIE['popUp']);
//}

$_managerUser -> _redirect('/');