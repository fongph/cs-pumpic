{include file='../includes/main/main-header.tpl'
robots="yes"
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
            block_video_src = "http://www.youtube.com/embed/Atg0CbaytAY"
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
                            <img src="{$img}/testimonials/t_new_1.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Susan L. (Cheyenne, WY)</h4>
                                    <p>“Pumpic parental control app for Android helped me find out that my daughter, 16 years old, was involved in sexting by her boyfriend. Frankly, the truth was more than ugly. When I saw all those messages full of mean and vulgarity, I was raving with my fury. We had a serious talk with my daughter and parents of this “boyfriend”. We both agreed that it must never ever happen again. Thanks Pumpic for keeping me informed.”</p>
                            </div>
                    </div>
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/t_new_2.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Melinda J. (St. Louis, MO)</h4>
                                    <p>“I decided to install Android smartphone monitoring on my son’s cell since he had started acting weird. He became very shy and scary. I tried to talk to him, but he said everything was fine. Pumpic helped me find out that my son was bullied by his schoolmates. They sent him messages with threats and posted offensive pictures online. I went to school, talked to teachers and parents of the offenders. I’m happy that we found the way out. Finally, my son and I can sleep without worries.”</p>
                            </div>
                    </div>
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/t_new_3.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Sandy and Patrick K. (Sacramento, CA)</h4>
                                    <p>“My husband and I presented our son a brand new Android tablet for his birthday. It was an expensive present but Mike did a great job at school and really deserved to have it. It happened that he lost it a few days after. My husband had predicted such situation, so we installed Pumpic right after the purchase. We tracked the cell phone and found it quickly. Very useful app!”</p>
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
        {include file='../includes/main/main-footer.tpl'}
                
    </div>
      
    {include file='../includes/main/main-analytics-footer.tpl'}
</body>
</html>