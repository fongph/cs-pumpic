<?php
/*
Plugin Name: Generate Subscribe Form
Description: An easy to use WordPress function to add Generate Subscribe Form to any theme.
Author: Edii Shadow
Tags: future, upcoming posts, upcoming post, upcoming, draft, Post, popular, preview, plugin, post, posts
Version: 1.0.0
*/

add_shortcode( 'generate_subscribe_form', 'generate_subscribe_form_shortcode' );

function generate_subscribe_form_shortcode( $options = '' ) {
	$plugin_defaults = array(
		"count"    => "10",
		"comments" => "0",
		"before"   => "<li>",
		"after"    => "</li>\n",
		"order"    => "desc",
		"nofollow" => false,
		"excerpt" => false,
		"creditlink" => false,
		"featureimage" => false,
		"link" => true,
		"displaytype" => "comment",
		"show"     => 		FALSE
	 );


	$instance = wp_parse_args( (array) $options, $plugin_defaults );

	return generate_subscribe_form( $instance );
}


function generate_subscribe_form( $options = '' ) {

	$plugin_defaults = array(
		"count"    => "10",
                "categories" => '0',
                "tags"  => '',
		"comments" => "0",
		"before"   => "<li class='&1'>",
		"after"    => "</li>\n",
		"order"    => "desc",
		"nofollow" => false,
		"excerpt" => false,
		"creditlink" => false,
		"featureimage" => false,
		"link" => true,
		"displaytype" => "comment",
		"show"     => false
	 );


        
	$options = wp_parse_args( $options, $plugin_defaults );

        if($options['tags']) {
            $_tags = explode(',', $options['tags']);
            if(is_array($_tags) and count($_tags) > 0) {
                $_tags = trim(implode(',', $_tags), ',');
            } else
                $_tags = $options['tags'];

             $query_byTag="
                SELECT wp.ID
                FROM wp_posts wp, wp_term_relationships wtr, wp_terms wt
                WHERE wp.ID = wtr.object_id
                AND wt.term_id = wtr.term_taxonomy_id
                AND wt.name IN ( '".$_tags."' )";
        }     

        if((int)$options['categories']) {
            $query_byCat="
                    SELECT wp.ID
                    FROM wp_posts wp, wp_term_relationships wtr, wp_terms wt
                    WHERE wp.ID = wtr.object_id
                    AND wt.term_id = wtr.term_taxonomy_id
                    AND wt.term_id = ".(int)$options['categories'];
        }    
        
        
	if ( $options['displaytype'] == 'comment' 
                || $options['displaytype'] == 'ratings'
                || $options['displaytype'] == 'lists' ) {

		if ( strtolower( $options['order'] ) == "desc" ) {
		$sqlorder = " ORDER BY comment_count DESC";
		}
		if ( strtolower( $options['order'] ) == "asc" ) {
			$sqlorder = " ORDER BY comment_count ASC";
		}
		if ( strtolower( $options['order'] ) == "rand" ) {
			$sqlorder = " ORDER BY RAND( )";
		}
		global $wpdb;
                
                
                
                $query ="
                        SELECT   wp_posts.ID as ID 
                            FROM " . $wpdb->posts . "
                        WHERE post_type='post' AND post_status = 'publish'"; 
                if($options['displaytype'] == 'comment')
                    $query .= " AND comment_count >= " . $options['comments'];
                    
                if($options['tags'])
                    $query .= " AND wp_posts.ID IN (".$query_byTag.")";
                if((int)$options['categories'])
                    $query .= " AND wp_posts.ID IN (".$query_byCat.")";
                    
                $query .= $sqlorder . " LIMIT 0 , " . $options['count'];
                
                    
                $popular_posts = $wpdb->get_results( $query );
                
                
//		$popular_posts = $wpdb->get_results( "
//			SELECT ID
//			FROM " . $wpdb->posts . "
//			WHERE post_type='post' AND post_status = 'publish' AND comment_count >= " . $options['comments']."
//			" . $sqlorder . " LIMIT 0 , " . $options['count']
//		 );

	} else if ( $options['displaytype'] == 'total' ) { $myposts = generate_subscribe_form_objectToArray( json_decode( get_option( "generate_subscribe_form_total" ) ) );
	} else if ( $options['displaytype'] == 'monthly' ) { $myposts = generate_subscribe_form_objectToArray( json_decode( get_option( "generate_subscribe_form_month_".date( 'Y_m' ) ) ) );
	} else if ( $options['displaytype'] == 'weekly' ) { $myposts = generate_subscribe_form_objectToArray( json_decode( get_option( "generate_subscribe_form_week_".date( 'Y_W' ) ) ) );
	} else if ( $options['displaytype'] == 'daily' ) { $myposts = generate_subscribe_form_objectToArray( json_decode( get_option( "generate_subscribe_form_day_".date( 'Y_z' ) ) ) );
	}

		if ( isset( $myposts ) && count( $myposts )>0 || count( $popular_posts )>0 ) {

			if ( isset( $myposts ) ) {
				arsort( $myposts );
				if ( $myposts ) {

					foreach ( $myposts as $key=>$value ) {

						if ( count( $popular_posts ) <= $options['count'] && $value > 0 )
							$popular_posts[]->ID = $key;

					}
				}
			}

		if ( count( $popular_posts )>0 ) {
			$popular = '';
                        $_class = '';

                                $i = 1;
				foreach ( $popular_posts as $post ) {

                                        // class
                                        if($options['displaytype'] == 'comment' || $options['displaytype'] == 'ratings') {
                                            $_class[$i] = 'icons-popular-posts i-popular-post-'.$i;
                                        } else if($options['displaytype'] == 'lists') {
                                            $_class[$i] = 's-lists list-item-'.$i;
                                        }
                                    
					if ( $options['before'] == '<li>' && isset( $the_post ) ) {

						$post_categories = wp_get_post_categories( $the_post->ID );
						$category_slugs = '';

						foreach( $post_categories as $category ){
							$category_details = get_category( $category );
							$category_slugs .= ' category-' . $category_details->slug;
						}

						$popular .= "\n" . '<li class="'.(isset($_class[$i]) ? $_class[$i] : $_class).' '. trim( $category_slugs ) . '">';
					}
					else
                                                $popular .= "\n" . '<li class="'.(isset($_class[$i]) ? $_class[$i] : $_class).' '. trim( $category_slugs ) . '">';
						//$popular .= str_replace('&1', 'icons-popular-posts i-popular-post-'.$i, $options['before']);

					$the_post = get_post( $post->ID );

					if ( $options['link'] == 'true' ) {
                                                $popular .= "<a class='text-color-".$i."' href='".get_permalink( $the_post->ID )."' ";
						if ( $options['nofollow'] == 'true' ) {$popular .= 'nofollow';}
						$popular .= ">";
					}
					$popular .=  "<span class='title text-color-".$i."'>".get_the_title( $the_post->ID )."</span>";
					if ( $options['link'] == 'true' ) {$popular .= "</a>";}
					if ( $options['featureimage'] == 'true' ) {
						if ( has_post_thumbnail( $the_post->ID ) ) {$popular .=  "<div class='thumbnail'>".get_the_post_thumbnail( $the_post->ID,'thumbnail' )."</div>";}
					}
					if ( $options['excerpt'] == 'true' ) {$popular .=  "<div class='excerpt'>".$the_post->post_excerpt."</div>";}
					$popular .=  $options['after'];
                                        
                                        $i ++;
				}
				if ( $options['creditlink'] == 'true' && is_home( ) ) {
					$popular .=  $options['before']." ".$options['after'];
				}
                                
                               
				if ( $options['show'] ) {
					echo $popular;
				} else {
					return $popular;
				}
			}
		}


}

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
		$instance['title'] = strip_tags( stripslashes( $new_instance['title'] ) );
		$instance['count'] = strip_tags( stripslashes( $new_instance['count'] ) );
                
                $instance['categories'] = strip_tags( stripslashes( $new_instance['categories'] ) );
                $instance['tags'] = strip_tags( stripslashes( $new_instance['tags'] ) );
                
		$instance['order'] = strip_tags( stripslashes( $new_instance['order'] ) );
		$instance['link'] = strip_tags( stripslashes( $new_instance['link'] ) );
		$instance['excerpt'] = strip_tags( stripslashes( $new_instance['excerpt'] ) );
		$instance['featureimage'] = strip_tags( stripslashes( $new_instance['featureimage'] ) );
		$instance['creditlink'] = strip_tags( stripslashes( $new_instance['creditlink'] ) );
		$instance['displaytype'] = strip_tags( stripslashes( $new_instance['displaytype'] ) );

		return $instance;
	}

	function form( $instance ){
		$instance = wp_parse_args( ( array ) $instance, array( 'title'=>'Popular Posts', 
                                                                        'count'=>'5',
                                                                        'categories' => '0',
                                                                        'tags'  => '',    
                                                                        'order'=>'desc', 
                                                                        'link'=>'false', 
                                                                        'excerpt'=>'false', 
                                                                        'featureimage'=>'false',
                                                                        'displaytype'=>'comment',
                                                                        'creditlink'=>'false' ) );

                
                
                $tags = htmlspecialchars( $instance['tags'] );
		$title = htmlspecialchars( $instance['title'] );
		$count = htmlspecialchars( $instance['count'] );
		$order = htmlspecialchars( $instance['order'] );
		$link = htmlspecialchars( $instance['link'] );
		$excerpt = htmlspecialchars( $instance['excerpt'] );
		$featureimage = htmlspecialchars( $instance['featureimage'] );
		$creditlink = htmlspecialchars( $instance['creditlink'] );
		$displaytype = htmlspecialchars( $instance['displaytype'] );
		$countoption ='';
		for ( $i = 5; $i <= 25; $i=$i+5 ) {
			$countoption .= "<option value='$i' ";
			if ( $count == $i ) {$countoption .= "selected";}
			$countoption .= ">$i</option>";
		}

		$displaytypeoption = '';
		$orderoption = '';
		$linkoption = '';
		$excerptoption = '';
		$featureimageoption = '';
		$creditlinkoption = '';

                if ( $displaytype == "lists" ) {$displaytypeoption .= "<option value='lists' selected >Lists</option>";} else {$displaytypeoption .= "<option value='lists'>Lists</option>";}
		
                if ( $displaytype == "ratings" ) {$displaytypeoption .= "<option value='ratings' selected >ratings</option>";} else {$displaytypeoption .= "<option value='ratings'>ratings</option>";}
		if ( $displaytype == "comment" ) {$displaytypeoption .= "<option value='comment' selected >Comment</option>";} else {$displaytypeoption .= "<option value='comment'>Comment</option>";}
		if ( $displaytype == "total" ) {$displaytypeoption .= "<option value='total' selected >Total</option>";} else {$displaytypeoption .= "<option value='total'>Total</option>";}
		if ( $displaytype == "monthly" ) {$displaytypeoption .= "<option value='monthly' selected >Monthly</option>";} else {$displaytypeoption .= "<option value='monthly'>Monthly</option>";}
		if ( $displaytype == "weekly" ) {$displaytypeoption .= "<option value='weekly' selected >Weekly</option>";} else {$displaytypeoption .= "<option value='weekly'>Weekly</option>";}
		if ( $displaytype == "daily" ) {$displaytypeoption .= "<option value='daily' selected >Daily</option>";} else {$displaytypeoption .= "<option value='daily'>Daily</option>";}

		if ( $order == "desc" ) {$orderoption .= "<option value='desc' selected >Descending</option>";} else {$orderoption .= "<option value='desc'>Descending</option>";}
		if ( $order == "asc" ) {$orderoption .= "<option value='asc' selected >Ascending</option>";} else {$orderoption .= "<option value='asc'>Ascending</option>";}


		if ( $link == "true" ) {$linkoption .= "<option value='true' selected >Yes</option>";} else {$linkoption .= "<option value='true'>Yes</option>";}
		if ( $link == "false" ) {$linkoption .= "<option value='false' selected >No</option>";} else {$linkoption .= "<option value='false'>No</option>";}

		if ( $excerpt == "true" ) {$excerptoption .= "<option value='true' selected >Yes</option>";} else {$excerptoption .= "<option value='true'>Yes</option>";}
		if ( $excerpt == "false" ) {$excerptoption .= "<option value='false' selected >No</option>";} else {$excerptoption .= "<option value='false'>No</option>";}

		if ( $featureimage == "true" ) {$featureimageoption .= "<option value='true' selected >Yes</option>";} else {$featureimageoption .= "<option value='true'>Yes</option>";}
		if ( $featureimage == "false" ) {$featureimageoption .= "<option value='false' selected >No</option>";} else {$featureimageoption .= "<option value='false'>No</option>";}

		if ( $creditlink == "true" ) {$creditlinkoption .= "<option value='true' selected >Yes</option>";} else {$creditlinkoption .= "<option value='true'>Yes</option>";}
		if ( $creditlink == "false" ) {$creditlinkoption .= "<option value='false' selected >No</option>";} else {$creditlinkoption .= "<option value='false'>No</option>";}

		# Output the options

		echo '	<p style="text-align:left;"><label for="' . $this->get_field_name( 'title' ) . '">' . __( 'Title:' ) . '</label><br />
				<input style="width: 300px;" id="' . $this->get_field_id( 'title' ) . '" name="' . $this->get_field_name( 'title' ) . '" type="text" value="' . $title . '" />
				</p>';

		echo '	<p style="text-align:left;"><label for="' . $this->get_field_name( 'count' ) . '">' . __( 'Count:' ) . '</label><br />
				<select id="' . $this->get_field_id( 'count' ) . '" name="' . $this->get_field_name( 'count' ) . '">'.$countoption.'</select>
				</p>';

		echo '	<p style="text-align:left;"><label for="' . $this->get_field_name( 'displaytype' ) . '">' . __( 'Display Type:' ) . '</label><br />
				<select id="' . $this->get_field_id( 'displaytype' ) . '" name="' . $this->get_field_name( 'displaytype' ) . '">'.$displaytypeoption.'</select>
				</p>';

		echo '	<p style="text-align:left;"><label for="' . $this->get_field_name( 'order' ) . '">' . __( 'Order:' ) . '</label><br />
				<select id="' . $this->get_field_id( 'order' ) . '" name="' . $this->get_field_name( 'order' ) . '">'.$orderoption.'</select>
				</p>';

		echo '	<p style="text-align:left;"><label for="' . $this->get_field_name( 'link' ) . '">' . __( 'Include Link?' ) . '</label><br />
				<select id="' . $this->get_field_id( 'link' ) . '" name="' . $this->get_field_name( 'link' ) . '">'.$linkoption.'</select>
				</p>';

		echo '	<p style="text-align:left;"><label for="' . $this->get_field_name( 'featureimage' ) . '">' . __( 'Include Image?' ) . '</label><br />
				<select id="' . $this->get_field_id( 'featureimage' ) . '" name="' . $this->get_field_name( 'featureimage' ) . '">'.$featureimageoption.'</select>
				</p>';

		echo '	<p style="text-align:left;"><label for="' . $this->get_field_name( 'excerpt' ) . '">' . __( 'Include Excerpt?' ) . '</label><br />
				<select id="' . $this->get_field_id( 'excerpt' ) . '" name="' . $this->get_field_name( 'excerpt' ) . '">'.$excerptoption.'</select>
				</p>';

		echo '	<p style="text-align:left;"><label for="' . $this->get_field_name( 'creditlink' ) . '">' . __( 'Include Credit Link?' ) . '</label><br />
				<select id="' . $this->get_field_id( 'creditlink' ) . '" name="' . $this->get_field_name( 'creditlink' ) . '">'.$creditlinkoption.'</select>
				</p>';
                
                echo $this -> _categories( (int)$instance['categories'] );
                
                echo '	<p style="text-align:left;"><label for="' . $this->get_field_name( 'tags' ) . '">' . __( 'Tags:' ) . '</label><br />
				<input style="width: 300px;" id="' . $this->get_field_id( 'tags' ) . '" name="' . $this->get_field_name( 'tags' ) . '" type="text" value="' . $tags . '" />
				</p>';

	}

        
        /* Displays all Categories */
        function _categories($_selected = 0) {
           $_html = '<p style="text-align:left;"><label for="' . $this->get_field_name( 'categories' ) . '">' . __( 'Categories:' ) . '</label><br />';
           $_html .= '<select id="' . $this->get_field_id( 'categories' ) . '" name="' . $this->get_field_name( 'categories' ) . '">';
            $args = array(
                'type'                     => 'post',
                'child_of'                 => 0,
                'parent'                   => '',
                'orderby'                  => 'name',
                'order'                    => 'ASC',
                'hide_empty'               => 1,
                'hierarchical'             => 1,
                'exclude'                  => '',
                'include'                  => '',
                'number'                   => 0,
                'taxonomy'                 => 'category',
                'pad_counts'               => false
            );
            $categories = get_categories( $args );
            
             $_def_sel = '';
            if(!$_selected) $_def_sel = 'selected';
            $_html .= "<option value='0' ".$_def_sel.">Selected Categories!</option>";
            
            if( $categories ){
                    foreach( $categories as $cat ){
                            // Данные в объекте $cat
                        $_sel = '';
                        if($cat->cat_ID == $_selected) $_sel = 'selected';
                        
                        $_html .= "<option value='".$cat->cat_ID."' ".$_sel.">".$cat->cat_name."</option>";
                            // $cat->term_id
                            // $cat->name (Рубрика 1)
                            // $cat->slug (rubrika-1)
                            // $cat->term_group (0)
                            // $cat->term_taxonomy_id (4)
                            // $cat->taxonomy (category)
                            // $cat->description ()
                            // $cat->parent (0)
                            // $cat->count (14)
                            // $cat->object_id (2743)
                            // $cat->cat_ID (4)
                            // $cat->category_count (14)
                            // $cat->category_description ()
                            // $cat->cat_name (Рубрика 1)
                            // $cat->category_nicename (rubrika-1)
                            // $cat->category_parent (0)

                    }
            }
            
            $_html .= '</select></p>';
            return $_html;
            
        }

	/*  Displays the Widget */
	function widget( $args, $instance ){
		extract( $args );
		$instance = wp_parse_args( ( array ) $instance, array( 'title'=>'Popular Posts', 
                                                'count'=>'5', 
                                                'categories' => '0',
                                                'tags'  => '',    
                                                'order'=>'desc', 
                                                'link'=>'false', 
                                                'excerpt'=>'false', 
                                                'featureimage'=>'false',
                                                'displaytype'=>'comment',
                                                'creditlink'=>'false' ) );

               
		# Before the widget
		echo $before_widget;
		echo '<h3 class="widgettitle">'.$instance['title'].'<i class="banner-arrows"></i></h3>';
		echo '<ul>'.thisismyurl_easy_popular_posts( 'show=0&link='.$instance['link'].'&count='.$instance['count'].'&tags='.$instance['tags'].'&categories='.$instance['categories'].'&order='.$instance['order'].'&excerpt='.$instance['excerpt'].'&displaytype='.$instance['displaytype'].'&featureimage='.$instance['featureimage'].'&creditlink='.$instance['creditlink'] ).'</ul>';
		echo $after_widget;

	}

}// END class

