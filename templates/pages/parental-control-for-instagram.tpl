{include file='../includes/main/main-header.tpl'
    robots="yes" 
    title="Instagram Monitoring App for Parents | Pumpic"
    description="Monitor uploaded pictures, comments, and friends posts on Instagram. Protect your children with reliable Instagram parental monitoring by Pumpic."
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
        
        <!-- FLY BLOCKS -->
        {nocache}
        {if ''|hasFreeTrialStick}    
            {include file='../includes/content/fly/fly-free-trial.tpl'}
        {/if}    
        {/nocache}
        <!-- END FLY -->
        
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
            imgUrl = "header_banners/monitor-instagram-head.png"
            imgAlt = "Instagram Monitoring" 
            imgAlign = "left bottom"
            imgVerticalAlign = "center"
            textAlign = "left"
            title = "Instagram Monitoring for Parents <br />Child Cell Phone Tracking App"
            description = "View uploaded pictures, comments, and friends’ posts.<br />Protect your kids on Instagram. Secure their online activities."
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
    styleTitle="h2"    
    title="What Parents Should Know about Instagram"
    blockBg='dark'}
		
		<table class="table-statistick">
            <tr>
                <td class="item col-s-sm-12 col-xs-sm-12 col-sm-12 col-md-4 col-lg-4 border-none">
                    <section>
                        <div class='pb20'><strong class="fz50 color-orange">Bullying</strong></div>
                        <p>Instagram is known for bullying. Many children upload their own photos there. Other users may insult kids by posting offensive comments. Cyberbullying is dangerous. It remains one of major suicide factors among teens. That’s why parental control on Instagram is strongly recommended.</p> 
                    </section>
                </td>
                <td class="item col-s-sm-12 col-xs-sm-12 col-sm-12 col-md-4 col-lg-4 border-none">
                    <section>
                        <div class='pb20'><strong class="fz50 color-orange">13+</strong></div>
                        <p>There are many inappropriate pictures on Instagram. That’s why it is restricted for children under 13. Though every user is required to enter a birth date, kids can easily overcome this obstacle. The content may be violent, nude, or otherwise disturbing. Install the Instagram monitoring app, if letting kids use this social network.</p> 
                    </section>
                </td>
                <td class="item col-s-sm-12 col-xs-sm-12 col-sm-12 col-md-4 col-lg-4 border-none">
                    <section>
                        <div class='pb20'><strong class="fz50 color-orange">Privacy</strong></div>
                        <p>All Instagram accounts are public by default. Parents should change it to a private mode. Thus, only friends will see kids’ posts. Make sure that geotagging is off to prevent children from sharing their location with strangers. Check if personal data like a phone number, school, and address is secured as well.</p>
                    </section>
                </td>
            </tr>
        </table>
{EndContent}
        
<div class="light">
        <div class="container">
                <h2 class="text-center">How Pumpic Protects Your Kids</h2>
                <div class="row">
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="{$img}/icons/icon-mobile-secure.png" alt="cell phone monitoring">
                                        <h3>Control cell phone use</h3>
                                        <ul class="feature_list">
                                                <li>Monitor call logs and texts</li>
                                                <li>Block phone numbers and SMS</li>
                                                <li>Track location and route history</li>
                                        </ul>
                                </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="{$img}/icons/instagram.png" alt="remote mobile monitoring">
                                        <h3>Monitor Instagram</h3>
                                        <ul class="feature_list">
                                                <li>View uploaded pics</li>
                                                <li>Follow all comments</li>
                                                <li>Check friends’ posts</li>
                                        </ul>
                                </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
								        <img src="{$img}/icons/icon-online-activity.png" alt="monitor online activity">
                                        <h3>Follow online activities</h3>
                                        <ul class="feature_list">
                                                <li>View browsing history and bookmarks</li>
                                                <li>Facebook, Snapchat, WhatsApp,</li>
                                                <li>Viber, Kik, Skype, and emails</li>
                                        </ul>
                                </div>
                        </div>
                </div>
        </div>
</div>

        {include file='../includes/content/features-table.tpl'
        title = "Many Useful Features for Reliable Protection"
        description = "In addition to Instagram parental monitoring, Pumpic provides you with more than 24 solutions for child safety. The app allows you to take care of your loved ones remotely covering the Internet and daily activities on smartphones and tablets."
        blockBg="dark"
        } 
        
        {include file='../includes/content/ipad.tpl' 
                blockBg="light"
                imgUrl = "parental_control/ipad.png"
                imgAlt = "Apple iOS. iPad"
                title = "Easy-to-Use Control Panel"
				description = "As soon as you install the Pumpic app on the target device, you will get the access to detailed information on your kid’s activities. Enter your Control Panel and start monitoring. You can log in from any desktop computer, laptop, or mobile gadget. The Control Panel will allow you to not only view the information, but also set limits and restrictions as well as manipulate the target device remotely."
                textAlign = "left"
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
                            <img src="{$img}/testimonials/stan-m-14.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Stan M. – father of 14-year-old daughter</h4>
                                    <p>“If you’re still looking for reliable parental control for Instagram, Pumpic is what you need. First, I meant it for monitoring social media activities on my daughter’s iPhone. But after I’d installed it, I found out much more features of great help for parents. Pumpic provides call and SMS monitoring, location tracking, geo-fencing. It has all set of tools for comprehensive protection. Great app!”</p>
                            </div>
                    </div>
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/monica-m-15.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Monica M. – mother of 15-year-old son</h4>
                                    <p>“Pumpic helped me stop bullying my son faced on Instagram. He has some weight issues. Some children joked at him posting bad comments, calling him fat and so on. That was unbearable for him. And for me too, when I saw all those dirty words they’d wrote. Pumpic opened my eyes on the problem. I blocked all those bullies and encouraged school teachers to talk to other kids to stop it all once and for all. Thankfully, now my son is fine. No one hurts him any longer.”</p>
                            </div>
                    </div>
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/susan-i-11.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Susan I. – mother of 11-year-old son</h4>
                                    <p>“I didn’t want my son to see what he is not supposed to on the Internet. That’s why I bought Pumpic before giving him a smartphone. The app helps me a lot. I’ve blocked some websites already and keep monitoring his activities for inappropriate content. He asked me to let him use Instagram and though he is too young for that I see no problem as long as I have Pumpic.”</p>
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