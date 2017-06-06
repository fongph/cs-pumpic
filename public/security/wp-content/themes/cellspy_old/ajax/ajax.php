<?php
define( 'DOING_AJAX', true );

$_dist = dirname( dirname( __FILE__ ) ) ;
$_base = dirname( dirname( dirname( $_dist ) ) );

/** Load WordPress Bootstrap */
require_once( $_base . '/wp-load.php' );

/** Allow for cross-domain requests (from the frontend). */
send_origin_headers();

// Require an action parameter
if ( empty( $_REQUEST['action'] ) )
	die( '0' );

@header( 'Content-Type: text/html; charset=' . get_option( 'blog_charset' ) );
@header( 'X-Robots-Tag: noindex' );

send_nosniff_header();
nocache_headers();

$core_actions = array(
    'core', 'list'
);

// Register core Ajax calls.
if ( ! empty( $_GET['action'] ) && in_array( $_GET['action'], $core_actions ) )
	add_action( 'wp_ajax_' . $_GET['action'], 'wp_ajax_' . str_replace( '-', '_', $_GET['action'] ), 1 );

if ( ! empty( $_POST['action'] ) && in_array( $_POST['action'], $core_actions ) )
	add_action( 'wp_ajax_' . $_POST['action'], 'wp_ajax_' . str_replace( '-', '_', $_POST['action'] ), 1 );

do_action( 'wp_ajax_' . $_REQUEST['action'] );

/**
 * Description of ajax
 *
 * @author sergey
 */
//class ajax {
//    //put your code here
//}
