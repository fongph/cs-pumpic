{include file='../includes/main/main-header.tpl'
    robots="yes" 
    title="Parental Monitoring App Canada"
    description="Pumpic is mobile monitoring software designed for parents to secure their children remotely. Control cell phone use and web activities, track location all over Canada."
}    
    
<body>
    <!-- FLY BLOCKS -->
    {include file='../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->
    
    <div class="wrapper parental-monitoring-app-canada">
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
            title = "Multitask Parental Control<br/>Mobile Monitoring App"
            description = "Keep your children safe. Secure your family happiness. <br/> Track cell phones across Canada and beyond the borders."
            promoBuyBlock = "no"
            planPackageBuy = "yes"
            block_video = "no"
			flagPosition = 'right'
            flagName = 'ca'
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
                                                <li>Track calls and text messages</li>
                                                <li>Monitor contacts and calendar</li>
                                                <li>View videos and photos</li>
                                        </ul>
                                </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="{$img}/icons/icon-track-kids.png" alt="remote mobile monitoring">
                                        <h3>Track remotely</h3>
                                        <ul class="feature_list">
                                                <li>Locate devices anywhere in Canada</li>
                                                <li>Blocks or limit websites and apps</li>
                                                <li>Set geo-fences, check the alerts</li>
                                        </ul>
                                </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
								        <img src="{$img}/icons/icon-online-activity.png" alt="monitor online activity">
                                        <h3>Follow online activities</h3>
                                        <ul class="feature_list">
                                                <li>Bookmarks and search history</li>
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
        description = "Pumpic provides you with multitask monitoring software designed to protect your family. You will hardly find a better solution containing more than 22 tracking features in one simple app."
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
                            <img src="{$img}/testimonials/amelia.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Amelia F. – Toronto, Ontario</h4>
                                    <p>“I installed Pumpic to look after my daughter when I’m a t work. The app does a great job. I can find out where my girl is even without calling her. I can control and filter her communication and make sure that her friends aren’t a bad company. I can count on the app even when I’m far away.”</p>
                            </div>
                    </div>
                    <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/frank.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Frank H. – Montreal, Quebec</h4>
                                    <p>“Children spend too much time online these days. I don’t want my son to waste his life on games, Facebook etc. That’s why I decided to apply parental control. Many parents I know use Pumpic, so I decided to follow their experience. The app is perfect. It helps me bring my son up as is right and proper.”</p>
                            </div>
                    </div>
                    <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/rose.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Rose G. – Ottawa, Ontario</h4>
                                    <p>“I tried many monitoring apps, but all of them lacked essential options and thus forced me to use more than one app. When I found Pumpic, it changed everything. Now I can monitor my kids from one account and control literally each step they make with mobile phones on them.”</p>
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