<?php get_header(); ?>


<div class="very_easy">
    <div class="container">
        <div class="row">
            <div class="col-lg-10 col-lg-offset-1">
                <div class="row">
                    <h2><a class="blog-link" href="#">BLOG</a></h2>
                    
                    <?php /*<h2>blog<?php // the_title() ?></h2>
                    <p class="text-center">Find company updates and some of our most popular posts<?php  // get_post_content() ?></p>
                    */ ?>
                    
                    <div class="col-lg-8 col-md-8 col-sm-12">
                        
                        <?php
                            $page = (get_query_var('paged')) ? get_query_var('paged') : 1;
                            query_posts( array ( 'showposts' => 4, 'paged'=> $page ) );
                            // The Loop
                            while ( have_posts() ) : the_post();
                                 get_template_part( 'content', 'post' );
                            endwhile;
        
                            // twentythirteen_paging_nav();
                            
//                            $args = array( 'posts_per_page' => 4, 'offset'=> 0, 'category' => 6 );
//                            $postlist = get_posts( $args );
//                            $posts = array();
//                            
//                            echo "<pre>";
//                            var_dump( $postlist );
//                            echo "</pre>";
//                            
//                            foreach ( $postlist as $post ) { 
//                                setup_postdata( $post );
//                                get_template_part( 'content', 'post' );
//                            }

                            
                        ?>
                        
                        
                        <?php 
                        if(function_exists('wp_paginate')) {
                            wp_paginate();
                        } 
                        ?>
                        
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-12">
                        <div class="thumb_sidebar">
                            <?= cellspy_r_banner_buy_1() ?>
                        </div>
                        <div class="feature_list">
                            <?php get_sidebar(); ?>
                            
<!--                            <h3>POPULAR POSTS</h3>
                            <ul>
                                <li><a href="#">handy-spion</a></li>
                                <li><a href="#">Samsung Galaxy Core Advance with preinstalled android spy app</a></li>
                                <li><a href="#">How to Protect kids from Online predators with Cell phone tracker</a></li>
                                <li><a href="#">How to protect your Phone with cell phone tracker</a></li>
                                <li><a href="#">Samsung Galaxy J release with preinstalled Android spy</a></li>
                                <li><a href="#">Tips on How to Protect your security online with Spy software</a></li>
                                <li><a href="#">How to protect yourself from a theft with a Cell phone spy ?</a></li>
                                <li><a href="#">Best 3 cheap Android devices to Spy on</a></li>
                                <li><a href="#">Top 3 Tablets with mobile spy to consider as a Christmas Gift</a></li>
                                <li><a href="#">Samsung Grand 2 and its cell phone spying opportunities</a></li>
                            </ul>-->
                        </div>
                    </div>
                </div> <!-- .row -->
            </div>
        </div> <!-- .row -->
    </div> <!-- .container -->
</div> <!-- .very_easy -->

<?php get_sidebar(); ?>

<?php /*get_bottom();*/ ?>
<?php get_footer(); ?>



    <?php /*
	<div id="primary" class="site-content">
		<div id="content" role="main">
		<?php if ( have_posts() ) : ?>

			<?php // Start the Loop ?>
			<?php while ( have_posts() ) : the_post(); ?>
				<?php get_template_part( 'content', get_post_format() ); ?>
			<?php endwhile; ?>

			<?php twentytwelve_content_nav( 'nav-below' ); ?>

		<?php else : ?>

			<article id="post-0" class="post no-results not-found">

			<?php if ( current_user_can( 'edit_posts' ) ) :
				// Show a different message to a logged-in user who can add posts.
			?>
				<header class="entry-header">
					<h1 class="entry-title"><?php _e( 'No posts to display', 'twentytwelve' ); ?></h1>
				</header>

				<div class="entry-content">
					<p><?php printf( __( 'Ready to publish your first post? <a href="%s">Get started here</a>.', 'twentytwelve' ), admin_url( 'post-new.php' ) ); ?></p>
				</div><!-- .entry-content -->

			<?php else :
				// Show the default message to everyone else.
			?>
				<header class="entry-header">
					<h1 class="entry-title"><?php _e( 'Nothing Found', 'twentytwelve' ); ?></h1>
				</header>

				<div class="entry-content">
					<p><?php _e( 'Apologies, but no results were found. Perhaps searching will help find a related post.', 'twentytwelve' ); ?></p>
					<?php get_search_form(); ?>
				</div><!-- .entry-content -->
			<?php endif; // end current_user_can() check ?>

			</article><!-- #post-0 -->

		<?php endif; // end have_posts() check ?>

		</div><!-- #content -->
	</div><!-- #primary -->
        */ ?>