<?php
// ini_set('display_errors', 1);
// error_reporting(-1);
global $config;
$config = array(
		'ga_key' => 'UA-56492507-1',
		'environment' => 'production',
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
				'rememberMeTime' => 2592000, // 30 days
				'cookieParams' => array(
						'domain' => '.pumpic.com'
				),
		),
		'api_device' => array(
				'_domain' => 'a.pumpic.com',
				'path_img' => 'compatibility',
				'host' => 'http://a.pumpic.com/index.php'
		),

		'php_compile' => array(
				'compatibility' => 'compatibility.php',
				'gps-wireless-tracking-phone.html' => 'gps-wireless-tracking-phone.php',
				'compatibility_send.html' => 'compatibility_form.php',
			//'faq_send.html' => 'faq_send.php',

				'faq.html' => 'faq.php',
				//'contact-us.html' => 'contact_us.php',

				'contact_us_send.html' => 'contact_us.php',

				'captcha.html'  => 'captcha.php',
				'logout.html' => 'logout.php',
				'buy.html' => 'buy.php',

				'login.html'  => 'login.php',

				'registration.html'  => 'registration.php',
				'free-trial.html'  => 'free_trial_registration.php',

				'store.html'  => 'store.php',
				'store-android.php'  => 'store-android.php',
				'aging-parent-protection-app.html' => 'aging-parent-protection-app.php',
				'iphone-tracking-software.html'   => 'iphone_tracking_software.php',
				'iphone-with-jailbreak-monitoring.html' => 'iphone_with_jailbreak_monitoring.php',
				'employee-monitoring-software.html' => 'employee-monitoring-software.php',
				'icloud-iphone-without-jailbreak-monitoring.html' => 'icloud_iphone_without_jailbreak_monitoring.php',

			// opening-soon-thanks.html
				'opening-soon-thanks.html' => 'opening-soon-thanks.php',
			// detected rtegion
				'ipregion.html'            => 'ipregion.php',
			// 'currency.html'            => 'currency.php',

				'popup_email_send.html'   => 'popup_email_send.php',

				'robots.txt'            => 'robots.php',

				'compatibility/results'           => 'compatibility_search.php',
				'compatibility/android-devices'   => 'compatibility_search.php',
				'compatibility/ios-devices'       => 'compatibility_search.php',

			// security
				'security-subscribe-form-mailChimp.html' => 'security-subscribe-form-mailChimp.php',

				'learning-center/ready-solutions'       => 'ready-solutions.php',

				'receiver.html' => 'receiver.php',

			// country
				'parental-control-software.html' => 'parental-control-software.php',
				'mobile-spion.html' => 'mobile-spion.php',
				'espiao-movel.html' => 'espiao-movel.php',
				'logiciel-de-controle-parental.html' => 'logiciel-de-controle-parental.php',
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
				'username'      => 'pumpic_blog_user',
				'password'  => '57ge8j9SNg9EkhryWA3KV9ZB9NUue6',
		),

		'db' => array(
				'host' => '188.40.64.2',
				'username' => 'ci_user',
				'password' => 'qmsgrSR8qhxeNSC44533hVBqwNajd62z2QtXwN6E',
				'dbname' => 'main',
		),
		'redis' => array(
				'host' => '148.251.64.9',
				'port' => 6319,
				'database' => 0
		),
		'dbOptions' => array(
				PDO::MYSQL_ATTR_INIT_COMMAND => 'set names utf8;',
				PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
				PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
		),

	// version mobiles
		'ver_jailbreak_up'      => '9.1',
		'ver_android_up'        => '6.0.1',
		'ver_android_bot'       => '2.2',
		'ver_ios_up'            => '9.1',
		'ver_ios_bot'           => '6.0',
		'ver_icloud_up'         => '10.2',
		'ver_icloud_bot'        => '6.0',

		'cron' => array(
				'log_path' => '/var/www/pumpic/www/pumpic.com/current/cron/log',
		),
);
if (is_file(__DIR__ . '/config.development.php')) {
	define('SITE_ID', 1);
	$config = array_merge($config, include __DIR__ . '/config.development.php');
} else {
	define('SITE_ID', 1);
}

if ($config['environment'] == 'production') {
	$smarty->caching = true;
	$smarty->compile_check = true;
	$smarty->force_compile = false;
	$smarty->debugging = false;
} else {
	$smarty->caching = false;
	$smarty->compile_check = true;
	$smarty->force_compile = true;
	$smarty->debugging = true;
}
