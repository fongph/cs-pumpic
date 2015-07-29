<?php
$_inc = dirname(__FILE__); // includes
$b_dir = dirname( $_inc ); // folder sites directory

// smarty config
require_once 'smarty.config.php';

$smarty->display($b_dir.'/templates/pages/learning-center/ready-solutions.tpl');