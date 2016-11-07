{include file='../includes/main/main-header.tpl'

    title="Child Safety Monitoring App"
    description="Little kids are exposed to dangers more than others. Pumpic app leaves no chances to online predators, cyberbullies, kidnappers, and other abusers."
}    
    
<body>
    <!-- BLOCK GTM -->
    {include file='../includes/main/main-after-body.tpl'}
    <!-- END BLOCK GTM -->
    
    <!-- FLY BLOCKS -->
    {include file='../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->
    
    <div class="wrapper {*box-bottom-images*} prevent-online-dangers protect-your-little-kids">
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
            collg = "7"
            imgUrl = "header_banners/hd_protect_your_little_kids_2.png"
            maxWidth = "469"
            imgAlt = "Smartphone monitoring"
            imgAlign = "right"
            imgVerticalAlign = "bottom"
            textAlign = "right"
            title = "Protect Your Little Kids<br />Parental Control Application"
            description = "Secure kids from cyberbullies, kidnappers, and other abusers.<br />Track location. Block strange contacts. Control phone activities."
            promoBuyBlock = "no"
            planPackageBuy = "yes"
            block_video = "yes"
            block_video_src = "https://www.youtube.com/embed/Atg0CbaytAY"
        }
        
        {include file='../includes/content/plans.tpl' }

        {* Template: FLY BUTTONS
        *}
        {include file='../includes/content/fly/box-buttons.tpl'
            buttonBuyNow = 'yes'
            buttonViewDemo = 'no'
            buttonFreeTrial = 'yes'
        }
        
         {include file='../includes/content/teenagers_protect_little_kids.tpl' 
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
        }
        
        {* description = "Right after installing Pumpic, all the data from the target device will be sent to your Control Panel. It can be accessed from any browser and any gadget, including PCs, mobile phones and tablets. In Control Panel, you can not only view the information, but also set restrictions, block, and limit some of activities."
         *}
        
        {include file='../includes/content/how-get-pumpic.tpl' 
             blockBg="light"
        } 
         
        <!-- TESTIMONIALS -->
        <div class="dark">
            <div class="container">
                <h2 class="text-center testimonial-title">Trusted by Over 10,000 Customers Worldwide:</h2>
                <div class="row">
                    <div class="bxSliders only-pc">
                        <!-- SLIDE #1 -->
                        <div class="slide">
                    
                    
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                        <img src="{$img}/testimonials/caroline-i.png" alt="" class="testimonial-photo">
                        <div class="testimonial-text">
                            <h4>Caroline I. (Miami, FL)</h4>
                            <p>“It is never too early for a “sex talk” and we had realized it when Pumpic helped us to catch our 12-year old son red-handed browsing the adult content site. After that, we immediately set up the age-appropriate content filtering and always look through the browsing history on his smartphone. Of course, that didn’t cancel the necessity to talk about birds and bees, but Pumpic let us know that we really have to discuss it.”</p>
                        </div>
                    </div>
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                        <img src="{$img}/testimonials/email_monitoring_software/testimonials4.png" alt="" class="testimonial-photo">
                        <div class="testimonial-text">
                            <h4>Steven R. (Fresno, CA)</h4>
                            <p>“After a few days that I started to spy on email my son uses, I found that he receives too many spam letters from websites, which seemed strange to me. I opened some of them and realized that he was signed up for 18+ web sources, and that’s why they sent him advertisements. We had a serious talk and both agreed he should stop and sign out. I will keep an eye on him. Thanks Pumpic.”</p>
                        </div>
                    </div>
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                        <img src="{$img}/testimonials/ruth-s.png" alt="" class="testimonial-photo">
                        <div class="testimonial-text">
                            <h4>Ruth S. (Laconia, NH)</h4>
                            <p>“I’m thankful to the team of Pumpic because with the help of their app I was able to protect my boy from an identity theft. My son received a text from an unknown person who claimed to be a representative of a bank that my family has nothing to do with. The fraudster was demanding to send him his Social Security Number. I was lucky to warn my son just on time and avoid possible consequences.”</p>
                        </div>
                    </div>
                        
                        
                        </div>
                    </div>
                    <div class="bxSliderMobile"></div>    
                        
                </div>
            </div>
        </div>
        <!-- END -->
        
        {* include file='../includes/testimonials.tpl' 
            blockBg="dark"
        *}       

        

        {*include file='../includes/content/why-pumpic.tpl' 
            blockBg="light"
        *}


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
        {include file='../includes/main/main-quick-link.tpl'
        blockBg="light"
        }

        {include file='../includes/main/main-footer.tpl'}
                
    </div>
        
    {include file='../includes/main/main-analytics-footer.tpl'}
</body>
</html>