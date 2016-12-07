<?php
/**
 * @var $smarty Smarty
 * @var $config array
 * @var $urlParams array
 */

smarty_function_getUserInfo(array(), $smarty);

$compatibility = new Models\Compatibility(di()->get('dbPhones'));

list(,$modelName) = explode('/', $urlParams['uri']);

if($compatibility->isPartUppercase($modelName)) throw new PageNotFoundException;

$phoneData = $compatibility->getModel($modelName);

// clearCahce
//if($smarty ->isCached('compatibility.tpl', 'compatibility_'. md5() ))
//        $smarty -> clearCache('compatibility.tpl', 'compatibility_'.date("dmY", strtotime("now")));

if($phoneData){
    // LastModified
    $LastModified_unix = strtotime( $phoneData['cdate'] ); // время последнего изменения страницы
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

    $cache_id = 'compatibility_item_'.md5( $phoneData['rowid'].'-'.$phoneData['cdate'].'-'.$phoneData['alies'] );
    $smarty->assign('compatibilityDeviceUri', $_GET['model']);
    $smarty->assign('getSetting', array(
        '_item' => $phoneData,
        'title' => "{$phoneData['meta_title']}", /* {$phoneData['name']} parent monitoring at Pumpic.com */
        'description' => "{$phoneData['meta_description']} ",
        'api' => $config['api_device'],
    ));
    $smarty->display('compatibility/item.tpl', $cache_id); // $cache_id
} else throw new PageNotFoundException;
