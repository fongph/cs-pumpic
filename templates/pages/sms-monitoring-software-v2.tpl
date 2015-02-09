{closeAccess}

{include file='../includes/main/main-header.tpl'
    robots="no" 
    title="Messages monitoring on smartphones"
    description="Pumpic is a new solution for parental control mobile monitoring. Track your children’s smartphone usage, follow incoming and outbound calls, monitor browsing history and text messages, track GPS location and social network activity on Android devices with Pumpic."
}    
    
<body>
    <!-- FLY BUTTON -->
    {include file='../includes/main/main-button-help.tpl'}
    {include file='../includes/main/main-button-goup.tpl'}
    <!-- END FLY BUTTON -->
    
    <div class="wrapper block-sms">
        <!-- TOP MENU -->
 	{include file='../includes/main/main-top-menu.tpl' 
            cache_id = "includes_main_main-top-menu"
            nocache
        }
        
        <!-- CONTENT -->
        {include file='../includes/content/info/info-promo.tpl'
            imgUrl = "landing_features/bg-header-features.png"
            imgAlt = "Messages monitoring"
            imgAlign = "right"
            textAlign = "right"
            title = "Sms Monitoring<br /> Parental Control App"
            description = "Keep your children safe with Pumpic.<br />
View your kid’s text message history remotely."
            trial = "yes"
        }
        
         {include file='../includes/content/plans.tpl' }
                
        {include file='../includes/content/ipad.tpl' 
        blockBg="dark"
        imgUrl = "icons/lending_features_sms.png"
        imgAlt = "SMS monitoring"
        title = "Sms Monitoring"
        description = "Try Control Panel demo to see Pumpic SMS Monitoring in use.<br />
Buy Pumpic to protect your kids and view their SMS right now."
}

		{include file='../includes/content/why-pumpic.tpl' 
                blockBg="light"
        }
  
        {include file='../includes/main/main-testimonials.tpl' 
                blockBg="dark"
        }       
        
<div class="light">
        <div class="container">
                <h2 class="text-center">How Pumpic Secures Your Kid</h2>
                <div class="row">
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="/images/icons/icon-monitor-text-messages.png" alt="">
                                        <h3>Monitor text messages</h3>
                                        <p>Pumpic allows you to keep track of all SMS ever sent or received by your child. From now on, you will be aware of all your kids’ text communications. View the history of text messages and block unwelcome senders.</p>
                                </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="/images/icons/icon-follow-sms-gistory.png" alt="">
                                        <h3>Follow SMS history</h3>
                                        <p>View the entire SMS history from the day your child started using the phone. No matter whether messages were deleted or not, Pumpic will show them to you. Monitor all files attached to SMS messages.</p>
                                </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="/images/icons/icon-block-incoming-sms.png" alt="">
                                        <h3>Block incoming SMS</h3>
                                        <p>Pumpic allows you to block text messages sent by anyone who seems suspicious. Follow each SMS and block those you wish your kid would never receive. Prevent ambiguous communication at an early stage.</p>
                                </div>
                        </div>
                </div>
        </div>
</div>

        {include file='../includes/content/features-table.tpl' 
                blockBg="dark"
        }  

        {include file='../includes/content/banner-promo.tpl' }
        <!-- END CONTENT -->    
           
        
        
        <!-- FOOTER -->
        {*
            Template: FOOTER
            Переменные:
                our_products (text): Включить выключить блок OUR PRODUCTS (no|yes). * - yes 
        *}
        {include file='../includes/main/main-footer.tpl' 
            our_products = "no"
        }
                
    </div>
        
    {include file='../includes/main/main-analytics-footer.tpl'}
</body>
</html>