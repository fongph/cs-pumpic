<?php get_header(); ?>
<div class="very_easy">
    <div class="container">
        <div class="row">
            <div class="col-lg-10 col-lg-offset-1">
                <div class="row">

			<?php while ( have_posts() ) : the_post(); ?>

				<?php get_template_part( 'content', get_post_format() ); ?>

                            <?php /*
				<nav class="nav-single">
					<h3 class="assistive-text"><?php _e( 'Post navigation', 'twentytwelve' ); ?></h3>
					<span class="nav-previous"><?php previous_post_link( '%link', '<span class="meta-nav">' . _x( '&larr;', 'Previous post link', 'twentytwelve' ) . '</span> %title' ); ?></span>
					<span class="nav-next"><?php next_post_link( '%link', '%title <span class="meta-nav">' . _x( '&rarr;', 'Next post link', 'twentytwelve' ) . '</span>' ); ?></span>
				</nav><!-- .nav-single -->


                                */
                                ?>



                <?php endwhile; // end of the loop. ?>
		</div>
            </div>
        </div>
    </div>
</div>

<?php get_sidebar(); ?>
<?php get_footer(); ?>