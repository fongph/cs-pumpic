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
    <!-- BLOCK GTM -->
    {include file='../includes/main/main-after-body.tpl'}
    <!-- END BLOCK GTM -->


    <!-- FLY BLOCKS -->
    {include file='../includes/content/fly/fly_blocks.tpl' visibleFlyFeatures=false}
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
            title = "Why Spy When You Can<br/> Monitor Android Device Legally?"
            titleSize = "25px"
            description = "Remotely track calls, messages, online activity, locations,<br/> multimedia, and more on target Android smartphone or tablet."
            promoBuyBlock = "no"
            planPackageBuy = "yes"
            planPackageBuyUrl = "/store.html#android"
            block_video = "yes"
            block_video_src = "https://www.youtube.com/embed/Atg0CbaytAY"
            infoBlockMobile = "yes"
            Icloud = "no"
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
                <h2 class="text-center">Spy Apps Are Over! Pumpic Monitoring App Gives You:</h2>
                <div class="row">
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="{$img}/icons/icon-mobile-secure.png" alt="cell phone monitoring">
                                        <h3>Cell phone usage tracking</h3>
                                        <ul class="feature_list">
                                                <li>Monitor incoming and outgoing calls</li>
                                                <li>Track SMS and MMS</li>
                                                <li>Browse contacts and scheduled plans</li>
                                        </ul>
                                </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="{$img}/icons/icon-limit-app.gif" alt="remote mobile monitoring">
                                        <h3>Internet activities' monitoring</h3>
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
                                        <h3>Location tracking</h3>
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
        title = "Awesome Monitoring Features"
        description = "Pumpic provides impressive monitoring opportunities with more than 24 outstanding features. The app allows you to view, track, and block mobile activities. Prevent your children from inappropriate content viewing and sharing. Monitor all the files stored on the target device. No need to spy anymore, now you can monitor Android devices legally."
        blockBg="dark"
        }

        {* description = "Install the iPad parental control app on your kid’s tablet and start monitoring right away. Log in to your Control Panel and view all the information from the target device. It can be accessed from anywhere including desktop computers, laptops, smartphones, and tablets. In addition to data monitoring, the Control Panel allows you to set limits, block tablet activities, and lock the target device permanently."
        *}

{Content
    styleTitle="h2"
    title="What Is Spyware for Android Used For?"
    blockBg='light'}

	<img class="app-icon-left" src="{$img}/landings/icon-spyapps-for-android.png" alt="Spy on Android Phones">
	<p>Due to the survey data from the Pew Research Center, 92% of U.S. adults own a cell phone, 73% have a computer and 45% own a tablet. Obviously, it makes the software providers compete really fierce to present more advanced options for monitoring.</p>
	<p>However, you should understand the difference between spy apps and monitoring apps like Pumpic. When the first spy apps came out, they were advertised like “Catch a cheating spouse!” With the help of modern spy apps, it is possible to track almost all activities, which take place on a cell phone or tablet. Spy software for Android traces SMS, Skype, Facebook, Snapchat, GPS location, browsing history, and much more in a stealth mode and oftentimes – in an illegal way.</p>
	<p>On the contrary, monitoring apps like Pumpic are 100% legal, and it's suggested that a person whose device you monitor knows about being surveilled. Mostly, such type of software is utilized by parents who aim to protect kids from inappropriate information and restrict excessive mobile device usage. The reason for that is that:</p>

        <!-- BLOCK STATISTICK -->
        <div class="block-statistick row">

            <div class="item col-s-sm-12 col-xs-sm-12 col-sm-4 col-md-4 col-lg-4">
                <section>
                    <div><strong class="fz50 color-orange">92%</strong></div>
                    <span class="text-uppercase">
                        teens go online daily. In addition, 24% say they go online almost constantly.
                    </span>
                </section>
            </div>
			<div class="item col-s-sm-12 col-xs-sm-12 col-sm-4 col-md-4 col-lg-4">
                <section>
                    <div><strong class="fz50 color-orange">32%</strong></div>
                    <span class="text-uppercase">
                        teenagers have been targets of annoying and potentially menacing online activities, such as threatening messages, embarrassing pictures, and rumors.
                    </span>
                </section>
            </div>
			<div class="item col-s-sm-12 col-xs-sm-12 col-sm-4 col-md-4 col-lg-4">
                <section>
                    <div><strong class="fz50 color-orange">47%</strong></div>
                    <span class="text-uppercase">
                        children visited a site or a web page with content their parents would not want them to see.
                    </span>
                </section>
            </div>

        </div>
        <!-- END -->

        <p>There are many companies that provide you with an opportunity to secretly view remote activities of another person. You can check a list of the best spy apps for Android to know more about tracking apps and their features. Most widely known among them are mSpy, Mobile Spy, SpyEra, Phone Tracker, and MobiStealth. By the way, using SMS spy is the most widespread type of spying. SMS spy apps for Android allow monitoring incoming, outgoing and even deleted messages.</p>
		    <p>However, you should note that it is against the laws of most countries to spy on someone's device. Without a doubt, it is illegal and unethical to use an SMS spy app for Android. Some advertisements make people believe that secretly spying on text messages and checking phone calls is normal, but in fact, it ignores legal requirements.</p>

{EndContent}

        <div class="dark">
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

        {include file='../includes/content/banners/index.tpl' androidUrl="yes"}



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
