{include file='../includes/main/main-header.tpl' 
    title="Keylogging Software: iPhone, Android Cell Phone Keylogger"
    description="Pumpic keylogger app tracks every button your kid presses. Monitor passwords and search box inputs, follow words your children type in via mobile phones. Use Pumpic keyboard tracker."
}    
    
<body>
    <!-- BLOCK GTM -->
    {include file='../includes/main/main-after-body.tpl'}
    <!-- END BLOCK GTM -->
    
    <!-- FLY BLOCKS -->
    {include file='../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->
    
    <div class="wrapper keylogging_software">
	
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
            imgUrl = "header_banners/bg_keylogger-software.png"
            imgAlt = "keylogger software"
            imgAlign = "right"
            imgVerticalAlign = "bottom"
            textAlign = "right"
            title = "Keylogger for Android,<br/>iPhone, iPad, and iPod Touch"
            description = "Track each tap and every button your kid presses."
            promoBuyBlock = "no"
            listText = "keep track of all keystrokes|follow password inputs|monitor Internet activity"
            planPackageBuy = "yes"
            block_video = "yes"
            block_video_src = "http://www.youtube.com/embed/Atg0CbaytAY"
        }
        {*listText = "keep track of all keystrokes|follow password inputs|monitor Internet activity"*}
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
    title="How Kids Use Cell Phones"
    blockBg='dark'}
               
        <p class="text-center f-light">
            Children learn from not only their parents and schoolteachers. The majority of information they get, comes 
        from the surrounding. That’s why to protect your kids from ambiguous knowledge, it is essential to follow their time 
        spent online and filter incoming data.
        </p>
        
        <!-- BLOCK STATISTICK -->
        <div class="block-statistick row">
            
            <div class="item col-s-sm-12 col-xs-sm-12 col-sm-4 col-md-4 col-lg-4">
                <section>
                    <div><strong class="fz50 color-orange">65%</strong></div>
                    <span class="text-uppercase">
                        of all information children learn comes from the surrounding
                    </span>
                </section>
            </div>
            <div class="item col-s-sm-12 col-xs-sm-12 col-sm-4 col-md-4 col-lg-4">
                <section>
                    <div><strong class="fz50 color-orange">33%</strong></div>
                    <span class="text-uppercase">
                        of teens have experienced threats online
                    </span>
                </section>
            </div>
            <div class="item col-s-sm-12 col-xs-sm-12 col-sm-4 col-md-4 col-lg-4">
                <section>
                    <div>
                        <strong class="fz50 color-orange">1</strong>
                        <span>in</span> 
                        <strong class="fz50 color-orange">3</strong>
                    </div>
                    <span class="text-uppercase">
                        children reports about the abuse to a trusted adult
                    </span>
                </section>
            </div>
            
        </div>
        <!-- END -->

        <p class="text-center f-light">
            More often than not kids tend to keep their private life secret from their parents. It means that if danger comes, 
        there is a chance that you will not even know about it. Parental control software helps you monitor your children’s 
        activity, when you are not nearby. It will secure your kid and avert danger:
        </p>
        
        <!-- BLOCK LIST -->
        <div class="row pt15">
            <div class="padding-null col-sm-4 col-md-4 col-lg-4">
                <ul class="block-list">
                    <li><i class="item-list-css-orange"></i> keep track of all keystrokes</li>
                </ul>
            </div>
            <div class="padding-null col-sm-4 col-md-4 col-lg-4">
                <ul class="block-list">
                    <li><i class="item-list-css-orange"></i> follow password inputs</li>
                </ul>
            </div>
            <div class="padding-null col-sm-4 col-md-4 col-lg-4">
                <ul class="block-list">
                    <li><i class="item-list-css-orange"></i> monitor Internet activity</li>
                </ul>
            </div>
        </div>
        <!-- END -->
    
    
        {*<p>Children learn from not only their parents and schoolteachers. The majority of information they get, comes 
        from the surrounding. That’s why to protect your kids from ambiguous knowledge, it is essential to follow their time 
        spent online and filter incoming data.</p> 
        <ul>
		    <li>65% of all information children learn comes from the surrounding</li>
            <li>33% of teens have experienced threats online </li>
            <li>1 in 3 children reports about the abuse to a trusted adult</li>
		</ul>
        <p>More often than not kids tend to keep their private life secret from their parents. It means that if danger comes, 
        there is a chance that you will not even know about it. Parental control software helps your monitor your children’s 
        activity, when you are not nearby. It will secure your kid and avert danger:</p>

        <ul>
            <li>keep track of all keystrokes</li>
            <li>follow password inputs</li>
            <li>monitor Internet activity</li>
        </ul>*}

        {* Template: BLOCK IMAGE
            blockAlign (text): позиция блока с изображением. (left|center|right) *default: center
            
            imgUrl (text): путь к изображению. *ОБЯЗАТЕЛЬНОЕ ПОЛЕ 
            imgAlt (text): подпись к изображению.
            // размер изображения
            imgWidth (text): ширина изображения *ОБЯЗАТЕЛЬНОЕ ПОЛЕ
            imgHeight (text): высота изображения *ОБЯЗАТЕЛЬНОЕ ПОЛЕ
            // Подпись к изображению
            captionText (text): подпись к изображению
        *}
        {*include file='../includes/content/block/image.tpl'
                blockAlign = 'center'

                imgUrl = 'parental_control/bg_famaly_mobile.png'
                imgAlt = 'Alt Test image 1'                
                imgWidth = '537'
                imgHeight = '312'

                captionText = 'Caption test image 1 Caption test image 1 Caption test image 1 Caption test image 1'
        *}
                        
