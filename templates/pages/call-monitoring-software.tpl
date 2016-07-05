{include file='../includes/main/main-header.tpl'
    robots="yes" 
    title="Advanced Cell Phone Call Monitoring | Pumpic"
    description="Monitor your child's calls with the Pumpic smartphone parental controls. Track and block cell phone calls, view call logs - be aware of your kid's communication and suspicious call activity, and stop it for the good."
}    
    
<body>
    <!-- BLOCK GTM -->
    {include file='../includes/main/main-after-body.tpl'}
    <!-- END BLOCK GTM -->
    
    <!-- FLY BLOCKS -->
    {include file='../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->
    
    <div class="wrapper call-monitoring">
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
            imgUrl = "header_banners/bg_features_call_437x226.png"
            imgAlt = "calls monitoring app"
            imgAlign = "right"
            textAlign = "right"
            title = "Call Monitoring App"
            description = "Pumpic protects your kids from misgiving callers.<br />Track phone calls on Android and iOS devices remotely."
            promoBuyBlock = "no"
            planPackageBuy = "yes"
            block_video = "yes"
            block_video_src = "http://www.youtube.com/embed/Atg0CbaytAY"
        } {* ?rel=0&wmode=transparent&fs=0&autoplay=1&modestbranding=1&autohide=1 *}
        
         {include file='../includes/content/plans.tpl' }
        
        {* Template: FLY BUTTONS
        *}
        {include file='../includes/content/fly/box-buttons.tpl'
            buttonBuyNow = 'yes'
            buttonViewDemo = 'no'
            buttonFreeTrial = 'yes'
        } 
         
        {include file='../includes/content/ipad.tpl' 
                blockBg="dark"
                bgTab = "bgIOS"
                imgUrl = "icons/ipad_android.png"
                imgAlt = "call monitoring"
                title = "Cell Phone Call Tracking"
		description = "Right after installing the Pumpic smartphone parental controls, all the data from the target mobile phone will be sent to your Control Panel. It can be accessed from any browser and any device, including PCs, smartphones and tablets. In Control Panel, you can not only view the information, but also track call logs, <a class='a-default' href='/sms-monitoring-software.html'>check SMS</a>, set restrictions, and block some of activities."
        }
        
        {* description = "Try Control Panel demo to see Pumpic Calls Monitoring in use.<br/>Buy Pumpic to protect your kids and track their calls right now."

        *}
        
        {include file='../includes/content/why-pumpic.tpl' 
                blockBg="light"
        }
        
        <div class="light">
    <div class="container">
            <h2 class="text-center testimonial-title">Trusted by Over 10,000 Customers Worldwide:</h2>
            <div class="row">
                
                <div class="bxSliders only-pc">
                        <!-- SLIDE #1 -->
                        <div class="slide">
                
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/jessica-s-10.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Jessica S. – mother of 10-year-old son</h4>
                                    <p>“I’ve decided to give my son a cell phone, but wanted to be sure his number wouldn’t get in hands of misgiving people. Thus, I installed Pumpic to monitor his cell phone call logs. The app is great. I can see who reaches him on the phone and whom he calls. It shows phone numbers, contact names, time and duration of each call. I can even block strange phone numbers with this app. Really helpful!”</p>
                            </div>
                    </div>
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/alberta-j-14.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Alberta J. – mother of 14-year-old son</h4>
                                    <p>“I use Pumpic to monitor calls on iPhone of my son very often. With it, I can be sure that strangers don’t call him and he doesn’t try to contact anyone strange as well. It’s very important to have such an app if you give your kid a smartphone and wanna be sure he’s ok every now and then.”</p>
                            </div>
                    </div>
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/patrick-l-12.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Patrick L. – father of 12-year-old daughter</h4>
                                    <p>“I’ve been looking for such a call log Android app for quite a while and was glad to find this particular one. Pumpic is a helping hand for all my family. My wife and I, we use it to control our daughter on the phone and secure her when we can’t be near. It lets us monitor her calls and text messages, and even all Internet activities without taking her cell. Great app.”</p>
                            </div>
                    </div>
                            
                            
                    </div>
                </div> 
                <div class="bxSliderMobile"></div>        
                            
            </div>
    </div>
</div> 

        {*blockBg="light"*}
        {include file='../includes/content/secures-call-monitoring.tpl' 
            blockBg="dark"
        }                                

        {* blockBg="dark" *}
        {include file='../includes/content/features-table.tpl'
                blockBg="light"
        }

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