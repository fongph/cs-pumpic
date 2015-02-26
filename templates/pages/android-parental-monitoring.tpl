{include file='../includes/main/main-header.tpl' 
    title="Best Android Parental Control App for children monitoring"
    description="Installing parental control on android phones your kids use is a good protection against dangers the Internet and modern world bear. Learn more about android parental monitoring apps."
}    
    
<body>
    <!-- FLY BUTTON -->
    {include file='../includes/main/main-button-help.tpl'}
    {include file='../includes/main/main-button-goup.tpl'}
    <!-- END FLY BUTTON -->
    
    <div class="wrapper android_parental_monitoring">
	
	<!-- TOP MENU -->
	{include file='../includes/main/main-top-menu.tpl'
            cache_id = "includes_main_main-top-menu"
            nocache
        }
        
    <!-- CONTENT -->
         {include file='../includes/content/info/info-promo.tpl'
            imgUrl = "header_banners/bg_android-parental-monitoring.png"
            imgAlt = "android parental monitoring"
            imgAlign = "right"
            imgVerticalAlign = "bottom"
            textAlign = "right"
            title = "Android Parental Control Software"
            description = "Monitor your kids’ Android mobile phones remotely:"
            trial = "yes"
             }
         {*listText = "control cell phone usage|follow online activity|track routes and location"*}    
        
        {include file='../includes/content/plans.tpl'}

        {* Template: FLY BUTTONS
        *}
        {include file='../includes/content/fly/box-buttons.tpl'
            buttonBuyNow = 'yes'
            buttonViewDemo = 'no'
            buttonFreeTrial = 'yes'
        }



{Content 
    title="Did you know?"
    blockBg='dark'}
                        
        <p>Using monitoring software to protect kids is an urgent issue of contemporary society. On one hand, technological progress opened new doors for the evolution of humanity; on the other one, it has resulted in a lot of dangers in return. And children are exposed to these dangers much more than others.</p> 
        <ul>
		    <li>72% of children worldwide use smartphones, 33% of them are under 8 years old</li>
            <li>23% of teenagers report that they feel addicted to games on mobile devices</li>
            <li>69% of boys and girls under 18 have experienced cyberbullying via mobile phones</li>
		</ul>
        <p>As a parent you should always keep the situation under control, be aware of possible threats coming from the Internet, how to resist it, and if a reliable Android parental monitoring app can be the way out.</p>

        {* Template: BLOCK IMAGE
            blockAlign (text): позиция блока с изображением. (left|center|right) *default: center
            
            imgUrl (text): путь к изображению. *ОБЯЗАТЕЛЬНОЕ ПОЛЕ 
            imgAlt (text): подпись к изображению.
            // размер изображения
            imgWidth (text): ширина изображения *ОБЯЗАТЕЛЬНОЕ ПОЛЕ
            imgHeight (text): высота изображения *ОБЯЗАТЕЛЬНОЕ ПОЛЕ
            // Подпись к изображению
            captionText (text): подпись к изображению
        *}
        {*include file='../includes/content/block/image.tpl'
                blockAlign = 'center'

                imgUrl = 'parental_control/bg_famaly_mobile.png'
                imgAlt = 'Alt Test image 1'                
                imgWidth = '537'
                imgHeight = '312'

                captionText = 'Caption test image 1 Caption test image 1 Caption test image 1 Caption test image 1'
        *}
                        
{EndContent}

<div class="light">
        <div class="container">
                <h2 class="text-center">How Pumpic Secures Your Kid</h2>
                <div class="row">
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="{$img}/icons/icon-mobile-secure.png" alt="cell phone monitoring">
                                        <h3>Control cell phone usage</h3>
                                        <ul class="feature_list">
                                                <li>Follow in and outbound calls</li>
                                                <li>View text messages</li>
                                                <li>Monitor SIM-card change</li>
                                        </ul>
                                </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="{$img}/icons/icon-online-activity.png" alt="monitor online activity">
                                        <h3>Monitor online activity</h3>
                                        <ul class="feature_list">
                                                <li>View browsing history and bookmarks</li>
                                                <li>Follow social media activity</li>
                                                <li>Block websites and applications</li>
                                        </ul>
                                </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="{$img}/icons/icon-track-kids.png" alt="remote mobile monitoring">
                                        <h3>Track routes and location</h3>
                                        <ul class="feature_list">
                                                <li>Keep track of current GPS location</li>
                                                <li>Follow the entire route history</li>
                                                <li>Find the device if lost or stolen</li>
                                        </ul>
                                </div>
                        </div>
                </div>
        </div>
</div>   
                                        
{include file='../includes/content/features-table.tpl'
        title = "Set Ultimate Parental Control on Android"
        description = "Mobile technologies introduced new opportunities to our children. It is rather hard at 
                            once to imagine the entire range of functions a single smartphone can fulfil. That’s why when it comes to features 
                            that Android parental control app should include, it is very important to consider all of them. Listed below 
                            reflects Pumpic monitoring abilities, and which particular mobile phone options you will cover by using it. 
                            The app will help you follow each and every aspect of your kids’ life as well as all spheres of activity remotely."
        blockBg="dark"
}                                        
                                        
