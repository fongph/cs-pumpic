<?php get_header(); ?>
	<div class="very_easy">
		<div class="container">
			<div class="row">
				<div class="col-lg-10 col-lg-offset-1">
					<div class="row">
						<h1 class="text-center mt10 mb20"><a class="blog-link" href="/security/">Kids' Phone Safety Blog</a></h1>

						<div class="archive">
							<span class="title"><?php printf( __( "Search Results for '<i>%s</i>'", 'cellspy' ), '<span>' . get_search_query() . '</span>' ); ?></span>
						</div>

						<div class="col-lg-8 col-md-8 col-sm-12">

							<?php if ( have_posts() ) : ?>

								<?php
								global $wp_query;
								$wp_query->query_vars['paged'] > 1 ? $current = $wp_query->query_vars['paged'] : $current = 1;
								?>

								<?php while ( have_posts() ) : the_post(); ?>
								<?php get_template_part( 'content', 'post' ); ?>
								<?php endwhile; ?>

								<?php
								if(function_exists('wp_paginate')) {
									wp_paginate();
								}
								?>

							<?php else : ?>

								<article id="post-0" class="post no-results not-found">
									<header class="entry-header">
										<h1 class="entry-title"><?php _e( 'Nothing Found', 'twentytwelve' ); ?></h1>
									</header>

									<div class="entry-content">
										<p><?php _e( 'Sorry, but nothing matched your search criteria. Please try again with some different keywords.', 'twentytwelve' ); ?></p>
										<?php get_search_form(); ?>
									</div><!-- .entry-content -->
								</article><!-- #post-0 -->

							<?php endif; ?>
						</div>

						<div class="col-lg-4 col-md-4 col-sm-12">
							<?php require_once '../../templates/includes/blog-banner-buy-home.tpl'; ?>

							<div class="feature_list">
								<div id="secondary" class="widget-area" role="complementary">
									<?php get_sidebar('main'); ?>
								</div>
							</div>
						</div>
				</div>
			</div> <!-- .row -->
		</div> <!-- .container -->
	</div> <!-- .very_easy -->
<?php get_sidebar(); ?>
<?php get_footer(); ?>