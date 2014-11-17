<?php get_header(); ?>


<div class="very_easy">
    <div class="container">
        <div class="row">
            <div class="col-lg-10 col-lg-offset-1">
                <div class="row">
                    <h2><a class="blog-link" href="/security/">BLOG</a></h2>
                    
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
                        <?php require_once '../../templates/includes/blog-banner-buy-home.tpl'; ?>
                        
                        <?php /*
                        <div class="thumb_sidebar">
                            <?= cellspy_r_banner_buy_1() ?>
                        </div>
                        */ ?>
                        
                        <div class="feature_list">
                            <?php get_sidebar(); ?>
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