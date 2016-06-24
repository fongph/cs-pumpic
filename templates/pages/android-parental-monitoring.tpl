{include file='../includes/main/main-header.tpl'
robots="no"
title="Ultimate Android Parental Control App | Pumpic Monitoring Software"
    description="Install Pumpic and forget all your worries. Our monitoring app is #1 choice to keep your child safe - over 20 features for reliable Android parental control."
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
            title = "Android Parental Monitoring Software<br/>Oversee Your Kid’s Mobile Device"
			titleSize = "25px"
            description = "Track your kid’s Android mobile phone and tablet remotely.<br/>Set up reliable parental monitoring app. Keep your eyes open!"
            promoBuyBlock = "no"
            listText = "control cell phone usage|follow online activity|track routes and location"
            planPackageBuy = "yes"
            block_video = "yes"
            block_video_src = "http://www.youtube.com/embed/Atg0CbaytAY"
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



        {Content
        styleTitle="h2"
        title="Did You Know?"
        blockBg='light'}

        <p>Using Android monitoring software to protect kids is an urgent necessity of the contemporary society. On one hand, technological progress has opened new doors for the evolution of humanity; on the other one, it has resulted in many dangers in return. And children are exposed to these risks much more than others. That’s why if handing them smartphones or tablets, you should know how to protect their mobile activities.</p> 
	    <p>Parental control apps allow you to monitor kids' time spending, restrict misgiving communication, and limit device usage. Pumpic proved to be among the most reliable applications for child safety. With it, you will always know what your kids are texting, who calls them, which websites they visit, as well as any content they see, send, or receive. You will always know where your children go and be notified as soon as they enter any restricted areas or leave safety zones (home, school, etc.) without your permission. Android parental monitoring by Pumpic will let you have no worries about your loved ones when you are not nearby.</p>
		<p>The statistics below briefly shows how many children use smartphones and tablets as well as how many of them come across dangers connected with such device usage.</p>
		
        <!-- BLOCK STATISTICK -->
        <div class="block-statistick row">

            <div class="item col-s-sm-12 col-xs-sm-12 col-sm-4 col-md-4 col-lg-4">
                <section>
                    <div><strong class="fz50 color-orange">72%</strong></div>
                    <span class="text-uppercase">
                        children worldwide use smartphones, 33% are under <br/>8 years old
                    </span>
                </section>
            </div>
            <div class="item col-s-sm-12 col-xs-sm-12 col-sm-4 col-md-4 col-lg-4">
                <section>
                    <div><strong class="fz50 color-orange">23%</strong></div>
                    <span class="text-uppercase">
                        teenagers report that they feel addicted to games on mobile devices
                    </span>
                </section>
            </div>
            <div class="item col-s-sm-12 col-xs-sm-12 col-sm-4 col-md-4 col-lg-4">
                <section>
                    <div><strong class="fz50 color-orange">69%</strong></div>
                    <span class="text-uppercase">
                        boys and girls under 18 have experienced cyberbullying on mobile phones
                    </span>
                </section>
            </div>

        </div>
        <!-- END -->

        <p>As a careful parent, you should always keep the situation under control, be aware of possible threats coming from the Internet, know how to resist them, and <a class="a-default" target="_blank" href="/how-to-setup-parental-controls-on-android.html">how to set an Android parental monitoring app</a> reliable enough to avert potential risks. On our website, you will find all required information concerning child safety and danger prevention. Pumpic is designed to keep your children secured whatever they do on their mobile devices. Once it is installed on your kid’s smartphone or tablet, you will be able to monitor each activity and text, which will let you find out about risks and dangers they can be exposed to before they get in trouble. Pumpic’s Android monitoring software keeps your eyes open 24/7 and brings everything what’s going on with your children under your control.</p>

        {*<p>Using monitoring software to protect kids is an urgent issue of contemporary society.
        On one hand, technological progress opened new doors for the evolution of humanity; on the other one, it has
        resulted in a lot of dangers in return. And children are exposed to these dangers much more than others.</p>
        <ul>
		    <li>72% of children worldwide use smartphones, 33% of them are under 8 years old</li>
            <li>23% of teenagers report that they feel addicted to games on mobile devices</li>
            <li>69% of boys and girls under 18 have experienced cyberbullying via mobile phones</li>
		</ul>
        <p>As a parent you should always keep the situation under control, be aware of possible threats coming from the Internet,
        how to resist it, and if a reliable Android parental monitoring app can be the way out:</p>

        <ul>
            <li>control cell phone usage</li>
            <li>follow online activity</li>
            <li>track routes and location</li>
        </ul>*}

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

{Content 
    styleTitle="h2"
    title="Every Parent Should Know That: How Kids Use Their Smartphones"
    blockBg='dark'}  
    		<p>As we’ve already mentioned, smartphones play a huge role in how modern kids and teens communicate with each other and interact with the world around them nowadays. Remarkably, according to Pew Research Center study, 57% of US teens have met new friends online, mostly via social media. Upon that, almost 80% of these relationships remain “virtual”, with only 20% of teens actually ever meeting these connections in real life.</p>
			<p>Hence, knowing what exactly they use their devices for is crucial to ensure the most effective protection from apparent and hidden perils. Here are top-3 daily smartphone uses by kids that parents should pay closer attention to:</p>			
				<ul class="list-images">
				<li><img src="/images/landings/mark.png" alt="Check Mark" style="left: -30px;" /><strong>Texting.</strong> 55% of teens communicate via text messages every single day. It is clearly the dominant option with nothing else even coming somewhat close.</li>
				<li><img src="/images/landings/mark.png" alt="Check Mark" style="left: -30px;" /><strong>Instant messaging.</strong> 27% of teens connect with friends via instant online chats and messengers like Snapchat, Facebook Messenger, Kik, WhatsApp, etc.</li>
				<li><img src="/images/landings/mark.png" alt="Check Mark" style="left: -30px;" /><strong>Social media.</strong> 23% of teens keep in touch via social networks. They say social media helps them feel more connected to their friends’ lives. Also, this is a place where teens receive support from others during tough times.</li>			
				</ul>
				<p>Considering the data above, the simple logic will make it pretty clear that most cyber dangers kids face come from the most popular device usage practices. That’s why concerned parents should consider monitoring their children smartphones and tablets and pay the paramount attention to text communication. Thankfully, Pumpic monitoring software provides exhaustive opportunity to keep an eye on with whom your kid interacts and what is he or she up to. Thus, preventing the child from any wrongdoing becomes a mere matter of skills.</p>
				<p>At the same time, monitoring software is just a supplementary tool to facilitate your parental duties. Hence, we urge you to have a frank talk to your little ones about dangers and pitfalls they may encounter when being online. Read more about the most widespread digital hazards that lay in wait for the kids in the next chapter.</p>
{EndContent}
		
{Content 
    styleTitle="h2"
    title="Inherent Dangers a Cell Phone Hides"
    blockBg='light'}
    <p>One can hardly imagine life without a mobile phone connected to the Internet these days. When it comes to children, we see that online reality means almost everything to them, being an essential part of communication and spare time spending. Mobile gadgets also allow kids to educate themselves and find out more about the world around. However, along with great opportunities there come issues.</p>
    <ul class="list-images">
        <li><img src="{$img}/list/lc_1.png" alt="Online Predators" class="lc-1" /><strong>Online predators.</strong> Sexual predators actually exist and threaten your kids’ security. Boys and girls, who are more technical than parents, and more emotionally vulnerable due to personal issues, are their primary target. Most online predators are masters of manipulation. They know how to deceive your children pretending care and friendship. They use anonymity the Internet provides and can be whomever they want to get into your kids’ confidence. A threat starts as a harmless online talk and usually turns out to be sexual seduction in real life. An Android child monitoring app will let you know, whom your kids chat with online, and thus, you will be able to protect them against online predators attacks.</li>
        <li><img src="{$img}/list/lc_2.png" alt="Cyberbullying" class="lc-2" /><strong>Cyberbullies.</strong> Talk to your kids and find out if someone offends them. They might receive text messages with threats or bad words. Cyberbullying images can be posted anonymously on social networks and spread quickly through the Internet. More often than not, it is hard to find the source of cyberbullying, since online an offender can be not even a real person. Parental monitoring will allow you to track your kids’ online activities, follow social media, as well as text messages they receive. Such software will let you find out if any threat exists, and take action before it’s too late.</li>
        <li><img src="{$img}/list/lc_3.png" alt="Sexting. Explicit Content" class="lc-3" /><strong>Sexting.</strong> Today children develop faster than their parents did before. When it comes to sexual life, their development is no less fast moving. Some of them consider exchanging SMS, photos, and <a class="a-default" href="/parental-control-on-youtube-android.html" target="_blank">videos with sexual content</a> a part of growing-up. As the statistics show, about 22% of underage children are engaged in sexting. They think it will help them build relations with the opposite sex or stand out from their classmates and look more adult-like. <a class="a-default" href="/parental-control-apps-android-2.3-vs-4.html" target="_blank">Parental controls on Android</a> phones will help you monitor your children’s communication, view photos, and videos they send and receive, and thus, you will be able to intervene.</li>
    </ul>
    <p>While your children are underage, you as a careful parent are responsible for them. You should secure their time spending by all means, and sometimes take steps they might consider unnecessary interference. However, as long as
        <a class="a-default" target="_blank" href="/online-safety-rules-for-teens.html">safety for kids</a> is your top priority, you should do what is necessary. Pumpic parental control software for Android installed on your children’s smartphones and tablets will help you monitor applications they use, screen time, texts and calls they receive, photos and video files, as well as any other activities they perform. You can even see their browser search in the incognito mode. Pumpic provides you with countless opportunities to protect your kids.</p>

{EndContent}

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
        description = "Mobile technologies have introduced new opportunities to our children. It is rather hard to imagine the entire range of functions a single smartphone can fulfill. That’s why when it comes to features that an Android monitoring software should include, it is crucial to consider as many as possible. The list below reflects Pumpic monitoring abilities and also which particular mobile phone functions you will be able to cover by using the app. They will help you follow each and every aspect of your kids’ lives and all of their activities remotely."
        blockBg="light"
}                                        
                                        
{*<div class="dark">
        <div class="container">
                <h2 class="text-center">Set Ultimate Parental Control on Android</h2>
                <div class="row">
                    
                    <div id="table-container" class="table-col-3 table-md-col-3 table-sm-col-3">
                        <article class="text-center">Mobile technologies introduced new opportunities to our children. It is rather hard at 
                            once to imagine the entire range of functions a single smartphone can fulfil. That’s why when it comes to features 
                            that an Android parental monitoring app should include, it is very important to consider all of them. Listed below 
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
                                    <p>“Pumpic helped me find out that my daughter, 16 years old, was involved in sexting by her boyfriend. Frankly, the truth was more than ugly. When I saw all those messages full of mean and vulgarity, I was raving with my fury. We had a serious talk with my daughter and parents of this “boyfriend”. We both agreed that it must never ever happen again. Thanks Pumpic for keeping me informed.”</p>
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
                                    <p>“My husband and I presented our son a brand new Android tablet for his birthday. It was an expensive present, but Mike did a great job at school and really deserved to have it. It happened that he lost it a few days after. My husband had predicted such situation, so we installed Pumpic parental monitoring for Android right after the purchase. We tracked the cell phone and found it quickly. Very useful app!”</p>
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