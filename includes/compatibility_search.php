<?php
/**
 * @var $smarty Smarty
 * @var $config array
 * @var $urlParams array
 */

$_inc = dirname(__FILE__); // includes
$b_dir = dirname( $_inc ); // folder sites directory

 // LastModified

$filename = dirname(dirname(__FILE__)).'/templates/pages/compatibility/search.tpl';

/*if(file_exists($filename)) {
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
}*/
require_once $_inc.'/functions.php';
require_once $_inc.'/di_function.php';


 $smarty->caching = false;
 $smarty->compile_check = true;
 $smarty->force_compile = false;
 $smarty->debugging = false;
 $smarty->cache_modified_check = true;

 $os_url = ['ios-devices', 'android-devices'];
 $meta_title = [
     'ios-devices' => 'All iOS Devices',
     'android-devices' => 'All Android Devices',
     'results'  => 'Compatibility search results',
 ];
 
 $title_search = [
     'ios-devices' => 'All <strong>iOS</strong> Devices',
     'android-devices' => 'All <strong>Android</strong> Devices',
     'results'  => 'Search results for "<strong>{search_word}</strong>"',
 ];
 
 list(,$_uri) = explode('/', $urlParams['uri']);    
$currentPage = (int)$_GET['page'] ?: 1;
$_curr = ($currentPage - 1 < 0 )? 0 : $currentPage - 1;
$_node = (in_array($_uri, $os_url)) ? $_uri : 'results';

// currPage
$smarty->assign('currentPage', $_curr, false);

// uri
$smarty->assign('link_page', $_node, false);
// config
$smarty->assign('meta_title', $meta_title[ $_node ]);
$smarty->assign('api_device', $config['api_device']);
$smarty->assign('domain', $config['domain']);

 
use Models\Compatibility;
use includes\lib\users\ManagerUser as MU; 
 
require_once dirname(__DIR__).'/includes/lib/users/ManagerUser.php'; 
require dirname( __DIR__ ).'/vendor/autoload.php';

$mu = new MU();
$compatibility = new Compatibility(di()->get('dbPhones'));
 
smarty_function_getUserInfo(array(), $smarty);

if( in_array($_uri, $os_url) ) {
    $_os = false;    
    switch ($_uri):
        case 'ios-devices':
            $_os = 'iOS';   
        break;
        case 'android-devices':
            $_os = 'Android';
        break;
    endswitch;
    
    if( $_os ) :
        
        $phones = $compatibility->getPhones(Compatibility::FIND_BY_OS, $_curr, $_os);
        $count_pages = (ceil($phones['count'] / Compatibility::devicesPerPage()));
        $count_pages = ($count_pages < 0) ? 0 : $count_pages;
        if($_curr > $count_pages) throw new PageNotFoundException;
        
        $paginationList = paginationByCount($_curr, $count_pages);
        
        $smarty->assign('phones', $phones['list'], false);
        $smarty->assign('pages', $paginationList, false);
        $smarty->assign('title_search', $title_search[ $_node ]);
        $smarty->assign('search_word', false, false);
        $smarty->display('compatibility/search.tpl');
    else:
        throw new PageNotFoundException;
    endif;
    
    
} else {

    if(isset($_REQUEST['device-model'])) {
        $mu ->setSession('device-model', $_REQUEST['device-model']);
    }

    if($mu -> getSession('device-model')){        
        $phones = $compatibility->getPhones(Compatibility::FIND_BY_QUERY, $_curr, $mu -> getSession('device-model'));
        $count_pages = (ceil($phones['count'] / Compatibility::devicesPerPage()));
        $count_pages = ($count_pages < 0) ? 0 : $count_pages;
        if($_curr > $count_pages) throw new PageNotFoundException;
        
        $paginationList = paginationByCount($_curr, $count_pages);

        $smarty->assign('phones', $phones['list'], false);

        if(isset($phones['list']) and !count($phones['list'])) {
            $smarty->assign('pages', false, false);
            $smarty->assign('title_search', 'No search results found for "'.$mu -> getSession('device-model').'"');
        } else {
            $smarty->assign('pages', $paginationList, false);
            $smarty->assign('title_search', str_replace('{search_word}', $mu -> getSession('device-model'), $title_search[ $_node ]));
        }
        
        
        // Search results for "<strong>{$search_word}</strong>"
        $smarty->assign('search_word', $mu -> getSession('device-model'), false);
        $smarty->display('compatibility/search.tpl');
    } else throw new PageNotFoundException;

}