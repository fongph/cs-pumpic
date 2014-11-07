<?php
function dispatch($urlParams, $config){
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
			
			$smarty->registerPlugin("function","year_now", "print_current_year");
			
			$smarty->assign("domain",$config['domain']);
			$smarty->assign("domain_http",$config['domain_http']);
			$smarty->assign("img",$config['path_img']);
			$smarty->assign("css",$config['path_css']);
			$smarty->assign("js",$config['path_js']);		

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
	list( $request, $params) = explode('?', $_SERVER['REQUEST_URI']);
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


function sendEmail($email, $subject, $text){
	if(strlen($email) && strlen($text)){
		$subject = "=?UTF-8?B?" . base64_encode($subject) . "?=";

		$headers = 'MIME-Version: 1.0' . "\r\n" .
		'Content-type: text/html; charset=UTF-8' . "\r\n" .
		'From: cellspy <noreply@cellspy.org>' . "\r\n" .
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
?>