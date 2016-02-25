{include file='../includes/main/main-header.tpl'
    robots="yes" 
    title="Browser Parental Control | Pumpic Monitoring Software"
    description=""
}    
    
<body>
    <!-- BLOCK GTM -->
    {include file='../includes/main/main-after-body.tpl'}
    <!-- END BLOCK GTM -->
    
    <!-- FLY BLOCKS -->
    {include file='../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->
    
    <div class="wrapper {*bg_bottom_images*} block-free-trial home-page">
        <!-- TOP MENU -->

	{include file='../includes/main/main-top-menu.tpl'
            topmenu_active='home'
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
        
        {* bg_famaly_427x254.png imgVerticalAlign = "bottom"*}
        <!-- CONTENT -->
        {include file='../includes/content/info/info-promo.tpl'
            fz="33"
            imgUrl = "header_banners/browser-control-head.png"
            imgAlt = "Landing Mobile"
            imgAlign = "left bottom"
            imgVerticalAlign = "center"
            textAlign = "left"
            title = "Internet Monitoring Software <br />Parental Control Application"
            description = "View browsing history and bookmarks. Block websites.<br />Reliable Internet monitoring for parents and children."
            promoBuyBlock = "no"
            planPackageBuy = "yes"
            block_video = "yes"
            block_video_src = "http://www.youtube.com/embed/Atg0CbaytAY"
        } {* ?rel=0&wmode=transparent&fs=0&autoplay=1&modestbranding=1&autohide=1 *}
        
        {include file='../includes/content/plans.tpl'}

        {* Template: FLY BUTTONS
        *}
        {include file='../includes/content/fly/box-buttons.tpl'
            buttonBuyNow = 'yes'
            buttonViewDemo = 'no'
            buttonFreeTrial = 'yes'
        }
		
{Content 
    styleTitle="h2"    
    title="How to Secure Kids on the Internet"
    blockBg='dark'}
	
	    <p class="text-center f-light">Internet is a great storage of information of all kinds. With its help any person can find anything he or she wants in a click. However, in addition to many benefits there is danger that sometimes is hidden from our sight. Our kids, they are most vulnerable to these online dangers. That’s why if handing them mobile devices and allowing access the web, you should do your best to take care of their safety.</p>
		<p class="text-center f-light">Pumpic provides comprehensive Internet monitoring and reliable online security.</p>
        <!-- BLOCK STATISTICK -->
        {*<div class="block-statistick row">
            
            <div class="item col-s-sm-12 col-xs-sm-12 col-sm-4 col-md-4 col-lg-4 border-none">
                <section>
                    <div class='pb20'><strong class="fz50 color-orange">View Visited Websites</strong></div>
                    <p>By means of a safe browser option, Pumpic allows monitoring all websites that your children visit. In addition, you can view bookmarks and check pages they favor. The app will revel if your kids access restricted web sources, watch violent videos, or sexually suggestive photos. Prevent your loved ones from things they are not ready to see yet.</p>
				</section>
            </div>
            <div class="item col-s-sm-12 col-xs-sm-12 col-sm-4 col-md-4 col-lg-4 border-none">
                <section>
                   <img alt="stop cyberbullying with Pumpic" src="{$img}/landings/browser-control.png" width="207px" height="208px" />
                </section>
            </div>
			<div class="item col-s-sm-12 col-xs-sm-12 col-sm-4 col-md-4 col-lg-4 border-none">
			    <section>
                    <div class='pb20'><strong class="fz50 color-orange">Block 18+ Content</strong></div>
                    <p>Pumpic provides parents with capability of blocking websites they consider inappropriate for children. View browsing history and bookmarks to find out if your kids access web sources that include sexual, explicit, or violent content. Block them and your children will not be able to enter any longer. Avert possible danger before it is too late.</p>
				</section>
            </div>
			
        </div>*}
        
        <table class="table-statistick">
            <tr>
                <td class="item col-s-sm-12 col-xs-sm-12 col-sm-12 col-md-4 col-lg-4 border-none">
                    <section>
                        <div class='pb20'><strong class="fz50 color-orange">View Visited Websites</strong></div>
                        <p>By means of a safe browser option, Pumpic allows monitoring all websites that your children visit. In addition, you can view bookmarks and check pages they favor. The app will revel if your kids access restricted web sources, watch violent videos, or sexually suggestive photos. Prevent your loved ones from things they are not ready to see yet.</p>
                    </section>
                </td>
                <td class="item col-s-sm-12 col-xs-sm-12 col-sm-12 col-md-4 col-lg-4 border-none vertical-aligh-bottom text-center">
                    <img class="statistick-images" alt="stop cyberbullying with Pumpic" src="{$img}/landings/browser-control.png" />
                </td>
                <td class="item col-s-sm-12 col-xs-sm-12 col-sm-12 col-md-4 col-lg-4 border-none">
                    <section>
                        <div class='pb20'><strong class="fz50 color-orange">Block 18+ Content</strong></div>
                        <p>Pumpic provides parents with capability of blocking websites they consider inappropriate for children. View browsing history and bookmarks to find out if your kids access web sources that include sexual, explicit, or violent content. Block them and your children will not be able to enter any longer. Avert possible danger before it is too late.</p>
                    </section>
                </td>
            </tr>
        </table>
        <!-- END -->

        <p class="text-center f-light">Internet is not a toy for little children. It can be helpful, educative, and entertaining, and at the same time dangerous enough to bring about many undesirable outcomes. Try to learn as much as possible about online perils and teach your kids face them responsibly. Cyberbullying, online predator attacks, sexting, and child abuse are real. They do exist and sometimes their ignorance costs children’s lives.</p>
{EndContent}
        
<div class="light">
        <div class="container">
                <h2 class="text-center">Apply Internet Monitoring Software</h2>
                <div class="row">
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="{$img}/icons/icon-track-kids.png" alt="cell phone monitoring">
                                        <h3>Browser tracking</h3>
                                        <ul class="feature_list">
                                                <li>View visited websites</li>
                                                <li>Follow bookmarks</li>
                                                <li>Block 18+ sources</li>
                                        </ul>
                                </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="{$img}/icons/icon-online-activity.png" alt="monitor online activity">
                                        <h3>Social networks and chats</h3>
                                        <ul class="feature_list">
                                                <li>Facebook and Instagram</li>
                                                <li>Skype, Viber, and Kik</li>
                                                <li>WhatsApp and Snapchat</li>
                                        </ul>
                                </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="{$img}/icons/icon-mobile-secure.png" alt="remote mobile monitoring">
                                        <h3>Remote control</h3>
                                        <ul class="feature_list">
                                                <li>Lock or wipe device</li>
                                                <li>Send SMS commands</li>
                                                <li>Block calls and SMS</li>
                                        </ul>
                                </div>
                        </div>
                </div>
        </div>
</div>
        
        {include file='../includes/content/features-table.tpl'
        title = "Many Useful Monitoring Features"
        description = "Pumpic lets you utilize remote mobile monitoring to the fullest. The app includes more than 24 parental control solutions that provide comprehensive protection comprising Internet monitoring and safety during daily activities on smartphone and tablets. Pumpic provides reliable security to all family on guard of your happiness."
        blockBg="dark"
        } 
        
        {include file='../includes/content/ipad.tpl' 
                blockBg="light"
                imgUrl = "parental_control/ipad.png"
                imgAlt = "Android"
                title = "Browsing via Control Panel"
				description = "The data on browsing history and bookmarks from the target device is instantly sent to your Control Panel. You can access it from any place with online connection and any device including smartphones, tablets, laptops, and desktop PCs. In addition to data tracking, the Control Panel allows setting time limits and blocking many of mobile device activities remotely."
                textAlign = "left"
        }
        
        {* description = "Right after installing Pumpic, all the data from the target mobile phone will be sent to your Control Panel. It can be accessed from any browser and any device, including PCs, smartphones and tablets. In Control Panel, you can not only view the information, but also set restrictions and block some of activities."             
        *}
        
        <div class="dark">
    <div class="container">
            <h2 class="text-center testimonial-title">Trusted by Over 10,000 Customers Worldwide:</h2>
            <div class="row">
                
                <div class="bxSliders only-pc">
                        <!-- SLIDE #1 -->
                        <div class="slide">
                
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/peter-f-13.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Peter F. – father of 13-year-old son</h4>
                                    <p>“I needed to set parental control on son’s Android and Chrome browser in particular. I installed Pumpic on his tablet and started tracking his online activities. I found out many interesting things. And one of them was that my son visited some web sources restricted for the underage. Pumpic helped me block it all and prevent my kid from watching 18+ videos for future use.”</p>
                            </div>
                    </div>
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/sarah-g-12.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Sarah G. – mother of 12-year-old son</h4>
                                    <p>“My sister recommended me Pumpic as a kind of safe browser for iPad I was going to present my son for a birthday. I tried it before giving him the device and was very surprised seeing with how many useful capabilities the app would provide me in addition. Locations, social media, app control, screen time limiting. All of these is a must for parents who really care.”</p>
                            </div>
                    </div>
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/tomas-u-15.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Tomas U. – father of 15-year-old daughter</h4>
                                    <p>“I started thinking about iPhone Safari parental controls soon after I’d noticed how much time my daughter spends surfing the web on her cell phone. Pumpic showed me the way out. It’s amazing how many helpful options the app has. I can not only monitor her browsing activity, but also track calls, messages, camera shots, and even location. That’s a huge help for parents.”</p>
                            </div>
                    </div>
                            
                        </div>
                </div> 
                <div class="bxSliderMobile"></div>            
                            
            </div>
    </div>
</div> 
        
        {include file='../includes/content/how-get-pumpic.tpl'
            blockBg="light"
        } 

        {include file='../includes/main/main-quick-link.tpl' 
            blockBg="dark"
        }        
        
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