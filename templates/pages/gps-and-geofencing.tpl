{include file='../includes/main/main-header.tpl'
    robots="yes" 
    title="Cell Phone Geo-fencing App | Pumpic Parental Control"
    description="Reliable geofencing for iPhone, iPad, iPod Touch and Android. Set safety zones and danger areas. Receive alerts, when children enter or leave them. Track GPS location remotely."
    keywords="geofence iphone, geofence android, geofencing iphone, geofence alerts iphone, geofence apple, iphone geofence app, geofence app android, geofence reminders"
}    
    
<body>
    <!-- BLOCK GTM -->
    {include file='../includes/main/main-after-body.tpl'}
    <!-- END BLOCK GTM -->
    
    <!-- FLY BLOCKS -->
    {include file='../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->
    
    <div class="wrapper block-GPS">
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
            fz="33"
            collg="7"
            imgUrl = "header_banners/bg_GPS_437x226.png"
            imgAlt = "Cell Phone GPS Tracking"
            imgAlign = "right"
            imgVerticalAlign = "bottom"
            textAlign = "right"
            title = "Set Geo-fences. Receive Alerts<br />Location Tracking Application"
            description = "Specify safety zones and restricted areas on the map.<br />Geofence iPhone, iPad, iPod Touch, and Android."
            promoBuyBlock = "no"
            planPackageBuy = "yes"
        }
        
        {include file='../includes/content/plans.tpl' }
        
        {include file='../includes/content/secures-GPS.tpl' blockBg="light"}
        {include file='../includes/content/features-table.tpl'
        title = "Advanced Monitoring Solutions"
        description = "Pumpic always remains at least a step ahead of modern monitoring technologies providing reliable location tracking and geofencing for iPhone, iPad, iPod Touch, and Android smartphones and tablets.<br /><br />
        The app includes accurate GPS tracker, which allows you to set geo-fences and follow locations. Once the target device leaves safety zones or enter restricted areas, geofence reminders notify you instantly.<br /><br />
        Pumpic is a multitask monitoring solution with wide variety of useful functions. Its iOS and <a class='a-default' href='/android-phone-child-tracking-software.html'>Android phone tracking software for children</a> is what every careful parent needs to secure family safety and comprehensive protection."
        blockBg="dark"
        } 
    
         {* Template: FLY BUTTONS
        *}
        {include file='../includes/content/fly/box-buttons.tpl'
            buttonBuyNow = 'yes'
            buttonViewDemo = 'no'
            buttonFreeTrial = 'yes'
        }
         
        {include file='../includes/content/ipad.tpl' 
        blockBg="light"
        imgUrl = "icons/lending_features_smartphone_monitoring.png"
        imgAlt = "Easy-to-Use Control Panel"
        title = "Easy-to-Use Control Panel"
        }
        
        {* description = "Right after installing Pumpic, all the data from the target device will be sent to your Control Panel. It can be accessed from any browser and any gadget, including PCs, mobile phones and tablets. In Control Panel, you can not only view the information, but also set restrictions, block, and limit some of activities."
         *}


        {include file='../includes/content/how-get-pumpic.tpl' }    

<div class="light">
    <div class="container">
            <h2 class="text-center testimonial-title">{if $title}{$title}{else}Trusted by Over 10 000 Customers Worldwide{/if}:</h2>
            <div class="row">
                

            <div class="bxSliders only-pc">
                        <!-- SLIDE #1 -->
                        <div class="slide">        

<div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
        <img src="{$img}/testimonials/testimonials_new_22.png" alt="" class="testimonial-photo">
        <div class="testimonial-text">
                <h4>Tiffany G. (mother of 15-year-old son)</h4>
                <p>“The app helped me find out that my son was skipping school classes. I used it to geofence his Android tablet and saw that sometimes he left school too early or didn’t enter it at all. Thanks to Pumpic for helping me take care of my boy. It’s amazing that I can use such technologies so easily. I’m 40 years old and I can’t say that I’m a techy person. However, it doesn’t demand from me any technical skills. I just switch it on and everything comes clear to me. I can now control my son and be sure that he won’t ever again miss school or do anything wrong without me knowing. It’s the most reliable geofence app for Android I’ve ever tried.”</p>
        </div>
</div>
<div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
        <img src="{$img}/testimonials/testimonials_new_23.png" alt="" class="testimonial-photo">
        <div class="testimonial-text">
                <h4>Scott J. (father of 16-year-old son)</h4>
                <p>“I’ve recently presented my son his first Apple device. He was so pleased and happy. At the same time, we both agreed that I would set up parental app to receive geofence alerts from his iPhone and check when he leaves school or home and comes back. The app has shown great results since then. I don’t try to snoop into my kids’ activities I’m not supposed to, but it leaves me without any worries while he’s out with friends. If you need to geofence the Apple phone too, I’d recommend you Pumpic.”</p>
        </div>
</div>
<div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
        <img src="{$img}/testimonials/testimonials_new_24.png" alt="" class="testimonial-photo">
        <div class="testimonial-text">
                <h4>John and Megan F. (parents of 14-year-old daughter)</h4>
                <p>“My husband installed this iPhone geofence app on our daughter’s cell a few weeks ago. I didn’t even know there could be anything like that. I can see where she is from my computer and can know for sure the time when she goes out, enters her school and comes back after classes. Great solution. Very easy-to-use and fast. We recommend Pumpic to all careful parents, who really want to be sure their children are safe and protected.”</p>
        </div>
</div>

                
                        </div>
            </div>
            <div class="bxSliderMobile"></div>    
        
        
            </div>
    </div>
</div>


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