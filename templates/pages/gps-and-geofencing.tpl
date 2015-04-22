{include file='../includes/main/main-header.tpl'
    robots="yes" 
    title="Cell Phone GPS Tracking and Geo-fencing App"
    description="Pumpic app is a new software solution for parents to control mobile phones of their children. Tracking kid's smartphone usage, incoming and outbound calls, monitor browsing history and text messages, GPS location and social network activity on Android and iOS devices with. Set safe zones on a map and receive alerts when your kid enters or leaves them."
    keywords="GPS track kids phone, cild geofencing app, monitoring mobile location"
}    
    
<body>
    <!-- FLY BLOCKS -->
    {include file='../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->
    
    <div class="wrapper block-GPS">
        <!-- TOP MENU -->
 	{include file='../includes/main/main-top-menu.tpl' 
            cache_id = "includes_main_main-top-menu"
            nocache
        }
        
        <!-- CONTENT -->
        {include file='../includes/content/info/info-promo.tpl'
            imgUrl = "header_banners/bg_GPS_437x226.png"
            imgAlt = "Cell Phone GPS Tracking"
            imgAlign = "right"
            imgVerticalAlign = "bottom"
            textAlign = "right"
            title = "Cell Phone GPS<br /> Tracking App"
            description = "Track location and route history. Set Geo-fences. <br />
            Monitor iPhones, iPads, iPods Touch and Android devices."
            promoBuyBlock = "no"
            planPackageBuy = "yes"
        }
        
        {include file='../includes/content/plans.tpl' }
        
        {include file='../includes/content/secures-GPS.tpl' blockBg="light"}
        {include file='../includes/content/features-table.tpl'
        title = "Advanced Monitoring Solutions"
        description = "Pumpic always remains at least a step ahead of modern tracking technologies by reasonably improving existing features and introducing new solutions.<br /><br />
        On one side, it is a smart GPS tracker, which allows you to set Geo-fences and follow location. Once the target device leaves a safety zone or enters a restricted area, a notification alert comes to your inbox.<br /><br />
        On the other one, it is a multitask monitoring solution with a wide variety of useful functions. They will help with both your family matters and business affairs."
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
        description = "Right after installing Pumpic, all the data from the target device will be sent to your Control Panel. It can be accessed from any browser and any gadget, including PCs, mobile phones and tablets. In Control Panel, you can not only view the information, but also set restrictions, block, and limit some of activities."
        }


        {include file='../includes/content/how-get-pumpic.tpl' }    

<div class="{if $blockBg}{$blockBg}{else}dark{/if}">
    <div class="container">
            <h2 class="text-center testimonial-title">{if $title}{$title}{else}Trusted by Over 10 000 Customers Worldwide{/if}:</h2>
            <div class="row">
                


<div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
        <img src="{$img}/testimonials/testimonials_new_22.png" alt="" class="testimonial-photo">
        <div class="testimonial-text">
                <h4>Tiffany G. (mother of 15-year-old son)</h4>
                <p>“The app helped me find out that my son was skipping school classes. I set geo-fences and saw that sometimes he left school too early or didn’t enter it at all. Thanks to Pumpic for helping me take care of my boy. It’s amazing that I can use such technologies so easily. I’m 40 years old and I can’t say that I’m a techy person. However, it doesn’t demand from me any technical skills. I just switch it on and everything comes clear to me. I can now control my son and be sure that he won’t ever again miss school or do anything wrong without me knowing.”</p>
        </div>
</div>
<div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
        <img src="{$img}/testimonials/testimonials_new_23.png" alt="" class="testimonial-photo">
        <div class="testimonial-text">
                <h4>Scott J. (35-year-old husband)</h4>
                <p>“This tracking app literally saved my wife’s life. A few weeks ago, we subscribed for Pumpic to track each other in case of emergency. A week ago, my wife get into an accident. I tried to call her that evening, but she didn’t answer. I launched the app then, and saw the map, where she was outside the town and didn’t move. I took my car and went there. When I reached the place, I saw her car crashed against a tree, and my wife unconscious. Thanks God, she wasn’t injured too much, and thanks Pumpic for saving her life.”</p>
        </div>
</div>
<div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
        <img src="{$img}/testimonials/testimonials_new_24.png" alt="" class="testimonial-photo">
        <div class="testimonial-text">
                <h4>John and Megan F. (parents of two sons)</h4>
                <p>““My husband and I, we are successful businessmen and sometimes spend too much time at work. Meanwhile our children stay at home alone, go to school on their own and grow up without parents nearby. We tried a lot to find a reasonable solutions, tried many apps, but Pumpic turned out to be the most reliable one. We installed it on their smartphones and now can know what happens to them right from our offices. We set geofences and can be sure they get to school without troubles, or get home on time. It’s like a helping hand for us.”</p>
        </div>
</div>

                    
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