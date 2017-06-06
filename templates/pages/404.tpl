{strip}

{include file='../includes/main/main-header.tpl'
    robots="no"
    title="Page not Found"
}

<body>
<style>
    @media (min-width:993px) {
        .fll {
            float: left;
        }
        .flr {
            float: right;
        }
    }
</style>
    <!-- BLOCK GTM -->
    {include file='../includes/main/main-after-body.tpl'}
    <!-- END BLOCK GTM -->
    <!-- FLY BLOCKS -->
    {include file='../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->
	<div class="wrapper box-404">
	{include file='../includes/main/main-top-menu.tpl'}



        {*
            Template: PHONE
            Переменные:
                style (text): стиль блока Phone (blue|black). * - blue
        *}
        {include file='../includes/content/phone/block-phone.tpl'
                 style="black"
        }
        <!-- CONTENT -->
        <div class="very_easy bg-404" style="padding-top: 0;">
            <div class="container">
                <div class="row">
                    <div class="col-lg-10 col-md-12 col-sm-12 col-lg-offset-1 col-md-offset-0 col-sm-offset-0">
                        <div class="row">
                            <div class="col-lg-offset-3 col-lg-6 col-md-offset-3 col-md-6 col-sm-offset-3 col-sm-6">
                                <img class="img-404" src="{$img}/404/img-404.png" />
                            </div>
                        </div>
                        <div class="row">
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
        <!-- END -->
	<!-- FOOTER -->
        {*
            Template: FOOTER
            Переменные:
                our_products (text): Включить выключить блок OUR PRODUCTS (no|yes). * - yes
        *}
        {include file='../includes/main/main-footer.tpl'}
	</div>
	{include file='../includes/main/main-analytics-footer.tpl'}
</body>
</html>
{/strip}
