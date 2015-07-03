{strip}
 
{include file='../includes/main/main-header.tpl'
    robots="no" 
    title="Page not Found"
}    
    
<body>
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
        <div class="very_easy bg-404">
            <div class="container">
                <div class="row">
                    <div class="col-lg-10 col-md-12 col-sm-12 col-lg-offset-1 col-md-offset-0 col-sm-offset-0">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12">
                                <img class="img-404" src="{$img}/404/img-404.png" />
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
                                                <a class="btn-white" href="/all-features.html">All features</a>
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
                                                <a class="btn-white" href="/security/">Visit blog</a>
                                            </div>
                                        </section>
                                        <i class="arrows-404"></i>
                                    </div>
                                    <div class="item-404 col-lg-4 col-md-4 col-sm-12">
                                        <section>
                                            <span class="title"><b>Contact Us</b></span>
                                            <p>We will help you find what you’ve been looking for. </p>
                                            <div class="clearfix">
                                                <a class="btn-white" href="/faq.html">Contact</a>
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
	