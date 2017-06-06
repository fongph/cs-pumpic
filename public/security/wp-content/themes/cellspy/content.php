<h2><a class="blog-link" href="/security/">Kids' Phone Safety Blog</a></h2>

<div class="menu_category">
<p>&nbsp;</p>
</div>

<div class="col-lg-8 col-md-8 col-sm-12">
    <!-- itemscope, itemprop and itemid are used for snippets -->
    <article itemscope itemtype="https://schema.org/Article">
        <meta itemscope itemprop="mainEntityOfPage"  itemType="https://schema.org/WebPage" itemid="https://pumpic.com/security/<?php echo get_the_name() ;?>/"/>

        <h1 class="h1 h1_post" itemprop="headline"><?php the_title(); ?></h1>

        <div class="list_tags">
            <span class="date"><?php echo get_the_date();  // wp_date_format() ?></span>
            <?php /* the_tags(__('<strong>Posted by to</strong>'), '')*/ ?>

        </div>


        <ul class="share_list share_top">
            <li><a class="share-facebook" href="#" data-location="https://www.facebook.com/sharer/sharer.php?u="></a></li>
            <li><a class="share-google" href="#" data-location="https://plus.google.com/share?url="></a></li>
            <li><a class="share-digg" href="#" data-location="https://digg.com/submit?url="></a></li>
            <li><a class="share-twitter" href="#" data-location="https://twitter.com/share?url="></a></li>
            <li><a class="share-reddit" href="#" data-location="//www.reddit.com/submit?url="></a></li>
        </ul>
        <div id="box-content-post">

            <div class="pull-left" itemprop="image" itemscope itemtype="https://schema.org/ImageObject">
                <?php  the_post_thumbnail(); ?>
                <meta itemprop="url" content="<?php the_post_thumbnail_url(); ?>">
                <meta itemprop="width" content="100">
                <meta itemprop="height" content="100">
            </div>

            <?= the_content() ?>

        </div>

        <ul class="share_list share_bottom">
            <li><a class="share-facebook" href="#" data-location="https://www.facebook.com/sharer/sharer.php?u="></a></li>
            <li><a class="share-google" href="#" data-location="https://plus.google.com/share?url="></a></li>
            <li><a class="share-digg" href="#" data-location="https://digg.com/submit?url="></a></li>
            <li><a class="share-twitter" href="#" data-location="https://twitter.com/share?url="></a></li>
            <li><a class="share-reddit" href="#" data-location="//www.reddit.com/submit?url="></a></li>
        </ul>


        <?php if ( function_exists( 'get_Sexy_Author_Bio' ) ) echo get_Sexy_Author_Bio(); ?>
        
        <div itemprop="publisher" itemscope itemtype="https://schema.org/Organization">
            <div itemprop="logo" itemscope itemtype="https://schema.org/ImageObject">
                <meta itemprop="url" content="https://pumpic.com/images/logo/logo.png">
                <meta itemprop="width" content="344">
                <meta itemprop="height" content="88">
            </div>
            <meta itemprop="name" content="Pumpic">
        </div>
        <meta itemprop="datePublished" content="<?php echo get_the_date();?>"/>
        <meta itemprop="dateModified" content="<?php echo get_the_modified_date(); ?>"/>
  
    </article>
    <?php get_sidebar('subscribe'); ?>
    <?//= fb_get_cat_related_posts() ?>
    <?php if ( function_exists( "get_yuzo_related_posts" ) ) { get_yuzo_related_posts(); } ?>


    <div class="should-keep">
        <?php if ( !function_exists('dynamic_sidebar') || !dynamic_sidebar("Children Safe") ) : ?>
        <?php endif; ?>
    </div>

    <?php  comments_template( '', true ); ?>
</div>
<div class="col-lg-4 col-md-4 col-sm-12">
	<div class="feature_list" style="margin-top:22px;">
		<div id="secondary" class="widget-area" role="complementary">
                      <?php dynamic_sidebar( 'sidebar-below-banner' ); ?>
                </div>
	</div>
    <?php require_once '../../templates/includes/blog-banner-buy-post.tpl'; ?>
    <div class="feature_list">
        <div id="secondary" class="widget-area" role="complementary">




            <?php get_sidebar('main'); ?>
        </div>
        <?php /* get_sidebar( 'content' );*/ ?>
    </div>
</div>

