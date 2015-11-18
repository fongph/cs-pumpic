<?php
/**
	</div><!-- #main .wrapper -->
	<footer id="colophon" role="contentinfo">
		<div class="site-info">
			<?php do_action( 'twentytwelve_credits' ); ?>
			<a href="<?php echo esc_url( __( 'http://wordpress.org/', 'twentytwelve' ) ); ?>" title="<?php esc_attr_e( 'Semantic Personal Publishing Platform', 'twentytwelve' ); ?>"><?php printf( __( 'Proudly powered by %s', 'twentytwelve' ), 'WordPress' ); ?></a>
		</div><!-- .site-info -->
	</footer><!-- #colophon -->
</div><!-- #page -->

*/
?>
    <?php if ( !is_404() ) { ?>
        <div class="container">
            <div class="row">
                <div class="col-lg-10 col-lg-offset-1">
                    <div class="row block-subscribe"> 
                        <div class="col-lg-8 col-md-8 col-sm-12">
                            <?php get_sidebar('subscribe'); ?>
                        </div> 
                        <div class="col-lg-4 col-md-4 col-sm-12">

                        </div>
                    </div>
                </div>
            </div>
        </div>
    <?php } ?>
	<?php 
            include('../../templates/includes/blog-footer.tpl'); 
            wp_footer();
	?>
</body>
</html>