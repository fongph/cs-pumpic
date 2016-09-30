{include file='../includes/main/main-header.tpl'
    robots="yes"
    title="Smartphone monitoring app for Android"
    description="Pumpic for Android is a new solution for parental control mobile monitoring. Track your children’s smartphone usage, follow incoming and outbound calls, monitor browsing history and text messages, track GPS location and social network activity on Android devices with Pumpic."
}    
    
<body>
    <!-- BLOCK GTM -->
    {include file='../includes/main/main-after-body.tpl'}
    <!-- END BLOCK GTM -->
    
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
            title = "Android Parental<br />Control App"
            description = "Pumpic takes care of your children safety.<br />Track your kids’ Android device remotely."
            promoBuyBlock = "no"
            listText = "Follow Calls and SMS|Track GPS location|Monitor online activity"
            planPackageBuy = "yes"
            block_video = "yes"
            block_video_src = "http://www.youtube.com/embed/Atg0CbaytAY"
        }
        {* ?rel=0&wmode=transparent&fs=0&autoplay=1&modestbranding=1&autohide=1 *}
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
        }
        
        {* description = "Right after installing Pumpic on an Android phone or tablet, all the data from the target device will be sent directly to your Control Panel. It can be accessed from any browser and any device, including PCs, smartphones and tablets. In Control Panel you can review the information collected, set restrictions, block, and limit some of activities on the target Android device."
        *}

        {include file='../includes/content/features-table.tpl' 
                blockBg="dark"
        } 

        {include file='../includes/content/how-get-pumpic.tpl'
            title = ""
            style = "static"
            blockBg="light"

        } 

        {*include file='../includes/testimonials.tpl'*} 
        
<div class="dark">
    <div class="container">
            <h2 class="text-center testimonial-title">Approved by Over 10,000 Parents:</h2>
            <div class="row">
                
                <div class="bxSliders only-pc">
                        <!-- SLIDE #1 -->
                        <div class="slide">
                
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/kate-u.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Kate U. – mother of 13-year-old daughter</h4>
                                    <p>“At parents guiding meeting our teacher told us about the accidents of online harassment and cyberbullying. He named several monitoring apps that parents could use to deal with the issue. We installed Pumpic. Why, oh why we didn’t do that earlier? It is amazing! I check the chats and IM messengers to make sure that nothing inappropriate takes place there. Also, from time to time I look through the contact list and ask daughter about new people added there.”</p>
                            </div>
                    </div>
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/lawrence-g.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Lawrence G. – father of 17-year-old daughter</h4>
                                    <p>“The Internet is hiding many threats for the underage kids. That’s why I’m sure that parental control apps are a must-have nowadays when the popularity of the Web among our youngsters is growing constantly. While looking for the best software to monitor my child’s mobile phone, I compared many different apps and realized that Pumpic&nbsp;is just what I need. Although this software demands rooting Android devices, I think that the result is totally worth it.”</p>
                            </div>
                    </div>
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/carole-e.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Carole E. - mother of 9-year-old daughter</h4>
                                    <p>“My daughter loves music and started attending piano classes this year. She’s just a small 9-year-old kid but already learns to be responsible and independent staying at school after classes and going home by bus on her own. I gave her the first phone to always stay in touch but still worry about her as moms always do. That’s why I decided to install Pumpic and now can track my girl’s location by GPS. Moreover, even now I see that soon this app will help me to monitor her Internet activity.”</p>
                            </div>
                    </div>
                            
                        </div>
                </div>
                <div class="bxSliderMobile"></div>
                            
            </div>
    </div>
</div>

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