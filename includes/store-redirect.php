<?php
/**
 * Created by PhpStorm.
 * User: user
 * Date: 26.01.17
 * Time: 15:10
 */
var_dump($_SESSION['visited']);die();

function checkUrl($url, $urls){
    if(count($_SESSION['visited']) == count($urls)){
        $_SESSION['visited'] = Array();
    }
    if(in_array($url, $_SESSION['visited'])){
        $url = $urls[array_rand($urls)];
        checkUrl($url, $urls);
    }
    else{
        $_SESSION['visited'][] = $url;
        header("Location: http://$url", true, 302);
    }
}

$urls = array('pumpic.lena:8300/store-sub', 'pumpic.lena:8300/store-sub-same', 'pumpic.lena:8300/store-sub-new');

$url = $urls[array_rand($urls)];
var_dump($_SESSION['visited']);die();
//checkUrl($url, $urls);
