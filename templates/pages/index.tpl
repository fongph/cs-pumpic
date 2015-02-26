{include file='../includes/main/main-header.tpl'
    robots="yes" 
    title="Mobile Parental Control App for Children"
    description="Keep your family safe and secured with Pumpic. Track location. View calls and SMS. Follow online activity."
}    
    
<body>
    <!-- FLY BUTTON -->
    {include file='../includes/main/main-button-help.tpl'}
    {include file='../includes/main/main-button-goup.tpl'}
    <!-- END FLY BUTTON -->
    
    <div class="wrapper {*bg_bottom_images*} block-free-trial">
        <!-- TOP MENU -->

	{include file='../includes/main/main-top-menu.tpl'
            topmenu_active='home'
            cache_id = "includes_main_main-top-menu"
            nocache
        }
        
        <!-- CONTENT -->
        {include file='../includes/content/info/info-promo.tpl'
            imgUrl = "header_banners/bg_famaly_427x254.png"
            imgAlt = "Landing Mobile"
            imgAlign = "left bottom"
            imgVerticalAlign = "bottom"
            textAlign = "left"
            title = "Cell Phone <br />Monitoring Control App"
            description = "Keep your family safe and secured with Pumpic. <br />
                           Track location. View calls and SMS. Follow online activity."
            

            trial = "yes"
        }
        
        {include file='../includes/content/plans.tpl'}

        {* Template: FLY BUTTONS
        *}
        {include file='../includes/content/fly/box-buttons.tpl'
            buttonBuyNow = 'yes'
            buttonViewDemo = 'no'
            buttonFreeTrial = 'yes'
        }
        
        {include file='../includes/content/secures-mobile-phones-monitoring.tpl'}
        
        
        
        {include file='../includes/content/features-table.tpl' 
                blockBg="light"
        } 
        
        {include file='../includes/content/ipad.tpl' 
                blockBg="dark"
                imgUrl = "parental_control/ipad.png"
                imgAlt = "Android"
                title = "Easy-to-Use Control Panel"
                textAlign = "left"
                description = "Try Control Panel demo to see Pumpic app in use.
                               <br />Buy Pumpic to protect your family and secure your happiness right now."
        }
        
        {include file='../includes/main/main-testimonials.tpl'
                sliders = "false"
                blockBg="light"} 
        
        {include file='../includes/content/how-get-pumpic.tpl'}        
                
                
        {include file='../includes/content/why-pumpic.tpl'
                blockBg="light"}

        {include file='../includes/main/main-quick-link.tpl' 
            blockBg="dark"
        }        
        
        {*{include file='../includes/content/banners/banner-promo-trial.tpl'}*}
        
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