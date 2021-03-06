{include file='../includes/main_cache/main-header.tpl'
    robots="no" 
    title="Smartphone Monitoring App - Pumpic.com"
    description="Pumpic is a new solution for parental control mobile monitoring. Track your children’s smartphone usage, follow incoming and outbound calls, monitor browsing history and text messages, track GPS location and social network activity on Android devices with Pumpic."
}    
    
<body>
    <!-- BLOCK GTM -->
    {include file='../includes/main/main-after-body.tpl'}
    <!-- END BLOCK GTM -->
    
    <!-- FLY BLOCKS -->
    {include file='../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->
    
    <div class="wrapper block-smartphone">
        <!-- TOP MENU -->
 	{include file='../includes/main_cache/main-top-menu.tpl' 
            cache_id = "includes_main_cache_main-top-menu"
            nocache
        }
        

        
        <!-- CONTENT -->
        {include file='../includes/content/info/info-promo.tpl'
            imgUrl = "landing_features/bg_header_smartphone.png"
            imgAlt = "Smartphone monitoring"
            imgAlign = "right"
            textAlign = "right"
            title = "Smartphone Monitoring<br />Parental Control App"
            description = "Protect your children with Pumpic app.<br />
Control your kids smartphone usage remotely"
        }
        
         {include file='../includes/content/plans.tpl' }
                
        {include file='../includes/content/ipad.tpl' 
        blockBg="dark"
        imgUrl = "icons/lending_features_smartphone_monitoring.png"
        imgAlt = "Smartphone Monitoring"
        title = "Smartphone Monitoring"
        description = "Try Control Panel demo to see Smartphone Monitoring in use.<br />
Buy Pumpic to secure your kids and track their smartphones right now."
}

		{include file='../includes/content/why-pumpic.tpl' 
            blockBg="light"
        }
        {include file='../includes/testimonials.tpl' }       
		{include file='../includes/content/secures.tpl'
            blockBg="light"
        }
        {include file='../includes/content/features-table.tpl' }  
        {include file='../includes/content/banner-promo.tpl' }
        
        <!-- END CONTENT -->    
        
        <!-- FOOTER -->
        {*
            Template: FOOTER
            Переменные:
                our_products (text): Включить выключить блок OUR PRODUCTS (no|yes). * - yes 
        *}
        {include file='../includes/main_cache/main-footer.tpl' 
            our_products = "no"
        }
                
    </div>
        
    {include file='../includes/main_cache/main-analytics-footer.tpl'}
</body>
</html>