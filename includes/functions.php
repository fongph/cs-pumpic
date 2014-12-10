<?php
function dispatch($urlParams, $config){
        
        
        // fix url
        if(is_array($urlParams['uriArr']) 
                and count($urlParams['uriArr']) > 0
                and in_array('compatibility', $urlParams['uriArr'])) {
            $urlParams['uriArr'] = array( array_shift($urlParams['uriArr']) );
        }
        
        
        
	if(isset($config['php_compile'][$urlParams['uri']])){
		include $config['php_compile'][$urlParams['uri']];
	}else{
			
		$path = buildTplPath($urlParams,$config);
		
		if($path['answer'] == 404){
			header404();
		}
		try{
				
			$smarty = new Smarty();
			$smarty->caching = false;
			$smarty->compile_check = true;
			$smarty->force_compile = false;
			$smarty->debugging = false;
			$smarty->setTemplateDir($config['smarty']['tpl_path']);
			$smarty->setCacheDir($config['smarty']['cache_path']);
			$smarty->setCompileDir($config['smarty']['tpl_path_compile']);
			
			$smarty->registerPlugin("function","year_now","print_current_year");
                        
                        
			$smarty->assign("domain",$config['domain']);
			$smarty->assign("domain_http",$config['domain_http']);
			$smarty->assign("img",$config['path_img']);
			$smarty->assign("css",$config['path_css']);
			$smarty->assign("js",$config['path_js']);
                        
                        $smarty ->assign('api_device', $config['api_device']);
                        $smarty ->assign('site_id', $config['site_id']);

			$smarty->display($path['tpl']);

			/*Fenom::registerAutoload($config['fenom']['path']);
			$fenom = Fenom::factory($config['fenom']['tpl_path'], $config['fenom']['tpl_path_compile']);
			$fenom->display($path['tpl']);*/
				
		}catch(Exception $e){
			echo $e->getTraceAsString();			
								
		}
			
	}
}

function getURI(){
	@list( $request, $params) = explode('?', $_SERVER['REQUEST_URI']);
	parse_str($params, $params); 
	$uri = trim($request,'/');
	$get = explode('/', $uri);
	return array('uri' => $uri, 'uriArr' => $get, 'getParams' => $params, 'html' => strpos($get[count($get)-1],'.html') === false? false : true);		
}
	
function buildTplPath($arr,$config){
	if(empty($arr['uriArr'][0])){
		return 	array('answer' => 200, 'tpl' => "index.tpl");
	}else{
		$path = implode('/',$arr['uriArr']);
		if(!$arr['html']){
			$part_path = $config['smarty']['tpl_path'].$path.'/index';
		}else{
			$part_path = $config['smarty']['tpl_path'].rtrim($path,".html");
		}
		if(file_exists($part_path.".tpl")){
			return 	array('answer' => 200, 'tpl' => $part_path.".tpl");
		}else{
			return array('answer' => 404, 'tpl' => "404.tpl");			
		}
	}
}

function header404(){
	header("HTTP/1.0 404 Not Found");
}


function sendEmail($email, $subject, $text, $from = 'noreply@pumpic.com'){ // support
	if(strlen($email) && strlen($text)){
		$subject = "=?UTF-8?B?" . base64_encode($subject) . "?=";

		$headers = 'MIME-Version: 1.0' . "\r\n" .
		'Content-type: text/html; charset=UTF-8' . "\r\n" .
		'From: pumpic <'.$from.'>' . "\r\n" .
		'X-Mailer: PHP/' . phpversion();

		try{
			$result = mail($email, $subject, $text, $headers);
		} catch(Exception $e){
			return false;
		}

		return $result;
	}

	return false;
}

function getUrl($url){
	$params = parse_url($url);

	if(!isset($params['scheme'])){
		$url = 'http://' . $url;
	}

	if(!filter_var($url, FILTER_VALIDATE_URL)){
		return false;
	}

	return filter_var($url, FILTER_SANITIZE_URL);
}

function getThumbUrl($full){
	$parts = explode(".png", $full);
	return $parts[0] . '-tumb.png';
}

function validateEmail($email){
	return filter_var($email, FILTER_VALIDATE_EMAIL);
}

function getRandomString(){
	return md5('ah5d7asd' . rand(0, 9000000));
}

function validateDate($date, $format = 'Y-m-d'){
	$d = DateTime::createFromFormat($format, $date);
	return $d && $d->format($format) == $date;
}

