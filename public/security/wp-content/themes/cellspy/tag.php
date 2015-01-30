<?php get_header(); ?>
<div class="very_easy">
    <div class="container">
        <div class="row">
            <div class="col-lg-10 col-lg-offset-1">
                <div class="row">
                    
                    <?php if ( have_posts() ) : ?>
                    
                    <h1 class="text-center mt10 mb20"><a class="blog-link" href="/security/">Kids' Phone Safety Blog</a></h1>
                    <div class="archive">
                        <span class="title"><?php printf( __( "All posts for '<i>%s</i>' tag", 'cellspy' ), single_tag_title( '', false ) ); ?></span>
                    </div>
                    
  
                        <div class="col-lg-8 col-md-8 col-sm-12">

                            <?php

                                $page = (get_query_var('paged')) ? get_query_var('paged') : 1;
                                $_tag = (get_query_var('tag')) ? get_query_var('tag') : false;

                                if(!$_tag) {
                                    get_template_part( 'content', 'none' );
                                } else {    
                                
                                    query_posts(  array('tag' => $_tag, 'posts_per_page' => -1, 'paged' => $page, 'showposts' => 4));

                                    // The Loop
                                    while ( have_posts() ) : the_post();
                                         get_template_part( 'content', 'post' ); // get_post_format()
                                    endwhile;
                                }

                            ?>


                            <?php 
                            if(function_exists('wp_paginate')) {
                                wp_paginate( );
                            } 
                            ?>

                        </div>
                    
                    <?php else : ?>
			<?php get_template_part( 'content', 'none' ); ?>
                    <?php endif; ?>
                    
                    <div class="col-lg-4 col-md-4 col-sm-12">
                        <?php require_once '../../templates/includes/blog-banner-buy-tag.tpl'; ?>
                        
                        <div class="feature_list">
                            <?php // get_sidebar(); ?>
                            <?php if ( is_active_sidebar( 'sidebar-7' ) ) : ?>
                                    <?php dynamic_sidebar( 'sidebar-7' ); ?>
                            <?php endif; ?>
                        </div>
                    </div>
                </div> <!-- .row -->
            </div>
        </div> <!-- .row -->
    </div> <!-- .container -->
</div> <!-- .very_easy -->

<?php get_sidebar(); ?>

<?php get_bottom(); ?>
<?php get_footer(); ?>