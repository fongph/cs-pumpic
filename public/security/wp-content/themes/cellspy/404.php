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
    <div class="very_easy bg-404">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 col-md-12 col-sm-12 col-lg-offset-1 col-md-offset-0 col-sm-offset-0">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12">
                            <img class="img-404" src="<?php echo getStaticUrl();?>/images/404/img-404.png" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12">

                            <div class="row">
                                <div class="item-404 col-lg-4 col-md-4 col-sm-12">
                                    <section>
                                        <span class="title"><b>Pumpic Features</b></span>
                                        <p>We are sure you were looking for our amazing features.</p>
                                        <div class="clearfix">
                                            <a class="btn-white" href="#">All features</a>
                                        </div>
                                    </section>
                                    <i class="arrows-404"></i>
                                    <div class="clear"></div>
                                </div>
                                <div class="item-404 col-lg-4 col-md-4 col-sm-12">
                                    <section>
                                        <span class="title"><b>Blog</b></span>
                                        <p>No? Then you probably wanted to read our kids’ safety blog.</p>
                                        <div class="clearfix">
                                            <a class="btn-white" href="#">Visit blog</a>
                                        </div>
                                    </section>
                                    <i class="arrows-404"></i>
                                </div>
                                <div class="item-404 col-lg-4 col-md-4 col-sm-12">
                                    <section>
                                        <span class="title"><b>Contacts Us</b></span>
                                        <p>We will help you find what you’ve been looking for. </p>
                                        <div class="clearfix">
                                            <a class="btn-white" href="#">Contact</a>
                                        </div>
                                    </section>
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

