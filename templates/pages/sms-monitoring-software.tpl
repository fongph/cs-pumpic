{include file='../includes/main/main-header.tpl'
    robots="yes" 
    title="Monitor Text Messages on Your Child's Phone with the Pumpic App"
    description="Track your kid's text messages with the Pumpic parental control app. Monitor, limit, or block texts on your child's phone, view deleted messages. Secure your child's text communication."
}    
    
<body>
    <!-- BLOCK GTM -->
    {include file='../includes/main/main-after-body.tpl'}
    <!-- END BLOCK GTM -->
    
    <!-- FLY BLOCKS -->
    {include file='../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->
    
    <div class="wrapper block-sms">
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
        
        <!-- CONTENT -->
        {include file='../includes/content/info/info-promo.tpl'
            imgUrl = "header_banners/bg-header-features_437x258.png"
            imgAlt = "Messages monitoring"
            imgAlign = "right"
            textAlign = "right"
            title = "SMS Monitoring<br /> Parental Control App"
            description = "View, block, and limit SMS remotely.<br />Text tracking app for Android and iOS."
            promoBuyBlock = "no"
            planPackageBuy = "yes"
            block_video = "yes"
            block_video_src = "http://www.youtube.com/embed/Atg0CbaytAY"
        }
        
         {include file='../includes/content/plans.tpl' }
            
         {* Template: FLY BUTTONS
        *}
        {include file='../includes/content/fly/box-buttons.tpl'
            buttonBuyNow = 'yes'
            buttonViewDemo = 'no'
            buttonFreeTrial = 'yes'
        }
         
        {include file='../includes/content/ipad.tpl' 
        blockBg="dark"
        imgUrl = "icons/lending_features_sms.png"
        imgAlt = "Easy Texts monitoring"
        title = "Remote SMS Monitoring"
        description = "Right after installing the Pumpic child text monitoring app, all the data from the target device will be sent to your Control Panel. It can be accessed from any browser and any gadget, including PCs, smartphones, and tablets. In Control Panel, you can not only view the information, but also set restrictions, block, and limit some of activities."
        }
        <div class="light">
        <div class="container">
                <h2 class="text-center">Text Message Tracking with Pumpic</h2>
                <div class="row">
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="/images/icons/icon-monitor-text-messages.png" alt="">
                                        <h3>Track text messages</h3>
                                        <ul class="feature_list">
                                                <li>Monitor text content of <br />SMS, MMS, and iMessages</li>
                                                {*<li>Follow iMessages</li>*}
                                                <li>View even deleted texts</li>
                                        </ul>
                                        
                                </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="/images/icons/icon-follow-sms-gistory.png" alt="">
                                        <h3>Monitor chats</h3>
                                        <ul class="feature_list">
                                                <li>Viber, WhatsApp, Skype, Kik</li>
                                                <li>Facebook Messenger</li>
                                                <li>Instagram comments</li>
                                        </ul>
                                        
                                </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="/images/icons/icon-block-incoming-sms.png" alt="">
                                        <h3>Block incoming SMS</h3>
                                        <ul class="feature_list">
                                                <li>Block messages by phone numbers</li>
                                                <li>Block SMS by bad words or threats</li>
                                                <li>Limit the amount of SMS sent daily</li>
                                        
                                        </div>
                                </div>
                        </div>
                </div>
        </div>

        {include file='../includes/content/features-table.tpl'
        title = "All Pumpic Features"
        description = "Pumpic is not only a reliable cell phone SMS tracker, but also a multifunctional tool to protect your kids both online and during daily activities. Monitor text messages on Android and iOS. View calls and multimedia files. Track your children online and on the go. Check out other amazing features for remote cell phone monitoring."
        blockBg="dark"
        } 

        {include file='../includes/content/how-get-pumpic.tpl'
            title = ""
            style = "static"
            blockBg="light"

        }   

        <div class="dark">
    <div class="container">
            <h2 class="text-center testimonial-title">Trusted by Over 10 000 Customers Worldwide:</h2>
            <div class="row">
                <div class="bxSliders only-pc">
                        <!-- SLIDE #1 -->
                        <div class="slide">
                
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/jason-m-14.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Jason M. – father of 14-year-old daughter</h4>
                                    <p>“I started to monitor text messages on iPhone of my daughter a few weeks ago. It let me find out many interesting things she lied and didn’t tell me. I found out that she had a boyfriend and they skipped school together many times. That she went to a party even after I had forbidden her to go anywhere. We had a very serious talk. She said she realized how wrong she was and would change and never lie again. Thanks Pumpic! The app really works!”</p>
                            </div>
                    </div>
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/rachel-h-16.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Rachel H. – mother of 16-year-old son</h4>
                                    <p>“A good friend of mine recommended me installing the Android app for tracking text messages to protect my son from abusive SMS. He was bullied at school and I couldn’t sit still worrying about that. Not only did Pumpic help me prevent my son from receiving messages with threats, but also allowed me to find out who those abuser were and put a stop on victimizing my kid. I would recommend setting parental control on text messages and other Android activities to all parents who care.”</p>
                            </div>
                    </div>
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/zak-k-14.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Zak K. – father of 14-year-old son</h4>
                                    <p>“I needed a reliable solution to monitor text messages on my son’s cell. And Pumpic turned out to be one of the best. I’m very satisfied with my purchase. This text monitoring app for iPhone allows me to provide my kid with enough security to prevent him from getting into trouble. I can follow calls, Internet usage, his whereabouts and much more in addition to SMS monitoring I needed.”</p>
                            </div>
                    </div>
                            
                  </div>         
                </div> 
                <div class="bxSliderMobile"></div>           
                            
            </div>
    </div>
</div>


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
        {include file='../includes/main/main-footer.tpl'}
                
    </div>
        
    {include file='../includes/main/main-analytics-footer.tpl'}
</body>
</html>