<?php

class Phpmail {
    private function orderNumberFormat($orderId){
	return '#' . str_pad($orderId, 6, '0', STR_PAD_LEFT);
    }

    private function validate_email($email){

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

    
    private function validateEmail($email){
	return filter_var($email, FILTER_VALIDATE_EMAIL);
    }

    private function getRandomString(){
	return md5('ah5d7asd' . rand(0, 9000000));
    }
    
    protected function sendEmail($email, $subject, $text, $from = 'no-reply@pumpic.com'){ // support
	if(strlen($email) && strlen($text)){
		$subject = "=?UTF-8?B?" . base64_encode($subject) . "?=";

		$headers = 'MIME-Version: 1.0' . "\r\n" .
		'Content-type: text/html; charset=UTF-8' . "\r\n" .
		'From: cellspy <'.$from.'>' . "\r\n" .
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
    
    /*
     * Compatibility (send form and validater)
     */
    public function _send($params) {
        $_result = array('error' => false, 'success' => false);
        
        if(is_array($params) and count($params) > 0) {
            $_id = rand(0, 9000000);
            
            // decode params
//            foreach($params as $_key => $_value) {
//                $params[$_key] = urldecode($_value);
//            }

            
            // echo "email = ".$_result['error']['email'];
            
            if(!$this -> validateEmail($params['email'])) {
                $_result['error']['email'] = "Invalid email format.";
            } else if(empty($params['device-model']) or strlen( $params['device-model']) < 3 ) {
                $_result['error']['device-model'] = "The Device Model field is empty.";
            } else {
                $title = "Searching phone ".$params['device-model'];
                $_body = "<table>";

                if(isset($params['device-model']))
                    $_body .= "<tr><td>Phone model:</td><td>".$params['device-model']."</td></tr>";
                if(isset($params['email']))
                    $_body .= "<tr><td>Email:</td><td>".$params['email']."</td></tr>";

                $_body .= "</table>";

                $_tmp = "<html>
                            <head>
                                <title>{title}</title>
                            </head>
                            <body>
                                {body}
                            </body>
                        </html>";
                $_params = array("{title}" => $title, "{body}" => $_body);
                $_text = strtr($_tmp, $_params);

                $this -> sendEmail('support@pumpic.com', 'Contact US #pp '.$_id, $_text, $params['email']);

                $_result['success'] = "Your email was succesfully sent.";
            }    

            
        }
        
        return $_result;
        
    }
    
    
    /* Faq Send mail*/
    public function _sendFaq($params) {
        $_result = array('error' => false, 'success' => false);
        
        if(is_array($params) and count($params) > 0) {
            $_id = rand(0, 9000000);
            
            if(!$this -> validateEmail($params['email'])) {
                $_result['error']['email'] = "Invalid email format.";
            } else {
                $title = "FAQ ".$params['name'];
                $_body = "<table>";

                if(isset($params['name']))
                    $_body .= "<tr><td>Name:</td><td>".$params['name']."</td></tr>";
                if(isset($params['email']))
                    $_body .= "<tr><td>Email:</td><td>".$params['email']."</td></tr>";

                $_body .= "</table>";

                $_tmp = "<html>
                            <head>
                                <title>{title}</title>
                            </head>
                            <body>
                                {body}
                            </body>
                        </html>";
                $_params = array("{title}" => $title, "{body}" => $_body);
                $_text = strtr($_tmp, $_params);

                $this -> sendEmail('support@pumpic.com', 'FAQ #pp '.$_id, $_text, $params['email']);

                $_result['success'] = "Your email was succesfully sent.";
            }    

            
        }
        
        return $_result;
        
    }
    
    /* Contact US Send mail*/
    public function _sendContactUs($params) {
        $_result = array('error' => false, 'success' => false);
        
        if(is_array($params) and count($params) > 0) {
            $_id = rand(0, 9000000);
            
            if(!$this -> validateEmail($params['email'])) {
                $_result['error']['email'] = "Invalid email format.";
            } else {
                $title = "Contact US";
                $_body = "<table>";

                if(isset($params['name']))
                    $_body .= "<tr><td>Name:</td><td>".$params['name']."</td></tr>";
                if(isset($params['email']))
                    $_body .= "<tr><td>Email:</td><td>".$params['email']."</td></tr>";
                if(isset($params['os']))
                    $_body .= "<tr><td>OS:</td><td>".$params['os']."</td></tr>";
                if(isset($params['description']))
                    $_body .= "<tr><td>Description:</td><td>".$params['description']."</td></tr>";

                $_body .= "</table>";

                $_tmp = "<html>
                            <head>
                                <title>{title}</title>
                            </head>
                            <body>
                                {body}
                            </body>
                        </html>";
                $_params = array("{title}" => $title, "{body}" => $_body);
                $_text = strtr($_tmp, $_params);

                $this -> sendEmail('support@pumpic.com', 'Contact US #pp '.$_id, $_text, 'support@pumpic.com');

                $_result['success'] = "Your email was succesfully sent.";
            }    

            
        }
        
        return $_result;
        
    }
    
}

