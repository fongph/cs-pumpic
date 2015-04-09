<h2><a class="blog-link" href="/security/">Kids' Phone Safety Blog</a></h2>
<div class="col-lg-8 col-md-8 col-sm-12">
    <article>
        <h1 class="h1 h1_post"><?php the_title(); ?></h1>
        <div class="list_tags">
            <span class="date"><?php echo get_the_date();  // wp_date_format() ?></span>
            <?php /* the_tags(__('<strong>Posted by to</strong>'), '')*/ ?>
        </div>
        <div id="box-content-post">
            <div class="pull-left">
                <?php the_post_thumbnail(); ?>
            </div>
            
            <?= the_content() ?>
            
        </div>    
        <?= fb_get_cat_related_posts() ?>

    </article>
</div>
<div class="col-lg-4 col-md-4 col-sm-12">
    <?php require_once '../../templates/includes/blog-banner-buy-post.tpl'; ?>
    <div class="feature_list">
        <div id="secondary" class="widget-area" role="complementary">
        <?php get_sidebar('main'); ?>
        </div>    
        <?php /* get_sidebar( 'content' );*/ ?>
    </div>
</div>                