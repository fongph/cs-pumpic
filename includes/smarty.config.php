<?php 

$smarty = new Smarty();
$smarty->caching = true;
$smarty->compile_check = true;
$smarty->force_compile =  false;
$smarty->debugging = false;

$smarty->setTemplateDir($config['smarty']['tpl_path']);
$smarty->setCacheDir($config['smarty']['cache_path']);
$smarty->setCompileDir($config['smarty']['tpl_path_compile']);

$smarty->registerPlugin("function","year_now","print_current_year");
$smarty->registerPlugin("function","style_cache","cache_data");

// $smarty->registerPlugin("function","features_plans","features_plans");

$smarty->assign("domain",$config['domain']);
$smarty->assign("domain_http",$config['domain_http']);
$smarty->assign("img",$config['path_img']);
$smarty->assign("css",$config['path_css']);
$smarty->assign("js",$config['path_js']);

$smarty ->assign('api_device', $config['api_device']);
$smarty ->assign('site_id', $config['site_id']);

//$smarty = new Smarty;
//
//// settings smarty
//$smarty->compile_check = true;
//$smarty->debugging = false;
//$smarty->force_compile = 1;
//
//$smarty->setTemplateDir($config['smarty']['tpl_path']);
//$smarty->setCacheDir($config['smarty']['cache_path']);
//$smarty->setCompileDir($config['smarty']['tpl_path_compile']);
//
//$smarty->registerPlugin("function","year_now","print_current_year");
//$smarty->assign("domain",$config['domain']);
//$smarty->assign("domain_http",$config['domain_http']);
//$smarty->assign("img",$config['path_img']);
//$smarty->assign("css",$config['path_css']);
//$smarty->assign("js",$config['path_js']);
//$smarty ->assign('api_device', $config['api_device']);
//$smarty ->assign('site_id', $config['site_id']);