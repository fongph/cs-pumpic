<?php

/*
Plugin Name: WP Popular Posts
Plugin URI: http://www.sooource.net/wp-popularposts
Description: Виджет выводит популярные записи на вашем блоге, полагаясь на самые комментируемые записи./Widget displays a popular entries on your blog, relying on the most the event recording.
Version: 1.0.0
Author: Alexei91 
Author URI: http://www.sooource.net
*/ 

define("DefShowPosts", "5"); //Сколько записей выводить по умолчанию
define("DefCatID", "-1");    //ID рубрики из которой выводить записи, по умолчанию из всех рубрик

class WPPopularPostsWidget extends WP_Widget {
	
	function WPPopularPostsWidget()
	{		
		parent::WP_Widget( false, __('Popular entries', 'wp-popularposts'),  array('description' => __('Popular entries on your site', 'wp-popularposts')) );
	}

	function widget($args, $instance)
	{
		global $NewWPPopularPosts;
		$title = empty( $instance['title'] ) ? __('Popular entries', 'wp-popularposts') : $instance['title'];
		echo $args['before_widget'];
		echo $args['before_title'] . $title . $args['after_title'];
		echo $NewWPPopularPosts->GetWPPopularPosts( empty( $instance['Cat_ID'] ) ? DefCatID : $instance['Cat_ID'], 
												  empty( $instance['ShowPosts'] ) ? DefShowPosts : $instance['ShowPosts'],
                          empty( $instance['CommentsCount'] ) ? FALSE : $instance['CommentsCount'], 
												  empty( $instance['ShowExcerpt'] ) ? FALSE : $instance['ShowExcerpt'],
												  $instance['BeforeTitle'],
												  $instance['AfterTitle'],												  
												  empty( $instance['BeforeCite'] ) ? '<p>' : $instance['BeforeCite'],
												  empty( $instance['AfterCite'] ) ? '</p>' : $instance['AfterCite'] );  
		echo $args['after_widget'];
	}

	function update($new_instance) 
	{
		return $new_instance;
	}

	function form($instance) 
	{	
		$excerpt = $instance['ShowExcerpt'];
		$comments = $instance['CommentsCount'];
		?>
		
		<p>
			<label for="<?php echo $this->get_field_id('title'); ?>"><?php _e('Title:', 'wp-popularposts'); ?></label>
			<input type="text" name="<?php echo $this->get_field_name('title'); ?>" class="widefat" id="<?php echo $this->get_field_id('title'); ?>" value="<?php echo esc_attr($instance['title']); ?>" />		
		</p>
		<p>
			<label for="<?php echo $this->get_field_id('Cat_ID'); ?>"><?php _e('Category ID:', 'wp-popularposts'); ?></label>
			<input type="text" name="<?php echo $this->get_field_name('Cat_ID'); ?>" id="<?php echo $this->get_field_id('Cat_ID'); ?>" value="<?php if ( empty( $instance['Cat_ID'] ) ) { echo esc_attr(DefCatID); } else { echo esc_attr($instance['Cat_ID']); } ?>" size="3" />		
		</p>		
		<p>
			<label for="<?php echo $this->get_field_id('ShowPosts'); ?>"><?php _e('Number of entries:', 'wp-popularposts'); ?></label>
			<input type="text" name="<?php echo $this->get_field_name('ShowPosts'); ?>" id="<?php echo $this->get_field_id('ShowPosts'); ?>" value="<?php if ( empty( $instance['ShowPosts'] ) ) { echo esc_attr(DefShowPosts); } else { echo esc_attr($instance['ShowPosts']); } ?>" size="3" />		
		</p>
		<p>
			<input type="checkbox" name="<?php echo $this->get_field_name('CommentsCount'); ?>" id="<?php echo $this->get_field_id('ShowComments'); ?>" value="commentscount" <?php if ( 'commentscount' == $comments ) { echo ' checked="checked"'; } ?> />		
			<label for="<?php echo $this->get_field_id('CommentsCount'); ?>"><?php _e('Show the number of comments', 'wp-popularposts'); ?></label>
		</p>
		<p>
			<input type="checkbox" name="<?php echo $this->get_field_name('ShowExcerpt'); ?>" id="<?php echo $this->get_field_id('ShowExcerpt'); ?>" value="showexcerpt" <?php if ( 'showexcerpt' == $excerpt ) { echo ' checked="checked"'; } ?> />		
			<label for="<?php echo $this->get_field_id('ShowExcerpt'); ?>"><?php _e('Display a quote?', 'wp-popularposts'); ?></label>
		</p>
		
		<?php if ('showexcerpt' == $excerpt ) { ?>
		<p>
			<label for="<?php echo $this->get_field_id('BeforeTitle'); ?>"><?php _e('Tag before heading out on:', 'wp-popularposts'); ?></label>
			<input type="text" name="<?php echo $this->get_field_name('BeforeTitle'); ?>" class="widefat" id="<?php echo $this->get_field_id('BeforeTitle'); ?>" value="<?php echo esc_attr($instance['BeforeTitle']); ?>" />		
		</p>
		<p>
			<label for="<?php echo $this->get_field_id('AfterTitle'); ?>"><?php _e('Tag after the header record:', 'wp-popularposts'); ?></label>
			<input type="text" name="<?php echo $this->get_field_name('AfterTitle'); ?>" class="widefat" id="<?php echo $this->get_field_id('AfterTitle'); ?>" value="<?php echo esc_attr($instance['AfterTitle']); ?>" />		
		</p>		
		<p>
			<label for="<?php echo $this->get_field_id('BeforeCite'); ?>"><?php _e('Tag to quote on:', 'wp-popularposts'); ?></label>
			<input type="text" name="<?php echo $this->get_field_name('BeforeCite'); ?>" class="widefat" id="<?php echo $this->get_field_id('BeforeCite'); ?>" value="<?php if ( empty( $instance['BeforeCite'] ) ) { echo esc_attr('<p>'); } else { echo esc_attr($instance['BeforeCite']); } ?>" />		
		</p>
		<p>
			<label for="<?php echo $this->get_field_id('AfterCite'); ?>"><?php _e('Tag after a quotation on:', 'wp-popularposts'); ?></label>
			<input type="text" name="<?php echo $this->get_field_name('AfterCite'); ?>" class="widefat" id="<?php echo $this->get_field_id('AfterCite'); ?>" value="<?php if ( empty( $instance['AfterCite'] ) ) { echo esc_attr('</p>'); } else { echo esc_attr($instance['AfterCite']); } ?>" />		
		</p>
		<?php 
      unset($comments,$excerpt); 
    }
	}
	
}



