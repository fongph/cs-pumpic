{include file='../includes/main/main-header.tpl'
    title="Ultimate iPhone Parental Control App for Apple iOS"
    description="Pumpic is a tried and true app to monitor iPhone usage and online activity. Set parental control to monitor calls and location and keep your children safe."
    amp = "`$schema`pumpic.com/amp/iphone-parental-monitoring.html"
}

<body>
    <!-- BLOCK GTM -->
    {include file='../includes/main/main-after-body.tpl'}
    <!-- END BLOCK GTM -->

    <!-- FLY BLOCKS -->
    {include file='../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->

    <div class="wrapper iphone_parental_monitoring">

	<!-- TOP MENU -->
	{include file='../includes/main/main-top-menu.tpl'
            storeHref = '/iphone-tracking-software.html '
            demoHref = '/setDevice/126'
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
            imgUrl = "landings/bg_iphone-parental-monitoring.png"
            imgAlt = "iphone parental monitoring"
            imgAlign = "right"
            imgVerticalAlign = "bottom"
            collg = "7"
            textAlign = "right"
            title = "Parental Control Software<br/>for iPhone, iPad<br/>and iPod Touch"
            description = "Keep track of your kids’ iOS devices remotely."
            promoBuyBlock = "no"
            listText = "control mobile phone usage|monitor Internet activity|follow location and route history"
            planPackageIphoneParental = "yes"
            block_video = "yes"
            block_video_src = "https://www.youtube.com/embed/Atg0CbaytAY"
            Android = "no"
        }
         {* header_banners/bg_iphone-parental-monitoring.png *}
         {*listText = "control mobile phone usage|monitor Internet activity|follow location and route history"*}

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
    blockBg='dark'}

        <p class="text-center f-light">
            Since iPhones hit the market in 2007, there have been over 500 million devices sold, and sales have continued to grow rapidly, as well as the number of Apple smartphones stolen. That’s why upgrading your kid’s device with an app to monitor iPhone is an essential security measure. With its help, you will easily locate, lock or wipe an iOS mobile phone remotely, if lost or stolen.
        </p>

        <!-- BLOCK STATISTICK -->
        <div class="block-statistick row">

            <div class="item col-s-sm-12 col-xs-sm-12 col-sm-4 col-md-4 col-lg-4">
                <section>
                    <div><strong class="fz50 color-orange">44%</strong></div>
                    <span class="text-uppercase">
                        lost iPhones were simply left in public places
                    </span>
                </section>
            </div>
            <div class="item col-s-sm-12 col-xs-sm-12 col-sm-4 col-md-4 col-lg-4">
                <section>
                    <div><strong class="fz50 color-orange">14%</strong></div>
                    <span class="text-uppercase">
                        stolen Apple devices were taken from a house or car
                    </span>
                </section>
            </div>
            <div class="item col-s-sm-12 col-xs-sm-12 col-sm-4 col-md-4 col-lg-4">
                <section>
                    <div><strong class="fz50 color-orange">11%</strong></div>
                    <span class="text-uppercase">
                        all stolen iOS smartphones were pickpocketed
                    </span>
                </section>
            </div>

        </div>
        <!-- END -->

        <p class="text-center f-light">
            Nowadays, iPhones are probably the most popular cell phones worldwide. It is hard to find a person who would not like to have an ultramodern device by Apple. When it comes to kids and teenagers, iOS smartphones appear to be the top of the mind. To protect your child as well as an expensive gift, <a class="a-default" target="_blank" href="/how-to-setup-parental-controls-on-iphone.html">use iPhone monitoring software</a>:
        </p>

        <!-- BLOCK LIST -->
        <div class="row pt15">
            <div class="padding-null col-sm-3 col-md-3 col-lg-3">
                <ul class="block-list">
                    <li><i class="item-list-css-orange"></i> control mobile phone usage</li>
                </ul>
            </div>
            <div class="padding-null col-sm-3 col-md-3 col-lg-3">
                <ul class="block-list">
                    <li><i class="item-list-css-orange"></i> <a class="a-default" href="/monitor-imessage.html">view iMessage</a>, SMS, and MMS</li>
                </ul>
            </div>
			<div class="padding-null col-sm-3 col-md-3 col-lg-3">
                <ul class="block-list">
                    <li><i class="item-list-css-orange"></i> monitor Internet activity</li>
                </ul>
            </div>
            <div class="padding-null col-sm-3 col-md-3 col-lg-3">
                <ul class="block-list">
                    <li><i class="item-list-css-orange"></i> follow location and route history</li>
                </ul>
            </div>
        </div>
        <!-- END -->

    {*<p>Since iPhones have hit the market in 2007, there are over 500 million devices sold. And sale performance grows rapidly
    until now, as well as figures of Apple smartphones stolen. That’s why upgrading your kid’s device with an app to monitor
    iPhone is a must-have security measure. With its help, you will easily locate, lock or wipe an iOS mobile phone remotely,
    if lost or stolen.</p>
    <ul>
        <li>44% of lost iPhones were simply left in public places</li>
        <li>14% of stolen Apple devices were taken from a house or car</li>
        <li>11% of all stolen iOS smartphones were pickpocketed</li>
    </ul>
    <p>Nowadays iPhones are probably the most popular cell phones worldwide. It is hard to find a person, who would not
    like to have an ultramodern device by Apple. When it comes to kids and teenagers, iOS smartphones appear
    to be the top of the mind. To protect your child as well as an expensive gift, use iPhone monitoring software:</p>

    <ul>
        <li>control mobile phone usage</li>
        <li>monitor Internet activity</li>
        <li>follow location and route history</li>
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
                                        <h3>Follow location and routes</h3>
                                        <ul class="feature_list">
                                                <li>Track current GPS location</li>
                                                <li>Follow the entire route history</li>
                                                <li>Find iPhone if lost or stolen </li>
                                        </ul>
                                </div>
                        </div>
                </div>
        </div>
</div>

{include file='../includes/content/features-table-new.tpl'
        title = "Parental Control Features by Pumpic"
        description = "Your children live their full lives, and mobile devices help them explore the world around. Photo and video shooting, remote communication, emailing, gaming, and social connections are some of the options these gadgets provide. Pumpic covers all spheres of your kids’ activity and enables you to take care of them remotely. The features listed below show the variety of iPhone parental control abilities, which will let you secure your children’s well-being."
        blockBg="dark"
        icloud = "yes"

}

{*<div class="dark">
        <div class="container">
                <h2 class="text-center">Parental Control Features by Pumpic</h2>
                <div class="row">

                    <div id="table-container" class="table-col-3 table-md-col-3 table-sm-col-3">
                        <article class="text-center">Your children live a full life and mobile devices help them explore it. Photo and video
                            shooting, distant communication, mailing, game playing and social connections are some of options these gadgets
                            provide. Pumpic covers all spheres of your kids’ activity and enables you to take care of them remotely.
                            The features listed below show the variety of iPhone parental control abilities, which will let you secure your
                            children’s happiness.</article>
                        <section>
                            <div class="tab col-item-3 col-md-item-3 col-sm-item-3">
                                <ul>
                                    <li><i class="i-features-sms"></i> <span onclick="window.location='{$schema}{$domain}/mobile-sms-spy.html'">View SMS</span></li>
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
</div>*}


        <div class="keep-eyes">
            <a href="#" class="learn-more-link"> Learn More<img src="/images/arrow-down.png" alt=""></a>
        </div>

        <div class="learn-more">

{Content
    styleTitle="h2"
    title="Keep Your Eyes Open"
    blockBg='light'}
    <p>As a parent, you always take care of your kids and do your best to protect them from any possible danger. However, when they grow up and get stronger day by day, you become less and less engaged in their lives. Meanwhile, your children become more and more independent.</p>
    <p>Nevertheless, no matter how old and independent your kids are, they will always remain the same in your eyes. You will always try to be there when help is needed; provide support and assistance whatever it will take.</p>
    <p>To be at hand each and every moment, you give your kid a cell phone. From now on, this small device will define your communication and interaction. Also, it will open larger horizons for your little child; it will show him/her the world as it is or should be, and help explore it through online reality.</p>

    <ul class="list-content">
        <li class="img-plus"><img src="{$img}/list/plus.png" width="30" height="29" alt="Mobile Phone Benefits">If you still hesitate whether to give your child a mobile phone or not, note that this step can bring many benefits:
            <ul class="list-green">
                <li><img class="l-phone" width="24" height="22" src="{$img}/list/l-g-1.png" alt="Be Within a Call" /> you will always be within a call and know what happens to your kid;</li>
                <li><img class="l-messange" width="24" height="20" src="{$img}/list/l-g-2.png" alt="Children Communication" /> your child will be able to stay up to date and communicate with his friends and relatives;</li>
                <li><img class="l-social" width="19" height="19" src="{$img}/list/l-g-3.png" alt="Online Connection" /> with the online connection, your kid will always stay tuned and current;</li>
                <li><img class="l-write" width="19" height="19" src="{$img}/list/l-g-4.png" alt="Daily Task Schedule" /> smartphones can help kids perform better and follow their daily tasks;</li>
                <li><img class="l-study" width="22" height="17" src="{$img}/list/l-g-5.png" alt="Learning Online" /> modern mobile phones help children advance their skills, and thus, affect the choice of their future profession.</li>
            </ul>
        </li>
        <li class="img-minus"><img src="{$img}/list/minus.png" width="30" height="29" alt="Cell Phone Issues">On the other hand, together with mobility and opportunities there are some issues to be considered:
            <ul class="list-red">
                <li><img class="l-mobile" width="18" height="21" src="{$img}/list/l-r-1.png" alt="Online Predators" /> mobile swindlers and online predators might attack your kid through the Web;</li>
                <li><img class="l-play" width="22" height="22" src="{$img}/list/l-r-2.png" alt="Excessive Gaming" /> your kid might waste a lot of time playing games, chatting online, or using social networks;</li>
                <li><img class="l-smile" width="19" height="19" src="{$img}/list/l-r-3.png" alt="Explicit Internet Content" /> your child might strike inappropriate content on the Internet: watch videos containing 18+ content, read articles with bad words or messages with threats, etc.;</li>
                <li><img class="l-close" width="19" height="19" src="{$img}/list/l-r-4.png" alt="Harmful Web Activity" /> your kid might become involved in an activity you would not approve: commit a crime, form connections with a sect or be forced to go the limit;</li>
                <li><img class="l-list" width="19" height="19" src="{$img}/list/l-r-5.png" alt="Drugs Online" /> your child might fall under the bad influence and start using drugs or alcohol.</li>
            </ul>
        </li>
    </ul>

    <p>However, the real world hides no fewer dangers than the online one does. Anyway, there is a possibility to control your children’s lives on the Web. Pumpic sets parental control on your kid’s cell phone and monitors every step he or she takes as well as each decision made via a smartphone or tablet.</p>
    <p>Nowadays, your responsibility as a parent is not to take your kid’s mobile phone away to protect him or forbid doing things you do not approve. All you need is to keep your eyes open, <a class="a-default" href="/internet-filter-for-iphone.html">sort out the content</a> your kid sees, and take action when the situation requires. Thus, if you have decided to present your child an iPhone, learn more about iOS monitoring for kids.</p>


{EndContent}

        </div>

<div class="dark">
    <div class="container">
            <h2 class="text-center testimonial-title">iOS Monitoring Testimonials:</h2>
            <div class="row">

                <div class="bxSliders only-pc">
                        <!-- SLIDE #1 -->
                        <div class="slide">


                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/t_new_19.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Joan L. (Omaha, NE)</h4>
                                    <p>“The app helps me control my children, while I’m at work. I have to work overtime to support my family; that’s why my kids are on their own more often than not. I know that wherever my kids go, they take their cells with them. So, I can track them, find out who calls them, how much time they spend online and for which purposes. Also, Pumpic lets me monitor texts on iPhone. I suppose it is one of the most useful apps I’ve ever used.”</p>
                            </div>
                    </div>
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/t_new_20.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Katy O. (Reno, NV)</h4>
                                    <p>“I presented my daughter an iPhone for her last birthday and installed Apple parental control right after the purchase. Frankly, it is amazing! I can see how good my daughter is. Now I know that she never visits bad websites, never answers strange people who contact her on Facebook. The app helps me be sure that even when I’m far away, my daughter is safe. I can trust her more than ever. And this is the most precious thing I’ve ever had.”</p>
                            </div>
                    </div>
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/t_new_21.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Morgana H. (San Angelo, TX)</h4>
                                    <p>“The app helped me find out that my son started smoking and sometimes drank beer with his friends. I am a single mom, and thus work days and nights to keep my son and little daughter. With Pumpic iPhone parental monitoring, text messages my son sends and receives are no longer a secret for me. I can read his SMS, his social media communication, know who calls him and why. That’s a great help for me. Thanks!”</p>
                            </div>
                    </div>

                        </div>
                </div>
                <div class="bxSliderMobile"></div>


            </div>
    </div>
</div>


        <style>
            @media (max-width: 480px){
                /*.table-padding{*/
                    /*padding-bottom: 0;*/
                /*}*/
                #block-content{
                    padding-top: 0;
                }
            }


        </style>


        {include file='../includes/content/how-get-pumpic.tpl'
             blockBg="light"
        }


        {*include file='../includes/content/banner-promo.tpl'*}
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
        {include file='../includes/main/main-quick-link.tpl'
        blockBg="light"
        }

        {include file='../includes/main/main-footer.tpl'}

    </div>

    {include file='../includes/main/main-analytics-footer.tpl'}
    <script>
        $('.learn-more-link').click(function(e){
            e.preventDefault();
            $('.learn-more').toggle(300);
        })
    </script>
</body>
</html>
