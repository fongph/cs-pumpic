{include file='../includes/main/main-header.tpl'
    robots="yes" 
    title="Online monitoring software for cell phones"
    description="Pumpic for cell [hone is a new solution for mobile monitoring control. Track smartphone or tablet usage, monitor incoming and outbound calls, monitor browsing history and text messages, track GPS location and social network activity on target devices with Pumpic.com"
}    
    
<body>
    <!-- BLOCK GTM -->
    {include file='../includes/main/main-after-body.tpl'}
    <!-- END BLOCK GTM -->
    
    <!-- FLY BLOCKS -->
    {include file='../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->
    
    <div class="wrapper block-online online-monitoring-software">
	
	<!-- TOP MENU -->
	{include file='../includes/main/main-top-menu.tpl'
            cache_id = "includes_main_main-top-menu"
            nocache
        }
        
        <!-- FLY BLOCKS -->
        {nocache}
        {if ''|hasFreeTrialStick}    
            {include file='../includes/content/fly/fly-free-trial.tpl'}
        {/if}    
        {/nocache}
        <!-- END FLY -->
        
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
            imgUrl = "landings/bg_features_call.png"
            imgAlt = "online mobile monitoring"
            imgAlign = "right"
            imgVerticalAlign = "center"
            textAlign = "right"
            title = "Remote Smartphone Monitoring App"
            description = "Pumpic helps track cell phone activity.<br/>Monitor mobile devices remotely with Pumpic."
            promoBuyBlock = "no"
            listText = "Follow Calls and SMS|Track GPS location|Monitor online activity"
            planPackageBuy = "yes"
            block_video = "yes"
            block_video_src = "http://www.youtube.com/embed/Atg0CbaytAY"
        }
        {* landing_features/bg_features_call_515x267.png *}
        {* ?rel=0&wmode=transparent&fs=0&autoplay=1&modestbranding=1&autohide=1 *}
        {*listText = "Follow Calls and SMS|Track GPS location|Monitor online activity"*}
        
        {include file='../includes/content/plans.tpl'}

        {* Template: FLY BUTTONS
        *}
        {include file='../includes/content/fly/box-buttons.tpl'
            buttonBuyNow = 'yes'
            buttonViewDemo = 'no'
            buttonFreeTrial = 'yes'
        }
        
<div class="{if $blockBg}{$blockBg}{else}dark{/if}">
        <div class="container">
                <h2 class="text-center">Apple and Android Mobile Phone Monitoring</h2>
                <div class="row">
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="{$img}/icons/icon-mobile-secure.png" alt="">
                                        <h3>Monitor cell phone usage</h3>
                                        <ul class="feature_list">
                                                <li>Track inbound and outbound calls</li>
                                                <li>Monitor and block SMS</li>
                                                <li>Track contacts and calendar</li>
                                        </ul>
                                </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="{$img}/icons/icon-online-activity.png" alt="">
                                        <h3>Monitor online activity</h3>
                                        <ul class="feature_list">
                                                <li>Monitor browsing history</li>
                                                <li>Block websites and applications</li>
                                                <li>Monitor social media and chats </li>
                                        </ul>
                                </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="{$img}/icons/icon-track-kids.png" alt="">
                                        <h3>Control the device remotely</h3>
                                        <ul class="feature_list">
                                                <li>Use SMS commands to control the device </li>
                                                <li>Lock and wipe the device remotely</li>
                                                <li>Keep track of location and route history</li>
                                        </ul>
                                </div>
                        </div>
                </div>
        </div>
</div>
     
{include file='../includes/content/features-table.tpl' 
        blockBg="light"
}                                        
{*                                        
<div class="{if $blockBg}{$blockBg}{else}light{/if}">
        <div class="container">
                <h2 class="text-center">Pumpic Features</h2>
                <div class="row">
                    
                    <div id="table-container" class="table-col-3 table-md-col-3 table-sm-col-3">
                        <article class="text-center">Pumpic is a multifeatured mobile phone tracking software that comes with a large range of monitoring functions. They will help you keep track of the target device quickly and quietly.</article>
                        <section>
                            <div class="tab col-item-3 col-md-item-3 col-sm-item-3">
                                <ul>
                                    <li><i class="i-features-sms"></i> View SMS</li>
                                    <li><i class="i-features-cell-history"></i> View Call History</li>
                                    <li><i class="i-features-calendar"></i> View Calendar</li>
                                    <li><i class="i-features-contacts"></i> View Contacts</li>
                                    <li><i class="i-features-email"></i> View Emails</li>
                                </ul>
                            </div>

                            <div class="tab col-item-3 col-md-item-3 col-sm-item-3">
                                <ul>
                                    <li><i class="i-features-videocam"></i> View Videos</li>
                                    <li><i class="i-features-photos"></i> View Photos</li>
                                    <li><i class="i-features-browser"></i> Control Browser</li>
                                    <li><i class="i-features-app"></i> Control Applications</li>
                                    <li><i class="i-features-social"></i> Control Social Networks</li>
                                </ul>
                            </div>

                            <div class="tab col-item-3 col-md-item-3 col-sm-item-3">
                                <ul>
                                    <li><i class="i-features-location"></i> Location Tracking</li>
                                    <li><i class="i-features-keyloger"></i> Keylogger</li>
                                    <li><i class="i-features-sms-commands"></i> SMS Commands</li>
                                    <li class="hidden-mobile"></li>
                                    <li class="hidden-mobile"></li>
                                </ul>
                            </div>
                        </section>
                        
                    </div>    
                    
                </div>
        </div>
</div> *}                                    
   
                                        
        {include file='../includes/content/ipad.tpl' 
                blockBg="dark"
                imgUrl = "parental_control/ipad.png"
                imgAlt = "Cell phone monitoring"
                title = "Easy-to-Use Control Panel"
        }
        
        {* description = "Right after installing Pumpic, all the data from the target device will be sent to your Control Panel. It can be accessed from any browser and any gadget, including PCs, mobile phones and tablets. In Control Panel, you can not only view the information, but also set restrictions, block, and limit some of activities."

         *}
        
