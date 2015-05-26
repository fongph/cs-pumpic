<?php
 //ini_set('display_errors', 1);
 //error_reporting(-1);

$config = array(
	'css_min' => '/stylesheets',
        'js_min' => '/javascripts',
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
                //'compatibility.html' => 'compatibility.php',
                'compatibility' => 'compatibility.php',
                'mobile_operators_send.html' => 'mobile_operators_form.php',
		'compatibility_send.html' => 'compatibility_form.php',
                'faq_send.html' => 'faq.php',
                'contact_us_send.html' => 'contact_us.php',
                'captcha.html'  => 'captcha.php',
                // 'order_form.html'  => 'order_form.php',
                'logout.html' => 'logout.php',
                'buy.html' => 'buy.php',
            
                'login.html'  => 'login.php', 
                
                'registration.html'  => 'registration.php',
                'free-trial.html'  => 'free_trial_registration.php',
                
                'restore.html'  => 'restore.php',
            
                // pricing
                'store.html'  => 'pricing2.php',
                'store-trial.html'  => 'store-trial.php',
                'store-test.html'  => 'store-test.php',
                //'pricing2.html'  => 'pricing2.php', 
                // opening-soon-thanks.html
                'opening-soon-thanks.html' => 'opening-soon-thanks.php',
            
                // detected rtegion
                'ipregion.html'            => 'ipregion.php',
            
                // currancy
                'currency.html'            => 'currency.php', 
            
                // popUp send email
                'popup_email_send.html'   => 'popup_email_send.php',
            
                // robots
                'robots.txt'            => 'robots.php',
            
                //search
                'compatibility/results'           => 'compatibility_search.php',
            
                // devices
                'compatibility/android-devices'   => 'compatibility_search.php',
                'compatibility/ios-devices'       => 'compatibility_search.php', 
            
                // iphone-tracking-software
                'iphone-tracking-software.html'   => 'iphone_tracking_software.php',
                'iphone-with-jailbreak-monitoring.html' => 'iphone_with_jailbreak_monitoring.php',
                'icloud-iphone-without-jailbreak-monitoring.html' => 'icloud_iphone_without_jailbreak_monitoring.php'
	),
    
    'db_phones' => array(
        'host' => '188.40.64.2',
        'username' => 'phones',
        'password' => 'FxgUuFr2TqMR9yFjA5YBhZ3UVu68Kv',
        'dbname' => 'phones',
        'options' => array(
            PDO::MYSQL_ATTR_INIT_COMMAND => 'set names utf8;',
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
        )
    ),
    'db_blog' => array(
        'dbname'    => 'pumpic_blog',
        'host'      => '188.40.64.2',
        'user'      => 'pumpic_blog_user',
        'password'  => '57ge8j9SNg9EkhryWA3KV9ZB9NUue6',
//        'host'      => '127.0.0.1',
//        'user'      => 'root',
//        'password'  => 'password',
        'options' => array(
            PDO::MYSQL_ATTR_INIT_COMMAND => 'set names utf8;',
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
        )
    ),
);
if(is_file(__DIR__ . '/config.development.php')) {
    include __DIR__ . '/config.development.php';
    $config = array_merge($config, $config_dev);
}    