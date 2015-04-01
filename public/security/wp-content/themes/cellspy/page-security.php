<?php get_header(); ?>


<div class="very_easy">
    <div class="container">
        <div class="row">
            <div class="col-lg-10 col-lg-offset-1">
                <div class="row">
                    <h2><?= the_title() ?></h2>
                    <p class="text-center"><?= get_post_content() ?></p>
                    <div class="col-lg-8 col-md-8 col-sm-12">
                        
                        <?php
                            $page = (get_query_var('paged')) ? get_query_var('paged') : 1;
                            query_posts( array ( 'showposts' => get_option('posts_per_page'), 'paged'=> $page, 'category' => 6  ) );
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

                        
                            /*
                            if ( have_posts() ) :
                                    // Start the Loop.
                                    while ( have_posts() ) : the_post();
                                            get_template_part( 'content', get_post_format() );

                                    endwhile;
                                    // Previous/next post navigation.
                                    // twentyfourteen_paging_nav();

                            else :
                                    // If no content, include the "No posts found" template.
                                    get_template_part( 'content', 'none' );

                            endif;
                            */
                            
                        ?>
                        
                        <?php 
                        /*
                        <article class="artice_bordered">
                            <h3>TOPSPY SOFTWARE</h3>
                            <div class="list_tags">
                                <span class="date">August 14, 2014</span>
                                <strong>Posted by to</strong>
                                <a href="#">Android</a>
                                <a href="#">Android</a>
                                <a href="#">Android</a>
                                <a href="#">Android</a>
                            </div>
                            <p>For a die-hard Marvel fan, waiting for the next film to come out can feel like a lifetime. 
                                Thanks to a little help from Skype, not only did fans of Guardians of the Galaxy get to 
                                see the movie long before its release, they also got closer than they ever thought 
                                possible to the cast …</p>
                            <a href="#">Read more</a>
                        </article> <!-- .artice_bordered 1 -->
                        
                        <article class="artice_bordered">
                            <h3>TOPSPY SOFTWARE</h3>
                            <div class="list_tags">
                                <span class="date">August 14, 2014</span>
                                <strong>Posted by to</strong>
                                <a href="#">Android</a>
                                <a href="#">Android</a>
                                <a href="#">Android</a>
                                <a href="#">Android</a>
                            </div>
                            <img src="/images/img_blog.png" class="pull-left" height="126" width="171" alt="">
                            <p>For a die-hard Marvel fan, waiting for the next film to come out can feel 
                                like a lifetime. Thanks to a little help from Skype, not only did fans of 
                                Guardians of the Galaxy get to see the movie long before its release, they 
                                also got closer than they ever thought possible to the cast …</p>
                            <a href="#">Read more</a>
                        </article> <!-- .artice_bordered 2 -->
                        
                        <article class="artice_bordered">
                            <h3>TOPSPY SOFTWARE</h3>
                            <div class="list_tags">
                                <span class="date">August 14, 2014</span>
                                <strong>Posted by to</strong>
                                <a href="#">Android</a>
                                <a href="#">Android</a>
                                <a href="#">Android</a>
                                <a href="#">Android</a>
                            </div>
                            <p>For a die-hard Marvel fan, waiting for the next film to come out can feel like a lifetime. 
                                Thanks to a little help from Skype, not only did fans of Guardians of the Galaxy get to see the movie 
                                long before its release, they also got closer than they ever thought possible to the cast …</p>
                            <a href="#">Read more</a>
                        </article> <!-- .artice_bordered 3 -->
                        
                        <article class="artice_bordered">
                            <h3>TOPSPY SOFTWARE</h3>
                            <div class="list_tags">
                                <span class="date">August 14, 2014</span>
                                <strong>Posted by to</strong>
                                <a href="#">Android</a>
                                <a href="#">Android</a>
                                <a href="#">Android</a>
                                <a href="#">Android</a>
                            </div>
                            <img src="/images/img_blog.png" class="pull-left" height="126" width="171" alt="">
                            <p>For a die-hard Marvel fan, waiting for the next film to come out can feel like a lifetime. 
                                Thanks to a little help from Skype, not only did fans of Guardians of the Galaxy get to see the movie long before its release, they also got closer than they ever thought possible to the cast …</p>
                            <a href="#">Read more</a>
                        </article> <!-- .artice_bordered 4 -->
                        
                        <ul class="pagination">
                        <!-- <li>
                        <a href="#">&laquo;</a>
                        </li> -->
                        <li class="active"><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><span>...</span></li>
                        <li><a href="#">9</a></li>
                        <!-- <li>
                        <a href="#">&raquo;</a>
                        </li> -->
                        </ul>
                        */ ?>
                        
                        <?php 
                        if(function_exists('wp_paginate')) {
                            wp_paginate();
                        } 
                        ?>
                        
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-12">
                        <div class="thumb_sidebar">
                            <span class="img_thumb"><img src="/images/img_photo.png" height="72" width="138" alt=""></span>
                            <div class="caption">
                                <h3>GET IN LINE TO TRY TOPSPY</h3>
                                <p>We've introduced our new cell phone spying software to help you track you underage kids, 
                                    and increase your business safety.</p>
                                <p class="text-center">
                                    <a href="#" class="btn btn-default" role="button">Buy NOW</a>
                                    <a href="#" class="btn btn-warning" role="button">View DEMO</a>
                                </p>
                            </div> <!-- .caption -->
                        </div>
                        <div class="feature_list">
                            <?php get_sidebar( 'second' ); ?>
                            
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


<?php /* ?>
    <div class="content-holt pt44">
        <?php while ( have_posts() ) : the_post(); ?>
                <?php get_template_part( 'content', 'page' ); ?>
                <?php // comments_template( '', true ); ?>
        <?php endwhile; // end of the loop. ?>
    </div>    
<?php */ ?>

<?php get_sidebar(); ?>

<?php get_bottom(); ?>
<?php get_footer(); ?>