{include file='../includes/main/main-header.tpl'
    robots="no" 
    title="Prevent Online Dangers and Protect Your Kids"
    description="Protect Your Kids Before It Is Too Late. Track location. View calls and SMS. Monitor online activity."
}    
    
<body>
    <!-- FLY BUTTON -->
    {include file='../includes/main/main-button-help.tpl'}
    {include file='../includes/main/main-button-goup.tpl'}
    <!-- END FLY BUTTON -->
    
    <div class="wrapper box-bottom-images prevent-online-dangers">
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
            textAlign = "right"
            title = "Prevent Online Dangers. <br />Pumpic Monitoring App."
            description = "Protect your kids before it is too late. <br />
            Track location. View calls and SMS. Monitor online activity."
            trial = "yes"
        }
        
        {include file='../includes/content/plans.tpl' }

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