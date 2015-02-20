{include file='../includes/main/main-header.tpl'
    robots="yes" 
    title="Smartphone monitoring app for Android"
    description="Pumpic for Android is a new solution for parental control mobile monitoring. Track your children’s smartphone usage, follow incoming and outbound calls, monitor browsing history and text messages, track GPS location and social network activity on Android devices with Pumpic."
}    
    
<body>
    <!-- FLY BUTTON -->
    {include file='../includes/main/main-button-help.tpl'}
    {include file='../includes/main/main-button-goup.tpl'}
    <!-- END FLY BUTTON -->
    
    <div class="wrapper block-android">
        <!-- TOP MENU -->

	{include file='../includes/main/main-top-menu.tpl'
            cache_id = "includes_main_main-top-menu"
            nocache
        }
        
        <!-- CONTENT -->
        {include file='../includes/content/info/info-promo.tpl'
            imgUrl = "header_banners/bg_header_android_437x262.png"
            imgAlt = "Landing Mobile"
            imgAlign = "right"
            textAlign = "right"
            title = "Android Parental<br /> Control App"
            description = "Pumpic takes care of your children safety.        
                           <br />Track your kids’ Android device remotely."
            trial = "no"
            listText = "Follow Calls and SMS|Track GPS location|Monitor online activity"
        }
        {*  listText = "Follow Calls and SMS|Track GPS location|Monitor online activity" *}
        
        {include file='../includes/content/plans.tpl'}

        {* Template: FLY BUTTONS
        *}
        {include file='../includes/content/fly/box-buttons.tpl'
            buttonBuyNow = 'yes'
            buttonViewDemo = 'no'
            buttonFreeTrial = 'yes'
        }
        
        {include file='../includes/content/secures.tpl'}

        {include file='../includes/content/ipad.tpl' 
                blockBg="light"
                imgUrl = "icons/ipad_android.png"
                imgAlt = "Android"
                title = "Easy-to-Use Control Panel"
                description = "Try Control Panel demo to see Pumpic for Android in use.
                               <br />Buy Pumpic to keep your kids safe and secured right now."
        }

        {include file='../includes/content/why-pumpic.tpl'}


        {include file='../includes/content/features-table.tpl' 
                blockBg="light"
        }                   


        {include file='../includes/main/main-testimonials.tpl'} 


        {*include file='../includes/content/banner-promo.tpl'*}
        {*include file='../includes/content/banners/banner-promo-trial.tpl'*}
        
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