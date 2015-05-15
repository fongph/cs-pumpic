<?php

if(!in_array(@$_SERVER['REMOTE_ADDR'], ['176.38.120.13', '212.90.60.74', '192.168.40.22', '127.0.0.1', '::1'])) {
    die();
}

 ini_set('display_errors', 1);
 error_reporting(-1);

$headers = array("HTTP_HOST", "REMOTE_ADDR", "REQUEST_METHOD", "REQUEST_URI", "PATH_INFO", "HTTP_REFERER", "HTTP_X_FORWARDED_FOR", "QUERY_STRING", "REQUEST_URI_CLICKFROG", "HTTP_USER_AGENT");
$srv = array();
foreach($headers AS $h)
        if(isset($_SERVER[$h]))
                $srv[$h] = $_SERVER[$h];
if(count($srv) == 0)
        exit;

$msg = 'header='.@urlencode(@json_encode($srv));

function microtime_float()
{
    list($usec, $sec) = explode(" ", microtime());
    return ((float)$usec + (float)$sec);
}

$time_start = microtime_float();

try {
    $fp = fsockopen('stat.scroogefrog.com', 80, $errno, $errstr, 1); 
    if ($fp) {
            $out = '';
            //$post = 'header='.urlencode(json_encode($srv));
            $post = $msg;
            $out .= "POST /server_side_action.php HTTP/1.0\r\n";
            $out .= "Content-Length: ".strlen($post)."\r\n";
            $out .= "Content-Type: application/x-www-form-urlencoded\r\n";
            $out .= "Host: stat.scroogefrog.com\r\n";
            $out .= "User-Agent: Mozilla/5.0 (Windows; U; Windows NT 5.1; ru; rv:1.9.2.16) Gecko/20110319 Firefox/3.6.16\r\n";
            $out .= "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8\r\n";
            $out .= "Accept-Charset: windows-1251,utf-8;q=0.7,*;q=0.7\r\n";
            $out .= "Accept-Language: ru-ru,ru;q=0.8,en-us;q=0.5,en;q=0.3\r\n";
            $out .= "Accept-Encoding: none\r\n";
            $out .= "Connection: Close\r\n\r\n";
            $out .= $post;    
            fwrite($fp, $out);
            stream_set_timeout($fp,2); 				
            while (!feof($fp)) {
                    fgets($fp, 128);
            }
            fclose($fp);
    }    
}
catch(Exception $e) {
    echo "<hr />"; 
    echo "<pre>"; 
    var_dump( $e ); 
    echo "</pre><br />";
} 
$time_end = microtime_float();
$time = $time_end - $time_start;
echo 'mtime = '.$time;

//date_default_timezone_set("UTC");
//	
//require_once './scroogefrog_tcp.php';
//
//require '../includes/config.php';
//require '../includes/functions.php';
////require '../fenom/Fenom.php';
//require '../smarty/Smarty.class.php';
//require_once '../includes/lib/Request.php';
//
//$_obj = new includes\lib\HTTPRequest;
//$_obj -> init();
//
//initPages();
//dispatch(getURI(),$config);


?>