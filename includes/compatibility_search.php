<?php
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
use includes\lib\users\ManagerUser as MU; 
 
include dirname(__DIR__).'/includes/lib/users/ManagerUser.php'; 
require dirname( __DIR__ ).'/vendor/autoload.php';


$mu = new MU();
$compatibility = new Compatibility(new PDO(
    "mysql:dbname={$config['db_phones']['dbname']};host={$config['db_phones']['host']}",
    $config['db_phones']['username'],
    $config['db_phones']['password'],
    $config['db_phones']['options']
));
 
    
$currentPage = (int)$_GET['page'] ?: 0;

if(isset($_REQUEST['device-model'])) {
    $mu ->setSession('device-model', $_REQUEST['device-model']);
}
    
if($mu -> getSession('device-model')){        
    $phones = $compatibility->getPhones(Compatibility::FIND_BY_QUERY, $currentPage, $mu -> getSession('device-model'));
    $paginationList = paginationByCount($currentPage, ceil($phones['count'] / Compatibility::devicesPerPage()));

    $smarty->assign('phones', $phones['list'], false);
    $smarty->assign('currentPage', $currentPage, false);
    $smarty->assign('pages', $paginationList, false);
    
    $smarty->assign('search_word', $mu -> getSession('device-model'), false);
    // domain
    $smarty->assign('domain', $config['domain']);
    $smarty->assign('api_device', $config['api_device']);
    $smarty->display('compatibility/search.tpl');
    
} else throw new PageNotFoundException;