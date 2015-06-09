<?php if(is_archive() || is_author() || is_comment_feed()) : ?>
    <?php shailan_redirect_404(true); ?>
<?php else:
    ob_start();
    get_header(); ?>

<div class="very_easy">
    <div class="container">
        <div class="row">
            <div class="col-lg-10 col-lg-offset-1">
                <div class="row">
                    
                    
                    
                    <h1 class="text-center mt10 mb20"><a class="blog-link" href="/security/">Kids' Phone Safety Blog</a></h1>
                    
                    
                    
                    <div class="col-lg-8 col-md-8 col-sm-12">
                        
                        <?php
                            $page = (get_query_var('paged')) ? get_query_var('paged') : 1;
                            query_posts( array ( 'showposts' => get_option('posts_per_page'), 'paged'=> $page ) );
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
                        
                        
                        
                        <div class="feature_list">
                            <div id="secondary" class="widget-area" role="complementary">
                                <?php get_sidebar('main'); ?>
                            </div>
                        </div>
                    </div>
                    
                    
                </div> <!-- .row -->
            </div>
        </div> <!-- .row -->
    </div> <!-- .container -->
</div> <!-- .very_easy -->

<?php get_sidebar(); ?>
<?php get_footer(); ?>

<?php endif; ?>