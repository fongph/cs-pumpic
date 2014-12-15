<?php
header("Content-Type: application/json");
header("Cache-Control: no-cache");
header("Pragma: no-cache");

$_inc = dirname(__FILE__); // includes
$b_dir = dirname( $_inc ); // folder sites directory

require_once $_inc.'/config.php';
require_once $_inc.'/lib/class.phpmail.php';

$_mail = new Phpmail;
$smarty = new Smarty;

// settings smarty
$smarty->compile_check = true;
$smarty->debugging = false;
$smarty->force_compile = 1;

// init function json
function json_modifier($value) {
    return json_encode($value);
}

function json_function($params, &$smarty) {
    return json_encode($params);
}

$_request = (isset($_POST['params']) and !empty($_POST['params'])) ? $_POST['params']: false;

$smarty->setTemplateDir($config['smarty']['tpl_path']);
$smarty->setCacheDir($config['smarty']['cache_path']);
$smarty->setCompileDir($config['smarty']['tpl_path_compile']);

$smarty->registerPlugin("function","year_now","print_current_year");
$smarty->assign("domain",$config['domain']);
$smarty->assign("domain_http",$config['domain_http']);
$smarty->assign("img",$config['path_img']);
$smarty->assign("css",$config['path_css']);
$smarty->assign("js",$config['path_js']);
$smarty ->assign('api_device', $config['api_device']);
$smarty ->assign('site_id', $config['site_id']);

// register function and modifier
$smarty->registerPlugin("modifier",'json', 'json_modifier');
$smarty->registerPlugin("function",'json', 'json_function');

// generate params
$smarty->assign('arr', $_mail -> _sendCompatibility($_request) );

// init output params
$smarty->display($b_dir.'/templates/json/compatibility_json.tpl');