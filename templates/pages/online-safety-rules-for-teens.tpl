{include file='../includes/main/main-header.tpl'
    robots="yes" 
    title="Online Safety Rules for Teens | Pumpic"
    description="Check out essential rules on Internet safety for teens. Know how to prevent potential online risks with teen monitoring software."
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
    
<body class="internet-safety">
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
            imgUrl = "header_banners/online-safety-rules-for-teens-header.png"
            imgAlt = "Online Safety Tips for Teens" 
            imgAlign = "left bottom"
            imgVerticalAlign = "center"
            textAlign = "left"
            title = "Internet Safety for Teenagers"
            description = "Check online safety tips for teens below. Follow kids on the web.<br />Use our teen monitoring software for reliable remote protection."
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
        <div class="col-lg-12 col-md-12 col-sm-12">
            <h2>Online Safety Rules for Teens and Their Parents</h2>
            <div class="pt30 pb20">
                <img class="img-align-right" alt="Online Safety for Teens" src="{$img}/landings/online-safety-rules-for-teens-text.png" width="207px" height="208px" />
                <p>Spending so much time online, children do not realize how many potential risks the Internet may bring about in addition to numerous benefits. Cyber bullying teens face remains one of the main suicide factors among them. At the same time, more and more kids become engaged in sexting and consider it a normal way of communication.</p>
				<p>That’s why careful parents should make a list of Internet safety rules for teens and make sure that they do follow them. Below, you will find some essentials that will help you protect your children on the web.</p>
				<ul class="list-images">
				   <li><img src="{$img}/landings/mark.png" alt="Check Mark" class="lc-1" />Prevent your children from spending too much time on the Internet. Set terms and conditions under which they are allowed to surf the web.</li>
				   <li><img src="{$img}/landings/mark.png" alt="Check Mark" class="lc-1" />Keep a desktop computer at home in a place, where an adult can monitor activities on it. Thus, you will always see if your kids are engaged in something inappropriate.</li>
				   <li><img src="{$img}/landings/mark.png" alt="Check Mark" class="lc-1" />Educate yourself and try to keep up with your children. Most of them are more tech-savvy than parents these days. Knowing enough about computers and mobile gadgets will let you spend more time together and give your kids advice if needed.</li>
				   <li><img src="{$img}/landings/mark.png" alt="Check Mark" class="lc-1" />Talk to your children, teach them Internet safety for teens, and explain potential risks they may face. Prevent them from meeting online strangers in real life and always inform parents, if they feel any kind of offence towards them.</li>
				   <li><img src="{$img}/landings/mark.png" alt="Check Mark" class="lc-1" />Monitor browsing history and social networks for inappropriate content, cyberbullying, sexting, or any other misbehavior. Cell phone monitoring software for Android will be of help here. Thus, you will be able to keep track of online activities and avert probable dangers in the making.</li>
				</ul>
				<p>Never leave your children one on one with dangers coming from the Internet. Hold communication with them constantly. Show that you respect them, that they can trust you, and ask for a piece good of advice. Explain that if you do use <a class="a-default" href="http://pumpic.com/android-parental-monitoring.html" target="_blank">Android parental monitoring</a>, it is for the sake of their safety, not to restrict their freedom.</p>
				<p>Remember, if a child cannot learn the way that you teach, you should teach the way that a child can learn.</p>
            </div>
        </div>
    </div>    
{EndContent}
        
<div class="light">
        <div class="container">
                <h2 class="text-center">How Pumpic Secures Your Kids</h2>
                <div class="row">
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="{$img}/icons/icon-mobile-secure.png" alt="cell phone monitoring">
                                        <h3>Control cell phone usage</h3>
                                        <ul class="feature_list">
                                                <li>View call logs, SMS and MMS texts</li>
                                                <li>Check multimedia files and contacts</li>
                                                <li>Lock device remotely, limit activities</li>
                                        </ul>
                                </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="{$img}/icons/icon-track-kids.gif" alt="remote mobile monitoring">
                                        <h3>Track teens' whereabouts</h3>
                                        <ul class="feature_list">
                                                <li>Follow real time location</li>
                                                <li>View entire route history</li>
                                                <li>Set geo-fences, check alerts</li>
                                        </ul>
                                </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
								        <img src="{$img}/icons/icon-online-activity.png" alt="monitor online activity">
                                        <h3>Follow Internet activities</h3>
                                        <ul class="feature_list">
                                                <li>Check browsing and bookmarks</li>
                                                <li>Follow social media and chats</li>
                                                <li>Monitor incognito mode via keylogger</li>
                                        </ul>
                                </div>
                        </div>
                </div>
        </div>
</div>
        
        {include file='../includes/content/features-table.tpl'
        title = "Many Useful Features by Pumpic"
        description = "Taking care of teens and their Internet safety, Pumpic introduces over 24 features for comprehensive monitoring and reliable protection. The app will let you control both online activities and mobile device use remotely."
        blockBg="dark"
        } 
        
        {include file='../includes/content/ipad.tpl' 
                blockBg="light"
                bgTab = "bgIOS"
                imgUrl = "parental_control/ipad.png"
                imgAlt = "Android"
                title = "Easy-to-Use Control Panel"
		        description = "Install the Pumpic teen monitoring app and check your kids’ activities through the Control Panel. It can be accessed in any browser on any device. In your Control Panel, you can not only view various activities, but also limit some of them, set restrictions, and even block."
                textAlign = "left"
        }
        
        <div class="dark">
    <div class="container">
            <h2 class="text-center testimonial-title">Trusted by Over 10 000 Customers Worldwide:</h2>
            <div class="row">
                
                <div class="bxSliders only-pc">
                        <!-- SLIDE #1 -->
                        <div class="slide">
                
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/jack-b-10.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Jack B. – father of 10-year-old son</h4>
                                    <p>“I asked my friend to advise me reliable mobile monitoring that could protect my son on his phone. And he told me that Pumpic was the best Android parental control app for teens. I checked it out and really liked how it worked as well as opportunities the app provided. I use it every day now to control my kid on the Internet from work.”</p>
                            </div>
                    </div>
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/mark-s-14.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Mark S. – father of 14-year-old son</h4>
                                    <p>“Pumpic helps me keep our family rules concerning Internet use under control. I can see how much time my son spends on his smartphone and prevent him from going online at bedtime. I limit some apps on his device while he’s at school and always check if he visits any inappropriate websites. The app is great to not let your children waste time online.”</p>
                            </div>
                    </div>
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/megan-p-16.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Megan P. – mother of 16-year-old daughter</h4>
                                    <p>“I don’t let my girl use the Internet whenever she wants. She must realize that online reality is not for replacing her real life. That’s why I allow her to use social apps and other online activities for fun only when all homework is done and she has no other work to do. Pumpic lets me control the process and restrict what is not allowed.”</p>
                            </div>
                    </div>
                            
                        </div>
                </div>
                <div class="bxSliderMobile"></div>            
                            
            </div>
    </div>
</div>

        {include file='../includes/main/main-quick-link.tpl' 
            blockBg="light"
        }        
        
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
        {include file='../includes/main/main-footer.tpl'}
                
    </div>
       
    {include file='../includes/main/main-analytics-footer.tpl'}
</body>
</html>