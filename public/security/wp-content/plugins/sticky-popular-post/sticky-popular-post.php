<?php

/**
 * Popular Sticky Post
 *
 * Mark a post to be placed at the top of a specified category archive. It's sticky posts specifically for popular.
 *
 * @package   Popular_Sticky_Post
 * @author    Edii Shadow <edii87shadow@gmail.com>
 * @license   GPL-2.0+
 * @link      #
 * @copyright 2013 - 2014 Edii Shadow
 *
 * @wordpress-plugin
 * Plugin Name: Popular Sticky Post
 * Plugin URI: 	#
 * Description: Mark a post to be placed at the top of a specified popular post. It's sticky posts specifically for popualr.
 * Version:     2.6.0
 * Author:      Edii Shadow
 * Author URI:  #
 * Text Domain: popular-sticky-post
 * License:     GPL-2.0+
 * License URI: http://www.gnu.org/licenses/gpl-2.0.txt
 */

// If this file is called directly, abort.
if ( ! defined( 'WPINC' ) ) {
	die;
} // end if

require_once( plugin_dir_path( __FILE__ ) . 'class-sticky-popular-post.php' );
add_action( 'plugins_loaded', array( 'Popular_Sticky_Post', 'get_instance' ) );