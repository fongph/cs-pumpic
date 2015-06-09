<?php 
global $config, $smarty;
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

// min
$smarty->assign("cssMin",$config['css_min']);
$smarty->assign("jsMin",$config['js_min']);

$smarty->assign("domain",$config['domain']);
$smarty->assign("domain_http",$config['domain_http']);
$smarty->assign("img",$config['path_img']);
$smarty->assign("css",$config['path_css']);
$smarty->assign("js",$config['path_js']);

$smarty ->assign('api_device', $config['api_device']);
$smarty ->assign('site_id', $config['site_id']);