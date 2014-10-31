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
		
	'domain' => 'cellspy',
	'domain_http' => 'http://cellspy',
	'path_img' => '/images',
	'path_js' => '/js',
	'path_css' => '/css',
		
	'php_compile' => array(
		'pricing.html' => 'pricing.inc',
		'order.html' => 'script.inc',
		'about-us.html' => 'script.inc',
		'refund-request.html' => 'script.inc',
		'help/faq.html' => 'faq.php',
		'ajax' => 'ajax.inc'		
	)
);

?>