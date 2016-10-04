{include file='../includes/main/main-header.tpl'
    robots="no"
    title="Track Texts, SMS on Android Phones and Tablets | Pumpic"
    description="Pumpic is an ultimate monitoring app to follow online activities and locations, view multimedia files, track texts, SMS on Android smartphones and tablets."
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
             .banner-header {
            padding-top: 20px;
             }
    "
}    
    
<body>
    <!-- BLOCK GTM -->
    {include file='../includes/main/main-after-body.tpl'}
    <!-- END BLOCK GTM -->

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
            imgUrl = "header_banners/header-how-to-block-texts-on-Android.png"
            imgAlt = "How to Block Texts on Android" 
            imgAlign = "right"
            imgVerticalAlign = "bottom"
            textAlign = "right"
            title = "Track Texts, SMS on Android Devices<br/>First-Rate Mobile Monitoring Solution"
			titleSize = "30px"
            description = "Provides exceptional tracking possibilities<br/>for all-round Android devices’ control."
            promoBuyBlock = "no"
            planPackageBuy = "yes"
            block_video = "yes"
            block_video_src = "http://www.youtube.com/embed/Atg0CbaytAY"
            infoBlockMobile = "yes"
            Apple = "no"
            TwoPlans = "yes"
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
        
        
<div class="light">
        <div class="container">
                <h2 class="text-center">Get Pumpic Parental Control on Smartphone</h2>
                <div class="row">
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="{$img}/icons/icon-mobile-secure.png" alt="cell phone monitoring">
                                        <h3>Control cell phone use</h3>
                                        <ul class="feature_list">
                                                <li>Manage app downloads and usage</li>
                                                <li>Browse contacts, notes, and calendar</li>
                                                <li>Screen all media files (photo, video)</li>
                                        </ul>
                                </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="{$img}/icons/icon-limit-app.gif" alt="remote mobile monitoring">
                                        <h3>Monitor Internet activities</h3>
                                        <ul class="feature_list">
                                                <li>Track bookmarks and browsing activity</li>
                                                <li>View instant messages and social media</li>
                                                <li>Restrict or block apps and websites</li>
                                        </ul>
                                </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
								        <img src="{$img}/icons/icon-online-activity.png" alt="monitor online activity">
                                        <h3>Track location</h3>
                                        <ul class="feature_list">
                                                <li>Get GPS location at any given moment</li>
                                                <li>Use geo-fences and receive alerts</li>
                                                <li>Check records of the entire route</li>
                                        </ul>
                                </div>
                        </div>
                </div>
        </div>
</div>
        
        {include file='../includes/content/features-table.tpl'
        title = "Features for Care, Monitoring, and Protection"
        description = "With more than 24 monitoring features the Pumpic parental control app allows you to stand up for your kid in this digital world and tailor your mobile tracking experience to your own needs. Get the app now to make sure that a gadget is not just a distraction in your child's hands, but a powerful guardian, which you can control."
        blockBg="dark"
        } 
        
        {* description = "Install the iPad parental control app on your kid’s tablet and start monitoring right away. Log in to your Control Panel and view all the information from the target device. It can be accessed from anywhere including desktop computers, laptops, smartphones, and tablets. In addition to data monitoring, the Control Panel allows you to set limits, block tablet activities, and lock the target device permanently."             
        *}
        
        <div class="light">
    <div class="container">
            <h2 class="text-center testimonial-title">Trusted by Over 10,000 Customers Worldwide:</h2>
            <div class="row">
                
                <div class="bxSliders only-pc">
                        <!-- SLIDE #1 -->
                        <div class="slide">
                
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/brendon-l.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Brendon L. – father of 13-year-old daughter</h4>
                                    <p>“Pumpic has literally saved my daughter – luckily for us, I have installed the app in time. Within a few days, a stranger started sending her emails, and I was horrified to see that she answered him without telling us about this. After a couple of messages, he sent her nude photos with a proposition to meet in person, and then we interfered in. Blocked that contact, sent screenshots to the police and the Internet provider and had a really serious talk with a daughter. Shudder to think how that situation could end up!”</p>
                            </div>
                    </div>
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/bella-o.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Bella O. – mother of 15-year-old son</h4>
                                    <p>“Pumpic did its best to help us figure out that many parties our son visited took place with alcohol drinks. Before a family meeting, we have gathered a lot of evidence: hidden photos, IM chats communications. More than that, with the help of GPS tracking we found out that several times he lied to us about his destinations. I still wonder how could he be so irresponsible even knowing that we’re monitoring his iPhone.”</p>
                            </div>
                    </div>
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/james-r.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>James R. – father of 15-year-old daughter</h4>
                                    <p>“The very first thing I did after Pumpic installation was setting up GPS tracking of my daughter’s smartphone. At that time she was on her first date with a boyfriend who told me that they are going to the cinema. However, this statement was far from the truth and after she had returned home, we had a very serious talk. Now I still use Pumpic to make sure that that lesson was not in vain for her. We had a geo-fencing alarm once, but it turned out to be fake, so I am more than satisfied.”</p>
                            </div>
                    </div>
                            
                        </div>
                </div>
                <div class="bxSliderMobile"></div>            
                            
            </div>
    </div>
</div>

        {include file='../includes/content/banners/index.tpl'}

        
        {*{include file='../includes/content/banners/banner-promo-trial.tpl'}*}
        
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
        {include file='../includes/main/main-quick-link.tpl'
        blockBg="light"
        }

        {include file='../includes/main/main-footer.tpl'}
                
    </div>
       
    {include file='../includes/main/main-analytics-footer.tpl'}
</body>
</html>