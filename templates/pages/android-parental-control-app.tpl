{include file='../includes/main/main-header.tpl'
robots="no"
title="Android Parental Control App for Ultimate Monitoring | Pumpic"
    description="Android parental control app by Pumpic is a one-stop solution for comprehensive, reliable, and accurate monitoring of your kid’s smartphone or tablet."
}    
    
<body>
    <!-- BLOCK GTM -->
    {include file='../includes/main/main-after-body.tpl'}
    <!-- END BLOCK GTM -->
    
    <!-- FLY BLOCKS -->
    {include file='../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->
    
    <div class="wrapper android_parental_monitoring">
	
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
        
    <!-- CONTENT -->
         {include file='../includes/content/info/info-promo.tpl'
            imgUrl = "header_banners/header-android-parental-monitoring.png"
            imgAlt = "android parental monitoring"
            imgAlign = "right"
            imgVerticalAlign = "bottom"
            textAlign = "right"
            title = "Android Parental Control App<br/>for All-round Monitoring"
            description = "Control is an inherent part of parenting.<br/>Track your kid’s phone or tablet to stay aware."
            promoBuyBlock = "no"
            listText = "control cell phone usage|follow online activity|track routes and location"
            planPackageBuy = "yes"
            block_video = "yes"
            block_video_src = "https://www.youtube.com/embed/Atg0CbaytAY"
            infoBlockMobile = "yes"
            Apple = "no"
            TwoPlans = "yes"
          }
          {* ?rel=0&wmode=transparent&fs=0&autoplay=1&modestbranding=1&autohide=1 *}
         {*listText = "control cell phone usage|follow online activity|track routes and location"*}    
        
        {include file='../includes/content/plans.tpl'}

        {* Template: FLY BUTTONS
        *}
        {include file='../includes/content/fly/box-buttons.tpl'
            buttonBuyNow = 'yes'
            buttonViewDemo = 'no'
            buttonFreeTrial = 'yes'
        }

<div class="dark">
        <div class="container">
                <h2 class="text-center">Pumpic Helps You:</h2>
                <div class="row">
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="{$img}/icons/icon-mobile-secure.png" alt="cell phone monitoring">
                                        <h3>Control cell phone usage</h3>
                                        <ul class="feature_list">
                                                <li>Follow incoming and outgoing calls</li>
                                                <li>View text messages sent and received</li>
                                                <li>Monitor applications and media files</li>
                                        </ul>
                                </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="{$img}/icons/icon-online-activity.png" alt="monitor online activity">
                                        <h3>Monitor Internet activities</h3>
                                        <ul class="feature_list">
                                                <li>View browsing history and bookmarks</li>
                                                <li>Follow social media and online chats</li>
                                                <li>Block inappropriate websites</li>
                                        </ul>
                                </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="{$img}/icons/icon-track-kids.png" alt="remote mobile monitoring">
                                        <h3>Track routes and locations</h3>
                                        <ul class="feature_list">
                                                <li>Keep track of real time GPS location</li>
                                                <li>Follow entire route history on the map</li>
                                                <li>Find the device if lost or stolen</li>
                                        </ul>
                                </div>
                        </div>
                </div>
        </div>
</div>   
                                        
{include file='../includes/content/features-table.tpl'
        title = "Over 24 Monitoring Features to Protect Your Kids"
        description = "Mobile technologies have introduced new opportunities to our children. It is rather hard to imagine the entire range of functions a single smartphone can fulfil. That’s why when it comes to features 
                            that an Android parental control app should include, it is very important to consider as many as possible. Listed below 
                            reflects Pumpic monitoring abilities and also which particular mobile phone functions you will be able to cover by using the app. 
                            Our parental control software for Android will help you follow each and every aspect of your kids’ lives and all of their activities remotely."
        blockBg="light"
}                                        
                                        
{*<div class="dark">
        <div class="container">
                <h2 class="text-center">Set Ultimate Parental Control on Android</h2>
                <div class="row">
                    
                    <div id="table-container" class="table-col-3 table-md-col-3 table-sm-col-3">
                        <article class="text-center">Mobile technologies introduced new opportunities to our children. It is rather hard at 
                            once to imagine the entire range of functions a single smartphone can fulfil. That’s why when it comes to features 
                            that an Android parental control app should include, it is very important to consider all of them. Listed below 
                            reflects Pumpic monitoring abilities, and which particular mobile phone options you will cover by using it. 
                            The app will help you follow each and every aspect of your kids’ lives as well as all spheres of activity remotely.</article>
                        <section>
                            <div class="tab col-item-3 col-md-item-3 col-sm-item-3">
                                <ul>
                                    <li><i class="i-features-sms"></i> <span onclick="window.location='http://{$domain}/mobile-sms-spy.html'">View SMS</span></li>
                                    <li><i class="i-features-cell-history"></i> View Call History</li>
                                    <li><i class="i-features-calendar"></i> View Calendar</li>
                                    <li><i class="i-features-contacts"></i> View Contacts</li>
                                    <li><i class="i-features-email"></i> View Emails</li>
                                </ul>
                            </div>

                            <div class="tab col-item-3 col-md-item-3 col-sm-item-3">
                                <ul>
                                    <li><i class="i-features-videocam"></i> View Videos</li>
                                    <li><i class="i-features-photos"></i> View Photos</li>
                                    <li><i class="i-features-browser"></i> Control Browser</li>
                                    <li><i class="i-features-app"></i> Control Applications</li>
                                    <li><i class="i-features-social"></i> Control Social Networks</li>
                                </ul>
                            </div>

                            <div class="tab col-item-3 col-md-item-3 col-sm-item-3">
                                <ul>
                                    <li><i class="i-features-location"></i> Location Tracking</li>
                                    <li><i class="i-features-keyloger"></i> Keylogger</li>
                                    <li><i class="i-features-sms-commands"></i> SMS Commands</li>
                                    <li class="hidden-mobile"></li>
                                    <li class="hidden-mobile"></li>
                                </ul>
                            </div>
                        </section>
                        
                    </div>    
                    
                </div>
        </div>
</div> *}    

<div class="dark">
    <div class="container">
            <h2 class="text-center testimonial-title">Trusted by Over 10,000 Customers Worldwide:</h2>
            <div class="row">
                
                <div class="bxSliders only-pc">
                        <!-- SLIDE #1 -->
                        <div class="slide">
                
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/donna-c.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Donna C. - mother of 10-year-old son</h4>
                                    <p>“My little son can’t imagine his life without a mobile device. He is just 10 but he started asking for a smartphone as a Birthday gift a couple years ago. More than half of his classmates already have phones. For the Birthday this year he got one too. It’s a simple phone, but it still has Internet access. Thanks to Pumpic I can control my son’s location, check incoming calls and texts, see the sites that he may view and block those that I suppose to be inappropriate for a child. Pumpic is really helpful.”</p>
                            </div>
                    </div>
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/horace-s.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Horace S. - father of a 13-year-old boy</h4>
                                    <p>“Having started to monitor my son’s phone with Pumpic, I found out that he was visiting a few adult sites. The thing is Pumpic gives an opportunity to view browsing history even if the searching was done in an incognito mode. The problem is not new, but good that I knew about it and could plan how we were going to deal with it. I discussed the problem with my son and set strict limits on his using the Internet.”</p>
                            </div>
                    </div>
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/travis-f.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Travis F. – father of three</h4>
                                    <p>“Back in my school years, I could not imagine that someday children will become so much obsessed with the Internet and communicating with their friends through the texts and social sites instead of meeting for real and spending free time together. Monitoring Internet activity of my own children appeared to be a need. Pumpic is making it easy and lets me control all I need – starting with the tracking of a mobile phone through GPS and up to seeing any keys that were typed in.”</p>
                            </div>
                    </div>
                            
                        </div>         
                </div> 
                <div class="bxSliderMobile"></div>            
                            
            </div>
    </div>
</div>

        {include file='../includes/content/banners/index.tpl'}


        {*include file='../includes/content/banner-promo.tpl'*}
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