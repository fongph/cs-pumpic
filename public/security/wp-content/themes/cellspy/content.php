<h2><a class="blog-link" href="/security/">Kids' Phone Safety Blog</a></h2>
<div class="col-lg-8 col-md-8 col-sm-12">
    <article>
        <h1 class="h3 h3_post"><?php the_title(); ?></h1>
        <div class="list_tags">
            <span class="date"><?= wp_date_format() ?></span>
            <?php /* the_tags(__('<strong>Posted by to</strong>'), '')*/ ?>
        </div>
        <div id="box-content-post">
            <?= the_content() ?>
        </div>    
        <?= fb_get_cat_related_posts() ?>

    </article>
</div>
<div class="col-lg-4 col-md-4 col-sm-12">
    <?php require_once '../../templates/includes/blog-banner-buy-post.tpl'; ?>
    <div class="feature_list">

        <?php get_sidebar( 'content' ); ?>
    </div>
</div>                