{EndContent}

<div class="light">
        <div class="container">
                <h2 class="text-center">How Pumpic Secures Your Kid</h2>
                <div class="row">
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="{$img}/icons/icon-mobile-secure.png" alt="cell phone monitoring">
                                        <h3>Control cell phone usage</h3>
                                        <ul class="feature_list">
                                                <li>Monitor calls and SMS</li>
                                                <li>View media files storage </li>
                                                <li>Follow contacts and calendar</li>
                                        </ul>
                                </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="{$img}/icons/icon-online-activity.png" alt="monitor online activity">
                                        <h3>Follow Internet activity</h3>
                                        <ul class="feature_list">
                                                <li>Monitor social networks</li>
                                                <li>Block 18+ websites and apps</li>
                                                <li>Follow browsing history </li>
                                        </ul>
                                </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="{$img}/icons/icon-track-kids.png" alt="remote mobile monitoring">
                                        <h3>Keep track of kids remotely</h3>
                                        <ul class="feature_list">
                                                <li>Track current GPS location</li>
                                                <li>View the entire route history </li>
                                                <li>Secure kids on the road</li>
                                        </ul>
                                </div>
                        </div>
                </div>
        </div>
</div>   
    
{include file='../includes/content/features-table.tpl'
        title = "Features"
        description = "Pumpic is reliable and feature-rich parental control software designed to protect kids by monitoring their mobile devices. Except for cell phone keylogger, the app lets you follow other aspects of your kid’s life. Taking into account that children and their smartphones are inseparable these days, Pumpic enables parents to monitor their kids’ activity constantly and remotely from any spot of the world."
        blockBg="dark"
}                                         
  
{Content 
    styleTitle="h2"
    title="How Keylogger Works"
    blockBg='light'}
    <p>When it comes to keylogger software, parents usually get confused due to the obscurity of this function. Let’s shed some light on it to make everything fall into place, where it belongs.</p> 
<p>When we talk about keylogger, we at the same time mean a keyboard tracker – a special program developed to capture button presses. With its help, a user can view personal text messages, passwords, credit card numbers, and literally everything that an owner of the target device types in.</p> 
<p>Thus, a keylogger app can help you monitor each tap on a touchscreen and every button your kid hits, while using his or her cell phone. With Pumpic keylogger at your command, you will be able to:</p>
<ul>
<li>Control if your kids use dirty language or any other words inappropriate for children;</li>
<li>Follow all publications they make online and track their communication;</li>
<li>View passwords they set and change them, if the situation requires;</li>
<li>Monitor all suspicious text messages to prevent inherent dangers or threats;</li>
<li>Avert cyberbullying and contacts with online predators.</li>
</ul> 
<p>Such option as a keylogger allows providing your loved ones with all-round protection and preventing any possible danger, that modern world bears.</p> 

{EndContent}    

<div class="dark">
    <div class="container">
            <h2 class="text-center testimonial-title">Testimonials:</h2>
            <div class="row">
                
                <div class="bxSliders only-pc">
                        <!-- SLIDE #1 -->
                        <div class="slide">
                
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/keylogging_software/testimonials1.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Sharon F. (Pueblo, CO)</h4>
                                    <p>“When I decided to buy the first smartphone for my daughter, I also asked a shop assistant to install Android key logger at once. However, it did not satisfy my expectations at all. My sister suggested me Pumpic as parental control system. I tried it, and keep using until now. I can see literally everything that my daughter does with her smartphone. I have no worries about her any longer”</p>
                            </div>
                    </div>
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/keylogging_software/testimonials2.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Paula J. (Boise, ID)</h4>
                                    <p>“Great app! Calls, SMS, Internet connection, chats, games – everything is clearly visible. I can control my son completely. There is nothing he can hide from me. Now he spends more time doing homework, finally gets better marks, stopped smoking. Thanks for such technology. I did not suspect that such simple monitoring can have such results.”</p>
                            </div>
                    </div>
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/keylogging_software/testimonials3.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Walter K. (Denver, CO)</h4>
                                    <p>“It is hard to overstate help that Pumpic provides. I work days and nights, meanwhile my son keeps wasting his time with his tablet in hands. Now the app lets me monitor his activity from work. I can follow him and know where he goes, I can see who calls him and monitor each button pushed. I can work without worries now.””</p>
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
        {include file='../includes/main/main-footer.tpl' 
            our_products = "no"
        }
                
    </div>
      
    {include file='../includes/main/main-analytics-footer.tpl'}
</body>
</html>