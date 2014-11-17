<h2><a class="blog-link" href="/security/">BLOG</a></h2>
<div class="col-lg-8 col-md-8 col-sm-12">
    <article>
        <h3><?php the_title(); ?></h3>
        <div class="list_tags">
            <span class="date"><?= wp_date_format() ?></span>
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