{include file='../includes/main/main-header.tpl'

    title="YouTube Parental Controls for Android | Pumpic App"
    description="Set Pumpic parental controls on YouTube. Monitor search queries, links, video titles, and comments. Protect your kids from inappropriate YouTube video content on Android."
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
    
<body class="youtube-parental">
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
            imgUrl = "header_banners/limit-youtube-head.png"
            imgAlt = "Monitor YouTube" 
            imgAlign = "left bottom"
            imgVerticalAlign = "center"
            textAlign = "left"
            title = "YouTube Parental Controls for Android <br />Mobile Monitoring Application"
            description = "View search queries, links, video titles, and comments on YouTube.<br />Protect your children from explicit, drug, and violent video content."
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
            <h2 class="h2 text-right-important">How to Put Parental Controls on YouTube</h2>
            <div class="pt30 pb20">
                <p>Install Pumpic on your kids’ smartphones or tablets and start monitoring their activities on YouTube right away. Check browsing history to find out the links to videos your kids have searched for and watched. View video titles to know what these videos are about. Use a keylogger to read comments they posted and search queries typed in the YouTube app.</p>
				<p>Pumpic allows you to control all applications, both built-in and installed. Thus, you can easily block the YouTube app and a browser to prevent your children from misgiving activities. Set time limits on the YouTube app running, in case your kids use it at inappropriate time.</p>
				<p>Why Android parental control for YouTube is so essential you may wonder? Just imagine how many videos there are on YouTube! There are plenty of them uploaded by strangers from all over the world. Do you really think all of that content is appropriate for you children? Careful parents should monitor videos their children watch and keep Internet activities under control. And Pumpic will help you with that.</p>
            </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-3 text-center">
            <img class="limit-youtube-pic" alt="Track YouTube' Location" src="{$img}/landings/limit-youtube-pic.png" width="207px" height="208px" />
        </div>
    </div>    
{EndContent}

<div class="light">
        <div class="container">
                <h2 class="text-center">Pumpic Helps You:</h2>
                <div class="row">
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="{$img}/icons/icon-mobile-secure.png" alt="cell phone monitoring">
                                        <h3>Control mobile phone use</h3>
                                        <ul class="feature_list">
                                                <li>View call logs, block calls by number</li>
                                                <li>Check texts, block SMS by keywords</li>
                                                <li>Track real time locations and routes</li>
                                        </ul>
                                </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="{$img}/icons/youtube.png" alt="remote mobile monitoring">
                                        <h3>Monitor YouTube</h3>
                                        <ul class="feature_list">
                                                <li>View links and video titles</li>
                                                <li>Check search queries</li>
                                                <li>Follow comments</li>
                                        </ul>
                                </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
								        <img src="{$img}/icons/icon-online-activity.png" alt="monitor online activity">
                                        <h3>Follow Internet activities</h3>
                                        <ul class="feature_list">
                                                <li>Check browsing history and bookmarks</li>
                                                <li>Track Facebook, Instagram, Snapchat,</li>
                                                <li>Kik, WhatsApp, Skype, Viber, and more</li>
                                        </ul>
                                </div>
                        </div>
                </div>
        </div>
</div>

        {Content 
    styleTitle="h2"    
    title="Parental Control for YouTube Is Essential"
    blockBg='dark'}
        
        <!-- BLOCK STATISTICK -->
        <div class="block-statistick row">
            
            <div class="item col-s-sm-12 col-xs-sm-12 col-sm-4 col-md-4 col-lg-4">
                <section>
                    <div><strong class="fz50 color-orange">48 hours</strong></div>
                    <span class="text-uppercase">
                        durations of videos uploaded to YouTube each and every minute. Are you sure that all of these videos are appropriate for your children?
                    </span>
                </section>
            </div>
            <div class="item col-s-sm-12 col-xs-sm-12 col-sm-4 col-md-4 col-lg-4">
                <section>
                    <div><strong class="fz50 color-orange">40 minutes</strong></div>
                    <span class="text-uppercase">
                        average time a child spends on YouTube during one session. Meanwhile, most kids tend to visit YouTube at least twice a day. Not including other social media. Do you really want your children to spend so much time on the Internet?
                    </span>
                </section>
            </div>
            <div class="item col-s-sm-12 col-xs-sm-12 col-sm-4 col-md-4 col-lg-4">
                <section>
                    <div><strong class="fz50 color-orange">57%</strong></div>
                    <span class="text-uppercase">
                        parents report their children prefer watching videos on YouTube to cable network on TV. Do you know which particular programs your kids watch online?
                    </span>
                </section>
            </div>
            
        </div>
        <!-- END -->

        <p class="text-center f-light">Pumpic provides you with an opportunity to remotely and instantly find out what your children do on the Internet, how much time they spend there, and restrict their activities. Put parental control on the YouTube app on kids’ Android devices to keep an eye on it all. YouTube parental controls for Android provided by the Pumpic app will let you protect your children from not only wasting time online, but also many dangers they can face while surfing the web.</p>
		
		{EndContent}
        
        {include file='../includes/content/features-table.tpl'
        title = "More than 24 Features for Child Protection"
        description = "Pumpic offers <a class='a-default' href='/android-parental-monitoring.html'>reliable monitoring solutions for Android</a> to keep your children safe and secure both online and during daily activities. Thus, you provide your loved ones with comprehensive protection with an ability to monitor every step they take on their smartphones and tablets. Take care of your kids remotely wherever you go with Pumpic parental control."
        blockBg="light"
        }
        
        <div class="dark">
    <div class="container">
            <h2 class="text-center testimonial-title">Trusted by Over 10,000 Customers Worldwide:</h2>
            <div class="row">
                
                <div class="bxSliders only-pc">
                        <!-- SLIDE #1 -->
                        <div class="slide">
                
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/rachel-s-15.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Rachel S. – mother of 15-year-old son</h4>
                                    <p>“When I’d found out how many videos with explicit and violent episodes there were, I decided to apply YouTube parental controls for Android tablet my son uses to surf the Internet. I didn’t want him to grow up and see violence and nudity. At least before he’s 18. Pumpic helps me with it. I monitor his online activities and we have a serious talk if I find out something inappropriate.”</p>
                            </div>
                    </div>
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/tom-b-16.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Tom B. – father of 16-year-old daughter</h4>
                                    <p>“YouTube stores a lot of videos. I personally use it and sometimes I’m shocked of what I see there. I do my best to raise my girl for the good. That’s why I try so hard to protect her from everything she is not supposed to see or accidentally come across yet. With Pumpic parental control YouTube app for Android, I can restrict her access to all those disgusting things and select content that won’t disturb her mind.”</p>
                            </div>
                    </div>
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/silvia-z-11.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Silvia Z. – mother of 11 year-old-son</h4>
                                    <p>“Pumpic is a great app for careful parents. There are so many features in the app that I can control all of my son’s activities right from work. I have no worries when he’s home alone any longer. I’d meant it as parental control on YouTube app for Android first, but then I found out that there are much more options and all of them are very useful for child protection. I use every option and can see the entire picture of what my son is doing on his smartphone.”</p>
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