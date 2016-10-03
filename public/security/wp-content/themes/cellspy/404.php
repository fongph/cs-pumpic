<?php
/**
 * The template for displaying 404 pages (Not Found)
 *
 * @package WordPress
 * @subpackage Pumpic
 * @since Pumpic 1.0
 */

get_header(); ?>

<!-- CONTENT -->
<div class="box-404">
    <div class="very_easy bg-404" style="padding-top: 0;">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 col-md-12 col-sm-12 col-lg-offset-1 col-md-offset-0 col-sm-offset-0">
                    <div class="row">
                        <div class="col-lg-offset-2 col-lg-8 col-md-offset-3 col-md-6 col-sm-offset-3 col-sm-6">
                            <img class="img-404" src="<?php echo getStaticUrl();?>/images/404/img-404.png" />
                        </div>
                    </div>
                    <div class="row" style="line-height: 1.4;">
                        <div class="col-lg-offset-1 col-lg-10 col-md-12 col-sm-12">
                            <p class="heading-404">The page you're looking for is not here. But with Pumpic, you will always be able to find your kid if he/she has a smartphone!</p>
                            <div class="row">

                                <div class="clearfix" style="max-width: 600px; margin: 0 auto;">
                                    <div class="item-404 col-lg-7 col-md-7 col-sm-12">
                                        <section class="fll">
                                            <p>Check out what else you can do with Pumpic</p>
                                            <div class="clearfix">
                                                <a class="btn-green btn-404 ga-action-click" ga-category="404 CTA Buttons" ga-action="click" ga-label="features-button" href="/all-features.html">View all Parental Control Features</a>
                                            </div>
                                        </section>
                                        <div class="clear"></div>
                                    </div>
                                    <div class="item-404 col-lg-5 col-md-5 col-sm-12">
                                        <section class="flr">
                                            <p>Learn more about child safety</p>
                                            <div class="clearfix">
                                                <a class="btn-green btn-404 ga-action-click" href="/security/" ga-category="404 CTA Buttons" ga-action="click" ga-label="blog-button">Visit Child Security Blog</a>
                                            </div>
                                        </section>
                                        <div class="clear"></div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END -->

<?php get_footer(); ?>