function orderNumberFormat($orderId){
	return '#' . str_pad($orderId, 6, '0', STR_PAD_LEFT);
}

function validate_email($email){

	$no_ws_ctl = "[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x7f]";
	$alpha = "[\\x41-\\x5a\\x61-\\x7a]";
	$digit = "[\\x30-\\x39]";
	$cr = "\\x0d";
	$lf = "\\x0a";
	$crlf = "(?:$cr$lf)";

	$obs_char = "[\\x00-\\x09\\x0b\\x0c\\x0e-\\x7f]";
	$obs_text = "(?:$lf*$cr*(?:$obs_char$lf*$cr*)*)";
	$text = "(?:[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f]|$obs_text)";



	$text = "(?:$lf*$cr*$obs_char$lf*$cr*)";
	$obs_qp = "(?:\\x5c[\\x00-\\x7f])";
	$quoted_pair = "(?:\\x5c$text|$obs_qp)";

	$wsp = "[\\x20\\x09]";
	$obs_fws = "(?:$wsp+(?:$crlf$wsp+)*)";
	$fws = "(?:(?:(?:$wsp*$crlf)?$wsp+)|$obs_fws)";
	$ctext = "(?:$no_ws_ctl|[\\x21-\\x27\\x2A-\\x5b\\x5d-\\x7e])";
	$ccontent = "(?:$ctext|$quoted_pair)";
	$comment = "(?:\\x28(?:$fws?$ccontent)*$fws?\\x29)";
	$cfws = "(?:(?:$fws?$comment)*(?:$fws?$comment|$fws))";


	$outer_ccontent_dull = "(?:$fws?$ctext|$quoted_pair)";
	$outer_ccontent_nest = "(?:$fws?$comment)";
	$outer_comment = "(?:\\x28$outer_ccontent_dull*(?:$outer_ccontent_nest$outer_ccontent_dull*)+$fws?\\x29)";



	$atext = "(?:$alpha|$digit|[\\x21\\x23-\\x27\\x2a\\x2b\\x2d\\x2f\\x3d\\x3f\\x5e\\x5f\\x60\\x7b-\\x7e])";
	$atom = "(?:$cfws?(?:$atext)+$cfws?)";



	$qtext = "(?:$no_ws_ctl|[\\x21\\x23-\\x5b\\x5d-\\x7e])";
	$qcontent = "(?:$qtext|$quoted_pair)";
	$quoted_string = "(?:$cfws?\\x22(?:$fws?$qcontent)*$fws?\\x22$cfws?)";

	$quoted_string = "(?:$cfws?\\x22(?:$fws?$qcontent)+$fws?\\x22$cfws?)";
	$word = "(?:$atom|$quoted_string)";

	$obs_local_part = "(?:$word(?:\\x2e$word)*)";
	$obs_domain = "(?:$atom(?:\\x2e$atom)*)";



	$dot_atom_text = "(?:$atext+(?:\\x2e$atext+)*)";
	$dot_atom = "(?:$cfws?$dot_atom_text$cfws?)";



	$dtext = "(?:$no_ws_ctl|[\\x21-\\x5a\\x5e-\\x7e])";
	$dcontent = "(?:$dtext|$quoted_pair)";
	$domain_literal = "(?:$cfws?\\x5b(?:$fws?$dcontent)*$fws?\\x5d$cfws?)";


	$local_part = "(($dot_atom)|($quoted_string)|($obs_local_part))";
	$domain = "(($dot_atom)|($domain_literal)|($obs_domain))";
	$addr_spec = "$local_part\\x40$domain";



	if(strlen($email) > 254)
	return 0;


	if(!preg_match("!^$addr_spec$!", $email, $m)){

		return 0;
	}

	$bits = array(
		'local' => isset($m[1]) ? $m[1] : '',
		'local-atom' => isset($m[2]) ? $m[2] : '',
		'local-quoted' => isset($m[3]) ? $m[3] : '',
		'local-obs' => isset($m[4]) ? $m[4] : '',
		'domain' => isset($m[5]) ? $m[5] : '',
		'domain-atom' => isset($m[6]) ? $m[6] : '',
		'domain-literal' => isset($m[7]) ? $m[7] : '',
		'domain-obs' => isset($m[8]) ? $m[8] : '',
	);




	if(strlen($bits['local']) > 64)
	return 0;
	if(strlen($bits['domain']) > 255)
	return 0;



	if(strlen($bits['domain-literal'])){

		$Snum = "(\d{1,3})";
		$IPv4_address_literal = "$Snum\.$Snum\.$Snum\.$Snum";

		$IPv6_hex = "(?:[0-9a-fA-F]{1,4})";

		$IPv6_full = "IPv6\:$IPv6_hex(?:\:$IPv6_hex){7}";

		$IPv6_comp_part = "(?:$IPv6_hex(?:\:$IPv6_hex){0,7})?";
		$IPv6_comp = "IPv6\:($IPv6_comp_part\:\:$IPv6_comp_part)";

		$IPv6v4_full = "IPv6\:$IPv6_hex(?:\:$IPv6_hex){5}\:$IPv4_address_literal";

		$IPv6v4_comp_part = "$IPv6_hex(?:\:$IPv6_hex){0,5}";
		$IPv6v4_comp = "IPv6\:((?:$IPv6v4_comp_part)?\:\:(?:$IPv6v4_comp_part\:)?)$IPv4_address_literal";


		if(preg_match("!^\[$IPv4_address_literal\]$!", $bits['domain'], $m)){

			if(intval($m[1]) > 255)
			return 0;
			if(intval($m[2]) > 255)
			return 0;
			if(intval($m[3]) > 255)
			return 0;
			if(intval($m[4]) > 255)
			return 0;
		}else{


			while(1){

				if(preg_match("!^\[$IPv6_full\]$!", $bits['domain'])){
					break;
				}

				if(preg_match("!^\[$IPv6_comp\]$!", $bits['domain'], $m)){
					list($a, $b) = explode('::', $m[1]);
					$folded = (strlen($a) && strlen($b)) ? "$a:$b" : "$a$b";
					$groups = explode(':', $folded);
					if(count($groups) > 7)
					return 0;
					break;
				}

				if(preg_match("!^\[$IPv6v4_full\]$!", $bits['domain'], $m)){

					if(intval($m[1]) > 255)
					return 0;
					if(intval($m[2]) > 255)
					return 0;
					if(intval($m[3]) > 255)
					return 0;
					if(intval($m[4]) > 255)
					return 0;
					break;
				}

				if(preg_match("!^\[$IPv6v4_comp\]$!", $bits['domain'], $m)){
					list($a, $b) = explode('::', $m[1]);
					$b = substr($b, 0, -1); # remove the trailing colon before the IPv4 address
					$folded = (strlen($a) && strlen($b)) ? "$a:$b" : "$a$b";
					$groups = explode(':', $folded);
					if(count($groups) > 5)
					return 0;
					break;
				}

				return 0;                
			}
		}
	}else{



		$labels = explode('.', $bits['domain']);



		if(count($labels) == 1)
		return 0;



		foreach($labels as $label){

			if(strlen($label) > 63)
			return 0;
			if(substr($label, 0, 1) == '-')
			return 0;
			if(substr($label, -1) == '-')
			return 0;
		}

		if(preg_match('!^[0-9]+$!', array_pop($labels)))
		return 0;
	}


	return $email;
}

