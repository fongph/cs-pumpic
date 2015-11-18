<?php

/*
Plugin Name: Sticky Banners Widget
Plugin URI: #
Description: A simple widget that will display a list of your sticky banners.
Author: Edii Shadow
Version: 1.0
Author URI: #
*/

if ( !class_exists( 'WP_Widget_Sticky_Banners' ) ) {
	
	class WP_Widget_Sticky_Banners extends WP_Widget {
	
		function WP_Widget_Sticky_Banners() {
			
			$widget_ops = array( 
                            'classname' => 'widget_sticky_banners', 
                            'description' => __( 'Sticky banners on your site' ) 
                        );
			$this->WP_Widget( 'sticky-banners', __( 'Sticky Banners' ), $widget_ops );
			$this->alt_option_name = 'widget_sticky_banners';
	
			add_action( 'save_banner', array( &$this, 'flush_widget_cache' ) );
			add_action( 'deleted_banner', array( &$this, 'flush_widget_cache' ) );
			add_action( 'switch_theme', array( &$this, 'flush_widget_cache' ) );
			
		}
	
		function widget( $args, $instance ) {
			
			$cache = wp_cache_get( 'widget_sticky_banners', 'widget' );
	
			if ( !is_array( $cache ) )
				$cache = array();
	
			if ( isset( $cache[$args['widget_id']] ) ) {
				echo $cache[$args['widget_id']];
				return;
			}
	
			ob_start();
			extract( $args );
	
			$title = apply_filters( 'widget_title', empty( $instance['title'] ) ? __( 'Sticky Banners' ) : $instance['title'], $instance, $this->id_base );
			$image_src = apply_filters( 'widget_image_src', empty( $instance['image_src'] ) ? __( 'Sticky Image Src' ) : $instance['image_src'], $instance, $this->id_base );
                        $link = apply_filters( 'widget_link', empty( $instance['link'] ) ? __( 'Sticky link' ) : $instance['link'], $instance, $this->id_base );
                        
                        echo $before_widget;
                        echo "<div class='col-lg-12 col-md-12 col-sm-12 padding-null'>";
                        
                            echo "<div class='box-right-banners'>";

                                if ( $title ) echo "<label>". $title ."</label>"; // echo $before_title . $title . $after_title;

                                if ( $link ) echo "<a target='_blank' href='". $link ."'>"; 
                                   if ( $image_src ) echo "<img src='". $image_src ."' />";
                                if( $link ) echo "</a>";


                            echo "</div>";
                        
                        echo "</div>";
                        echo $after_widget;
                        
                        

                        // Reset the global $the_post as this query will have stomped on it
                        wp_reset_postdata();
	
			
			$cache[$args['widget_id']] = ob_get_flush();
			wp_cache_set( 'widget_sticky_banners', $cache, 'widget' );
		}
	
		function update( $new_instance, $old_instance ) {
			
			$instance = $old_instance;
			$instance['title'] = strip_tags( $new_instance['title'] );
                        $instance['image_src'] = strip_tags( $new_instance['image_src'] );
                        $instance['link'] = strip_tags( $new_instance['link'] );
			$this->flush_widget_cache();
	
			$alloptions = wp_cache_get( 'alloptions', 'options' );
			if ( isset( $alloptions['widget_sticky_banners'] ) )
				delete_option( 'widget_sticky_banners' );
	
			return $instance;
			
		}
	
		function flush_widget_cache() {
			
			wp_cache_delete( 'widget_sticky_banners', 'widget' );
			
		}
	
		function form( $instance ) {
			$title = isset( $instance['title'] ) ? esc_attr( $instance['title'] ) : '';
			$image_src = isset( $instance['image_src'] ) ? esc_attr( $instance['image_src'] ) : '';
                        $link = isset( $instance['link'] ) ? esc_attr( $instance['link'] ) : '';
			?>
			<p><label for="<?php echo $this->get_field_id( 'title' ); ?>"><?php _e( 'Title:' ); ?></label>
			<input class="widefat" id="<?php echo $this->get_field_id( 'title' ); ?>" name="<?php echo $this->get_field_name( 'title' ); ?>" type="text" value="<?php echo $title; ?>" /></p>
	
                        <p><label for="<?php echo $this->get_field_id( 'image_src' ); ?>"><?php _e( 'Image Path:' ); ?></label>
			<input class="widefat" id="<?php echo $this->get_field_id( 'image_src' ); ?>" name="<?php echo $this->get_field_name( 'image_src' ); ?>" type="text" value="<?php echo $image_src; ?>" /></p>
	
                        <p><label for="<?php echo $this->get_field_id( 'link' ); ?>"><?php _e( 'link:' ); ?></label>
			<input class="widefat" id="<?php echo $this->get_field_id( 'link' ); ?>" name="<?php echo $this->get_field_name( 'link' ); ?>" type="text" value="<?php echo $link; ?>" /></p>
	
			<?php
			
		}
		
	}
	
	function init_WP_Widget_Sticky_Banners() {
	
		register_widget( 'WP_Widget_Sticky_Banners' );
		
	}
	
	add_action( 'widgets_init', 'init_WP_Widget_Sticky_Banners' );

}

?>