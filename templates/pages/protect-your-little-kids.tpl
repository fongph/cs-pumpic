{include file='../includes/main/main-header.tpl'
    robots="no"
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
            block_video_src = "http://www.youtube.com/embed/Atg0CbaytAY"
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
                        <img src="{$img}/testimonials/t_new_19.png" alt="" class="testimonial-photo">
                        <div class="testimonial-text">
                            <h4>Joan L. (Omaha, NE)</h4>
                            <p>“The app helps me control my children, while I’m at work. I have to work overtime to support my family, that’s why my kids are on their own more often than not. With Pumpic, I’m sure they are safe. I know that wherever my kids go and whatever they do, they take their cells with them. So, I can track them, find out who calls or writes them, how much time they spend online and for which purposes. I suppose it is one of the most useful apps I’ve ever used.”</p>
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
                        <img src="{$img}/testimonials/t_new_2.png" alt="" class="testimonial-photo">
                        <div class="testimonial-text">
                            <h4>Melinda J. (St. Louis, MO)</h4>
                            <p>“I decided to install Android smartphone monitoring on my son’s cell since he started acting weird. He became very shy and scary. I tried to talk to him, but he said everything was fine. Pumpic helped me find out that my son was bullied by his schoolmates. They sent him messages with threats and posted offensive pictures online. I went to school, talked to teachers and parents of the offenders. I’m happy that we found the way out. Finally, my son and I can sleep without worries.”</p>
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