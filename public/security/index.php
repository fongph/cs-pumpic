<?php
// ini_set('display_errors', 1);
// error_reporting(-1);
/**
 * Front to the WordPress application. This file doesn't do anything, but loads
 * wp-blog-header.php which does and tells WordPress to load the theme.
 *
 * @package WordPress
 */

/**
 * Tells WordPress to load the WordPress theme and output it.
 *
 * @var bool
 */
define('WP_USE_THEMES', true);
include_once '../scroogefrog_tcp.php';

function di() {
    global $di;
    if (!$di) {
        $rootDir = dirname(dirname(__DIR__));
        require_once  $rootDir."/vendor/autoload.php";
        $di = require $rootDir.'/includes/di.php';
    }
    return $di;
}

/** Loads the WordPress Environment and Template */
require( dirname( __FILE__ ) . '/wp-blog-header.php' );
