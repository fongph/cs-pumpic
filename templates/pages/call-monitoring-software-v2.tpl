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

	{include file='../includes/main/main-top-menu.tpl' }
        
        <!-- CONTENT -->

        {include file='../includes/content/info/info-promo.tpl'
            imgUrl = "/landing_features/bg_features_call.png"
            imgAlt = "calls monitoring app"
            imgAlign = "right"
            textAlign = "right"
            title = "Calls Monitoring Parental Control App"
            description = "Pumpic protects your kids from misgiving callers.
            <br /> View incoming and outgoing phone calls remotely."
        }
        
         {include file='../includes/content/plans.tpl' }
        
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
                blockBg="light"
        } 

        {include file='../includes/content/secures.tpl' 
                blockBg="light"
        }

        {include file='../includes/content/banner-promo.tpl'}
        <!-- END CONTENT -->    
           
        <!-- FOOTER -->

        {include file='../includes/main/main-footer.tpl'}
                
    </div>
       
    {include file='../includes/main/main-analytics-footer.tpl'}
</body>
</html>