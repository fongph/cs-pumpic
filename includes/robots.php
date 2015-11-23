<?php
 error_reporting(0);
 $root_path = dirname(dirname(__FILE__));
 
 if(file_exists($root_path.'/robots.txt')) {
    $robotsTxt = @file_get_contents($root_path.'/robots.txt');
    header("Content-Type:text/plain");
    echo $robotsTxt;
 } else throw new PageNotFoundException;