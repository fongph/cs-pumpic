<?php
function di() {
    global $di;
    return $di ?: $di = require __DIR__ . '/di.php';
}

function dispatch($urlParams, $config){
    global $smarty;
    
    // Expires
     header('Expires: '.gmdate('D, d M Y H:i:s \G\M\T', time() + 3600));
    
    if (!empty($_SERVER["HTTP_REFERER"]) ) {
        $_url = parse_url($_SERVER['HTTP_REFERER']);  
        if(!isset($_COOKIE['orders_referer']) and isset($_url['host']) and !preg_match('/((.*)\.|^)'. str_replace('.', '\.', $config['domain']) .'/i', trim($_url['host'])) ) {
            setcookie("orders_referer", $_SERVER['HTTP_REFERER'], time() + 3600 * 24, '/', '.' . $config['domain'] );
        } 

    }    
        
    // landing
    if (!isset($_COOKIE['landing']) && isset($_SERVER['HTTP_HOST'], $_SERVER['REQUEST_URI'])) {
        $url = 'http' . (isset($_SERVER['HTTPS']) ? 's' : '') . '://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
        setcookie("landing", $url, time() + 3600 * 24, '/', '.' . $config['domain']);
    }


    // fix url
    if(is_array($urlParams['uriArr']) 
            and count($urlParams['uriArr']) > 0
            and in_array('compatibility', $urlParams['uriArr'])) {
        $urlParams['uriArr'] = array( array_shift($urlParams['uriArr']) );
    }

    // 301 redirect
    if(preg_match('/\/\?cat=(.*)/is', $_SERVER['REQUEST_URI'])) {
        header301( $config['domain_http'] );
    }

    // 404 redirect
    if(preg_match('/\/compatibility\/\?page=(.*)/is', $_SERVER['REQUEST_URI'])) {
        header404();
        $smarty->display('404.tpl');
        die;
    }
        
    try {

        if (isset($config['php_compile'][$urlParams['uri']])) {
            include $config['php_compile'][$urlParams['uri']];
        } elseif( isset($_GET['model']) and !empty($_GET['model']) ) {
            include 'compatibility_device.php';
  
        //} elseif($urlParams['uri'] == 'compatibility') {
        //    throw new PageNotFoundException;
            
        //} elseif(strpos($urlParams['uri'], 'compatibility/') === 0) {
         //   include 'compatibility_device.php';
            
        } else {
            
            $path = buildTplPath($urlParams,$config);
            if($path['answer'] == 404) {
                throw new PageNotFoundException;
            }    
            
            try{
                
                $smarty->display($path['tpl']); 
            } catch(Exception $e){
                echo $e->getMessage() . '<br />';
                echo $e->getTraceAsString();
            }
        }
        
        
    } catch (PageNotFoundException $e) {
        header404();
        $smarty->display('404.tpl');
        die;
    }
    
}

function smarty_modifier_getCloseLink($links) { 
    $uri = getURI();
    $res = true;
    $_links = (isset($links)) ? explode(',', $links) : false;
    if(is_array($_links) and count($_links) > 0) {
        foreach($_links as $link) :
            if(in_array($link, $uri['uriArr'])) { 
                $res = false; 
                continue; 
            }
        endforeach;
    }
    return $res;
}

function smarty_function_getDemoLink($params, $template) {
    $uri = getURI();
    $domain = (isset($params['domain'])) ? $params['domain'] : $_SERVER['HTTP_HOST']; 
    $_id = 125;
    $_get = "?redirect_url=cp/calls";
    if(in_array('icloud-iphone-without-jailbreak-monitoring.html', $uri['uriArr'])) {
        $_id = 126; 
        $_get = " ";
    }
    return "http://demo.{$domain}/setDevice/{$_id}{$_get}";
}

function getURI(){
	@list( $request, $params) = explode('?', $_SERVER['REQUEST_URI']);
	parse_str($params, $params); 
	$uri = trim($request,'/');
	$get = explode('/', $uri);
	return array('uri' => $uri, 'uriArr' => $get, 'getParams' => $params, 'html' => strpos($get[count($get)-1],'.html') === false? false : true);		
}
	
