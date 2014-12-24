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
		
        'site_id' => 1,
        'session' => array(
            'rememberMeTime' => 2592000 // 30 days
        ),
        'api_device' => array(
            '_domain' => 'a.pumpic.com',
            'path_img' => 'compatibility',
            'host' => 'http://a.pumpic.com/index.php'
         ),
    
	'php_compile' => array(
		'compatibility_send.html' => 'compatibility_form.php',
                'faq_send.html' => 'faq.php',
                'contact_us_send.html' => 'contact_us.php',
                'captcha.html'  => 'captcha.php',
                // 'order_form.html'  => 'order_form.php',
                'logout.html' => 'logout.php',
                'buy.html' => 'buy.php',
            
                'login.html'  => 'login.php', 
                'registration.html'  => 'registration.php',
                'restore.html'  => 'restore.php',
            
                // pricing
                'store.html'  => 'store.php',
                'pricing2.html'  => 'pricing2.php', 
                // opening-soon-thanks.html
                'opening-soon-thanks.html' => 'opening-soon-thanks.php',
            
                // detected rtegion
                'ipregion.html'            => 'ipregion.php',
            
                // currancy
                'currancy.html'            => 'currency.php', 
	)
);

?>