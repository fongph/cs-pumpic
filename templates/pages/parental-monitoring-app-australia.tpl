{include file='../includes/main/main-header.tpl'
    robots="yes" 
    title="Parental Monitoring App Australia"
    description="Pumpic is modern monitoring software designed for parents to protect their children remotely. Track cell phone usage and online activities, follow location all over Australia."
}    
    
<body>
    <!-- FLY BLOCKS -->
    {include file='../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->
    
    <div class="wrapper parental-monitoring-app-australia">
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
            imgAlt = "Smartphone monitoring"
            imgAlign = "right"
            textAlign = "right"
            title = "Parental Monitoring App <br/> for Android and Apple iOS"
            description = "Keep your family safe, protected, and secured. <br/> Track mobile phones across Australia and overseas."
            promoBuyBlock = "no"
            planPackageBuy = "yes"
            block_video = "no"
			flagPosition = 'left'
            flagName = 'au'
        }
        
        {include file='../includes/content/plans.tpl' }
        
<div class="dark">
        <div class="container">
                <h2 class="text-center">How Pumpic Secures Your Kid</h2>
                <div class="row">
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="{$img}/icons/icon-mobile-secure.png" alt="cell phone monitoring">
                                        <h3>Control cell phone use</h3>
                                        <ul class="feature_list">
                                                <li>Monitor calls and text messages</li>
                                                <li>Track contacts and calendar events</li>
                                                <li>View photos and video files</li>
                                        </ul>
                                </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="{$img}/icons/icon-track-kids.png" alt="remote mobile monitoring">
                                        <h3>Track remotely</h3>
                                        <ul class="feature_list">
                                                <li>Locate devices all over Australia</li>
                                                <li>Blocks or limit applications and sites</li>
                                                <li>Set geo-fences, receive alerts</li>
                                        </ul>
                                </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
								        <img src="{$img}/icons/icon-online-activity.png" alt="monitor online activity">
                                        <h3>Follow online activities</h3>
                                        <ul class="feature_list">
                                                <li>Bookmarks and web sources</li>
                                                <li>WhatsApp, Viber, Skype, and Kik</li>
                                                <li>Facebook, Instagram, and emails</li>
                                        </ul>
                                </div>
                        </div>
                </div>
        </div>
</div> 

        {include file='../includes/content/features-table.tpl'
        title = "Pumpic Features"
        description = "Pumpic provides you with multi-featured parental control options and protects your family. Check out the entire list of useful monitoring functions below and keep your children safe."
        blockBg="light"
        } 
    
         {* Template: FLY BUTTONS
        *}
        {include file='../includes/content/fly/box-buttons.tpl'
            buttonBuyNow = 'yes'
            buttonViewDemo = 'no'
            buttonFreeTrial = 'yes'
        }
         
        {include file='../includes/content/ipad.tpl' 
        blockBg="dark"
        imgUrl = "icons/lending_features_smartphone_monitoring.png"
        imgAlt = "Easy-to-Use Control Panel"
        title = "Remote Smartphone Monitoring"
        description = "Right after installing Pumpic, all the data from the target device will be sent to your Control Panel. It can be accessed from any browser and any gadget, including PCs, mobile phones and tablets. In Control Panel, you can not only view the information, but also set restrictions, block, and limit some of activities."
        }


        {include file='../includes/content/how-get-pumpic.tpl'
		blockBg="light"
		}    

<div class="dark">
    <div class="container">
            <h2 class="text-center testimonial-title">Testimonials:</h2>
            <div class="row">
                    <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/charlotte.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Charlotte F. – Melbourne, Victoria</h4>
                                    <p>“My son is a huge fan of the Internet. He spends all the time he has online. I decided to get it under control and Pumpic helped me a lot. I set limits when he could use browsers and other network applications. I filtered 18+ websites as well. Thanks to Pumpic I have no worries any longer.”</p>
                            </div>
                    </div>
                    <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/zoe.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Zoe D. – Canberra, Australian Capital Territory</h4>
                                    <p>“I’m a single mom and sometimes have to work double tides. The app helps me take care of my kids when I can’t be near. I can easily follow their calls and SMS remotely from work, I can view their online messages and control web sources they visit. It’s a great help for me. Sincerely.”</p>
                            </div>
                    </div>
                    <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/noah.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Noah R. – Sydney, New South Wales</h4>
                                    <p>“I twice busted my son watching 18+ videos on his tablet and unfortunately realized that my words and bans meant nothing to him. I installed Pumpic. I didn’t know it could be so useful. I can not only put websites on a blacklist, but also control calls, SMS and places he visits. A great app for parenting.”</p>
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
        {include file='../includes/main/main-recommended.tpl'
		blockBg="light"
		}
        
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