function generate_subscribe_form_widget_Init( ) {
	register_widget( 'generate_subscribe_form_widget' );
}
add_action( 'widgets_init', 'generate_subscribe_form_widget_Init' );

function generate_subscribe_form_count( $content ) {
	if ( is_single( ) ) {

		global $post;
		$id = $post->ID;

		$total_counts = 	generate_subscribe_form_objectToArray( json_decode( get_option( "generate_subscribe_form_total" ) ) );
		$monthly_counts = 	generate_subscribe_form_objectToArray( json_decode( get_option( "generate_subscribe_form_month_".date( 'Y_m' ) ) ) );
		$weekly_counts = 	generate_subscribe_form_objectToArray( json_decode( get_option( "generate_subscribe_form_week_".date( 'Y_W' ) ) ) );
		$daily_counts = 	generate_subscribe_form_objectToArray( json_decode( get_option( "generate_subscribe_form_day_".date( 'Y_z' ) ) ) );


		$total_counts[$id]++;
		$monthly_counts[$id]++;
		$weekly_counts[$id]++;
		$daily_counts[$id]++;

		update_option( "generate_subscribe_form_total",json_encode( $total_counts ) );
		update_option( "generate_subscribe_form_month_".date( 'Y_m' ),json_encode( $monthly_counts ) );
		update_option( "generate_subscribe_form_week_".date( 'Y_W' ),json_encode( $weekly_counts ) );
		update_option( "generate_subscribe_form_day_".date( 'Y_z' ),json_encode( $daily_counts ) );

	}
	return $content;
}
add_action( 'the_content', 'generate_subscribe_form_count' );

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
