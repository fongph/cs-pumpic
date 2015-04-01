{include file='../includes/main/main-header.tpl'
    robots="yes" 
    title="Child cell phone monitoring software"
    description="Protect Your Kids Before It Is Too Late. Track location. View calls and SMS. Monitor online activity."
}    
    
<body>
    <!-- FLY BLOCKS -->
    {include file='../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->
    
    <div class="wrapper {*box-bottom-images*} prevent-online-dangers">
        <!-- TOP MENU -->
 	{include file='../includes/main/main-top-menu.tpl' 
                cache_id = "includes_main_main-top-menu"
                nocache
        }
        
        <!-- CONTENT -->
        {include file='../includes/content/info/info-promo.tpl'
            imgUrl = "header_banners/bg_teenagers_header_419x325.png"
            imgAlt = "Smartphone monitoring"
            imgAlign = "right"
            imgVerticalAlign = "bottom"
            textAlign = "right"
            title = "Prevent Online Dangers. <br />Pumpic Monitoring App."
            description = "Protect your kids before it is too late. <br />
            Track location. View calls and SMS. Monitor online activity."
            promoBuyBlock = "yes"
        }
        
        {include file='../includes/content/plans.tpl' }

        {* Template: FLY BUTTONS
        *}
        {include file='../includes/content/fly/box-buttons.tpl'
            buttonBuyNow = 'yes'
            buttonViewDemo = 'no'
            buttonFreeTrial = 'yes'
        }
        
         {include file='../includes/content/teenagers.tpl' 
                    blockBg="light"
        }
                
        {include file='../includes/content/secures.tpl'
            blockBg="dark"
        }

        {include file='../includes/content/features-table.tpl' 
                blockBg="light"
        }     

        {include file='../includes/content/ipad.tpl' 
                    blockBg="dark"
                    imgUrl = "parental_control/ipad.png"
                    imgAlt = "remote control"
                    title = "Easy-to-Use Control Panel"
                    description = "Try Control Panel in use to see how Pumpic prevents your kids from troubles.
                                   <br />Buy Pumpic to protect, control and secure your children now."
        }
        
        {include file='../includes/main/main-testimonials.tpl' 
            blockBg="light"
        }       

        {include file='../includes/prevent-online-dangers/how-pumpic.tpl' 
             blockBg="dark"
        }

        {include file='../includes/content/why-pumpic.tpl' 
            blockBg="light"
        }

        {include file='../includes/main/main-quick-link.tpl' 
            blockBg="dark"
        }


        {*include file='../includes/main/main-footer-promo-v2.tpl'
            sloganFirst="Prevent Troubles Remotely"
            sloganSecond="Secure Kids’ Happiness"
            bannerImg="image_banners_2.png"
        *}
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