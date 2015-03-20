{closeAccess}
{include file='../includes/main/main-header.tpl'
    robots="yes" 
    title="Title"
    description="Description"
}  

<body>
    <!-- FLY BLOCKS -->
    {include file='../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->
    
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
            promoBuyBlock = "yes"
        }
        
        {* TEMPLATE TEENAGERS *}
        {include file='../includes/content/teenagers.tpl' 
                    blockBg="light"
        }
        
        {* BLOCK DISCOUNT *}
        {include file='../includes/content/discount_50_v2.tpl'}
                
        {* SAMPLE BLOCK SECURES *}
        {include file='../includes/content/secures.tpl'
                blockBg="light"
        }
        
        {*  BLOCK FEATURES LIST *}
        {include file='../includes/content/features.tpl'}
        
        {* BLOCK TEXT(HTML) *}
        {Content 
            title="Email using statistics"
            blockBg='light'}

                <p>Though children do not tend to use an email in their online communication, they have to use it almost every day. The thing is that most websites and literally all social networks require an email to sign in. That’s why email monitoring software can show you a broad picture of your kid’s online activity: preferred websites, social networks he or she uses as well as if your child browses sites with inappropriate content.</p>

                <ul>
                    <li>More than 80% of kids receive inappropriate spam via email on a daily basis</li>
                    <li>In addition, 27% of teens have received emails with words or photos that made them feel embarrassed</li>
                    <li>And only 1 in 3 parents with online access actively protect their kids with filtering or blocking software</li>
                </ul>

                <p>The Internet is the easiest way for online predators, web swindlers and cyberbullies to contact your children. By making friendship with your kids via social media, it is not hard to find out their email addresses, which is the key to personal data and identity theft. Unfortunately, not many parents realize how important web protection is. These days’ online reality shifts the world around, making new rules for us. If you really want to secure your kids’ happiness, it is for you to consider these rules.</p>
        {EndContent}
        
        {* BLOCK PLANS *}
        {include file='../includes/content/plans.tpl'}

        {* Template: FLY BUTTONS
        *}
        {include file='../includes/content/fly/box-buttons.tpl'
            buttonBuyNow = 'yes'
            buttonViewDemo = 'no'
            buttonFreeTrial = 'yes'
        }
        
        {* TEMPLATE SECURES MOBILE PHONES MONITORING *}
        {include file='../includes/content/secures-mobile-phones-monitoring.tpl'}
        
        
        {* BLOCK FEATURES TEBLE *}
        {include file='../includes/content/features-table.tpl' 
                blockBg="light"
        } 
        
        {* BLOCK Easy-to-Use 'ipad' *}
        {include file='../includes/content/ipad.tpl' 
                blockBg="dark"
                imgUrl = "parental_control/ipad.png"
                imgAlt = "Android"
                title = "Easy-to-Use Control Panel"
                textAlign = "left"
                description = "Try Control Panel demo to see Pumpic app in use.
                               <br />Buy Pumpic to protect your family and secure your happiness right now."
        }
        
        {* BLOCK Easy-to-Use 'ipad_android' *}
        {include file='../includes/content/ipad.tpl' 
                blockBg="dark"
                imgUrl = "icons/ipad_android.png"
                imgAlt = "call monitoring"
                title = "Calls Monitoring"
                textAlign = "left"
                description = "Try Control Panel demo to see Pumpic Calls Monitoring in use.<br/>Buy Pumpic to protect your kids and track their calls right now."

        }
        
        {* TEMPLATE TESTIMONIALS *}
        {include file='../includes/main/main-testimonials.tpl'
                title = "Trusted by Over 10 000 Customers Worldwide"
                sliders = "false"
                blockBg="light"} 
        
        {* BLOCK HOW-GET-PUMPIC *}        
        {include file='../includes/content/how-get-pumpic.tpl'
            title = ""
            style = "static"
        }        
                
        {* BLOCK WHY PUMPIC *}        
        {include file='../includes/content/why-pumpic.tpl'
                blockBg="light"}

        {* BLOCK QUICK LINK *}        
        {include file='../includes/main/main-quick-link.tpl' 
            blockBg="dark"
        }        
        
        
        {* TEMPLATE BANNERS *}
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