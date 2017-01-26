<?php
$_inc = dirname(__FILE__); // includes
$b_dir = dirname( $_inc ); // folder sites directory
$root_path = dirname(dirname(__FILE__));
global $config, $smarty;
require_once $_inc.'/config.php';
require_once $_inc.'/lib/Currency.php';
require_once $_inc . '/lib/Legacy.php';
require_once $_inc.'/di_function.php';


// smarty config
require_once 'smarty.config.php';

/* list order */
$tos = system\Legacy::getInstance();

if($_SERVER['REQUEST_URI'] == '/tos.html') {
    $text = $tos->getLegal('tos', 'active');
    $smarty->assign('tos', $text[0]);
// init output params
    $smarty->display($b_dir.'/templates/pages/tos.tpl');

} elseif ($_SERVER['REQUEST_URI'] == '/tos-preview.html') {

    $text = $tos->getLegal('tos', 'preview');
    $smarty->assign('tos', $text[0]);
// init output params
    $smarty->display($b_dir.'/templates/pages/tos.tpl');
} elseif ($_SERVER['REQUEST_URI'] == '/policy.html') {

    $text = $tos->getLegal('policy', 'active');
    $smarty->assign('policy', $text[0]);
// init output params
    $smarty->display($b_dir.'/templates/pages/policy.tpl');
} elseif ($_SERVER['REQUEST_URI'] == '/policy-preview.html') {

    $text = $tos->getLegal('policy', 'preview');
    $smarty->assign('policy', $text[0]);
// init output params
    $smarty->display($b_dir.'/templates/pages/policy.tpl');
} elseif ($_SERVER['REQUEST_URI'] == '/tos-preview.txt') {

    if(file_exists($root_path.'/tos-preview.txt')) {
        $text = $tos->getLegal('tos', 'preview');
        file_put_contents('tos-preview.txt', $text[0]);
        header("Content-Type:text/plain");
        $replace = array('</p>', '</h2>', '</ul>', '</li>', '</h3>', '</br>', '</h4>', '</h5>');
        $text[0] = str_replace( '<h3>', '*', $text[0] );
        $text[0] = str_replace( '</h3>', '*</h3>', $text[0] );
        $text[0] = str_replace( '<li>', "\t". " - ", $text[0] );
        $text[0] = str_replace( $replace, "\n", $text[0] );

        echo strip_tags($text[0]) ;
    } else throw new PageNotFoundException;
} elseif ($_SERVER['REQUEST_URI'] == '/tos.txt') {

    if(file_exists($root_path.'/tos.txt')) {
        $text = $tos->getLegal('tos', 'active');
        file_put_contents('tos.txt', $text[0]);
        header("Content-Type:text/plain");
        $replace = array('</p>', '</h2>', '</ul>', '</li>', '</h3>', '</br>', '</h4>', '</h5>');
        $text[0] = str_replace( '<h3>', '*', $text[0] );
        $text[0] = str_replace( '</h3>', '*</h3>', $text[0] );
        $text[0] = str_replace( '<li>', "\t". " - ", $text[0] );
        $text[0] = str_replace( $replace, "\n", $text[0] );

        echo strip_tags($text[0]) ;
    } else throw new PageNotFoundException;
}

