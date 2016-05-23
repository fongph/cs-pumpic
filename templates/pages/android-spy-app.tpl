{include file='../includes/main/main-header.tpl'
    robots="no" 
    title="Android Spy App. Track Calls, SMS, Locations | Pumpic"
    description="Android child monitoring app by Pumpic lets concerned parents oversee their kids’ smartphone or tablet to protect them from digital era dangers."
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
            imgUrl = "header_banners/header-spyapps-for-android.png"
            imgAlt = "Spy Apps for Android Phones" 
            imgAlign = "right bottom"
            imgVerticalAlign = "center"
            textAlign = "right"
            title = "Android Spy App<br/>for Your Peace of Mind"
			titleSize = "35px"
            description = "Remotely track calls, messages, online activity, locations,<br/> multimedia, and more on target Android smartphone or tablet."
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
                <h2 class="text-center">Mobile Monitoring App for Android Devices</h2>
                <div class="row">
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="{$img}/icons/icon-mobile-secure.png" alt="cell phone monitoring">
                                        <h3>Control cell phone use</h3>
                                        <ul class="feature_list">
                                                <li>Check incoming and outgoing calls</li>
                                                <li>Monitor SMS and MMS</li>
                                                <li>Track contacts and scheduled plans</li>
                                        </ul>
                                </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="{$img}/icons/icon-limit-app.gif" alt="remote mobile monitoring">
                                        <h3>Monitor Internet activities</h3>
                                        <ul class="feature_list">
                                                <li>Limit apps and block websites</li>
                                                <li>Check browsing history</li>
                                                <li>Monitor social networks and chats</li>
                                        </ul>
                                </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
								        <img src="{$img}/icons/icon-online-activity.png" alt="monitor online activity">
                                        <h3>Track location</h3>
                                        <ul class="feature_list">
                                                <li>Check instant location</li>
                                                <li>Set geo-fences, get notifications</li>
                                                <li>Monitor route history</li>
                                        </ul>
                                </div>
                        </div>
                </div>
        </div>
</div>
        
        {include file='../includes/content/features-table.tpl'
        title = "Notable Features for the Best Protection"
        description = "Pumpic provides impressive monitoring opportunities with more than 24 outstanding features designed to protect your children remotely. The app allows you to view, track, and block mobile activities. Prevent your children from inappropriate content viewing and sharing. Monitor all the files stored on the target device. If you are a careful parent and your child's safety is the top priority for you, get acquainted with the Pumpic protection features listed below."
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
                            <img src="{$img}/testimonials/david-g-14.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>David G. – father of 14-year-old son</h4>
                                    <p>“I want my son to be safe. That is the reason why I use Pumpic. My boy spends too much time online and I want to be sure that he has no access to inappropriate things posted. With the help of tracking app, I can monitor browsing history and block 18+ websites. I think this app is for careful parents. Blocking some activities and setting restrictions is necessary in today's reality.”</p>
                            </div>
                    </div>
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/maria-p-2.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Maria P. – mother of twins</h4>
                                    <p>“My girls are 16 now and I think this age is the most dangerous for teens. They are constantly hanging on the phone and chatting with peers. I've realized that I need to restrict it somehow. Thankfully, I've found information about parental control software that allows monitoring kids' activities. Pumpic works great. Now I can care of my girls remotely by monitoring call history, SMS and MMS, Snapchat and Skype. I can view emails and even block their devices. This app is what I needed. Thanks!”</p>
                            </div>
                    </div>
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/michelle-n-12.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Michelle N. – mother of 12-year-old daughter</h4>
                                    <p>“I've learned about Pumpic not so long time ago. I know that there is an Android app to spy on spouses used by jealous partners. But actually, it is illegal. On the contrary, Pumpic is a legal application for parents, who want to protect their kids from dangers of using a cell phone or tablet. Now I know that my girl is not exposed to cyberbullying, online predators, sexting, etc. The app even allows finding out where my girl currently is and where she was at any particular period. It's important to know that my family is protected.”</p>
                            </div>
                    </div>
                            
                        </div>
                </div>
                <div class="bxSliderMobile"></div>            
                            
            </div>
    </div>
</div>

        {include file='../includes/content/banners/index.tpl'}
        
		{include file='../includes/main/main-quick-link.tpl' 
            blockBg="light"
        }        
        
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
        {include file='../includes/main/main-footer.tpl'}
                
    </div>
       
    {include file='../includes/main/main-analytics-footer.tpl'}
</body>
</html>