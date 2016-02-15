{include file='../includes/main/main-header.tpl'
    robots="yes" 
    title="Block Apps, Limit Screen Time on Android and iOS Mobile Devices | Pumpic"
    description="Set screen time limits or block apps on child's cell phone or tablet with Pumpic. Get reliable parental time control software to block apps on Android and iPhone."
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
            imgUrl = "header_banners/block-apps-head.png"
            imgAlt = "Block Applications" 
            imgAlign = "left bottom"
            imgVerticalAlign = "center"
            textAlign = "left"
            title = "Block Apps on Android & iPhone <br />Parental Control Application"
            description = "View and block mobile apps. Set time limits on running.<br />Monitor your kids remotely. Keep track of screen time."
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
            <h2 class="h2 text-right-important">How to Set Screen Time Limits and Block Apps</h2>
            <div class="pt30 pb20">
                <p>Children spend too much time on their gadgets these days. If you ask what they do each time they take a smartphone in hands, most probably you will see them playing another mobile game or surfing social network.</p>
				<p>Smartphones, tablets, and applications installed distract children from important daily activities like doing homework, room cleaning, family affairs etc. Many children keep playing games even after a tardy bell rings, which ultimately results in problems at school. In addition, there are many applications inappropriate for kids. Some of them are restricted for certain ages due to explicit, violent, or bad-word content. Such apps provoke interest among kids most of all.</p>
				<p>That’s why careful parents should better use parental time control software, monitor what kind of applications their children use, and block inappropriate ones. Pumpic provides comprehensive monitoring and control over activities on kids’ smartphones and tablets.</p>
            </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-3 text-center">
            <img  class="block-apps-pic" alt="Block Apps' Location" src="{$img}/landings/block-apps-pic.png" width="207px" height="208px" />
        </div>
    </div>    
{EndContent}

{Content 
    styleTitle="h2"    
    title="Block Apps on Android & iPhone: Ways and Alternatives"
    blockBg='light'}
	
	<img class="app-icon-left" src="{$img}/landings/block-apps.png" alt="">
	<p>It does not really matter how kind or strict you are as a parent. Kids today can get uncontrollable. This applies especially to mobile device usage. Statistics show that an average teen spends about 3 hours a day staring at the phone or tablet screen. Add here couple hours watching TV and you will get a good part of a day wasted. What can you do to change the situation and push kids' energy towards a useful direction? First of all, reconsider allowed screen time limits.</p>
	<p>As mentioned, teens get uncontrollable sometimes. It is called awkward age for a reason. And mistakes kids make are believed to be a normal part of growing up. But having outbreaks from time to time and being 24/7 on their phones are two different things. And responsible parents would not let anything bad happen to a kid, even if the limiting and upbringing process might seem rough.</p>
	<p>What kind of apps does a good control over require? The first reason would be so-called vault apps. These mimic everyday phone tools, which is a secret of their popularity. With a secret password kids can open a secret folder. Most of the time such folders are not used for keeping a personal diary. With several big school scandals that involved such vault apps parents have been more attentive to all the applications that are installed on kids’ phones.</p>
	<p>Another reason for a stricter apps control is paid in-app content. App Store and Google Play are full of freemium apps. Children can download and even use them for free, which is a good thing. However, they also offer special features and opportunities once you pay a dime or two. Thus, for games you get new characters or extra coins that provide bonuses. Restricting apps on iPhone and Android helps parents save their credit cards from charges made by another Candy Crush app.</p>
        
        <!-- BLOCK STATISTICK -->
        <div class="block-statistick row">
            
            <div class="item col-s-sm-12 col-xs-sm-12 col-sm-4 col-md-4 col-lg-4">
                <section>
                    <div><strong class="fz50 color-orange">84%</strong></div>
                    <span class="text-uppercase">
                        teenagers go online using smartphones and other mobile devices. Choosing a proper parental control you are sure your kid is not exposed to anything inappropriate online.
                    </span>
                </section>
            </div>
			<div class="item col-s-sm-12 col-xs-sm-12 col-sm-4 col-md-4 col-lg-4">
                <section>
                    <div><strong class="fz50 color-orange">46%</strong></div>
                    <span class="text-uppercase">
                        parents limit kids’ time on the Internet due to various reasons. App blocking and limiting is easier with high-quality parental control apps.
                    </span>
                </section>
            </div>
			<div class="item col-s-sm-12 col-xs-sm-12 col-sm-4 col-md-4 col-lg-4">
                <section>
                    <div><strong class="fz50 color-orange">72%</strong></div>
                    <span class="text-uppercase">
                        teenagers go online using smartphones and other mobile devices. Choosing a proper parental control you are sure your kid is not exposed to anything inappropriate online.
                    </span>
                </section>
            </div>
            
        </div>
        <!-- END -->

        <p>If you look closer at iPhones and Androids, you will see that built-in parental controls for these two OS are implemented in a different way. As known, iPhones have better pre-installed features that include Family Sharing. But when it comes to broadening the features with control apps, you might come across troubles. Android is an opposite – it does not offer extra good controls at the standard package, but a <a class="a-default" href="/android-parental-monitoring.html" >reliable parental app</a> like Pumpic saves the day.</p>
		<p>One of the best choices to block apps on Android and iPhone is using a trusted parental control application. Such choice is the Pumpic app that has been on the market for a long time. It offers plenty of features that every parent can use to their liking. With Pumpic, you can keep an eye on all the applications installed on your kid’s phone. Blocking and setting time limits for apps would help controlling screen time easily as ABC.</p>
		
{EndContent}
        
<div class="dark">
        <div class="container">
                <h2 class="text-center">How Pumpic Secures Your Kids</h2>
                <div class="row">
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="{$img}/icons/icon-mobile-secure.png" alt="cell phone monitoring">
                                        <h3>Control cell phone use</h3>
                                        <ul class="feature_list">
                                                <li>View call logs and text messages</li>
                                                <li>Block calls and SMS by keywords</li>
                                                <li>Track location and route history</li>
                                        </ul>
                                </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="{$img}/icons/icon-limit-app.gif" alt="remote mobile monitoring">
                                        <h3>Block and limit apps</h3>
                                        <ul class="feature_list">
                                                <li>Monitor installed and built-in apps</li>
                                                <li>Set time limits on running</li>
                                                <li>Block applications</li>
                                        </ul>
                                </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
								        <img src="{$img}/icons/icon-online-activity.png" alt="monitor online activity">
                                        <h3>Follow online activities</h3>
                                        <ul class="feature_list">
                                                <li>Check browsing history and bookmarks</li>
                                                <li>Monitor Facebook, Snapchat, Kik,</li>
                                                <li>WhatsApp, Skype, Viber, and emails</li>
                                        </ul>
                                </div>
                        </div>
                </div>
        </div>
</div>
        
        {include file='../includes/content/features-table.tpl'
        title = "Pumpic Provides Many Useful Features"
        description = "In addition to restricting apps on iPhone, iPad, iPod Touch, and Android devices, Pumpic allows monitoring all daily activities and Internet use. The app offers accurate location tracking and remote control of the target device. More than 24 features ensure reliable protection for all of life emergencies."
        blockBg="light"
        } 
        
        {* description = "Install the iPad parental control app on your kid’s tablet and start monitoring right away. Log in to your Control Panel and view all the information from the target device. It can be accessed from anywhere including desktop computers, laptops, smartphones, and tablets. In addition to data monitoring, the Control Panel allows you to set limits, block tablet activities, and lock the target device permanently."             
        *}
        
        <div class="dark">
    <div class="container">
            <h2 class="text-center testimonial-title">Trusted by Over 10 000 Customers Worldwide:</h2>
            <div class="row">
                
                <div class="bxSliders only-pc">
                        <!-- SLIDE #1 -->
                        <div class="slide">
                
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/priscilla-t-16.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Priscilla T. – mother of 16-year-old son</h4>
                                    <p>“My boy became addicted to his tablet. He spent every free minute playing games. He even started playing during classes. Teachers started complaining and I had to take action. I decided to use parental lock on Android. I searched a lot and finally came across Pumpic. The app helps me with all I need. I can not only block games and other apps, but also supervise many other activities on his tablet.”</p>
                            </div>
                    </div>
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/roger-g-13.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Roger G. – father of 13-year-old son</h4>
                                    <p>“I’ve been looking for a screen time parental control app on the Internet and found a review about Pumpic. I was really amazed how many features the app comprised. I decided to give it a try and now I use it systematically. I monitor my son’s online activities and block apps on Android phone, when he starts overusing it or plays games while doing homework. Works great for parents!”</p>
                            </div>
                    </div>
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/jessica-u-14.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Jessica U. – mother of 14-year-old daughter</h4>
                                    <p>“My girl spent too much time playing on her smartphone and chatting with friends online. I realized that I needed one of those apps to block apps. A friend of mine recommended Pumpic. I started using it and was very satisfied how many activities I could control then. I keep using it now to prevent my girl from wasting her time, which is precious.”</p>
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