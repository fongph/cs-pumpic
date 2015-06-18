<?php
/**
 * @var $smarty Smarty
 * @var $config array
 * @var $urlParams array
 */

 $smarty->caching = true;
 $smarty->compile_check = false;
 $smarty->force_compile = false;
 $smarty->debugging = false;
 $smarty->cache_modified_check = true;
 
$compatibility = new Models\Compatibility(di()->get('dbPhones'));

list(,$modelName) = explode('/', $urlParams['uri']);

$phoneData = $compatibility->getModel($modelName);

// clearCahce
//if($smarty ->isCached('compatibility.tpl', 'compatibility_'. md5() ))
//        $smarty -> clearCache('compatibility.tpl', 'compatibility_'.date("dmY", strtotime("now")));

if($phoneData){
    $cache_id = 'compatibility_item_'.md5( $phoneData['id'].'-'.$phoneData['cdate'] );
    $smarty->assign('compatibilityDeviceUri', $_GET['model']);
    $smarty->assign('getSetting', array(
        '_item' => $phoneData,
        'title' => "{$phoneData['name']} parent monitoring at Pumpic.com",
        'description' => "Parental control software for {$phoneData['name']} monitors and blocks unsafe activity while allowing kids access to the Internet. Geo fencing allows you to be always aware of your child safety.",
        'api' => $config['api_device'],
    ));
    $smarty->display('compatibility/item.tpl', $cache_id);
    
} else throw new PageNotFoundException;