{*<div class="dark">
        <div class="container">
                <h2 class="text-center">Set Ultimate Parental Control on Android</h2>
                <div class="row">
                    
                    <div id="table-container" class="table-col-3 table-md-col-3 table-sm-col-3">
                        <article class="text-center">Mobile technologies introduced new opportunities to our children. It is rather hard at 
                            once to imagine the entire range of functions a single smartphone can fulfil. That’s why when it comes to features 
                            that Android parental control app should include, it is very important to consider all of them. Listed below 
                            reflects Pumpic monitoring abilities, and which particular mobile phone options you will cover by using it. 
                            The app will help you follow each and every aspect of your kids’ life as well as all spheres of activity remotely.</article>
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

{Content 
    title="Inherent Dangers a Cell Phone Hides"
    blockBg='light'}
    <p>One can hardly imagine his or her life without a mobile phone connected to the Internet these days. When it comes to children, we see that online reality means almost the world to them, being an essential part of communication and spare time spending. However, along with great opportunities there comes the issue.</p>
<ul>
<li><strong>Online predators.</strong> Sexual predators really exist and threaten your kids’ security. Boys and girl, who are more technical than parents, more emotionally vulnerable due to personal issues, are their main target. Most of online predators are masters of manipulation and know how to deceive your children pretending care and friendship. They use the anonymity of the Internet and can be whomever they want to get into your kids’ confidence. The threat starts as a harmless online talk and usually turns out to be sexual seduction in the real life. Using parental control apps for Android will let you know, whom your kids chat with online, and thus you will be able to protect them against attacks of online predators.</li>

<li><strong>Cyberbullies.</strong> Talk to your kids and find out if someone offends them. They might receive text messages with threats or bad words. Cyberbullying images can be posted anonymously in social networks and spread quickly through the Internet. More often than not, it is hard to find the source of cyberbullying, since online an offender can be not even a real person. Parental control apps for Android will allow you to track your kids’ online activity, follow social media and networks as well as text messages they receive. Such software will let you find out if any threat exists and take action before it’s too late.</li>   

<li><strong>Sexting.</strong> Today children develop faster than their parents did before. When it comes to sexual life, their development is no less fast moving. Some of them consider exchanging SMS, photos and videos with sexual content a part of growing-up. As the statistics shows, about 22% of underage children are engaged in sexting. They think it will help them build relations with the opposite sex or stand out from their classmates and look more adult. Parental controls on Android phones will help you monitor your children’s communication, view photos and videos they send and receive, and thus you will be able to intervene.</li> 
</ul>
<p>While your children are underage, you as a parent are responsible for them. You should secure their time spending by all means, and sometimes take steps they might consider needless interference. However, as long as safety is your top priority, you should do what is necessary.</p>

{EndContent}    

<div class="dark">
    <div class="container">
            <h2 class="text-center testimonial-title">Testimonials:</h2>
            <div class="row">
                    <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/t_new_1.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Susan L. (Cheyenne, WY)</h4>
                                    <p>“Pumpic helped me find out that my daughter, 16 years old, was involved in sexting by her boyfriend. Frankly, the truth was more than ugly. When I saw all those messages full of mean and vulgarity, I was raving with my fury. We had a serious talk with my daughter and parents of this “boyfriend”. We both agreed that it must never ever happen again. Thanks Pumpic for keeping me informed.”</p>
                            </div>
                    </div>
                    <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/t_new_2.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Melinda J. (St. Louis, MO)</h4>
                                    <p>“I decided to install Android smartphone monitoring on my son’s cell since he started acting weird. He became very shy and scary. I tried to talk to him, but he said everything was fine. Pumpic helped me find out that my son was bullied by his schoolmates. They sent him messages with threats and posted offensive pictures online. I went to school, talked to teachers and parents of the offenders. I’m happy that we found the way out. Finally, my son and I can sleep without worries.”</p>
                            </div>
                    </div>
                    <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/t_new_3.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Sandy and Patrick K. (Sacramento, CA)</h4>
                                    <p>“My husband and I presented our son a brand new Android for his birthday. It was an expensive present but Mike did a great job at school and really deserved to have it. It happened that he lost it a few days after. My husband had predicted such situation, so we installed Pumpic right after the purchase. We tracked the cell phone and found it quickly. Very useful app!”</p>
                            </div>
                    </div>
            </div>
    </div>
</div>
        {include file='../includes/prevent-online-dangers/how-pumpic.tpl' 
             blockBg="light"
        }


        {include file='../includes/main/main-quick-link.tpl' 
            blockBg="dark"
        }

        {*include file='../includes/content/banner-promo.tpl'*}
        {*{include file='../includes/content/banners/banner-promo-trial.tpl'}*}
        
        {include file='../includes/content/banners/index.tpl'}
        <!-- END CONTENT -->    
           
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