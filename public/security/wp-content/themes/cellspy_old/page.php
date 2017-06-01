<?php /* // get_header(); ?>

    <div class="content-holt pt44">
            <div class="container">
                <div class="wrap-order w770 s-center">
                    <?php while ( have_posts() ) : the_post(); ?>
                            <?php get_template_part( 'content', 'page' ); ?>
                            <?php // comments_template( '', true ); ?>
                    <?php endwhile; // end of the loop. ?>
                </div>
            </div>
    </div>    

<?php // get_sidebar(); ?>
<?php // get_footer(); 
*/?>

<?php get_header(); ?>

<div class="very_easy">
    <div class="container">
        <div class="row">
            <div class="col-lg-10 col-lg-offset-1">
                <div class="row">
                     <?php while ( have_posts() ) : the_post(); ?>
                            <?php get_template_part( 'content', 'page' ); ?>
                            <?php // comments_template( '', true ); ?>
                    <?php endwhile; ?>
                </div>
            </div>
        </div>
        
    </div>
</div>    

<?php // get_sidebar(); ?>

<?php get_bottom(); ?>
<?php get_footer(); ?>