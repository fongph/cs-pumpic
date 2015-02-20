{include file='../includes/main/main-header.tpl' 
    title="Ultimate iPhone Parental Control App for Apple iOS"
    description="Pumpic is a tried and true app to monitor iPhone usage and online activity. Set parental control to keep your children safe. Monitor social media, calls and location remotely."
}    
    
<body>
    <!-- FLY BUTTON -->
    {include file='../includes/main/main-button-help.tpl'}
    {include file='../includes/main/main-button-goup.tpl'}
    <!-- END FLY BUTTON -->
    
    <div class="wrapper iphone_parental_monitoring">
	
	<!-- TOP MENU -->
	{include file='../includes/main/main-top-menu.tpl'
            cache_id = "includes_main_main-top-menu"
            nocache
        }
        
    <!-- CONTENT -->
         {include file='../includes/content/info/info-promo.tpl'
            imgUrl = "header_banners/bg_iphone-parental-monitoring.png"
            imgAlt = "iphone parental monitoring"
            imgAlign = "right"
            imgVerticalAlign = "bottom"
            textAlign = "right"
            title = "Parental Control</br> Software for iPhone"
            description = "Keep track of your kids’ iOS devices remotely:"
            trial = "no"
            listText = "control mobile phone usage|monitor Internet activity|follow location and route history" }
        
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
                        
    <p>Since iPhones have hit the market in 2007, there are over 500 million devices sold. And sales performance grows rapidly until now, as well as figures of Apple smartphones stolen. That’s why upgrading your kid’s device with an app to monitor iPhone is a must-have security measure. With its help, you will easily locate, lock or wipe an iOS mobile phone remotely, if lost or stolen.</p>   
    <ul>
        <li>44% of lost iPhones were simply left in public places</li>
        <li>14% of stolen Apple devices were taken from house or car</li>
        <li>11% of all stolen iOS smartphones were pickpocketed</li>
    </ul>
    <p>Nowadays iPhones are probably the most popular cell phones worldwide. It is hard to find a person, who would not like to have an ultramodern device by Apple. When it comes to kids and teenagers, iOS smartphones appear to be the top of the mind. To protect your child as well as the expensive gift, use iPhone monitoring software.</p>

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
                                        <h3>Control mobile phone usage</h3>
                                        <ul class="feature_list">
                                                <li>Monitor incoming and outgoing calls</li>
                                                <li>Follow text messages sent and received</li>
                                                <li>View contact data and calendar</li>
                                        </ul>
                                </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="{$img}/icons/icon-online-activity.png" alt="monitor online activity">
                                        <h3>Monitor Internet activity</h3>
                                        <ul class="feature_list">
                                                <li>Keep track of browsing history</li>
                                                <li>Monitor social networks</li>
                                                <li>Block inappropriate websites</li>
                                        </ul>
                                </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="{$img}/icons/icon-track-kids.png" alt="remote mobile monitoring">
                                        <h3>Follow locations and route history</h3>
                                        <ul class="feature_list">
                                                <li>Track current GPS location</li>
                                                <li>Follow route history</li>
                                                <li>Find iPhone if lost or stolen </li>
                                        </ul>
                                </div>
                        </div>
                </div>
        </div>
</div>                                  
<div class="dark">
        <div class="container">
                <h2 class="text-center">Parental Control Features by Pumpic</h2>
                <div class="row">
                    
                    <div id="table-container" class="table-col-3 table-md-col-3 table-sm-col-3">
                        <article class="text-center">Your children live a full life and mobile devices help them explore it. Photo and video shooting, distant communication, mailing, game playing and social connections are some of options these gadgets provide. Pumpic covers all spheres of your kids’ activity and enables you to take care of them remotely. The features listed below show the variety of iPhone parental control abilities, which will let you secure your children’s happiness.</article>
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
</div>

{Content 
    title="Keep Your Eyes Open"
    blockBg='light'}
    <p>As a parent, you always take care of your kids and do your best to protect them from any possible danger. However, when they grow up and get stronger day by day, you become less and less engaged in their lives. Meanwhile, your children become more and more independent.</p>
    <p>Nevertheless, no matter how old and independent your kids are, they will always remain the same in your eyes. You will always try to be there, when help is needed; provide support and assistance whatever it will take.</p>
    <p>To be at hand each and every moment, you give your kid a cell phone. From now on, this small device will define your communication and interaction. In addition, it will open larger horizons for your little child; will show him/her the world as it is or should be, and help explore it through online reality.</p>
    <p>If you still hesitating to give or not to give your child a mobile phone, note that there really are a lot of benefits:</p>
    <ul>
        <li>you will always be within a call and know what happens to your kid;</li>
        <li>your child will be able to stay up to date and communicate with his friends and relatives;</li>
        <li>having online connection your kid will always stay tuned and current;</li>
        <li>smartphones can help kids perform and follow their daily tasks;</li>
        <li>modern mobile phones help children advance their skills, and thus determine the future profession.</li>
    </ul>
    <p>On the other hand, together with mobility and opportunities there come some issues:</p>
    <ul>
        <li>mobile swindlers and online predators might attack your kid through the web;</li>
        <li>your kid might waste a lot of time playing games, chatting online or using social networks;</li>
        <li>your child might strike inappropriate content in the Internet: watch videos containing porn or violence, read articles with bad words or messages with threats etc.;</li>
        <li>your kid might be involved in activity you would not approve: commit a crime, form connections with a sect or be forced to go the limit;</li>
        <li>you child might fall under bad influence and start using drugs or alcohol.</li>
    </ul>
    <p>However, the real world hides not less dangers that it does online. On any hand, there is a possibility to control your children’s lives on the web. Pumpic sets parental control on your kid’s cell phone and monitors every step he or she takes as well as each decision made via a smartphone or tablet.</p>
    <p>Nowadays your responsibility is not to take your kid’s mobile phone away to protect him, or forbid doing things you do not approve. All you need is to keep your eyes open and take action, when the situation requires. Thus, if your have decided to present your child an iPhone, see about iOS monitoring for kids.</p>
{EndContent}    

<div class="dark">
    <div class="container">
            <h2 class="text-center testimonial-title">iOS Monitoring Testimonials:</h2>
            <div class="row">
                    <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/t_new_19.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Joan L. (Omaha, NE)</h4>
                                    <p>“The app helps me control my children, while I’m at work. I have to work overtime to support my family, that’s why my kids are on their own more often than not. With Pumpic, I’m sure they are safe. I know that wherever my kids go and whatever they do, they take their cells with them. So, I can track them, find out who calls or writes them, how much time they spend online and for which purposes. I suppose it is one of the most useful apps I’ve ever used.”</p>
                            </div>
                    </div>
                    <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/t_new_20.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Katy O. (Reno, NV)</h4>
                                    <p>“I presented my daughter an iPhone for her last birthday and installed apple parental control right after the purchase. Frankly, it is amazing! I can see how good my daughter is. I can see that she never visits bad websites, never answers strange people, who contact her on Facebook. The app helps be sure that even when I’m far away, my daughter is safe. I can trust her more than ever. And this is the most precious thing I’ve ever had.”</p>
                            </div>
                    </div>
                    <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/t_new_21.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Morgana H. (San Angelo, TX)</h4>
                                    <p>“The app helped me find out that my son started smoking and sometimes drank beer with his friends. I am a single mom, and thus work days and nights to keep my son and little daughter. I can read his text messages, his social media communication, know who calls him and why. That’s a great help for me. Thanks!”</p>
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