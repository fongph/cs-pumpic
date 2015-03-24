<?php
header("Content-Type: application/json");
header("Cache-Control: no-cache");
header("Pragma: no-cache");

$_inc = dirname(__FILE__); // includes
$b_dir = dirname( $_inc ); // folder sites directory

// require_once $_inc.'/config.php';
require_once $_inc.'/lib/class.phpmail.php';

$_mail = new Phpmail;

 $smarty->caching = false;
 $smarty->compile_check = false;
 $smarty->force_compile = false;
 $smarty->debugging = false;

// init function json
function json_modifier($value) {
    return json_encode($value);
}

function json_function($params, &$smarty) {
    return json_encode($params);
}

// $_request = $_GET['params'];

$_request = (isset($_POST['params']) and !empty($_POST['params'])) ? $_POST['params']: false;



// register function and modifier
$smarty->registerPlugin("modifier",'json', 'json_modifier');
$smarty->registerPlugin("function",'json', 'json_function');

//echo "<pre>";
//var_dump( $_request );
//echo "</pre>";

// generate params
$smarty->assign('arr', $_mail -> _sendContactUs($_request) );

// init output params
$smarty->display($b_dir.'/templates/json/contact_us.tpl');