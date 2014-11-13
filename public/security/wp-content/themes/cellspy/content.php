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
    <?php require_once '../../templates/includes/blog-banner-buy-post.tpl'; ?>
    <div class="feature_list">

        <?php get_sidebar( 'content' ); ?>
    </div>
</div>                