function print_current_year($params, $smarty)
{
  if(empty($params["format"])) {
    $format = "%Y";
  }
  return strftime($format,time());
}

function _redirect( $_url ) {
    header('Location: '.$_url);
    die();
}


function stdToArray($obj){
  $rc = (array)$obj;
  foreach($rc as $key => &$field){
    if(is_object($field))$field = stdToArray($field);
  }
  return $rc;
}

/*
 * Compatibility device
 */
function smarty_function_compatibilityDevice($params, $template) {
    require_once 'lib/Curl.php';
    
     $_settings = array(
         'api'          => false,
        'title'         => 'Title Device',
        'description'   => 'Descriptions!',
        '_item'         => false,
        '_error'        => false, 
    );
    
    $_curl = new \system\Curl();
    $_post = array(
        'getModel' => $_GET['model'],
    );
    
    
    if(isset($params['api']['host']) and !empty($params['api']['host'])) {
        $_settings['api'] = $params['api'];
        $_curl-> get($params['api']['host'], $_post);
    }    
    
    
    $_respons = array();
    if(is_object($_curl->response))
        $_respons = stdToArray($_curl->response); 
    else if(is_array($_curl->response))
        $_respons = $_curl->response;
    
    
    if(is_array($_respons) and count($_respons) > 0) {
            // parce path img
            if(isset($_respons['img']) and !empty($_respons['img'])) {
                $_img = explode('/',$_respons['img']);
                $_file_name = explode('.', $_img[count($_img) - 1]);
                $_respons['img'] = 'middle/'.$_file_name[0].'_medium.'.$_file_name[1];
            } else 
                $_respons['img'] = '';
        
            $_set = array(
                'title' => $_respons['name'],
                'description' => $_respons['name'],
                '_item' => (array)$_respons
            );
            
            $_settings = array_merge($_settings, $_set);
                
    } else {
        //header("Location: /404.html");
        //exit;
        //$_settings['error'] = ($_curl->error) ? $_curl->error: 'This page is temporarily unavailable!';
    }
        
    
    // init output params!
    $template->assign($params['out'], $_settings);
}


