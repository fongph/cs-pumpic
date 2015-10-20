{include file='../includes/main/main-header.tpl'
    robots="yes" 
    title="Android Tablet Parental Control | Pumpic Mobile Monitoring"
    description="Set parental restrictions on the Android tablet with Pumpic. Monitor device use, online activities, and locations. Specify geo-fences. Protect your children."
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
        
        {* bg_famaly_427x254.png imgVerticalAlign = "bottom"*}
        <!-- CONTENT -->
        {include file='../includes/content/info/info-promo.tpl'
            imgUrl = "header_banners/android-parental-control.png"
            imgAlt = "Landing Mobile"
            imgAlign = "left bottom"
            imgVerticalAlign = "center"
            textAlign = "left"
            title = "Android Tablet Monitoring <br />Parental Control App"
            description = "Provide your children with reliable security. <br />
                           Track online activities, locations, and even more."
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
    title="How to Secure Children on Android Tablet"
    blockBg='dark'}
	
	    <p class="text-center f-light">Android tablets are introduced in plenty of shapes, colors, and brands to fit any taste. Due to a relatively a low price for many of available models, it is Android that your kids are likely to get as their first tablet. That’s why it is so important to consider its safety in children’s hands.</p>
		<p class="text-center f-light">Before handing your kids a mobile device connected online, make sure you know of its potential risks and can prevent your little ones from facing them. Educate yourself first and teach your children how to behave securely on the Internet. Choose reliable software and learn <a class="a-default" href="http://pumpic.com/security/how-to-set-parental-controls-on-android-tablet/" target="_blanc">how to set parental controls on Android tablet</a> before you allow your kids to use it.</p>
        <!-- BLOCK STATISTICK -->
        {*<div class="block-statistick row">
            
            <div class="item col-s-sm-12 col-xs-sm-12 col-sm-4 col-md-4 col-lg-4 border-none">
                <section>
                    <div class='pb20'><strong class="fz50 color-orange">Built-In Restrictions</strong></div>
                    <p>Unfortunately, Android has no onboard parental control options to provide comprehensive protection for children. The one and only alternative is setting restrictions on Google Play to prevent your kids from downloading inappropriate games, movies, books, music, and other apps officially. Luckily, you can avert downloading from the Play store as well as by using a direct browser link. However, note that Android OS is flexible enough, which allows installing unauthorized content bypassing parental restrictions.</p>
				</section>
            </div>
            <div class="item col-s-sm-12 col-xs-sm-12 col-sm-4 col-md-4 col-lg-4 border-none">
                <section>
                   <img alt="stop cyberbullying with Pumpic" src="{$img}/landings/parental-control-for-android.png" width="207px" height="208px" />
                </section>
            </div>
			<div class="item col-s-sm-12 col-xs-sm-12 col-sm-4 col-md-4 col-lg-4 border-none">
			    <section>
                    <div class='pb20'><strong class="fz50 color-orange">Parental Control App</strong></div>
                    <p>Pumpic app is designed to be a shield against risks and dangers children may face while using tablets and smartphones. The application allows parents to follow all kinds of activities on Android devices, which includes setting time limits and blocking apps, controlling communication on social networks and online chats, viewing browsing history and blocking websites. Moreover, it allows tracking location in real time. Set geo-fences and receive alerts, when your children leave or enter areas on the map. Keep your eyes open.</p>
				</section>
            </div>
			
        </div>*}
        
        <table class="table-statistick">
            <tr>
                <td class="item col-s-sm-12 col-xs-sm-12 col-sm-12 col-md-4 col-lg-4 border-none">
                    <section>
                        <div class='pb20'><strong class="fz50 color-orange">Built-In Restrictions</strong></div>
                        <p>Unfortunately, Android has no onboard parental control options to provide comprehensive protection for children. The one and only alternative is setting restrictions on Google Play to prevent your kids from downloading inappropriate games, movies, books, music, and other apps officially. Luckily, you can avert downloading from the Play store as well as by using a direct browser link. However, note that Android OS is flexible enough, which allows installing unauthorized content bypassing parental restrictions.</p>
                    </section>
                </td>
                <td class="item col-s-sm-12 col-xs-sm-12 col-sm-12 col-md-4 col-lg-4 border-none vertical-aligh-bottom text-center">
                    <img class="statistick-images" alt="stop cyberbullying with Pumpic" src="{$img}/landings/parental-control-for-android.png" />
                </td>
                <td class="item col-s-sm-12 col-xs-sm-12 col-sm-12 col-md-4 col-lg-4 border-none">
                    <section>
                        <div class='pb20'><strong class="fz50 color-orange">Parental Control App</strong></div>
                        <p>Pumpic app is designed to be a shield against risks and dangers children may face while using tablets and smartphones. The application allows parents to follow all kinds of activities on Android devices, which includes setting time limits and blocking apps, controlling communication on social networks and online chats, viewing browsing history and blocking websites. Moreover, it allows tracking location in real time. Set geo-fences and receive alerts, when your children leave or enter areas on the map. Keep your eyes open.</p>
                    </section>
                </td>
            </tr>
        </table>
        <!-- END -->

        <p class="text-center f-light">Most of threats children face these days are directly connected with the use of the Internet. Cyberbullying, online predator attacks, sexting, inappropriate content, and identity theft constitute a major concern all over the world. The task of Android tablet parental controls by Pumpic is to help parents reveal impending danger and avert it in the making.</p>
{EndContent}
        
<div class="light">
        <div class="container">
                <h2 class="text-center">Set Parental Control on Android Tablet</h2>
                <div class="row">
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="{$img}/icons/icon-mobile-secure.png" alt="cell phone monitoring">
                                        <h3>Control tablet use</h3>
                                        <ul class="feature_list">
                                                <li>Manipulate onboard and downloaded apps</li>
                                                <li>View calendar, notes, and contacts</li>
                                                <li>Keep track of multimedia files</li>
                                        </ul>
                                </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="{$img}/icons/icon-online-activity.png" alt="monitor online activity">
                                        <h3>Monitor Internet activities</h3>
                                        <ul class="feature_list">
                                                <li>Follow bookmarks and browsing history</li>
                                                <li>Track instant messengers and social media</li>
                                                <li>Block applications and websites</li>
                                        </ul>
                                </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="{$img}/icons/icon-track-kids.png" alt="remote mobile monitoring">
                                        <h3>Track routes and location</h3>
                                        <ul class="feature_list">
                                                <li>Follow GPS location in real time</li>
                                                <li>Keep track of the entire route history</li>
                                                <li>Define geo-fences, receive notifications</li>
                                        </ul>
                                </div>
                        </div>
                </div>
        </div>
</div>
        
        {include file='../includes/content/features-table.tpl'
        title = "Outstanding Monitoring Experience and Protection"
        description = "Pumpic is the all-in-one solution for parental control and child protection. The app comprises more than 24 useful monitoring features that allow parents to take care of their children remotely. Protect your kids once and for all. With Pumpic tracking you will be able to keep Android tablet activities under personal control and prevent online dangers at early stages."
        blockBg="dark"
        } 
        
        {include file='../includes/content/ipad.tpl' 
                blockBg="light"
                bgTab = "bgIOS"
                imgUrl = "parental_control/ipad.png"
                imgAlt = "Android"
                title = "Control Panel Is Easy to Use"
		description = "The data tracked by Pumpic on your kids’ Android tablet is sent directly to your Control Panel, where you can view it. To access the Control Panel, you can use any device including desktop computers, laptops, smartphones, and tablets. In addition to data monitoring, the app allows you to control the target Android tablet and manipulate its activities remotely."
                textAlign = "left"
        }
        {* imgUrl = "icons/ipad_android.png" *}
        
        <div class="dark">
    <div class="container">
            <h2 class="text-center testimonial-title">Trusted by Over 10 000 Customers Worldwide:</h2>
            <div class="row">
                    <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/andrea-l-16.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Andrea L. – mother of 16-year-old son</h4>
                                    <p>“I learned about Pumpic from a review of best parental control apps for Android tablet. I liked its benefits among other similar applications and decided to try it to secure my own son. He is 16 and this age I suppose is the most dangerous for teens. Pumpic works great. It lets me view all activities on his device and control him remotely. I know where he goes and where he currently is. I can check if he tells me the truth when I ask him questions on his time spending. Which is great too.”</p>
                            </div>
                    </div>
                    <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/martin-s-12.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Martin S. – father of 12-year-old daughter</h4>
                                    <p>“I use Pumpic to prevent my little daughter from restricted videos, photos and other content she may come across on the Internet. There are so many things children shouldn’t see and Pumpic shows good results in limiting her access to all this mess. I can block links to 18+ sources, inappropriate games and so on. Also I can control her screen time and prevent her from wasting time on playing games. Very sound solution for careful parents.”</p>
                            </div>
                    </div>
                    <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/miranda-p-14.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Miranda P. – mother of 14-year-old son</h4>
                                    <p>“When I decided to set parental controls on my son’s Android tablet I didn’t actually believe the app would do such a good job. My husband got a free trial and we though why not to give it a shot. We both were amazed with how helpful Pumpic could be. It shows just everything happening on my son’s tablet. Browsing history, Facebook, Instagram, Snapchat. The app logs all the data I need to protect him online. And location tracking option is irreplaceable.”</p>
                            </div>
                    </div>
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