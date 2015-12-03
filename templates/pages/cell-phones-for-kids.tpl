{include file='../includes/main/main-header.tpl'
    robots="yes" 
    title="Cell Phones for Kids | Pumpic Parental Control"
    description="Choose the best cell phones for kids. Install the Pumpic app and protect them. Control cell phone use, track location, monitor online activities on a safe phone."
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
    
<body class="phones-for-kids-head">
    <!-- FLY BLOCKS -->
    {include file='../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->
    
    <div class="wrapper {*bg_bottom_images*} block-child-location-tracking home-page">
        <!-- TOP MENU -->

	{include file='../includes/main/main-top-menu.tpl'
            cache_id = "includes_main_main-top-menu"
            nocache
        }
        
        <!-- FLY BLOCKS -->
        {nocache}
        {if ''|hasFreeTrialStick}    
            {include file='../includes/content/fly/fly-free-trial.tpl'}
        {/if}    
        {/nocache}
        <!-- END FLY -->
        
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
            imgUrl = "header_banners/phones-for-kids-head.png"
            imgAlt = "Cell Phones for Kids" 
            imgAlign = "left bottom"
            imgVerticalAlign = "center"
            textAlign = "left"
            title = "Cell Phones for Kids <br />Parental Control App"
            description = "View call logs and SMS. Track location. Follow online activities.<br />Protect your children on cell phones with Pumpic."
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
        <div class="col-lg-12 col-md-12 col-sm-12">
            <h2 class="h2 text-center">Choosing Safe Phone for Kids</h2>
            <div class="pt30 pb20">
                <p>When choosing a cell phone for children careful parents should make sure that in addition to various opportunities and convenience, such a device also provides safety for your little loved ones.</p>
				<p>Many producers of mobile gadgets have designed special safe phones for kids. Thus, they maintain necessary functions of an ordinary cell phone and at the same time include some other features you will find helpful for children in case of emergency.</p>
				<p>We have selected some cell phones for children considered the best. Have a look at the list below to make you own choice.</p>
				<p>And remember that Pumpic provides you with even better parental control opportunities and your kids – with more reliable protection. The app allows monitoring your child’s device remotely, control its use, and set all required restrictions for your kids’ security. It can be installed on any cell phone as well as any tablet and used easily from anywhere you are.</p>
				<p>Kajeet | Firefly glowPhone | Kytephone | LG Migo | Just5 J510 | Samsung Factor | Nokia Lumia 710</p>
            </div>
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
                                                <li>View call logs and SMS</li>
                                                <li>Block calls, limit text messages</li>
                                                <li>Set screen time restrictions</li>
                                        </ul>
                                </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="{$img}/icons/icon-track-kids.png" alt="remote mobile monitoring">
                                        <h3>Track location</h3>
                                        <ul class="feature_list">
                                                <li>Find out current whereabouts</li>
                                                <li>Follow the entire route history</li>
                                                <li>Set geo-fences, receive alerts</li>
                                        </ul>
                                </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
								        <img src="{$img}/icons/icon-online-activity.png" alt="monitor online activity">
                                        <h3>Follow Internet activities</h3>
                                        <ul class="feature_list">
                                                <li>Check bookmarks and browsing history</li>
                                                <li>Follow Instagram, Facebook, Snapchat, </li>
                                                <li>WhatsApp, Kik, Skype, and Viber</li>
                                        </ul>
                                </div>
                        </div>
                </div>
        </div>
</div>
        
        {include file='../includes/content/features-table.tpl'
        title = "Features Ensuring Safe Phone Use for Kids"
        description = "Pumpic comprises many useful features to make your children’s mobile devices safe. The app lets you monitor them both online and during daily activities. Comprehensive protection, accuracy, and reliability are what make Pumpic an irreplaceable helper for careful parents. Utilize all the 24 features to the fullest and keep your family safe remotely."
        blockBg="dark"
        } 
        
        {include file='../includes/content/ipad.tpl' 
                blockBg="light"
                imgUrl = "parental_control/ipad.png"
                imgAlt = "Apple iOS. iPad"
                title = "Use Control Panel Easily"
				description = "Enter your Control Panel to see all the data from the target device. You can log in on any computer, laptop, or mobile gadget. In addition to viewing essential information on cell phones for children, the Pumpic app also lets you control them remotely, set limits, and apply restrictions via your Control Panel."
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
                            <img src="{$img}/testimonials/jessica-l-2.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Jessica L. – mother of twins</h4>
                                    <p>“We’ve been looking for some safe phones for kids. However, our family friend gave us advice to try Pumpic. We did. As it turned out this monitoring app provided better protection than all best cell phones for kids we could find online. There are so many useful features included that parents can view everyone who calls their children, find out their location, and follow each online activity. Great solution!”</p>
                            </div>
                    </div>
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/peter-g-12.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Peter G. – father of 12-year-old son</h4>
                                    <p>“If you wanna secure a phone for your child, Pumpic is the most workable way to do that. The app lets me track all activities that may be dangerous for children. Moreover, I can block those I consider inappropriate. I can block misgiving callers and SMS senders, limit app and websites with inappropriate content.”</p>
                            </div>
                    </div>
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/zoe-h-11.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Zoe H. – mother of 11-year-old daughter</h4>
                                    <p>“I tried different mobile phones made especially for kids. But most of them are not as functional as ordinary ones. Sure, they provide some kind of security, but they lack some good functions that smartphones have. That’s why I decided to try Pumpic. I bought my girl a good smartphone and installed Pumpic on it. Now I have access to all of her activities, can control and protect her remotely. At the same time, my daughter can use her smartphone entirely to explore this world of technologies and keep up with times.”</p>
                            </div>
                    </div>
                            
                        </div>
                </div>
                <div class="bxSliderMobile"></div>            
                            
            </div>
    </div>
</div>

        {include file='../includes/main/main-quick-link.tpl' 
            blockBg="light"
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