<?php
$_inc = dirname(__FILE__); // includes
$b_dir = dirname( $_inc ); // folder sites directory
$root_path = dirname(dirname(__FILE__));
global $config, $smarty;
require_once $_inc.'/config.php';
require_once $_inc.'/lib/Currency.php';
require_once $_inc . '/lib/Legacy.php';
require_once $_inc.'/di_function.php';


// smarty config
require_once 'smarty.config.php';

/* list order */
$tos = system\Legacy::getInstance();

if($_SERVER['REQUEST_URI'] == '/tos.html') {
    $text = $tos->getLegal('tos', 'active');
    $smarty->assign('tos', $text[0]);
// init output params
    $smarty->display($b_dir.'/templates/pages/tos.tpl');

} elseif ($_SERVER['REQUEST_URI'] == '/tos-preview.html') {

    $text = $tos->getLegal('tos', 'preview');
    $smarty->assign('tos', $text[0]);
// init output params
    $smarty->display($b_dir.'/templates/pages/tos.tpl');
} elseif ($_SERVER['REQUEST_URI'] == '/policy.html') {

    $text = $tos->getLegal('policy', 'active');
    $smarty->assign('policy', $text[0]);
// init output params
    $smarty->display($b_dir.'/templates/pages/policy.tpl');
} elseif ($_SERVER['REQUEST_URI'] == '/policy-preview.html') {

    $text = $tos->getLegal('policy', 'preview');
    $smarty->assign('policy', $text[0]);
// init output params
    $smarty->display($b_dir.'/templates/pages/policy.tpl');
} elseif ($_SERVER['REQUEST_URI'] == '/tos-preview.txt') {

    if(file_exists($root_path.'/tos-preview.txt')) {
        $text = $tos->getLegal('tos', 'active');
        file_put_contents('tos-preview.txt', strip_tags($text[0]));
        header("Content-Type:text/plain");
        echo strip_tags($text[0]);
    } else throw new PageNotFoundException;
}

