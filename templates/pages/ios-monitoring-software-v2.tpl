{closeAccess}

{include file='../includes/main/main-header.tpl'
    robots="no" 
    title="Monitoring software for Apple iOS smartphones"
    description="Pumpic for iOS is a new solution for parental mobile monitoring control. Track your kid’s smartphone usage, monitor incoming and outbound calls, monitor browsing history and text messages, track GPS location and social network activity on iOS devices with Pumpic.com"
}    
    
<body>
    <!-- FLY BUTTON -->
    {include file='../includes/main/main-button-help.tpl'}
    {include file='../includes/main/main-button-goup.tpl'}
    <!-- END FLY BUTTON -->
    
    <div class="wrapper block-ios">
	
	<!-- TOP MENU -->
	{include file='../includes/main/main-top-menu.tpl'
            cache_id = "includes_main_main-top-menu"
            nocache
        }
        
    <!-- CONTENT -->
         {include file='../includes/content/info/info-promo.tpl'
            imgUrl = "header_banners/bg-header-mobile_ios_261x325.png"
            imgAlt = "iOS mobile monitoring"
            imgAlign = "right"
            textAlign = "right"
            title = "iOS Parental Control App"
            description = "Pumpic helps you keep your children safe.<br/>
Monitor your kids iOS device with Pumpic."
            trial = "yes"
        }
        {* listText = "Follow Calls and SMS|Track GPS location|Monitor online activity" *}
        
        {include file='../includes/content/plans.tpl'}


        {include file='../includes/content/secures.tpl'}


        {include file='../includes/content/ipad.tpl' 
                blockBg="light"
                imgUrl = "parental_control/ipad.png"
                imgAlt = "iOS monitoring"
                title = "Easy-to-Use Control Panel"
                description = "Try Control Panel demo to see Pumpic for Android in use.
                               <br/>Buy Pumpic to keep your kids safe and secured right now."

        }


                       
        {include file='../includes/content/why-pumpic.tpl'}
                                  
 		{include file='../includes/content/features-table.tpl' 
        blockBg="light"
        } 

        {include file='../includes/main/main-testimonials.tpl'} 



        {*include file='../includes/content/banner-promo.tpl'*}
        {include file='../includes/content/banners/banner-promo-trial.tpl'}
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