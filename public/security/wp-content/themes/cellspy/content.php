<?php /* the_content(); */ ?>

<!--<div class="very_easy">
    <div class="container">
        <div class="row">
            <div class="col-lg-10 col-lg-offset-1">
                <div class="row">-->
                    
                    
                    <div class="col-lg-8 col-md-8 col-sm-12">
                        <article>
                            <h3><?php the_title(); ?></h3>
                            <div class="list_tags">
                                <span class="date">August 14, 2014</span>
                                <?php /* the_tags(__('<strong>Posted by to</strong>'), '')*/ ?>
                            </div>
                            <?= the_content() ?>
                            <?= fb_get_cat_related_posts() ?>
                            
                        </article>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-12">
                        <div class="thumb_sidebar thumb_warning">
                            <span class="img_thumb"><img src="<?php echo getStaticUrl();?>/images/img_photo_white.png" height="72" width="138" alt=""></span>
                            <div class="caption">
                                <h3>GET IN LINE TO TRY TOPSPY</h3>
                                <p>We've introduced our new cell phone spying software to help you track you underage kids, and increase your business safety.</p>
                                <p class="text-center">
                                    <a href="#" class="btn btn-default" role="button">Buy NOW</a>
                                    <a href="#" class="btn btn-warning" role="button">View DEMO</a>
                                </p>
                            </div>
                        </div>
                        <div class="feature_list">
                            
                            <?php get_sidebar( 'content' ); ?>
                            
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
                    
<!--                    
                </div>
            </div>
        </div>
    </div>
</div>-->


<?php /*
	<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
		<?php if ( is_sticky() && is_home() && ! is_paged() ) : ?>
		<div class="featured-post">
			<?php _e( 'Featured post', 'twentytwelve' ); ?>
		</div>
		<?php endif; ?>
		<header class="entry-header">
			<?php if ( ! post_password_required() && ! is_attachment() ) :
				the_post_thumbnail();
			endif; ?>

			<?php if ( is_single() ) : ?>
			<h1 class="entry-title"><?php the_title(); ?></h1>
			<?php else : ?>
			<h1 class="entry-title">
				<a href="<?php the_permalink(); ?>" rel="bookmark"><?php the_title(); ?></a>
			</h1>
			<?php endif; // is_single() ?>
			<?php if ( comments_open() ) : ?>
				<div class="comments-link">
					<?php comments_popup_link( '<span class="leave-reply">' . __( 'Leave a reply', 'twentytwelve' ) . '</span>', __( '1 Reply', 'twentytwelve' ), __( '% Replies', 'twentytwelve' ) ); ?>
				</div><!-- .comments-link -->
			<?php endif; // comments_open() ?>
		</header><!-- .entry-header -->

		<?php if ( is_search() ) : // Only display Excerpts for Search ?>
		<div class="entry-summary">
			<?php the_excerpt(); ?>
		</div><!-- .entry-summary -->
		<?php else : ?>
		<div class="entry-content">
			<?php the_content( __( 'Continue reading <span class="meta-nav">&rarr;</span>', 'twentytwelve' ) ); ?>
			<?php wp_link_pages( array( 'before' => '<div class="page-links">' . __( 'Pages:', 'twentytwelve' ), 'after' => '</div>' ) ); ?>
		</div><!-- .entry-content -->
		<?php endif; ?>

		<footer class="entry-meta">
			<?php twentytwelve_entry_meta(); ?>
			<?php edit_post_link( __( 'Edit', 'twentytwelve' ), '<span class="edit-link">', '</span>' ); ?>
			<?php if ( is_singular() && get_the_author_meta( 'description' ) && is_multi_author() ) : // If a user has filled out their description and this is a multi-author blog, show a bio on their entries. ?>
				<div class="author-info">
					<div class="author-avatar">
						<?php
						//This filter is documented in author.php 
						$author_bio_avatar_size = apply_filters( 'twentytwelve_author_bio_avatar_size', 68 );
						echo get_avatar( get_the_author_meta( 'user_email' ), $author_bio_avatar_size );
						?>
					</div><!-- .author-avatar -->
					<div class="author-description">
						<h2><?php printf( __( 'About %s', 'twentytwelve' ), get_the_author() ); ?></h2>
						<p><?php the_author_meta( 'description' ); ?></p>
						<div class="author-link">
							<a href="<?php echo esc_url( get_author_posts_url( get_the_author_meta( 'ID' ) ) ); ?>" rel="author">
								<?php printf( __( 'View all posts by %s <span class="meta-nav">&rarr;</span>', 'twentytwelve' ), get_the_author() ); ?>
							</a>
						</div><!-- .author-link	-->
					</div><!-- .author-description -->
				</div><!-- .author-info -->
			<?php endif; ?>
		</footer><!-- .entry-meta -->
	</article><!-- #post -->
*/ ?>