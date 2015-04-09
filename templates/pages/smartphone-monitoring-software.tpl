{include file='../includes/main/main-header.tpl'
    robots="yes" 
    title="Kids Smartphone Monitoring Software App for Parents"
    description="Pumpic app is a new software solution for parents to control mobile phones of their children. Tracking kid's smartphone usage, incoming and outbound calls, monitor browsing history and text messages, GPS location and social network activity on Android and iOS devices with."
    keywords="track kids phone tracking parental controls iphone app child android monitoring mobile"
}    
    
<body>
    <!-- FLY BLOCKS -->
    {include file='../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->
    
    <div class="wrapper block-smartphone">
        <!-- TOP MENU -->
 	{include file='../includes/main/main-top-menu.tpl' 
            cache_id = "includes_main_main-top-menu"
            nocache
        }
        
        <!-- CONTENT -->
        {include file='../includes/content/info/info-promo.tpl'
            imgUrl = "header_banners/bg_features_call_437x226.png"
            imgAlt = "Smartphone monitoring"
            imgAlign = "right"
            textAlign = "right"
            title = "Smartphone <br/> Parental Monitoring App"
            description = "Monitor your kids smartphone usage remotely<br />
            on iPhone, iPad, iPod and Android devices."
            promoBuyBlock = "no"
            planPackageBuy = "yes"
        }
        
        {include file='../includes/content/plans.tpl' }
        
        {include file='../includes/content/secures-parental.tpl' blockBg="light"}

        {include file='../includes/content/features-table.tpl'
        title = "Top Parental Control Features"
        description = "Pumpic is a new generation of mobile phone tracking software that comes with a large range of monitoring functions. They will help you to remotely keep track of your child's cell phone activity.<br/><br/>
        Pumpic’s best features include the ability to monitor calls and text messages (even deleted ones); track GPS location (current and route history); view Internet browsing history, bookmarks and applications; follow online activity, including social networks, IM chats and emails; and view photos and videos shot or downloaded from the Internet. And Pumpic does even more: it blocks SMS containing bad words or threats; blocks inappropriate web sources and applications; uses offline SMS commands to control the target device remotely; and tracks each button pressed with a keylogger function."
        blockBg="dark"
        } 
    
         {* Template: FLY BUTTONS
        *}
        {include file='../includes/content/fly/box-buttons.tpl'
            buttonBuyNow = 'yes'
            buttonViewDemo = 'no'
            buttonFreeTrial = 'yes'
        }
         
        {include file='../includes/content/ipad.tpl' 
        blockBg="light"
        imgUrl = "icons/lending_features_smartphone_monitoring.png"
        imgAlt = "Easy-to-Use Control Panel"
        title = "Easy-to-Use Control Panel"
        description = "Right after installing Pumpic, all the data from the target mobile phone will be sent to your Control Panel. It can be accessed from any browser and any device, including PCs, smartphones and tablets. In Control Panel you can not only view the information, but also set restrictions and block some of activities on the target device."
        }


        {include file='../includes/content/how-get-pumpic.tpl' }    
        {include file='../includes/main/main-testimonials.tpl' blockBg="light"}       
    
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