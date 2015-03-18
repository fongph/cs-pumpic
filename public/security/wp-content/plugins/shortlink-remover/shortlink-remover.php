<?php
/*
Plugin Name: Shortlink Removal
Plugin URI: http://pumpic.com/
Description: Remove shortlink hook
Version: 1.0
Author: Edii Shadow
*/
 
remove_action('wp_head', 'wp_shortlink_wp_head', 10, 0);
// remove_action( 'wp_head', 'wp_shortlink_wp_head' );
remove_action( 'wp_head', 'adjacent_posts_rel_link_wp_head' );
?>