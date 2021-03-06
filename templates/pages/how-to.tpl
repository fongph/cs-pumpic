{strip}
{include file='../includes/main/main-header.tpl'
    title="How does Pumpic phone monitoring app work?"
    description="Pumpic is easy-to-use and quick-to-install mobile phone monitoring software. Our app is a piece of cake to get used to. Learn more about how Pumpic works."
}

<body>
    <!-- BLOCK GTM -->
    {include file='../includes/main/main-after-body.tpl'}
    <!-- END BLOCK GTM -->
    
    <!-- FLY BLOCKS -->
    {include file='../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->
	<div class="wrapper">
	{include file='../includes/main/main-top-menu.tpl' 
                topmenu_active='how-to'
                show_control_panel_link="1"
                cache_id = "includes_main_main-top-menu"
                nocache
        }	
        

        
        {*
            Template: PHONE
            Переменные:
                style (text): стиль блока Phone (blue|black). * - blue 
        *}
        {include file='../includes/content/phone/block-phone.tpl'
                 style="black"   
        }
        
                {include file='../includes/content/how-get-pumpic.tpl'
                                    blockBg = "very_easy"
                                    tagTitle="h1"
                                    classTitle="h2"
                                    title = "How Pumpic Mobile Tracking App Works"
                                    style = "images"} 
        
		<div class="very_easy">
			<div class="container">
                            
                                
                            
				{*<div class="row">
					<div class="col-lg-10 col-lg-offset-1">
						<div class="row">

						</div>
					</div>
				</div>*}
				{*<div class="row">
					<h2>
                                            How Pumpic Mobile Tracking App Works
                                        </h2>
					<ul class="thumbs">
						<div class="col-sm-12 col-md-4 clearfix">
							<div class="thumbnail">
								<span class="img_thumb"><img src="images/thumb_1.png" height="216" width="360" alt=""></span>
								<div class="caption how-to-step">
									<h3>Subscription plan</h3>
									<p>Visit <a href="/store.html">Store</a>, select the most suitable for you subscription plan and submit the payment.</p>
								</div>
							</div>
						</div>
						<div class="col-sm-12 col-md-4 clearfix">
							<div class="thumbnail">
								<span class="img_thumb"><img src="images/thumb_2_new.png" height="206" width="172" alt=""></span>
								<div class="caption how-to-step">
									<h3>Install easily</h3>
									<p>Take your kid’s device and install the app following the instructions from the received email.</p>
								</div>
							</div>
						</div>
						<div class="col-sm-12 col-md-4 clearfix">
							<div class="thumbnail">
								<span class="img_thumb"><img src="images/thumb_3_new.png" height="216" width="360" alt=""></span>
								<div class="caption how-to-step">
									<h3>Protect your kids</h3>
									<p>Log in to your Control Panel in order to start monitoring the data sent from your kid’s device.</p>
								</div>
							</div>
						</div>
					</ul>
					<!-- <div class="arrow_bottom">
                                            <span><div class="no-click-video-guide"><i class="icon-angle-down"></i></div></span> 
                                            <h3>INSTALLATION VIDEO GUIDE</h3>
					</div> -->
				</div>*}
                                
                                
				{*<div class="row">
					<ul class="thumbs_video">
						<li class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
							<div class="ico-top"><i class="icon-android"></i>
							</div>
							<a href="#">
								<img src="images/video_thumb1.png" height="345" width="566" alt="">
							</a>
                                                        <a href="https://cp.pumpic.com/how-to-install/android-instructions.html"
                                                           class="text-center mt10" >Android Installation Guide »</a>
						</li>
						<li class="col-lg-6 col-md-6 col-sm-6  col-xs-12">
							<div class="ico-top"><i class="icon-apple"></i>
							</div>
							<a href="#">
								<img src="images/video_thumb2.png" height="345" width="566" alt="">
							</a>
                                                        <a href="https://cp.pumpic.com/how-to-install/ios-instructions.html"
                                                           class="text-center mt10" >iOS Installation Guide »</a>
						</li>
					</ul>
				</div>*}
			</div>
			{*include file='../includes/plans-white.tpl'*}
                        
                        {*include file='../includes/main-plans.tpl'*}
                        
                        {include file='../includes/content/plans.tpl'}
			
			<div class="row">
				<div class="col-lg-12">
					<h3 class="link_circle"><a href="/faq.html" class="text-success">
					<span class="circle_ico"><i class="icon-help"></i></span>
					Frequently Asked Questions{*FREQUENTLY ASKED QUESTIONS*}</a></h3>
				</div>
			</div>
		</div>
                                
                {*{include file='../includes/content/banners/banner-promo-trial.tpl'}*}
                
                {include file='../includes/content/banners/index.tpl'}
                
                <!-- RECOMMENDED -->
                {*
                    Template: RECOMMENDED
                *}    
                {include file='../includes/main/main-recommended.tpl'}
                
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
	