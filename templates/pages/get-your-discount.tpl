{strip}

{include file='../includes/main/main-header.tpl'
    robots="yes" 
    title="Get your 50% discount on your first purchase!"
    description="Thank you for choosing pumpic.com"
}

<body>
    <!-- BLOCK GTM -->
    {include file='../includes/main/main-after-body.tpl'}
    <!-- END BLOCK GTM -->
    
    <!-- FLY BLOCKS -->
    {include file='../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->
    
	<div class="wrapper parent-control">
	{include file='../includes/main/main-top-menu.tpl' 
                cache_id = "includes_main_main-top-menu"
                nocache
        }	
        

        
        {*
            Template: PHONE
            Переменные:
                style (text): стиль блока Phone (blue|black). * - blue 
        *}
        {include file='../includes/content/phone/block-phone.tpl'
                 style="blue"   
        }
		<div class="visual">

            <div class="container bg_famaly">

                <div class="row">

                    <div class="col-lg-10 col-lg-offset-1">

                        <div class="col-md-6 col-lg-6 w900">
                            <img src="{$img}/parental_control/bg_famaly_mobile.png" alt="" class="visual-img-pc">
                        </div>

                        <div class="col-md-6 col-lg-6 box-right-description">
                            <div class="visual-text text-center">
                                <h1 class="title">Cell Phone <br />Parental Control App{*CHILDCARE MOBILE <br />MONITORING APP*}</h1>
                                <p>Keep your children safe and secured with Pumpic. <br />
                                    Track location. View calls and SMS. Follow online activity.</p>
                                <ul class="compatibility">
                                    <li><i class="icon-android"></i> ({$ver_android_bot} - {$ver_android_up})</li>
                                    <li><i class="icon-apple"></i> ({$ver_ios_bot} - {$ver_ios_up})</li>
                                    {*<li><i class="icon-blackberry"></i> (1.0 - 7.1)</li>*}
                                    <li>
                                        <i class="icon-info-circled"></i> <a href="/compatibility.html">platform compatibility</a>
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <div class="col-md-6 col-lg-6 w770">
                            <img src="{$img}/parental_control/bg_famaly_mobile.png" alt="" class="visual-img-pc">
                        </div>

                    </div>
                </div> <!-- .row -->
            </div>
		</div>
		{include file='../includes/content/discount_50_v2.tpl'}
                
                {include file='../includes/content/secures.tpl'}
		{include file='../includes/content/features.tpl'
                        blockBg="light"
                }

		<div class="dark">
			<div class="container">
				<div class="row">
					<div class="col-sm-5 col-md-5 col-lg-5 col-sm-offset-1 col-md-offset-1 col-lg-offset-1">
						<div class="text-center relative_box">
							<img src="{$img}/parental_control/ipad.png" alt="" class="ipad-pic">
							{*<button class="btn btn-default _forward_pricing"
                                                                ga-label-button="main-premium"
                                                                ga-type-button="buy button"
                                                                ga-event="click">Buy Premium</button>*}
						</div>
					</div>
					<div class="col-sm-5 col-md-5 col-lg-5">
						<div class="ipad-text">
							<h2 class="text-left">Easy-to-Use Control Panel{*EASY-TO-USE CONTROL PANEL*}</h2>
							<p>
                                Try Control Panel demo to see Pumpic app in use.
                                <br />
                                Buy Pumpic to protect your kids and secure their happiness right now. 
                            </p>
                            <ul>
                                <li>
                                    <a href="http://demo.{$domain}/setDevice/125?redirect_url=cp/calls"
                                       class="featured-link link-hl ga-click"
                                       ga-label-button="discount-demo-looks"
                                       ga-type-button="demo link"
                                       ga-event="click">View demo<i class="icon-angle-double-right"></i></a>
                                </li>
                                <li>
                                    <a class="btn btn-green ga-click"
                                       href="/store.html"
                                       ga-label-button="discount-visit-store"
                                       ga-type-button="buy button"
                                       ga-event="click">Visit Store</a>
                                </li>
                            </ul>
                                                        
                                                        
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="light">
			<div class="container">
				<h2 class="text-center testimonial-title">Pumpic Testimonials:</h2>
				<div class="row">
                                    
                                    <div class="bxSliders only-pc">

                                        <!-- SLIDE #1 -->
                                        <div class="slide">
                                    
                                            <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                                    <img src="{$img}/testimonials/testimonials_new_1.png" alt="" class="testimonial-photo">
                                                    <div class="testimonial-text">
                                                            <h4>Jane A.  – mother of twins</h4>
                                                            <p>“I didn’t know such technology existed. It made my life easier and helped me big time. I can track my kids’ calls, texts messages and social media to save them from online predators and misgiving communications.”</p>
                                                    </div>
                                            </div>
                                            <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                                    <img src="{$img}/testimonials/testimonials_new_2.png" alt="" class="testimonial-photo">
                                                    <div class="testimonial-text">
                                                            <h4>Karen and Mike – parents of a 12-year-old daughter</h4>
                                                            <p>“Our daughter was acting weird after we moved to another state. When we installed Pumpic, we found that she was bullied by her classmate on Facebook. We gathered with teachers and parents and talked the whole thing out. Thank you!”</p>
                                                    </div>
                                            </div>
                                            <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                                    <img src="{$img}/testimonials/testimonials_new_3.png" alt="" class="testimonial-photo">
                                                    <div class="testimonial-text">
                                                            <h4>Logan T – father of a 14-year-old son</h4>
                                                            <p>“Pumpic has really made my life easier. Now, I can take care of my kid, even when I’m far from home. I can block 18+ websites and applications. It’s good to know that my son is safe and secured wherever I go.”</p>
                                                    </div>
                                            </div>
                                                    
                                        </div>         
                                    </div> 
                                    <div class="bxSliderMobile"></div>            
				</div>
			</div>
		</div>
		
                {* include file='../includes/content/subscribe.tpl' *}
                
		<div class="dark howtouse-pumpic">
			<div class="container">
				<h2 class="text-center">How to Get Pumpic{*HOW TO GET PUMPIC*}</h2>
				<div class="howitworks-arrows">
					<img src="{$img}/howitworks-arrows.png" class="" alt="">
				</div>
				<div class="row">
					<ol class="list_step">
						<li>
							<h3>Pick a subscription plan</h3>
                                                        <p>Visit our <a class="text-green underline" href="/store.html">Store</a>, check out available <b>subscription plans</b> and 
                                                            choose the one, which meets your expectations and <b>monitoring preferences</b>. 
                                                            <br class="br" />After you submit the payment, you will receive an email with setup instructions.</p>
						</li>
						<li>
							<h3>Download and install</h3>
							<p>Pumpic app installation process will take you no longer than <b>5 minutes</b>. Follow the guidelines pointed in the 
                                                            subscription email to complete the setup. 
                                                            <br class="br" />Note that <b>physical access</b> to your kid’s device is <b>required</b>.</p>
						</li>
						<li>
							<h3>Keep your kids safe</h3>
                                                        <p>Enter your <b>Control Panel</b> to start monitoring and protecting your children. Use the entire variety of tracking functions and secure your kids’ happiness. 
                                                            <br class="br" />From now on Pumpic will let you <b>view calls</b> and <b>SMS</b>, track <b>location</b> and follow <b>online activity</b> remotely.</p>
						</li>
					</ol>
				</div>
			</div>
		</div>
		<div class="light">
			<div class="container">
				<div class="row">
					<div class="col-sm-10 col-md-10 col-lg-10 col-sm-offset-1 col-md-offset-1 col-lg-offset-1 gutter-wide">
						<h2 class="text-center">Why Pumpic{*WHY PUMPIC*}</h2>
						<div class="row">
							<div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
								<h3 class="text-center"><img src="{$img}/icons/icon-easy-to-use.png" alt=""> Easy to use</h3>
								<p class="text-center">Pumpic is a feature-rich childcare software, which will help you take care of your children remotely. You will not have to spend a lot of time finding out how to use the app. 
                                                                    <br class="br" />The service is user-friendly and does not require any technical skills.</p>
							</div>
							<div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
								<h3 class="text-center"><img src="{$img}/icons/ico-easy-to-install.png" alt=""> Easy to install</h3>
								<p class="text-center">Follow the guidelines and start remote monitoring from your Control Panel right after the setup. Get physical access to the target device and install the app in 5 minutes only. 
                                                                    <br class="br" />Pumpic childcare tracking app will keep your kids safe quick and quiet.</p>
							</div>
							<div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
								<h3 class="text-center"><img src="{$img}/icons/ico-easy-to-contact.png" alt=""> Easy to contact</h3>
								<p class="text-center">Pumpic application has user-friendly interface, which makes monitoring process more than simple. Enter your Control Panel and see all the data from your kid’s device in a readable form. 
                                                                    <br class="br" />Feel free to contact our {*Customer*}Support Team at any time, for any reason.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
                {include file='../includes/main/main-quick-link.tpl' 
                        blockBg="dark"
                }                                         
                                                        
		{*include file='../includes/main/main-footer-promo.tpl'*}
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