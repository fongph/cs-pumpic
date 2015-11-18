{include file='../includes/main/main-header.tpl'
    robots="no" 
    title="Monitoring software for Apple iOS smartphones"
    description="Pumpic for iOS is a new solution for parental mobile monitoring control. Track your kid’s smartphone usage, monitor incoming and outbound calls, monitor browsing history and text messages, track GPS location and social network activity on iOS devices with Pumpic.com"
}    
    
<body>
    <!-- BLOCK GTM -->
    {include file='../includes/main/main-after-body.tpl'}
    <!-- END BLOCK GTM -->
    
    <!-- FLY BLOCKS -->
    {include file='../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->
    
    <div class="wrapper block-ios ios-monitoring-software">
	
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
            imgUrl = "landings/bg_iphone-parental-monitoring.png"
            imgAlt = "iOS mobile monitoring"
            imgAlign = "right"
            collg = "7"
            textAlign = "right"
            title = "iOS Parental Control App"
            description = "Pumpic helps you keep your children safe.<br/>Monitor your kid's iOS device with Pumpic."
            promoBuyBlock = "no"
            listText = "Follow Calls and SMS|Track GPS location|Monitor online activity"
            planPackageBuy = "yes"
            block_video = "yes"
            block_video_src = "http://www.youtube.com/embed/Atg0CbaytAY"
        }
        {* header_banners/bg-header-mobile_ios_400x325.png *}
        {* ?rel=0&wmode=transparent&fs=0&autoplay=1&modestbranding=1&autohide=1 *}
        {* listText = "Follow Calls and SMS|Track GPS location|Monitor online activity" *}
        
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
                imgUrl = "parental_control/ipad.png"
                imgAlt = "iOS monitoring"
                title = "Remote iOS Monitoring"
        }
        
        {* description = "Right after installing Pumpic, all the data from the target device will be sent to your Control Panel. It can be accessed from any browser and any gadget, including PCs, mobile phones and tablets. In Control Panel, you can not only view the information, but also set restrictions, block, and limit some of activities."

         *}


                       
        {include file='../includes/content/why-pumpic.tpl'}
                
        {* blockBg="light" *}
        {include file='../includes/content/features-table.tpl' 
                blockBg="dark"
        } 

        {include file='../includes/main/main-testimonials.tpl'
                blockBg="light"
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