function buildTplPath($arr,$config){
        $_ext = array('.html', '.htm');
    
	if(empty($arr['uriArr'][0])){
		return 	array('answer' => 200, 'tpl' => "index.tpl");
	}else{
		$path = implode('/',$arr['uriArr']);
		if(!$arr['html']){
			$part_path = $config['smarty']['tpl_path'].$path.'/index';
		}else{
                        $_url = str_replace($_ext, "", $path);
			$part_path = $config['smarty']['tpl_path'].$_url;
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

function header301( $url ){
    if($url) {
        header("HTTP/1.1 301 Moved Permanently");
        header("Location: ".$url);
        die();
    }
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

function cache_data($params, $smarty) {
    if(empty($params['data'])) {
        $_data = date('Y-m-d'); 
    } else 
        $_data = $params['data'];
    
    return strtotime($_data);
}

function _redirect( $_url ) {
    header('Location: '.$_url);
    die();
}

function isAjax()
{
    return !empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest';
}

function paginationByCount($current, $count)
{
    $p = array_slice(range(0, $count-1), $current+2 < $count ? ($current-2 > 0 ? $current-2 : 0) : $count-5, 5);
    
    if(reset($p) > 3){
        $p = array_merge(array(0,1,false), $p);
    } elseif(current($p)){
        $p = array_merge(range(0, current($p)-1), $p);
    }
    
    if(end($p) < $count-4){
        $p = array_merge($p, array(false,$count-2,$count-1));
    } elseif(current($p) < $count-1){
        $p = array_merge($p, range(end($p)+1, $count-1));
    }

    return $p;
}

function stdToArray($obj){
  $rc = (array)$obj;
  foreach($rc as $key => &$field){
    if(is_object($field))$field = stdToArray($field);
  }
  return $rc;
}

/*
 * Features ( generate Plans )
 */
function smarty_function_features_plans( $_plans = array() ) { 
    
    $_options = [
        // Call History
        'call-history' => [
            'title'   => 'Call History',
            'device'  => array(
                'apple'      => ['status' => true, 'version' => '6.0 - 8.3'], // 3.1.3 - 7.1.1
                'android'    => ['status' => true, 'version' => '2.2 - 5.1'], // 2.2 - 4.4
                'blackberry' => ['status' => false, 'version' => '1.0 - 7.1']
            ),
            'plans' => array(
                'basic'     => ['status' => true, 'price' => '3 month - $3.33/month', 'url' => '/store.html'],
                'premium'   => ['status' => true, 'price' => '3 month - $13.33/month', 'url' => '/store.html'],
            ),
            'intro' => 'See who calls your child. Get detailed information on all incoming and outgoing calls: a caller’s name and phone number, time of the call and its duration.',
            'description' => array(
                'title' => 'Monitor Incoming and Outgoing Calls Data',
                'body' => 'Use Pumpic app to follow the entire call history of your child’s device. Protect your kids from mistrusted people. View a caller’s data including the name and phone number, the time when a call was received and duration of the conversation.  '
            ), 
        ],
        
        // SMS History
        'sms-history' => [
            'title'   => 'SMS History',
            'device'  => array(
                'apple'      => ['status' => true, 'version' => '6.0 - 8.3'], // 3.1.3 - 7.1.1
                'android'    => ['status' => true, 'version' => '2.2 - 5.1'], // 2.2 - 4.4
                'blackberry' => ['status' => false, 'version' => '1.0 - 7.1']
            ),
            'plans' => array(
                'basic'     => ['status' => true, 'price' => '3 month - $3.33/month', 'url' => '/store.html'],
                'premium'   => ['status' => true, 'price' => '3 month - $13.33/month', 'url' => '/store.html'],
            ),
            'intro' => 'Read your children’s text messages remotely. Get precise information on both a sender and a recipient of SMS as well as the exact message time.',
            'description' => array(
                'title' => 'Keep Track Of Short Message Service',
                'body' => 'Monitor each and every text message along with attached multimedia files delivered to your kid’s device. No matter whether they were deleted or not, Pumpic will make them visible to you. Keep track of your children’s SMS activity to see whom they are chatting with.'
            ),
        ],
        
        // SMS blocking
        'sms-blocking' => [
            'title'   => 'SMS blocking',
            'device'  => array(
                'apple'      => ['status' => true, 'version' => '6.0 - 8.3'], // 3.1.3 - 7.1.1
                'android'    => ['status' => true, 'version' => '2.2 - 4.3.1'], // except 4.4 (except 4.4 and higher)
                'blackberry' => ['status' => false, 'version' => '1.0 - 7.1']
            ),
            'plans' => array(
                'basic'     => ['status' => true, 'price' => '3 month - $3.33/month', 'url' => '/store.html'],
                'premium'   => ['status' => true, 'price' => '3 month - $13.33/month', 'url' => '/store.html'],
            ),
            'intro' => 'Block unwanted SMS senders so they will never again be able to reach your kid.<br />&nbsp;',
            'description' => array(
                'title' => 'Prevent Your Kid from Receiving Unwelcome SMS',
                'body' => 'Use Pumpic to block incoming text messages you wish your child would never receive. Unwanted senders will never get on your kid’s device.'
            ),
        ],
        
        // Location History
        'location-history' => [
            'title'   => 'Location History',
            'device'  => array(
                'apple'      => ['status' => true, 'version' => '6.0 - 8.3'],
                'android'    => ['status' => true, 'version' => '2.2 - 5.1'],
                'blackberry' => ['status' => false, 'version' => '1.0 - 7.1']
            ),
            'plans' => array(
                'basic'     => ['status' => true, 'price' => '3 month - $3.33/month', 'url' => '/store.html'],
                'premium'   => ['status' => true, 'price' => '3 month - $13.33/month', 'url' => '/store.html'],
            ),
            'intro' => 'Identify real time GPS location of your child. Log into your Control Panel to access detailed route history.',
            'description' => array(
                'title' => 'Track the Location of Your Child Worldwide',
                'body' => 'Pumpic allows you to tell the exact location of your children. Find your children by using GPS. The application identifies the current position together with the precise route of recent movements.'
            ),
        ],
        
        // Contacts
        'contacts' => [
            'title'   => 'Contacts',
            'device'  => array(
                'apple'      => ['status' => true, 'version' => '6.0 - 8.3'],
                'android'    => ['status' => true, 'version' => '2.2 - 5.1'],
                'blackberry' => ['status' => false, 'version' => '1.0 - 7.1']
            ),
            'plans' => array(
                'basic'     => ['status' => true, 'price' => '3 month - $3.33/month', 'url' => '/store.html'],
                'premium'   => ['status' => true, 'price' => '3 month - $13.33/month', 'url' => '/store.html'],
            ),
            'intro' => 'Prevent unwanted company for your child. View all contacts within seconds. Access the address book remotely: names, phone numbers, emails etc.',
            'description' => array(
                'title' => 'Monitor Communication Listing and Contacts Easily',
                'body' => 'Find out all contact information ever put on the list. Keep track of communication lists to prevent your children from unwanted connections and companionship. Receive notifications about recent contact additions.'
            ),
        ],
        
        // Calendar
        'calendar' => [
            'title'   => 'Calendar',
            'device'  => array(
                'apple'      => ['status' => true, 'version' => '6.0 - 8.3'],
                'android'    => ['status' => true, 'version' => '2.2 - 5.1'],
                'blackberry' => ['status' => false, 'version' => '1.0 - 7.1']
            ),
            'plans' => array(
                'basic'     => ['status' => true, 'price' => '3 month - $3.33/month', 'url' => '/store.html'],
                'premium'   => ['status' => true, 'price' => '3 month - $13.33/month', 'url' => '/store.html'],
            ),
            'intro' => 'Keep track of all events scheduled. See what your child plans to do and when. Follow the task list.',
            'description' => array(
                'title' => 'Monitor Date, Month and Year Plans in Your Child’s Calendar',
                'body' => 'Follow each and every scripted event as well as scheduled intentions. Avert possible danger before it has happened. Keep up with recent and future plans of your underage children.'
            ),
        ],
        
        // Browsing History
        'browsing-history' => [
            'title'   => 'Browsing History',
            'device'  => array(
                'apple'      => ['status' => true, 'version' => '6.0 - 8.3'],
                'android'    => ['status' => true, 'version' => '2.2 - 5.1'],
                'blackberry' => ['status' => false, 'version' => '1.0 - 7.1']
            ),
            'plans' => array(
                'basic'     => ['status' => true, 'price' => '3 month - $3.33/month', 'url' => '/store.html'],
                'premium'   => ['status' => true, 'price' => '3 month - $13.33/month', 'url' => '/store.html'],
            ),
            'intro' => 'Browse your kid’s internet history. Check which websites were visited and what search engine queries were made.',
            'description' => array(
                'title' => 'Monitor Online Activity of Your Children by Browsing Internet History',
                'body' => 'Pumpic enables you to follow each link and every website your kid visits. Check search results and most popular requests. Keep your children away from visiting 18+ web resources.'
            ),
        ],
        
        // Bookmarks
        'bookmarks' => [
            'title'   => 'Bookmarks',
            'device'  => array(
                'apple'      => ['status' => true, 'version' => '6.0 - 8.3'],
                'android'    => ['status' => true, 'version' => '2.2 - 5.1'],
                'blackberry' => ['status' => false, 'version' => '1.0 - 7.1']
            ),
            'plans' => array(
                'basic'     => ['status' => true, 'price' => '3 month - $3.33/month', 'url' => '/store.html'],
                'premium'   => ['status' => true, 'price' => '3 month - $13.33/month', 'url' => '/store.html'],
            ),
            'intro' => 'Log in to your Control Panel to see which websites were bookmarked. Check the time your child accesses the websites.',
            'description' => array(
                'title' => 'Track Websites Your Child Prefers',
                'body' => 'Use Pumpic app to find out which among visited websites your child bookmarked. Enter you Control Panel to check all bookmarks and prevent your kid from visiting undesirable 18+ web pages.'
            ),
        ],
        
        // Photos
        'photos' => [
            'title'   => 'Photos',
            'device'  => array(
                'apple'      => ['status' => true, 'version' => '6.0 - 8.3'],
                'android'    => ['status' => true, 'version' => '2.2 - 5.1'],
                'blackberry' => ['status' => false, 'version' => '1.0 - 7.1']
            ),
            'plans' => array(
                'basic'     => ['status' => true, 'price' => '3 month - $3.33/month', 'url' => '/store.html'],
                'premium'   => ['status' => true, 'price' => '3 month - $13.33/month', 'url' => '/store.html'],
            ),
            'intro' => 'Every picture taken will be visible to you. See what photos he or she downloads from the Internet.',
            'description' => array(
                'title' => 'Monitor Each and Every Photo Your Child Takes',
                'body' => 'By using Pumpic software, you can view every single photo taken and downloaded from the Internet. Soon after your kid takes a pic, it will be sent to your Control Panel for your consideration.'
            ),
        ],
        
        // Emails
        'emails' => [
            'title'   => 'Emails',
            'device'  => array(
                'apple'      => ['status' => true, 'version' => '6.0 - 8.3'],
                'android'    => ['status' => true, 'version' => '2.2 - 5.1 (ROOT for all)'],
                'blackberry' => ['status' => false, 'version' => '1.0 - 7.1']
            ),
            'plans' => array(
                'basic'     => ['status' => true, 'price' => '3 month - $3.33/month', 'url' => '/store.html'],
                'premium'   => ['status' => true, 'price' => '3 month - $13.33/month', 'url' => '/store.html'],
            ),
            'intro' => 'Look through all sent and received emails. Access all available contact info on both a sender and a recipient.',
            'description' => array(
                'title' => 'Get Access to Your Kid’s Inbox and Sent Mail',
                'body' => 'Track every single email your kid sends or receives. Check email correspondence history and prevent you children from ambiguous communications and online predators.'
            ),
        ],
        
        // Applications
        'applications' => [
            'title'   => 'Applications',
            'device'  => array(
                'apple'      => ['status' => true, 'version' => '6.0 - 8.3'],
                'android'    => ['status' => true, 'version' => '2.2 - 5.1'],
                'blackberry' => ['status' => false, 'version' => '1.0 - 7.1']
            ),
            'plans' => array(
                'basic'     => ['status' => true, 'price' => '3 month - $3.33/month', 'url' => '/store.html'],
                'premium'   => ['status' => true, 'price' => '3 month - $13.33/month', 'url' => '/store.html'],
            ),
            'intro' => 'Monitor each application that your children download, use and play.',
            'description' => array(
                'title' => 'View All Applications Set Up on Your Child’s Phone',
                'body' => 'Easily track each installation of new applications on your child’s device. Prevent your children from ambiguous software usage with Pumpic.'
            ),
        ],
        
        // Websites & Apps blocking
        'websites-apps-blocking' => [
            'title'   => 'Websites & Apps blocking',
            'device'  => array(
                'apple'      => ['status' => true, 'version' => '6.0 - 8.3'],
                'android'    => ['status' => true, 'version' => '2.2 - 5.1'],
                'blackberry' => ['status' => false, 'version' => '1.0 - 7.1']
            ),
            'plans' => array(
                'basic'     => ['status' => true, 'price' => '3 month - $3.33/month', 'url' => '/store.html'],
                'premium'   => ['status' => true, 'price' => '3 month - $13.33/month', 'url' => '/store.html'],
            ),
            'intro' => 'Block websites containing inappropriate content and time-wasting applications from running on your kid’s device. Get detailed info on each app installed.',
            'description' => array(
                'title' => 'Block Distracting Websites and Applications',
                'body' => 'By using Pumpic, you can view and control all websites visited and applications installed on the device your child uses. Prevent them from wasting time playing games, visiting criminal or 18+ websites.'
            ),
        ],
        
        // Viber/WhatsApp/Skype
        'viber-whatsapp-skype' => [
            'title'   => 'Viber/WhatsApp/Skype',
            'device'  => array(
                'apple'      => ['status' => true, 'version' => '6.0 - 8.3'],
                'android'    => ['status' => true, 'version' => '2.2 - 5.1 (ROOT for all)'],
                'blackberry' => ['status' => false, 'version' => '1.0 - 7.1']
            ),
            'plans' => array(
                'basic'     => ['status' => false, 'price' => '3 month - $3.33/month', 'url' => '/store.html'],
                'premium'   => ['status' => true, 'price' => '3 month - $13.33/month', 'url' => '/store.html'],
            ),
            'intro' => 'Keep track of conversations via Skype, WhatsApp and Viber, including video chats and voice calls.',
            'description' => array(
                'title' => 'Monitor Viber, Whatsapp and Skype Chats',
                'body' => 'Pumpic allows you to monitor your child’s device activity in the most widely used communication applications like WhatsApp, Viber and Skype. Prevent your children from conversations with misgiving people.'
            ),
        ],
        
        
        // View User Video
        'view-user-video' => [
            'title'   => 'View User Video',
            'device'  => array(
                'apple'      => ['status' => true, 'version' => '6.0 - 8.3'],
                'android'    => ['status' => true, 'version' => '2.2 - 5.1'],
                'blackberry' => ['status' => false, 'version' => '1.0 - 7.1']
            ),
            'plans' => array(
                'basic'     => ['status' => false, 'price' => '3 month - $3.33/month', 'url' => '/store.html'],
                'premium'   => ['status' => true, 'price' => '3 month - $13.33/month', 'url' => '/store.html'],
            ),
            'intro' => 'Keep track of each new video your child views, receives and sends. Look through multimedia files.',
            'description' => array(
                'title' => 'Monitor Videos Shot By Your Kid',
                'body' => 'Use Pumpic and monitor all multimedia files downloaded from the Internet or taken by the camera. Prevent your kids from watching restricted videos.'
            ),
        ],
        
        // Facebook Messages
        'facebook-messages' => [
            'title'   => 'Facebook Messages',
            'device'  => array(
                'apple'      => ['status' => true, 'version' => '6.0 - 8.3'],
                'android'    => ['status' => true, 'version' => '2.2 - 5.1 (ROOT for all)'],
                'blackberry' => ['status' => false, 'version' => '1.0 - 7.1']
            ),
            'plans' => array(
                'basic'     => ['status' => false, 'price' => '3 month - $3.33/month', 'url' => '/store.html'],
                'premium'   => ['status' => true, 'price' => '3 month - $13.33/month', 'url' => '/store.html'],
            ),
            'intro' => 'Monitor each and every word sent and received via Facebook. Control your kids’ chats, protect their communication.',
            'description' => array(
                'title' => 'Keep Track Of Communications and Messages on Facebook',
                'body' => 'Pumpic enables you to monitor Facebook messages easily and quickly. Protect your children from online predators, cyberbullying and aggressive conversations.'
            ),
        ],
        
        
        // Historical Data
        'historical-data' => [
            'title'   => 'Historical Data',
            'device'  => array(
                'apple'      => ['status' => true, 'version' => '6.0 - 8.3'],
                'android'    => ['status' => true, 'version' => '2.2 - 5.1'],
                'blackberry' => ['status' => false, 'version' => '1.0 - 7.1']
            ),
            'plans' => array(
                'basic'     => ['status' => false, 'price' => '3 month - $3.33/month', 'url' => '/store.html'],
                'premium'   => ['status' => true, 'price' => '3 month - $13.33/month', 'url' => '/store.html'],
            ),
            'intro' => 'Look through all the information ever stored on your child’s phone. Keep track of the target device since the day it has been switched on.',
            'description' => array(
                'title' => 'Track the Entire Data History from the Very Beginning',
                'body' => 'By using Pumpic Historical Data feature, you can view all the data ever kept on file. This function allows you to keep track of information from the very first day your child started using the device.'
            ),
        ],
        
        // SMS Commands
        'sms-commands' => [
            'title'   => 'SMS Commands',
            'device'  => array(
                'apple'      => ['status' => true, 'version' => '6.0 - 8.3'],
                'android'    => ['status' => true, 'version' => '2.2 - 4.3.1 (ROOT for all)'],
                'blackberry' => ['status' => false, 'version' => '1.0 - 7.1']
            ),
            'plans' => array(
                'basic'     => ['status' => false, 'price' => '3 month - $3.33/month', 'url' => '/store.html'],
                'premium'   => ['status' => true, 'price' => '3 month - $13.33/month', 'url' => '/store.html'],
            ),
            'intro' => 'Wipe out or lock your child’s device remotely by using SMS commands even when the Internet is off.',
            'description' => array(
                'title' => 'Control Your Kid’s Phone Remotely by Using SMS Commands',
                'body' => 'Pumpic allows you to lock and wipe the phone remotely. Even if there is no network connection, you can easily use SMS commands to control your kid’s device functioning: change the password or simply lock it by sending a text message.'
            ),
        ],
        
        // Keylogger
        'keylogger' => [
            'title'   => 'Keylogger',
            'device'  => array(
                'apple'      => ['status' => true, 'version' => '6.0 - 8.3'],
                'android'    => ['status' => true, 'version' => '2.2 - 5.1'],
                'blackberry' => ['status' => false, 'version' => '1.0 - 7.1']
            ),
            'plans' => array(
                'basic'     => ['status' => false, 'price' => '3 month - $3.33/month', 'url' => '/store.html'],
                'premium'   => ['status' => true, 'price' => '3 month - $13.33/month', 'url' => '/store.html'],
            ),
            'intro' => 'Monitor all key strokes on the target device. Prevent your children from viewing inappropriate content.',
            'description' => array(
                'title' => 'Keep Track Of Each Button Pressed With Keylogger',
                'body' => 'By Using Pumpic software, you can follow each button your kid presses. Keep track of password changes, track keywords and phrases input, associated with misgiving subjects.'
            ),
        ],
        
    ];
    
    $_html = '';
    
    if(is_array($_options) and count($_options) > 0)
        $_options = array_merge($_options, $_plans);
    
    // config
    require_once 'config.php';
    //smarty configs
    include 'smarty.config.php';
    
   // $smarty = new Smarty();
    $smarty->caching = false;
    $smarty->compile_check = false;
    $smarty->force_compile = false;
    $smarty->debugging = false;
    
    $smarty->setTemplateDir(dirname(dirname(__FILE__)).'/templates/includes/content/'); // features-plans.tpl
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

function smarty_function_getUserID() {
    require_once 'lib/users/ManagerUser.php';
    $obj = new includes\lib\users\ManagerUser( array() );
    return ($obj->getUserIdByAuth()) ? $obj->getUserIdByAuth() : '';
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

function smarty_function_UserLogin() {
    require_once 'lib/users/ManagerUser.php';
    $obj = new includes\lib\users\ManagerUser( array() );
    $_user = $obj -> getLoginUser();    
    //return $smarty->assign('email', (isset($_user['login'])) ? $_user['login'] : '');
    return (isset($_user['login'])) ? $_user['login'] : '';
}

// clear cookie popUp
function _clearCookie() {
    if(isset($_COOKIE['popUp'])) {
        setcookie("popUp","", time()-3600, '/');
        unset ($_COOKIE['popUp']);
    }
    
}

function smarty_function_hedaerLastModified($params, $template) {
    $LastModified_unix = strtotime( (isset($params['data'])) ? $params['data']: filemtime( $_SERVER['SCRIPT_FILENAME'] ) ); // время последнего изменения страницы
    $LastModified = gmdate("D, d M Y H:i:s \G\M\T", $LastModified_unix);
    $IfModifiedSince = false;
    if (isset($_ENV['HTTP_IF_MODIFIED_SINCE']))
        $IfModifiedSince = strtotime(substr($_ENV['HTTP_IF_MODIFIED_SINCE'], 5));  
    if (isset($_SERVER['HTTP_IF_MODIFIED_SINCE']))
        $IfModifiedSince = strtotime(substr($_SERVER['HTTP_IF_MODIFIED_SINCE'], 5));
    if ($IfModifiedSince && $IfModifiedSince >= $LastModified_unix) {
        header($_SERVER['SERVER_PROTOCOL'] . ' 304 Not Modified');
        exit;
    }
    header('Last-Modified: '. $LastModified);
}

/*
 * Detected ip
 */
function smarty_function_closeAccess($params, $template) {
    if (!dieAccess()) {
        // echo $_SERVER['REMOTE_ADDR'];
        die('You are not allowed to access this file.');
    }
}

function dieAccess() {
    if(in_array(@$_SERVER['REMOTE_ADDR'], ['93.79.221.182', '213.160.158.7', '176.38.120.13', '212.90.60.74', '192.168.40.22', '162.243.217.155', '127.0.0.1', '::1'])) {
        $_result = true;
    } else
        $_result = false;
    
    return $_result;
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

/* isPhone */
function smarty_modifier_isPhone() { // $params, $template
    // $params
    require_once 'lib/users/ManagerUser.php';
    $obj = new includes\lib\users\ManagerUser( array() );
    $phone = $obj ->isPhone();
    return ((int)$phone) ? $phone : '';
}

/* ------ // block Content --------- */
function smarty_function_Content($params, $template) {
    $_style = (isset($params['blockBg'])) ? $params['blockBg'] : 'dark';
    $_title = (isset($params['title'])) ? $params['title'] : '';
    $_styleTitle = (isset($params['styleTitle'])) ? $params['styleTitle'] : 'h1';
    
    echo '<div id="block-content" class="'.$_style.'">
                    <div class="container">
                        <'.$_styleTitle.' class="h2 text-center">'.$_title.'</'.$_styleTitle.'>
                        <div class="row">
                            <div class="col-sm-12 col-md-12 col-lg-12">';
}

function smarty_function_EndContent() {
    echo "</div></div></div></div>";
}

// youtube URL
function smarty_function_getAddUrl($links, $get) {
    echo $links.(parse_url($links, PHP_URL_QUERY) ? '&' : '?'). $get;
}

function smarty_function_initBefore() {      
    // initPages();
}

function initPages() {    
    
    $urlParams = getURI();
    if(is_array($urlParams['uriArr']) 
            and count($urlParams['uriArr']) > 0
            and !in_array('login', $urlParams['uriArr'])) {
        // log Users note
        require_once 'lib/users/ManagerUser.php';
        $obj = new includes\lib\users\ManagerUser(array());
        //if($userData = $obj -> getLoginUser()) {
        $obj -> setNotice();
        //}
        
    }
    
}

function smarty_modifier_matchtrue($value=null)
{
   return $value?true:false;
} 

function smarty_function_robotsClose($params, $template) { 
    $_result = 'false';
    if(isset($_GET) and is_array($_GET)) {
        foreach($_GET as $key => $value) {
            if(preg_match('/^gclid(.*)|^utm(.*)/is', trim(strtolower( $key )) )) {
                $_result = 'true';
                break;
            }
        }
    }
    
    $template->assign('robotClose', $_result);
}

class PageNotFoundException extends Exception {}