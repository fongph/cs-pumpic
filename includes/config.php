<?php
$config = array(
	
	'fenom' => array(
		'path' => '../fenom/',
		'tpl_path' => '../templates/pages/',
		'tpl_path_compile' => '../templates_c/',
		'cache_path' => '../cache/'
	),
	'smarty' => array(
		'tpl_path' => '../templates/pages/',
		'tpl_path_compile' => '../templates_c/',
		'cache_path' => '../cache/'
	),
		
	'domain' => 'pumpic.com',
	'domain_http' => 'http://pumpic.com',
	'path_img' => '/images',
	'path_js' => '/js',
	'path_css' => '/css',
		
	'php_compile' => array(
		'order.html' => 'script.inc'
	)
);

?>