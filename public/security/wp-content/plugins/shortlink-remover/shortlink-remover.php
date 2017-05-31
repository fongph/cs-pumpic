<?php

/*
Plugin Name: Shortlink Removal
Description: All remove shortlink.
Author: Edii Shadow
Tags: shortlink, removel shortlink
Version: 1.0.0
*/
 
remove_action('wp_head', 'wp_shortlink_wp_head', 10, 0);
// remove_action( 'wp_head', 'wp_shortlink_wp_head' );
remove_action( 'wp_head', 'adjacent_posts_rel_link_wp_head' );