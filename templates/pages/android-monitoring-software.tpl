{include file='../includes/main/main-header.tpl'
    robots="no" 
    title="Smartphone monitoring app for Android"
    description="Pumpic for Android is a new solution for parental control mobile monitoring. Track your children’s smartphone usage, follow incoming and outbound calls, monitor browsing history and text messages, track GPS location and social network activity on Android devices with Pumpic."
}    
    
<body>
    <!-- FLY BLOCKS -->
    {include file='../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->
    
    <div class="wrapper block-android">
        <!-- TOP MENU -->

	{include file='../includes/main/main-top-menu.tpl'
            cache_id = "includes_main_main-top-menu"
            nocache
        }
        
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
            imgUrl = "header_banners/bg_header_android_437x262.png"
            imgAlt = "Landing Mobile"
            imgAlign = "right"
            textAlign = "right"
            title = "Android Parental<br /> Control App"
            description = "Pumpic takes care of your children safety.        
                           <br />Track your kids’ Android device remotely."
            promoBuyBlock = "no"
            listText = "Follow Calls and SMS|Track GPS location|Monitor online activity"
            planPackageBuy = "yes"
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
                bgTab = "bgIOS"
                imgUrl = "icons/ipad_android.png"
                imgAlt = "Android"
                title = "Remote Android Monitoring"
                description = "Right after installing Pumpic on an Android phone or tablet, all the data from the target device will be sent directly to your Control Panel. It can be accessed from any browser and any device, including PCs, smartphones and tablets. In Control Panel you can review the information collected, set restrictions, block, and limit some of activities on the target Android device."
        }

        {include file='../includes/content/features-table.tpl' 
                blockBg="dark"
        } 

        {include file='../includes/content/how-get-pumpic.tpl'
            title = ""
            style = "static"
            blockBg="light"

        } 

        {include file='../includes/main/main-testimonials.tpl'} 


        {*include file='../includes/content/banner-promo.tpl'*}
        {*include file='../includes/content/banners/banner-promo-trial.tpl'*}
        
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