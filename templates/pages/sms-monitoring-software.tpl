{include file='../includes/main/main-header.tpl'
    robots="yes" 
    title="Messages monitoring on smartphones"
    description="Pumpic is a new solution for parental control mobile monitoring. Track your children’s smartphone usage, follow incoming and outbound calls, monitor browsing history and text messages, track GPS location and social network activity on Android devices with Pumpic."
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
            description = "Keep your children safe with Pumpic.<br />
View, block, and limit text messages remotely."
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
        description = "Right after installing Pumpic, all the data from the target device will be sent to your Control Panel. It can be accessed from any browser and any gadget, including PCs, smartphones, and tablets. In Control Panel, you can not only view the information, but also set restrictions, block, and limit some of activities."
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
        description = "Pumpic app tracks much more than just text messages and online chats. Check out other amazing features for remote cell phone monitoring."
        blockBg="dark"
        } 

        {include file='../includes/content/how-get-pumpic.tpl'
            title = ""
            style = "static"
            blockBg="light"

        }   

        {include file='../includes/main/main-testimonials.tpl' 
                blockBg="dark"
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
        {include file='../includes/main/main-footer.tpl'}
                
    </div>
        
    {include file='../includes/main/main-analytics-footer.tpl'}
</body>
</html>