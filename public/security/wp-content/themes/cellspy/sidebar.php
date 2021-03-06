<?php
/**
 * The sidebar containing the main widget area
 *
 * If no active widgets are in the sidebar, hide it completely.
 *
 * @package WordPress
 * @subpackage Pumpic
 * @since Pumpic 1.0
 */
?>

	<?php if ( is_active_sidebar( 'sidebar-1' ) and !is_category() and !is_tag()) : ?>
		<div id="secondary" class="widget-area" role="complementary">
			<?php dynamic_sidebar( 'sidebar-1' ); ?>
		</div><!-- #secondary -->
	<?php endif; ?>