class WPPopularPosts {

	function GetWPPopularPosts($cat_ID, $col, $CommentsCount, $UseExcerpt, $beforetitle, $aftertitle, $beforecite, $aftercite)
	{
		rewind_posts();
		if ($cat_ID != DefCatID) {
			query_posts('cat='.$cat_ID.'&order=DESC&orderby=comment_count&showposts='.$col);
		} else {
			query_posts('order=DESC&orderby=comment_count&showposts='.$col);
		}
    $CCount = '';
		if ($UseExcerpt) {
			if (have_posts()) :   
				echo '';
				while (have_posts()) : the_post();
          if ($CommentsCount) :
            $CCount = ' ('.get_comments_number().')';
          endif;
					echo '<div id="post-'.get_the_ID().'">'.$beforetitle.'<a href="'.get_permalink().'">'.get_the_title().'</a>'.$CCount.$aftertitle.$beforecite.get_the_excerpt().$aftercite.'</div>';
				endwhile; 
				echo DevURL;						
			endif; 
		} else {
			if (have_posts()) : 
				echo '<ul>';
				while (have_posts()) : the_post(); 
          if ($CommentsCount) :
            $CCount = ' ('.get_comments_number().')';
          endif;        
					echo '<div id="post-'.get_the_ID().'"><li><a href="'.get_permalink().'">'.get_the_title().'</a>'.$CCount.'</li></div>';								 
				endwhile; 
				echo '</ul>';
				echo DevRP;		
			endif; 			
		}
    unset($CCount);
		
		wp_reset_query();
	}

}



$NewWPPopularPosts = new WPPopularPosts();

function WPPopularPosts_widgets_init()
{
	register_widget('WPPopularPostsWidget');	
}	

add_action('widgets_init', 'WPPopularPosts_widgets_init');

//localization
load_plugin_textdomain( 'wp-popularposts', false, '/'.basename(dirname(__FILE__)).'/languages' );

define("DevRP", '<span style="border:0;color:#f00;float:left;width:50% !important;margin:-100% 0 0 0;overflow:hidden;line-height:0;padding:0;font-size:11px;">This plugin created by <a href="http://druweb.ru" title="Blog: Drupal, MODx and WordPress">Druweb</a> and <a href="http://on-drupal.ru" title="Drupal documentation">On-Drupal</a>.</span>'); 
?>
