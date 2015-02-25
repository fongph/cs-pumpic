<?php
header("Cache-Control: no-cache");
header("Pragma: no-cache");

// session_start();

$_inc = dirname(__FILE__); // includes
$b_dir = dirname( $_inc ); // folder sites directory

require_once $_inc.'/lib/SimpleCaptcha.php';

$captcha = new SimpleCaptcha();
$captcha->width = (isset($_GET['width'])) ? (int)$_GET['width'] : 317;
$captcha->height = (isset($_GET['height'])) ? (int)$_GET['height'] : 48;

// OPTIONAL Change configuration...
// $captcha->wordsFile = dirname(__FILE__). "/resources/words/es.php";
$captcha->session_var = 'pumpic.com';
$captcha->imageFormat = 'png';
$captcha->lineWidth = 0;
$captcha->scale = 3; 
$captcha->blur = true;

//$captcha->resourcesPath =  dirname(__FILE__). "/resources";

// OPTIONAL Simple autodetect language example

if (!empty($_SERVER['HTTP_ACCEPT_LANGUAGE'])) {
    $langs = array('en', 'es');
    $lang  = substr($_SERVER['HTTP_ACCEPT_LANGUAGE'], 0, 2);
    if (in_array($lang, $langs)) {
        $captcha->wordsFile = "words/$lang.php";
    }
}

// Image generation

$captcha->createImage();
