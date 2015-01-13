<?php
$_inc = dirname(__FILE__); // includes
$b_dir = dirname( $_inc ); // folder sites directory

require_once $_inc.'/config.php';
require_once $_inc.'/lib/Curl.php';
require_once $_inc.'/lib/users/Order.php';
$obj = new includes\lib\users\Order;

$smarty = new Smarty;

// settings smarty
$smarty->compile_check = true;
$smarty->debugging = false;
$smarty->force_compile = 1;

/* compatibility */
 $_settings = array(
     'api'          => false,
    'title'         => 'Title Device',
    'description'   => 'Descriptions!',
    '_item'         => false,
    '_error'        => false, 
);

$_curl = new \system\Curl();
$_post = array(
    'getModel' => $_GET['model'],
);
    
    
if(isset($config['api_device']['host']) and !empty($config['api_device']['host'])) {
    $_settings['api'] = $config['api_device'];
    $_curl-> get($config['api_device']['host'], $_post);
}    
    
    
$_respons = array();
if(is_object($_curl->response))
    $_respons = stdToArray($_curl->response); 
else if(is_array($_curl->response))
    $_respons = $_curl->response;
    
    
if(is_array($_respons) and count($_respons) > 0) {
        // parce path img
        $_respons['img'] = isset($_respons['m_img']) and !empty($_respons['m_img']) ? $_respons['m_img'] : '';
//        if(isset($_respons['img']) and !empty($_respons['img'])) {
//            $_img = explode('/',$_respons['img']);
//            $_file_name = explode('.', $_img[count($_img) - 1]);
//            $_respons['img'] = 'middle/'.$_file_name[0].'_medium.'.$_file_name[1];
//        } else 
//            $_respons['img'] = '';

        $_set = array(
            'title' => $_respons['name'],
            'description' => $_respons['name'],
            '_item' => (array)$_respons
        );

        $_settings = array_merge($_settings, $_set);

} else {
    //header("Location: /404.html");
    //exit;
    //$_settings['error'] = ($_curl->error) ? $_curl->error: 'This page is temporarily unavailable!';
}
      
// init output params!
$smarty->assign('getSetting', $_settings);

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

// init output params
$smarty->display($b_dir.'/templates/pages/compatibility/index.tpl');