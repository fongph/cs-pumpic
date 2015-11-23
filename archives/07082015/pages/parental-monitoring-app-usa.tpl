{include file='../includes/main/main-header.tpl'
    robots="yes" 
    title="Parental Monitoring App USA"
    description="Pumpic is a multi-featured tracking application designed for parents to take care of their children remotely. Monitor cell phone usage and all kinds of online activity, track location all over the USA."
}    
    
<body>
    <!-- FLY BLOCKS -->
    {include file='../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->
    
    <div class="wrapper parental-monitoring-app-usa">
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
            title = "Parental Monitoring App<br/>for Android and iOS<br/>Smartphones and Tablets"
            description = "Proved to be reliable across the USA."
            promoBuyBlock = "no"
            planPackageBuy = "yes"
            block_video = "no"
            flagPosition = 'right'
            flagName = 'usa'
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
                                                <li>Track call logs and text messages</li>
                                                <li>Monitor calendar and contacts</li>
                                                <li>View multimedia (videos and photos)</li>
                                        </ul>
                                </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="{$img}/icons/icon-track-kids.png" alt="remote mobile monitoring">
                                        <h3>Keep track of devices remotely</h3>
                                        <ul class="feature_list">
                                                <li>Find location anywhere in the US</li>
                                                <li>Lock or wipe, set blocks and limits</li>
                                                <li>Set geo-fences, check out alerts</li>
                                        </ul>
                                </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
								        <img src="{$img}/icons/icon-online-activity.png" alt="monitor online activity">
                                        <h3>Follow online activities</h3>
                                        <ul class="feature_list">
                                                <li>Browsing history and bookmarks</li>
                                                <li>Facebook, Instagram, and emails</li>
                                                <li>WhatsApp, Viber, Skype, and Kik</li>
                                        </ul>
                                </div>
                        </div>
                </div>
        </div>
</div> 

        {include file='../includes/content/features-table.tpl'
        title = "Pumpic Features"
        description = "If you need a reliable tool to protect your children remotely from any spot of the United Sates or abroad, Pumpic will provide you with a relevant solution with more than 22 tracking features and convenient user interface. Learn more about Pumpic monitoring abilities from the table below."
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
                            <img src="{$img}/testimonials/eva.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Eva A. – NYC, New York</h4>
                                    <p>“My son is a scout who loves travelling through America with friends. I worry so much when he is away. To ensure his safety I installed Pumpic on his smartphone and now I know exactly he is fine. I can track his location anytime and have no worries if he is safe. When I can’t reach him, I just open my account and check his recent activities. Thanks Pumpic so much!”</p>
                            </div>
                    </div>
                    <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/michael.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Michael O. – Los Angeles, California</h4>
                                    <p>“This app is what I’ve been looking for so long. I decided to control my son’s cell phone use, but didn’t know how to do it without just taking it and checking through all activities. A friend of mine recommended trying Pumpic. I gave it a shot and now I see it was good advice. I can easily monitor calls and SMS he sends and receives. It is a real helping hand for moms and dads.”</p>
                            </div>
                    </div>
                    <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/alice.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Alice N. – Denver, Colorado</h4>
                                    <p>“I didn’t want my daughters to enter the world of the Internet unkept, that’s why I needed a tool to keep an eye on them distantly. Pumpic turned out to be the very app I needed. It lets me look after my girls and prevent them from dangers the Internet may bring about. I blocked all possible websites with 18+ content at once and follow their search history every day.”</p>
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