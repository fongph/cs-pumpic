<?php
/*
Plugin Name: Generate Subscribe Form
Description: An easy to use WordPress function to add Generate Subscribe Form to any theme.
Author: Edii Shadow
Tags: future, upcoming posts, upcoming post, upcoming, draft, Post, popular, preview, plugin, post, posts
Version: 1.0.0
*/

//add_shortcode( 'generate_subscribe_form', 'generate_subscribe_form_shortcode' );
//
//function generate_subscribe_form_shortcode( $options = '' ) {
//	$plugin_defaults = array(
//		"before"   => "<li>",
//		"after"    => "</li>\n",
//		"img" => false,
//	 );
//
//
//	$instance = wp_parse_args( (array) $options, $plugin_defaults );
//
//	return generate_subscribe_form( $instance );
//}


class generate_subscribe_form_widget extends WP_Widget
{


	function generate_subscribe_form_widget( ){
		$widget_ops = array(    'classname' => 'widget_generate_subscribe_form', 
                                        'description' => __( "A WordPress widget to add generate subscribe form" ) );
		$control_ops = array(   'width' => 300, 
                                        'height' => 300 );
		$this->WP_Widget( 'generate_subscribe_form_widget', __( 'Generate Subscribe Form' ), $widget_ops, $control_ops );
	}

	function update( $new_instance, $old_instance ){
		$instance = $old_instance;
		$instance['title'] = stripslashes( $new_instance['title'] );
                $instance['button_text'] = stripslashes( $new_instance['button_text'] );
		$instance['description'] = strip_tags( stripslashes( $new_instance['description'] ) );
                $instance['img'] = strip_tags( trim($new_instance['img']) );
                $instance['show_img'] = strip_tags( trim($new_instance['show_img']) );
                $instance['link'] = strip_tags( trim($new_instance['link']) );
                $instance['id_input'] = strip_tags( trim($new_instance['id_input']) );
                $instance['type_form'] = strip_tags( trim($new_instance['type_form']) );
		return $instance;
	}

	function form( $instance ){
		$instance = wp_parse_args( ( array ) $instance, array( 'title'=>'Popular Posts', 
                                                                        'button_text' => 'Subscribe for free',
                                                                        'description' => '',
                                                                        'img'   => '',
                                                                        'show_img'  => 'true',
                                                                        'link'  => '',
                                                                        'type_form' => 'dark',
                                                                        'id_input' => '', // MERGE0
                                                                      ) );

		$title = htmlspecialchars( $instance['title'] );
                $button_text = htmlspecialchars( $instance['button_text'] );
		$description = htmlspecialchars( $instance['description'] );
                $img = htmlspecialchars( $instance['img'] );
                $show_img = htmlspecialchars( $instance['show_img'] );
                $link = htmlspecialchars( $instance['link'] );
                $id_input = htmlspecialchars( $instance['id_input'] );
                $type_form = htmlspecialchars( $instance['type_form'] );
                
                $type_form_option = '';
                $show_img_option = '';
                
                if ( $type_form == "dark" ) {$type_form_option .= "<option value='dark' selected >Dark</option>";} else {$type_form_option .= "<option value='dark'>Dark</option>";}
		//if ( $type_form == "light" ) {$type_form_option .= "<option value='light' selected >Light</option>";} else {$type_form_option .= "<option value='light'>Light</option>";}

                if ( $show_img == "true" ) {$show_img_option .= "<option value='true' selected >On</option>";} else {$show_img_option .= "<option value='true'>On</option>";}
		if ( $show_img == "false" ) {$show_img_option .= "<option value='false' selected >Off</option>";} else {$show_img_option .= "<option value='false'>Off</option>";}

		# Output the options

                echo '	<p style="text-align:left;"><label for="' . $this->get_field_name( 'type_form' ) . '">' . __( 'Style Form:' ) . '</label><br />
				<select id="' . $this->get_field_id( 'type_form' ) . '" name="' . $this->get_field_name( 'type_form' ) . '">'.$type_form_option.'</select>
				</p>';
                
                echo '	<p style="text-align:left;"><label for="' . $this->get_field_name( 'show_img' ) . '">' . __( 'Show Img:' ) . '</label><br />
				<select id="' . $this->get_field_id( 'show_img' ) . '" name="' . $this->get_field_name( 'show_img' ) . '">'.$show_img_option.'</select>
				</p>';
                
                 echo '	<p style="text-align:left;"><label for="' . $this->get_field_name( 'button_text' ) . '">' . __( 'Button Text:' ) . '</label><br />
				<input style="width: 300px;" id="' . $this->get_field_id( 'button_text' ) . '" name="' . $this->get_field_name( 'button_text' ) . '" type="text" value="' . $button_text . '" />
				</p>';
                
                echo '	<p style="text-align:left;"><label for="' . $this->get_field_name( 'id_input' ) . '">' . __( 'ID INPUT( MailChimp Form ):' ) . '</label><br />
				<input style="width: 300px;" id="' . $this->get_field_id( 'id_input' ) . '" name="' . $this->get_field_name( 'id_input' ) . '" type="text" value="' . $id_input . '" />
				</p>';
                
		echo '	<p style="text-align:left;"><label for="' . $this->get_field_name( 'title' ) . '">' . __( 'Title:' ) . '</label><br />
				<input style="width: 300px;" id="' . $this->get_field_id( 'title' ) . '" name="' . $this->get_field_name( 'title' ) . '" type="text" value="' . $title . '" />
				</p>';
                
                echo '	<p style="text-align:left;"><label for="' . $this->get_field_name( 'link' ) . '">' . __( 'Link:' ) . '</label><br />
				<input style="width: 300px;" id="' . $this->get_field_id( 'link' ) . '" name="' . $this->get_field_name( 'link' ) . '" type="text" value="' . $link . '" />
				</p>';
                
                echo '	<p style="text-align:left;"><label for="' . $this->get_field_name( 'description' ) . '">' . __( 'Description:' ) . '</label><br />
                            <textarea id="' . $this->get_field_id( 'description' ) . '" class="widefat" name="' . $this->get_field_name( 'description' ) . '" cols="20" rows="16">'.$description.'</textarea>
				</p>';

                echo '	<p style="text-align:left;"><label for="' . $this->get_field_name( 'img' ) . '">' . __( 'Img:' ) . '</label><br />
				<input style="width: 300px;" id="' . $this->get_field_id( 'img' ) . '" name="' . $this->get_field_name( 'img' ) . '" type="text" value="' . $img . '" />
				</p>';
                
		
	}

