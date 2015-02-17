{include file='../includes/main/main-header.tpl'
    robots="no" 
    title="Advanced calls monitoring from Pumpic.com"
    description="Pumpic.com is a new solution for parental smartphone monitoring. Track your kid’s cell phone usage, follow incoming and outbound calls, monitor browsing history and text messages, track GPS location and social network activity on Android devices with Pumpic.com"
}    
    
<body>
    <!-- FLY BUTTON -->
    {include file='../includes/main/main-button-help.tpl'}
    {include file='../includes/main/main-button-goup.tpl'}
    <!-- END FLY BUTTON -->
    
    <div class="wrapper call-monitoring">
        <!-- TOP MENU -->

	{include file='../includes/main/main-top-menu.tpl' 
            cache_id = "includes_main_main-top-menu"
            nocache
        }
        
        <!-- CONTENT -->

        {include file='../includes/content/info/info-promo.tpl'
            imgUrl = "header_banners/bg_features_call_437x226.png"
            imgAlt = "calls monitoring app"
            imgAlign = "right"
            textAlign = "right"
            title = "Calls Monitoring <br />Parental Control App"
            description = "Pumpic protects your kids from misgiving callers.
            <br /> View incoming and outgoing phone calls remotely."
            trial = "no"
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
                imgUrl = "icons/ipad_android.png"
                imgAlt = "call monitoring"
                title = "Calls Monitoring"
                description = "Try Control Panel demo to see Pumpic Calls Monitoring in use.<br/>Buy Pumpic to protect your kids and track their calls right now."

        }
        
        {include file='../includes/content/why-pumpic.tpl' 
                blockBg="light"
        }
        
        {include file='../includes/main/main-testimonials.tpl' 
                blockBg="dark"
        } 

        {include file='../includes/content/secures-call-monitoring.tpl' 
            blockBg="light"
        }                                


        {include file='../includes/content/features-table.tpl' 
                blockBg="dark"
        }  

        {*include file='../includes/content/banner-promo.tpl'*}
        {*{include file='../includes/content/banners/banner-promo-trial.tpl'}*}
        
        {include file='../includes/content/banners/index.tpl'}
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