{*<div class="{if $blockBg}{$blockBg}{else}light{/if}">
    <div class="container">
        <div class="row">
            <div class="col-sm-10 col-md-10 col-lg-10 col-sm-offset-1 col-md-offset-1 col-lg-offset-1 gutter-wide">
                <h2 class="text-center">Why Pumpic</h2>
                <div class="row">
                    <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                        <h3 class="text-center"><img src="{$img}/icons/icon-easy-to-use.png" alt="">Easy to use</h3>
                        <p class="text-center">Pumpic is feature-rich mobile monitoring software that will help you take care of your children remotely. More than 20 monitoring features are gathered in Pumpic app.<br/><br/>Control Panel has a user-friendly design and does not require any specific technical skills.</p>
                    </div>
                    <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                        <h3 class="text-center"><img src="{$img}/icons/ico-easy-to-install.png" alt="">Easy to install</h3>
                        <p class="text-center">Follow the guidelines and start remote monitoring from your Control Panel right after the setup. Get physical access to the target device once and install the app in less than 5 minutes.<br/><br/>For iPhone monitoring via iCloud solution you don't even need to install the software on the target device.</p>
                    </div>
                    <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                        <h3 class="text-center"><img src="{$img}/icons/ico-easy-to-contact.png" alt="">Easy to contact</h3>
                        <p class="text-center">Pumpic application has a user-friendly interface, which makes the monitoring process more than simple. Enter your Control Panel and see all the data from the target device in a readable form.<br/><br/>Feel free to contact our Support Team at any time, for any reason.</p>
                    </div>
                </div>
            </div>
        </div> 

    </div>

</div>*}
 	
 {* blockBg="dark" *}
 {include file='../includes/content/how-get-pumpic.tpl' 
             blockBg="light"
        }

{* light *}        
<div class="{if $blockBg}{$blockBg}{else}dark{/if}">
    <div class="container">
            <h2 class="text-center testimonial-title">Trusted by Over 10 000 Customers Worldwide:</h2>
            <div class="row">
                
                <div class="bxSliders only-pc">
                        <!-- SLIDE #1 -->
                        <div class="slide">
                
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/testimonials_new_41.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Martha T.</h4>
                                    <p>“I lost my cell phone a few weeks ago. I didn’t want anyone, who would find it to see the information stored on the device, so I quickly wiped everything and locked it. Then I used GPS tracking to find out where it was. I was very happy to see that my phone was still at the parking lot, where I left my car. Thanks, Pumpic, for the great help.”</p>
                            </div>
                    </div>
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/testimonials_new_42.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Sarah H. and Mathew H.</h4>
                                    <p>“We suspected our son of skipping classes, so we installed Pumpic on his smartphone. We checked his SMS and found out that our son was going to visit his best friend at the time when he was supposed to be at school. The next day we checked his location at the appointed time and saw that he was not at school. Since then Pumpic has been our helping hand in bringing our son up.”</p>
                            </div>
                    </div>
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/testimonials_new_43.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>John T.</h4>
                                    <p>“I use Pumpic to control whether my employees use their corporate cell phones for business purposes or to arrange their own affairs. The app shows me whom they call or send text messages to. I can look through corporate emails to prevent information leaks. I can even find out what they search for on the Internet and where they are. It is a great help for my business.”</p>
                            </div>
                    </div>
                            
                            
                        </div>
                </div>
                <div class="bxSliderMobile"></div>            
                            
            </div>
    </div>
</div>



        {*include file='../includes/main/main-footer-promo-v2.tpl'
            sloganFirst="Start monitoring with PUMPic"
            sloganSecond="Keep Your Eyes Open"
            bannerImg="image_banners_3.png"
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