	/*  Displays the Widget */
	function widget( $args, $instance ){
		extract( $args );
		$instance = wp_parse_args( ( array ) $instance, array( 'title'=>'Popular Posts',
                                                'button_text' => 'Subscribe for free',
                                                'description' => '',
                                                'img' => '',
                                                'show_img' => 'true',
                                                'link' => '',
                                                'type_form' => 'dark',
                                                'id_input'  => 'email', // MERGE0
                                            ) );

               
                $_block_img = '';
                $_text_class = 'col-s-sm-12 col-sm-12 col-md-12 col-lg-12';
                $_button_class = ($instance['type_form'] == 'dark') ? 'btn-green' : 'btn-border-green';
                
                if($instance['show_img'] == 'true') {
                    $_block_img = '<div class="col-s-sm-12 col-sm-3 col-md-3 col-lg-3">
                                            <img class="image" src="'.$instance['img'].'" alt="" />
                                        </div>';
                    $_text_class = 'col-s-sm-12 col-sm-9 col-md-9 col-lg-9';
                }
                
		# Before the widget
		echo $before_widget;
                $html = '<div class="box-form-subscribe '.$instance['type_form'].'">
                
                                <form method="POST" action="'.$instance['link'].'" name="subscribe-'.get_the_ID().'">

                                    <div class="row">
                                        '.$_block_img.'
                                        <div class="'.$_text_class.'">
                                            <div class="visual-text">
                                                <label class="title uppercase">'.$instance['title'].'</label>
                                                <p class="description">'.$instance['description'].'</p>
                                                <section>
                                                        <div class="block-input left">
                                                            <input type="text" class="email required" name="'.$instance['id_input'].'" value="" placeholder="Your email" />
                                                        </div>
                                                        <div class="block-button left">
                                                            <button class="'.$_button_class.'" name="submit">'.$instance['button_text'].'</button>
                                                        </div>
                                                </section>
                                                <label class="block-error"></label>
                                            </div>    
                                        </div>
                                    </div>

                                </form>

                            </div>';
                            // button title: Subscribe for free
                            //// title: Join <i class="bg-small-logo"></i> pumpic learning centre
                            // description: Safety tips, news, glossary, FAQs, articles and much more!
                
                echo $html;
                echo $after_widget;

	}

}// END class

function generate_subscribe_form_widget_Init( ) {
	register_widget( 'generate_subscribe_form_widget' );
}
add_action( 'widgets_init', 'generate_subscribe_form_widget_Init' );


function generate_subscribe_form_objectToArray( $d ) {
	if ( is_object( $d ) ) {
		// Gets the properties of the given object
		// with get_object_vars function
		$d = get_object_vars( $d );
	}

	if ( is_array( $d ) ) {
		/*
		* Return array converted to object
		* Using __FUNCTION__ ( Magic constant )
		* for recursive call
		*/
		return array_map( __FUNCTION__, $d );
	}
	else {
		// Return array
		return $d;
	}
}
