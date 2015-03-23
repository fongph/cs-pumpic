{include file='../includes/main/main-header.tpl'
    robots="no" 
    title="Messages monitoring on smartphones"
    description="Pumpic is a new solution for parental control mobile monitoring. Track your children’s smartphone usage, follow incoming and outbound calls, monitor browsing history and text messages, track GPS location and social network activity on Android devices with Pumpic."
}    
    
<body>
    <!-- FLY BLOCKS -->
    {include file='../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->
    
    <div class="wrapper block-sms">
        <!-- TOP MENU -->
 	{include file='../includes/main/main-top-menu.tpl' 
            cache_id = "includes_main_main-top-menu"
            nocache
        }
        
        <!-- CONTENT -->
        {include file='../includes/content/info/info-promo.tpl'
            imgUrl = "header_banners/bg-header-features_437x258.png"
            imgAlt = "Messages monitoring"
            imgAlign = "right"
            textAlign = "right"
            title = "Sms Monitoring<br /> Parental Control App"
            description = "Keep your children safe with Pumpic.<br />
View your kid’s text message history remotely."
            promoBuyBlock = "yes"
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
        title = "Easy-to-Use Control Panel"
        description = "Right after installing Pumpic, all the data from the target mobile phone will be sent to your Control Panel. It can be accessed from any browser and any device, including PCs, smartphones and tablets. In Control Panel you can not only view the information, but also set restrictions and block some of activities on the target device. "
        }
        <div class="light">
        <div class="container">
                <h2 class="text-center">Text Messages Tracking with Pumpic</h2>
                <div class="row">
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="/images/icons/icon-monitor-text-messages.png" alt="">
                                        <h3>Monitor SMS</h3>
                                        <ul class="feature_list">
                                                <li>Track in- and outbound SMS</li>
                                                <li>iMessages supported</li>
                                                <li>View even deleted texts</li>
                                        </ul>
                                        
                                </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="/images/icons/icon-follow-sms-gistory.png" alt="">
                                        <h3>Monitor chats</h3>
                                        <ul class="feature_list">
                                                <li>Viber, Whatsapp, Skype</li>
                                                <li>Facebook Messenger</li>
                                                <li>Instagram comment</li>
                                        </ul>
                                        
                                </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="/images/icons/icon-block-incoming-sms.png" alt="">
                                        <h3>Block incoming SMS</h3>
                                        <ul class="feature_list">
                                                <li>Block specific phone numbers</li>
                                                <li>Block by list of bad words</li>
                                                <li>Limit daily amount of sent SMS<br/> (coming soon)</li>
                                        
                                        </div>
                                </div>
                        </div>
                </div>
        </div>

        {include file='../includes/content/features-table.tpl'
        title = "All Pumpic Features"
        description = "Pumpic app can track a lot more than just text messages and online chats. Check out other amazing features for remote cell phone monitoring:"
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