/*
 * Features ( generate Plans )
 */
function smarty_function_features_plans( $_plans = array()  ) {
    
    $_options = [
        // Call History
        'call-history' => [
            'title'   => 'Call History',
            'device'  => array(
                'apple'      => ['status' => true, 'version' => '6.0 - 8.1.1'], // 3.1.3 - 7.1.1
                'android'    => ['status' => true, 'version' => '2.2 - 5.0'], // 2.2 - 4.4
                'blackberry' => ['status' => true, 'version' => '1.0 - 7.1']
            ),
            'plans' => array(
                'basic'     => ['status' => true, 'price' => '3 month - $11.66/month', 'url' => '/pricing.html'],
                'premium'   => ['status' => true, 'price' => '3 month -$33.33/month', 'url' => '/pricing.html'],
            ),
            'intro' => 'Get detailed information on all incoming and outgoing calls: a caller’s name and phone number, time of the call and its duration.',
            'description' => array(
                'title' => 'Monitor incoming and outgoing calls data',
                'body' => 'Use Pumpic and follow the entire call history of the device you are tracking. View a caller’s data including the name and phone number, the time when a call was received and duration of the conversation.'
            ), 
        ],
        
        // SMS History
        'sms-history' => [
            'title'   => 'SMS History',
            'device'  => array(
                'apple'      => ['status' => true, 'version' => '6.0 - 8.1.1'], // 3.1.3 - 7.1.1
                'android'    => ['status' => true, 'version' => '2.2 - 5.0'], // 2.2 - 4.4
                'blackberry' => ['status' => true, 'version' => '1.0 - 7.1']
            ),
            'plans' => array(
                'basic'     => ['status' => true, 'price' => '3 month - $11.66/month', 'url' => '/pricing.html'],
                'premium'   => ['status' => true, 'price' => '3 month -$33.33/month', 'url' => '/pricing.html'],
            ),
            'intro' => 'Read all text messages. Get precise information on both a sender and a recipient of SMS as well as the exact message time.',
            'description' => array(
                'title' => 'Keep track of Short Message Service',
                'body' => 'Monitor each and every text message along with attached multimedia files delivered to the tracked device. No matter whether they were deleted or not, Pumpic will make them visible to you. Keep track of your children and employees SMS activity.'
            ),
        ],
        
        // SMS blocking
        'sms-blocking' => [
            'title'   => 'SMS blocking',
            'device'  => array(
                'apple'      => ['status' => true, 'version' => '6.0 - 8.1.1'], // 3.1.3 - 7.1.1
                'android'    => ['status' => true, 'version' => '2.2 - 5.0 (except 4.4 and higher)'], // except 4.4
                'blackberry' => ['status' => false, 'version' => '1.0 - 7.1']
            ),
            'plans' => array(
                'basic'     => ['status' => true, 'price' => '3 month - $11.66/month', 'url' => '/pricing.html'],
                'premium'   => ['status' => true, 'price' => '3 month -$33.33/month', 'url' => '/pricing.html'],
            ),
            'intro' => 'Block unwanted SMS senders so they will never again be able to reach the target phone user.<br />&nbsp;',
            'description' => array(
                'title' => 'Prevent the phone from unwelcome SMS',
                'body' => 'Use Pumpic and block the cell phone you are monitoring against incoming text messages you wish your children or employees would never receive. Unwanted senders will never get on the phone you are keeping track of.'
            ),
        ],
        
        // Location History
        'location-history' => [
            'title'   => 'Location History',
            'device'  => array(
                'apple'      => ['status' => true, 'version' => '6.0 - 8.1.1'],
                'android'    => ['status' => true, 'version' => '2.2 - 5.0'],
                'blackberry' => ['status' => true, 'version' => '1.0 - 7.1']
            ),
            'plans' => array(
                'basic'     => ['status' => true, 'price' => '3 month - $11.66/month', 'url' => '/pricing.html'],
                'premium'   => ['status' => true, 'price' => '3 month -$33.33/month', 'url' => '/pricing.html'],
            ),
            'intro' => 'Identify current whereabouts of the tracked device on the map. Log into your Control Panel to access detailed route history.',
            'description' => array(
                'title' => 'Track the location anywhere in the world',
                'body' => 'Pumpic allows you to tell the exact location of your children or employees you are keeping track of. By using GPS the application identifies the current position as well as a precise route of recent movements.'
            ),
        ],
        
        // Contacts
        'contacts' => [
            'title'   => 'Contacts',
            'device'  => array(
                'apple'      => ['status' => true, 'version' => '6.0 - 8.1.1'],
                'android'    => ['status' => true, 'version' => '2.2 - 5.0'],
                'blackberry' => ['status' => false, 'version' => '1.0 - 7.1']
            ),
            'plans' => array(
                'basic'     => ['status' => true, 'price' => '3 month - $11.66/month', 'url' => '/pricing.html'],
                'premium'   => ['status' => true, 'price' => '3 month -$33.33/month', 'url' => '/pricing.html'],
            ),
            'intro' => 'View all contacts within seconds. Access the address book remotely: names, phone numbers, emails etc.',
            'description' => array(
                'title' => 'Monitor communications listing and contacts easily',
                'body' => 'Find out all contact information ever put on the list. Keep track of communications list and prevent your children or employees from unwanted connections and companionship. Receive notifications about recent contacts additions.'
            ),
        ],
        
        // Calendar
        'calendar' => [
            'title'   => 'Calendar',
            'device'  => array(
                'apple'      => ['status' => true, 'version' => '6.0 - 8.1.1'],
                'android'    => ['status' => true, 'version' => '2.2 - 5.0'],
                'blackberry' => ['status' => false, 'version' => '1.0 - 7.1']
            ),
            'plans' => array(
                'basic'     => ['status' => true, 'price' => '3 month - $11.66/month', 'url' => '/pricing.html'],
                'premium'   => ['status' => true, 'price' => '3 month -$33.33/month', 'url' => '/pricing.html'],
            ),
            'intro' => 'Keep track of all events put on the schedule. See what the tracked person plans to do and when. Follow tasks list.',
            'description' => array(
                'title' => 'Monitor date, month and year plans in the tracked calendar',
                'body' => 'Follow each and every scripted event as well as scheduled intentions. Avert possible danger before it has happened. Keep up with recent and future plans of your underage children or employees.'
            ),
        ],
        
        // Browsing History
        'browsing-history' => [
            'title'   => 'Browsing History',
            'device'  => array(
                'apple'      => ['status' => true, 'version' => '6.0 - 8.1.1'],
                'android'    => ['status' => true, 'version' => '2.2 - 5.0'],
                'blackberry' => ['status' => false, 'version' => '1.0 - 7.1']
            ),
            'plans' => array(
                'basic'     => ['status' => true, 'price' => '3 month - $11.66/month', 'url' => '/pricing.html'],
                'premium'   => ['status' => true, 'price' => '3 month -$33.33/month', 'url' => '/pricing.html'],
            ),
            'intro' => 'Go through browsing history of the tracked device. Check which websites were visited and what search engine queries were made.',
            'description' => array(
                'title' => 'Monitor online activity by tracking browsing history',
                'body' => 'Pumpic enables you to follow each link and every website your kid or employee visits. Check search results and most popular requests. Keep the user of the target device away from visiting specific web resources.'
            ),
        ],
        
        // Bookmarks
        'bookmarks' => [
            'title'   => 'Bookmarks',
            'device'  => array(
                'apple'      => ['status' => true, 'version' => '6.0 - 8.1.1'],
                'android'    => ['status' => true, 'version' => '2.2 - 5.0'],
                'blackberry' => ['status' => false, 'version' => '1.0 - 7.1']
            ),
            'plans' => array(
                'basic'     => ['status' => true, 'price' => '3 month - $11.66/month', 'url' => '/pricing.html'],
                'premium'   => ['status' => true, 'price' => '3 month -$33.33/month', 'url' => '/pricing.html'],
            ),
            'intro' => 'Log in to your Control Panel to see which websites were bookmarked. Check at what time the user of the tracked gadget accesses favorite websites.',
            'description' => array(
                'title' => 'Look through favorite websites of the tracked user ',
                'body' => 'Use Pumpic app to find out which among visited websites the user of the monitored gadget bookmarked. Enter you Control Panel to check all bookmarks and prevent your kids or employees from visiting undesirable webpages.'
            ),
        ],
        
        // Photos
        'photos' => [
            'title'   => 'Photos',
            'device'  => array(
                'apple'      => ['status' => true, 'version' => '6.0 - 8.1.1'],
                'android'    => ['status' => true, 'version' => '2.2 - 5.0'],
                'blackberry' => ['status' => false, 'version' => '1.0 - 7.1']
            ),
            'plans' => array(
                'basic'     => ['status' => true, 'price' => '3 month - $11.66/month', 'url' => '/pricing.html'],
                'premium'   => ['status' => true, 'price' => '3 month -$33.33/month', 'url' => '/pricing.html'],
            ),
            'intro' => 'Every taken picture will be available to you. See what photos the tracked gadget user downloads from the Internet.',
            'description' => array(
                'title' => 'Monitor each and every photo taken',
                'body' => 'By using Pumpic software, you can view every single photo shot and each picture downloaded from the Internet. Soon after your kid or employee takes a pic, it will be sent to your personal account for your consideration.'
            ),
        ],
        
        // Emails
        'emails' => [
            'title'   => 'Emails',
            'device'  => array(
                'apple'      => ['status' => true, 'version' => '6.0 - 8.1.1'],
                'android'    => ['status' => true, 'version' => '2.2 - 5.0 (ROOT for all)'],
                'blackberry' => ['status' => false, 'version' => '1.0 - 7.1']
            ),
            'plans' => array(
                'basic'     => ['status' => true, 'price' => '3 month - $11.66/month', 'url' => '/pricing.html'],
                'premium'   => ['status' => true, 'price' => '3 month -$33.33/month', 'url' => '/pricing.html'],
            ),
            'intro' => 'Look through all sent and received emails. Access all available contact info on a sender and the recipient.',
            'description' => array(
                'title' => 'Get access to inbox messages and sent mail',
                'body' => 'Track every single email the user of the tracked gadget sends or receives. Check email correspondence history and prevent you children from ambiguous communication and your employees from wasting their time at work.'
            ),
        ],
        
        // Applications
        'applications' => [
            'title'   => 'Applications',
            'device'  => array(
                'apple'      => ['status' => true, 'version' => '6.0 - 8.1.1'],
                'android'    => ['status' => true, 'version' => '2.2 - 5.0'],
                'blackberry' => ['status' => false, 'version' => '1.0 - 7.1']
            ),
            'plans' => array(
                'basic'     => ['status' => true, 'price' => '3 month - $11.66/month', 'url' => '/pricing.html'],
                'premium'   => ['status' => true, 'price' => '3 month -$33.33/month', 'url' => '/pricing.html'],
            ),
            'intro' => 'Monitor each cell phone application that your children use and play, or your employees are distracted by.',
            'description' => array(
                'title' => 'View all applications set up on the target cell phone',
                'body' => 'By using Pumpic, you can easily track each installation of new applications on the target mobile phone. Prevent your children from ambiguous software usage and your employees distracting from work.'
            ),
        ],
        
        // Websites & Apps blocking
        'websites-apps-blocking' => [
            'title'   => 'Websites & Apps blocking',
            'device'  => array(
                'apple'      => ['status' => true, 'version' => '6.0 - 8.1.1'],
                'android'    => ['status' => true, 'version' => '2.2 - 5.0'],
                'blackberry' => ['status' => false, 'version' => '1.0 - 7.1']
            ),
            'plans' => array(
                'basic'     => ['status' => true, 'price' => '3 month - $11.66/month', 'url' => '/pricing.html'],
                'premium'   => ['status' => true, 'price' => '3 month -$33.33/month', 'url' => '/pricing.html'],
            ),
            'intro' => 'Block any websites and time-wasting applications from running on the target cell phone. Get detailed info on each app installed.',
            'description' => array(
                'title' => 'Block distracting websites and applications on the target device',
                'body' => 'By using Pumpic you can view and control all websites visited and applications installed on the cell phone your children or employees use. Prevent them from wasting time playing games or using other distracting software.'
            ),
        ],
        
        // Viber/WhatsApp/Skype
        'viber-whatsapp-skype' => [
            'title'   => 'Viber/WhatsApp/Skype',
            'device'  => array(
                'apple'      => ['status' => true, 'version' => '6.0 - 8.1.1'],
                'android'    => ['status' => true, 'version' => '2.2 - 5.0 (ROOT for all)'],
                'blackberry' => ['status' => false, 'version' => '1.0 - 7.1']
            ),
            'plans' => array(
                'basic'     => ['status' => false, 'price' => '3 month - $11.66/month', 'url' => '/pricing.html'],
                'premium'   => ['status' => true, 'price' => '3 month -$33.33/month', 'url' => '/pricing.html'],
            ),
            'intro' => 'Keep track of conversations via the most popular communications software including video chats and voice calls.',
            'description' => array(
                'title' => 'Monitor Viber, WhatsApp and Skype chats on the target phone',
                'body' => 'Pumpic allows you to monitor the target cell phone user’s activity in the most widely used communications applications like WhatsApp, Viber and Skype. Prevent your employees or children from undesired conversations.'
            ),
        ],
        
        
        // View User Video
        'view-user-video' => [
            'title'   => 'View User Video',
            'device'  => array(
                'apple'      => ['status' => true, 'version' => '6.0 - 8.1.1'],
                'android'    => ['status' => true, 'version' => '2.2 - 5.0'],
                'blackberry' => ['status' => false, 'version' => '1.0 - 7.1']
            ),
            'plans' => array(
                'basic'     => ['status' => false, 'price' => '3 month - $11.66/month', 'url' => '/pricing.html'],
                'premium'   => ['status' => true, 'price' => '3 month -$33.33/month', 'url' => '/pricing.html'],
            ),
            'intro' => 'Keep track of each new video the user of the cell phone you are monitoring films. Look through multimedia files.',
            'description' => array(
                'title' => 'Monitor videos filmed by the target device',
                'body' => 'Use Pumpic and monitor all multimedia files downloaded from the Internet or shot by the camera. Track videos that your employees or children film. Prevent your kids from watching restricted videos.'
            ),
        ],
        
        // Facebook Messages
        'facebook-messages' => [
            'title'   => 'Facebook Messages',
            'device'  => array(
                'apple'      => ['status' => true, 'version' => '6.0 - 8.1.1'],
                'android'    => ['status' => true, 'version' => '2.2 - 5.0 (ROOT for all)'],
                'blackberry' => ['status' => false, 'version' => '1.0 - 7.1']
            ),
            'plans' => array(
                'basic'     => ['status' => false, 'price' => '3 month - $11.66/month', 'url' => '/pricing.html'],
                'premium'   => ['status' => true, 'price' => '3 month -$33.33/month', 'url' => '/pricing.html'],
            ),
            'intro' => 'Monitor each and every word sent and received via Facebook. Control your employees’ chats, protect your kids.',
            'description' => array(
                'title' => 'Keep track of communications and messages on Facebook',
                'body' => 'Pumpic enables you to monitor Facebook messages easily and quickly. Do not let your employees waste their time at work chatting online or protect your children from online predators and uncontrolled conversations.'
            ),
        ],
        
        
        // Historical Data
        'historical-data' => [
            'title'   => 'Historical Data',
            'device'  => array(
                'apple'      => ['status' => true, 'version' => '6.0 - 8.1.1'],
                'android'    => ['status' => true, 'version' => '2.2 - 5.0'],
                'blackberry' => ['status' => false, 'version' => '1.0 - 7.1']
            ),
            'plans' => array(
                'basic'     => ['status' => false, 'price' => '3 month - $11.66/month', 'url' => '/pricing.html'],
                'premium'   => ['status' => true, 'price' => '3 month -$33.33/month', 'url' => '/pricing.html'],
            ),
            'intro' => 'Look through all the information ever stored on the target phone. Keep track of the target device since the day it has been switched on.',
            'description' => array(
                'title' => 'Track the entire data history from the very beginning',
                'body' => 'By using Pumpic Historical Data feature, you can view all the data ever kept on file. This function allows you to keep track of information from the very first day of the target cell power on regardless your subscription plan submission date.'
            ),
        ],
        
        // SMS Commands
        'sms-commands' => [
            'title'   => 'SMS Commands',
            'device'  => array(
                'apple'      => ['status' => true, 'version' => '6.0 - 8.1.1'],
                'android'    => ['status' => true, 'version' => '2.2 - 5.0 (ROOT for all)'],
                'blackberry' => ['status' => false, 'version' => '1.0 - 7.1']
            ),
            'plans' => array(
                'basic'     => ['status' => false, 'price' => '3 month - $11.66/month', 'url' => '/pricing.html'],
                'premium'   => ['status' => true, 'price' => '3 month -$33.33/month', 'url' => '/pricing.html'],
            ),
            'intro' => 'Wipe out or lock the target cell phone remotely by using SMS commands even when the Internet is shot down.',
            'description' => array(
                'title' => 'Control the target phone remotely by using SMS commands',
                'body' => 'Pumpic allows you to lock and wipe the target gadget remotely. Even if there is no network connection, you can easily use SMS commands to control your cell phone functioning: change the password or simply lock it by sending a text message.'
            ),
        ],
        
        // Keylogger
        'keylogger' => [
            'title'   => 'Keylogger',
            'device'  => array(
                'apple'      => ['status' => true, 'version' => '6.0 - 8.1.1'],
                'android'    => ['status' => true, 'version' => '2.2 - 5.0'],
                'blackberry' => ['status' => false, 'version' => '1.0 - 7.1']
            ),
            'plans' => array(
                'basic'     => ['status' => false, 'price' => '3 month - $11.66/month', 'url' => '/pricing.html'],
                'premium'   => ['status' => true, 'price' => '3 month -$33.33/month', 'url' => '/pricing.html'],
            ),
            'intro' => 'Monitor all key strokes on the target cell phone. Prevent your children from viewing inappropriate content, secure confidential business data.',
            'description' => array(
                'title' => 'Keep track of each button pressed with keylogger',
                'body' => 'By Using Pumpic software, you can follow each button your kid or employees press. Keep track of password changes, using the target device for non-work-related purposes, track key words and phrases input associated with commercial secret data.'
            ),
        ],
        
    ];
    
    $_html = '';
    
    if(is_array($_options) and count($_options) > 0)
        $_options = array_merge($_options, $_plans);
    
    $smarty = new Smarty();
   // $smarty->caching = false;
   // $smarty->compile_check = false;
   // $smarty->force_compile = false;
   // $smarty->debugging = false;
    
    $smarty->setTemplateDir(dirname(dirname(__FILE__)).'/templates/includes'); // features-plans.tpl
    $smarty->setCacheDir(dirname(dirname(__FILE__)).'/cache/');
    $smarty->setCompileDir(dirname(dirname(__FILE__)).'/templates_c/');
    
    foreach ($_options as $_id => $_option) :
        if(is_array($_option) and count($_option) > 0):
            $_data = new Smarty_Data;
        
            $_use_plan = [];
            foreach($_option['plans'] as  $_name_plan => $_item_plan) {
                if($_item_plan['status']) $_use_plan[] = $_name_plan;
            }    
            $_data->assign('_id', $_id);
            $_data->assign('item_plan', implode('|', $_use_plan));
            $_data->assign($_option);
            $_html .= $smarty->fetch('features-plans.tpl', $_data);
            
        endif;    
    endforeach;
    
    
    echo $_html;
}


// has user
function smarty_modifier_hasUser() { // $params, $template
//  $_result = false;
    
    require_once 'lib/users/ManagerUser.php';
    $obj = new includes\lib\users\ManagerUser( array() );
    $_result = false;
    
    if($obj -> getLoginUser()) {
        $_result = true;
    }
    
    return $_result;
}

// clear cookie popUp
function _clearCookie() {
    if(isset($_COOKIE['popUp'])) {
        setcookie("popUp","", time()-3600, '/');
        unset ($_COOKIE['popUp']);
    }
    
}


/*
 * Detected ip
 */
function smarty_function_closeAccess($params, $template) {
    if (!hasAccess()) {
        die('You are not allowed to access this file.');
    }
}

/**
 * function detected dev or prod
 */
function smarty_modifier_detectedDev() {
   return hasAccess();
}

function hasAccess() {
//     if(in_array(@$_SERVER['REMOTE_ADDR'], ['176.38.120.13', '212.90.60.74', '127.0.0.1', '::1'])) {
//        $_result = true;
//    } else
//        $_result = false;
    
    $_result = true;
    
    // init output params!
    return $_result;
}


?>