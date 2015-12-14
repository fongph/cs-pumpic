{include file='../includes/main/main-header.tpl'
    robots="yes" 
    title="Child Location Tracking | Pumpic Parental Control"
    description="GPS location tracker for Android and iOS. Monitor current whereabouts in real time and the entire route history. Multifeature cell phone tracker app for Android, iPhone, iPad, and iPod Touch."
    customeStyle="
        .block-child-location-tracking .ipad-text {
            padding: 10px 0;
        }
        
        @media only screen and (max-width: 480px) {
            .block-child-location-tracking .ipad-text {
                padding: 10px 0px 50px 0px;
            }
        }

        @media (min-width: 468px) { 
            .block-child-location-tracking .ipad-text {
                padding: 10px 0px 50px 0px;
            }
        }

        @media (min-width: 768px) {
            .block-child-location-tracking .ipad-text {
              padding: 10px 0;
            }
        }

        @media (min-width: 992px) {
            .block-child-location-tracking .ipad-text {
              padding: 10px 0;
            }
        }

        @media (min-width: 1200px) {
            .block-child-location-tracking .ipad-text {
              padding: 10px 0;
            }
        } 
    "
}    
    
<body>
    <!-- FLY BLOCKS -->
    {include file='../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->
    
    <div class="wrapper {*bg_bottom_images*} block-child-location-tracking home-page">
        <!-- TOP MENU -->

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
        
        {* bg_famaly_427x254.png imgVerticalAlign = "bottom"*}
        <!-- CONTENT -->
        {include file='../includes/content/info/info-promo.tpl'
            imgUrl = "header_banners/child-location-tracking.png"
            imgAlt = "Mobile Location Tracking" 
            imgAlign = "left bottom"
            imgVerticalAlign = "center"
            textAlign = "left"
            title = "Cell Phone Child Locator <br />Parental Control App"
            description = "Reliable location tracker for Android and iOS.<br />Monitor real time location and route history."
            promoBuyBlock = "no"
            planPackageBuy = "yes"
            block_video = "yes"
            block_video_src = "http://www.youtube.com/embed/Atg0CbaytAY"
        } {* ?rel=0&wmode=transparent&fs=0&autoplay=1&modestbranding=1&autohide=1 *}
        
        {include file='../includes/content/plans.tpl'}

        {* Template: FLY BUTTONS
        *}
        {include file='../includes/content/fly/box-buttons.tpl'
            buttonBuyNow = 'yes'
            buttonViewDemo = 'no'
            buttonFreeTrial = 'yes'
        }
		
        
        {*  styleTitle="h2"
    title="Follow Kids Remotely Wherever They Go" *}
        
{Content 
    styleTitle=""
    title=""
    blockBg='dark'}
    
    <div id="grid-images" class="row">
        <div class="col-lg-9 col-md-9 col-sm-9">
            <h2 class="h2 text-right-important">Follow Kids Remotely Wherever They Go</h2>
            <div class="pt30 pb20">
                <p>Why is location tracking so essential, you may wonder? The answer is quite simple. When children go anywhere alone, without parents or adults to come along and protect if needed, they are most likely to be exposed to stranger danger, get lost, or get in trouble.</p>
                <p>Statistically, 40% of parents are most concerned about their kids’ safety, when they are away from home. In other words, parents worry most of all, when they don’t know exactly where their children are.</p>
				<p>With the Pumpic parental tracking app, you can find out your kids’ whereabouts in real time as soon as necessary.</p>
            </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-3 text-center">
            <img alt="Track Kids' Location" src="{$img}/landings/track-kids-location.png" width="207px" height="208px" />
        </div>
    </div>    
{EndContent}
        
<div class="light">
        <div class="container">
                <h2 class="text-center">How Pumpic Secures Your Kids</h2>
                <div class="row">
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="{$img}/icons/icon-mobile-secure.png" alt="cell phone monitoring">
                                        <h3>Control mobile phone use</h3>
                                        <ul class="feature_list">
                                                <li>Monitor incoming and outgoing calls</li>
                                                <li>Follow texting (SMS, MMS, iMessage)</li>
                                                <li>Block callers and message senders</li>
                                        </ul>
                                </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="{$img}/icons/icon-track-kids.png" alt="remote mobile monitoring">
                                        <h3>Track location</h3>
                                        <ul class="feature_list">
                                                <li>Follow current whereabouts</li>
                                                <li>View the entire route history</li>
                                                <li>Set geo-fences on the map</li>
                                        </ul>
                                </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
								        <img src="{$img}/icons/icon-online-activity.png" alt="monitor online activity">
                                        <h3>Follow online activities</h3>
                                        <ul class="feature_list">
                                                <li>View browsing history and bookmarks</li>
                                                <li>Monitor Facebook IM and Instagram</li>
                                                <li>WhatsApp, Snapchat, Skype, Viber, Kik</li>
                                        </ul>
                                </div>
                        </div>
                </div>
        </div>
</div>
        
        {include file='../includes/content/features-table.tpl'
        title = "Many Useful Features In Addition to Location Tracking"
        description = "Pumpic is designed to provide your kids with all-round protection wherever they go. Thus, the app allows you to not only find their exact location, but also secure them during daily activities. More than 24 useful monitoring solutions let Pumpic be the best app for tracking kids and a reliable helper for all of life emergencies."
        blockBg="dark"
        } 
        
        {include file='../includes/content/ipad.tpl' 
                blockBg="light"
                imgUrl = "parental_control/ipad.png"
                imgAlt = "Apple iOS. iPad"
                title = "Use Control Panel Easily"
				description = "Install the Pumpic GPS cell phone tracker app on your kid’s smartphone or tablet and utilize effective parental control right away. To view the data from the target device, log in to your Control Panel. It is accessible from any computer, laptop, and mobile gadget. In your Control Panel, you will see all the monitored information divided by relevant categories for your convenience. With its help, you can not only view the data, but set limits, block some activities, and control your children’s devices as well."
                textAlign = "left"
        }
        
        {* description = "Install the iPad parental control app on your kid’s tablet and start monitoring right away. Log in to your Control Panel and view all the information from the target device. It can be accessed from anywhere including desktop computers, laptops, smartphones, and tablets. In addition to data monitoring, the Control Panel allows you to set limits, block tablet activities, and lock the target device permanently."             
        *}
        
        <div class="dark">
    <div class="container">
            <h2 class="text-center testimonial-title">Trusted by Over 10 000 Customers Worldwide:</h2>
            <div class="row">
                
                <div class="bxSliders only-pc">
                        <!-- SLIDE #1 -->
                        <div class="slide">
                
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/morgan-m-14.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Morgan M. – father of 14-year-old daughter</h4>
                                    <p>“I needed a GPS tracking app for the iPhone of my little girl. She grows up and starts hanging out with her friends alone. They meet together quite often and I think she not always tells me where exactly they hang out. To get rid of constant worries I bought Pumpic and installed it on her phone. This app lets me see where she is at each time I need. I can also view her route history and check if she visits places I’ve not approved. That’s a huge help I suppose.”</p>
                            </div>
                    </div>
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/scarlett-d-12.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Scarlett D. – mother of 12-year-old son</h4>
                                    <p>“I work 24/7 from time to time and that’s why sometimes have to leave my son alone. Pumpic lets me rest assured he is safe and protected, and won’t get into trouble. I track where he is, where he goes, and places he visits. The app also lets me set geo-fences to prevent him from visiting restricted places in advance. I can follow him remotely online and check who calls him while I’m away. Thanks Pumpic for taking my worries away!”</p>
                            </div>
                    </div>
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/janet-p-15.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Janet P. – mother of 15-year-old son</h4>
                                    <p>“My son is 15. You know that children need thorough watch and care at this age. My friend is a school teacher and he recommended me Pumpic as the best Android family tracking app he had ever had to do with. I decided to give it a try and was satisfied with the result. I can supervise my boy on his tablet and track his whereabouts. The app lets me block many activities, which is essential especially when it comes to Internet access. Pumpic is a good helper for careful parents.”</p>
                            </div>
                    </div>
                            
                        </div>
                </div>
                <div class="bxSliderMobile"></div>            
                            
            </div>
    </div>
</div> 
        
        {include file='../includes/content/how-get-pumpic.tpl'
            blockBg="light"
        } 

        {include file='../includes/main/main-quick-link.tpl' 
            blockBg="dark"
        }        
        
        {*{include file='../includes/content/banners/banner-promo-trial.tpl'}*}
        
        {include file='../includes/content/banners/index.tpl'}
        <!-- END CONTENT -->    
           
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