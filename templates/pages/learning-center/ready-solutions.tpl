{*closeAccess*}

{*
    Template: hedaer HEADER ( ШАПКА СТРАНИЦЫ )
    Переменные:
        robots (text): сключить или выключить индексацию от роботов ( yes | no ) * - default: yes
        title (text): вносим title - страницы. 
        description (text): вносим meta description ( описание страницы )
*}    
    
{include file='../../includes/main/main-header.tpl'
    title="Pumpic Learning Center: Ready Solutions for Parents"
    description="As a part of its Learning Center, Pumpic introduces the table of potential source of danger kids may face and corresponding ready-made solutions."
}    
    
<body>
    <!-- BLOCK GTM -->
    {include file='../../includes/main/main-after-body.tpl'}
    <!-- END BLOCK GTM -->
    
    <!-- FLY BLOCKS -->
    {include file='../../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->
    
    {* 'block-android' - название вашей страницы латинецей. ОБЯЗАТЕЛЬНОЕ ПОЛЕ *}
    <div class="wrapper block-ready-solutions">
        <!-- TOP MENU -->
        {*
            Template: MENU ( ГЛАВНОЕ МЕНЮ )
            Переменные:
                topmenu_active (test): alias меню, которое будет подсвечиваться активным. 
        *}
	{include file='../../includes/main/main-top-menu.tpl' 
                cache_id = "includes_main_main-top-menu"
                nocache    
        }
        
        <!-- FLY BLOCKS -->
        {nocache}
        {if ''|hasFreeTrialStick}    
            {include file='../../includes/content/fly/fly-free-trial.tpl'}
        {/if}    
        {/nocache}
        <!-- END FLY -->
        
        {*
            Template: PHONE
            Переменные:
                style (text): стиль блока Phone (blue|black). * - blue 
        *}
        {include file='../../includes/content/phone/block-phone.tpl'
                 style="black"   
        }
        
        <!-- CONTENT -->
       
        <!-- breadcrumbs -->
        <div class="box-breadcrumbs">
            <div class="container">
                <ul id="breadcrumbs">
                    <li><a class="color-green" href="http://{$domain}/learning-center/">Learning Center</a><span class="arrows icon-right-open"></span>{*<span class="arrows_green"></span>*}</li>
                    <li><span>Ready Solutions for Parents</span></li>
                </ul>
            </div>
        </div>
        <!-- END -->
        
        <!-- TABLE RSP -->
        <div class="light box-rsp">
            <div class="container">
                <h1 class="h2 title text-center mt0">Ready Solutions for Parents</h1>
                <div class="row">
                    <div class="desc col-lg-12 col-md-12 col-sm-12">
                        {if isset($descriptions)}
                            {$descriptions}
                        {else}
                            Your children require protection constantly. Since the very first day they are born, until the time 
                            they come of age and leave home, you should take care of them, keep them safe and secured. Especially when 
                            it comes to the use of the Internet and communication with strangers. Pumpic provides children with all-round 
                            protection daily. The table below introduces potential sources of danger kids may face and corresponding ready 
                            solutions for you to consider.
                        {/if}
                    </div>
                </div>
                <div id="box-rsp-table" class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        
                        <!-- version desctop -->
                        <table class="block-table">

                            <!-- hedaer -->
                            <thead>
                                <tr>
                                    <th class="t-header text-center bg-black-1 bg-black-2 col-lg-3 col-md-3 col-sm-3">
                                        <span class="color-green">Parental Control Level</span>
                                    </th>
                                    <th class="t-header text-center bg-black-1 col-lg-3 col-md-3 col-sm-3">
                                        <span class="color-green">Potential Issues</span>
                                    </th>
                                    <th class="t-header text-center bg-black-1 col-lg-3 col-md-3 col-sm-3">
                                        <img src="{$img}/icons/icon-iphone.png" width="101px" height="64px" alt="Solutions for iPhones, iPads, and iPods Touch (iOS 6.0+)" />
                                    </th>
                                    <th class="t-header text-center bg-black-1 col-lg-3 col-md-3 col-sm-3">
                                        <img src="{$img}/icons/icon-android.png" width="97px" height="51px" alt="Solutions for Android Phones and Tablets (Android 2.2+)" />
                                    </th>
                                </tr>
                            </thead>
                            <!-- end -->

                            <!-- body -->
                            <tbody>

                                <!-- item1 -->
                                <tr class="event">
                                    <td class="col-lg-3 col-md-3 col-sm-3 bg-lavel-green-1">
                                        <img src="{$img}/levels/l-1.png" width="37px" height="37px" alt="Low-level Parental Control" />
                                        <section> 
                                            <label>Low-level <br />Parental Control</label>
                                            <span>(2-5 y.o. preschoolers)</span>
                                        </section>    
                                    </td>
                                    <td class="col-lg-3 col-md-3 col-sm-3">
                                        <ul class="rsp-list">
                                            <li>In-app purchases</li>
                                            <li>Browser or system app use (both accidental and on purpose)</li>
                                        </ul>
                                    </td>
                                    <td class="col-lg-3 col-md-3 col-sm-3">
                                        <p>All these issues can be solved easily with help of <a class="color-green {*bold*}" href="https://support.apple.com/en-us/HT201304">iOS built-in parental control settings</a> (Restrictions).</p>
                                    </td>
                                    <td class="col-lg-3 col-md-3 col-sm-3">
                                        <p>Android has no general built-in parental control settings, but includes similar <a class="color-green {*bold*}" href="https://support.google.com/googleplay/answer/1075738?hl=en">controls on Google Play</a>.</p>
                                    </td>

                                </tr>
                                <!-- end -->
                                <!-- item2 -->
                                <tr class="odd">
                                    <td class="col-lg-3 col-md-3 col-sm-3 bg-lavel-green-2">
                                        <img src="{$img}/levels/l-2.png" width="37px" height="37px" alt="Middle-level Parental Сontrol" />
                                        <section> 
                                            <label>Middle-level <br />Parental Control</label>
                                            <span>(6-8 y.o. schoolchildren)</span>
                                        </section>    
                                    </td>
                                    <td class="col-lg-3 col-md-3 col-sm-3">
                                        <ul class="rsp-list">
                                            <li>Location tracking</li>
                                            <li>Game apps (time wasting)</li>
                                            <li>Browser use (explicit content)</li>
                                        </ul>
                                    </td>
                                    <td class="col-lg-3 col-md-3 col-sm-3">
                                        <p>All the functions that can help solve these issues are <a class="color-green {*bold*}" href="http://{$domain}/iphone-with-jailbreak-monitoring.html">introduced in Pumpic Basic</a>.</p> 
                                        <p>If your main goal is to track your kids’ location, you can use <a class="color-green {*bold*}" href="http://{$domain}/icloud-iphone-without-jailbreak-monitoring.html">Pumpic iCloud Solution</a> without a need to jailbreak the target device.</p>
                                    </td>
                                    <td class="col-lg-3 col-md-3 col-sm-3">
                                        <p><a class="color-green {*bold*}" href="http://{$domain}/store.html">Pumpic Basic</a> is the best effective solution for these purposes.</p>
                                    </td>

                                </tr>
                                <!-- end -->
                                <!-- item3 -->
                                <tr class="event">
                                    <td class="col-lg-3 col-md-3 col-sm-3 bg-lavel-green-3">
                                        <img src="{$img}/levels/l-3.png" width="37px" height="37px" alt="High-level Parental Сontrol" />
                                        <section> 
                                            <label>High-level <br />Parental Control</label>
                                            <span>(10-12 y.o. tweens)</span>
                                        </section>    
                                    </td>
                                    <td class="col-lg-3 col-md-3 col-sm-3">
                                        <ul class="rsp-list">
                                            <li>First messenger use experience (Skype, WhatsApp, Viber, Kik etc.)</li>
                                            <li>Exposure to social networks</li>
                                            <li>Active camera use</li>
                                            <li>Location tracking</li>
                                        </ul>
                                    </td>
                                    <td class="col-lg-3 col-md-3 col-sm-3">
                                        <p><a class="color-green {*bold*}" href="http://{$domain}/icloud-iphone-without-jailbreak-monitoring.html">Pumpic Premium</a> is the best effective solution for these purposes.</p>
                                    </td>
                                    <td class="col-lg-3 col-md-3 col-sm-3">
                                        <p><a class="color-green {*bold*}" href="http://{$domain}/store.html">Pumpic Premium</a> is the best effective solution for these purposes.</p>
                                    </td>

                                </tr>
                                <!-- end -->
                                <!-- item4 -->
                                <tr class="odd">
                                    <td class="col-lg-3 col-md-3 col-sm-3 bg-lavel-green-4">
                                        <img src="{$img}/levels/l-4.png" width="37px" height="37px" alt="Top-level Parental Сontrol" />
                                        <section> 
                                            <label>Top-level <br />Parental Control</label>
                                            <span>(13-17 y.o. teens)</span>
                                        </section>    
                                    </td>
                                    <td class="col-lg-3 col-md-3 col-sm-3">
                                        <ul class="rsp-list">
                                            <li>Misgiving contacts (calls, texts)</li>
                                            <li>Sexting danger</li>
                                            <li>Prevention of depression and a suicide</li>
                                            <li>Cyberbullying prevention (as both a victim and a potential bully)</li>
                                        </ul>
                                    </td>
                                    <td class="col-lg-3 col-md-3 col-sm-3">
                                        <p>Limitless and comprehensive protection comes with <a class="color-green {*bold*}" href="http://{$domain}/store.html">Pumpic Premium subscription</a>.</p>
                                    </td>
                                    <td class="col-lg-3 col-md-3 col-sm-3">
                                        <p>Limitless and comprehensive protection comes with <a class="color-green {*bold*}" href="http://{$domain}/store.html">Pumpic Premium subscription</a>.</p>
                                    </td>

                                </tr>
                                <!-- end -->
                            </tbody>
                            <!-- end -->

                        </table>
                        <!-- END -->  
                        
                        <!-- version mobile -->
                        <div class="block-table-mobile row">
                            <div class="col-sm-12">
                                
                            <!-- item1 -->
                            <div class="row margin-null">
                                {*<div class="col-sm-12 col-xs-12 bg-black-2 text-center mt-hedaer item">
                                    <p class="color-green">Parental Control Level</p>
                                </div>*}
                                <div class="col-sm-12 col-xs-12 bg-lavel-green-1 item">
                                    <img src="{$img}/levels/l-1.png" width="37px" height="37px" alt="Parental Control" />
                                    <section> 
                                        <label>Low-level <br />Parental Control</label>
                                        <span>(2-5 y.o. preschoolers)</span>
                                    </section>
                                </div>
                                <div class="col-sm-12 col-xs-12 bg-black-2 text-center mt-hedaer item">
                                    <p class="color-green">Potential Issues</p>
                                </div>
                                <div class="col-sm-12 col-xs-12 item event">
                                    <ul class="rsp-list">
                                        <li>In-app purchases</li>
                                        <li>Browser or system app use (both accidental and on purpose)</li>
                                    </ul>
                                </div>
                                <div class="col-sm-12 col-xs-12 bg-black-2 text-center mt-hedaer item">
                                    <img src="{$img}/icons/icon-iphone.png" width="101px" height="64px" alt="Solutions for iPhones, iPads, and iPods Touch (iOS 6.0+)" />
                                </div>   
                                <div class="col-sm-12 col-xs-12 item event">
                                    <p>All these issues can be solved easily with help of <a class="color-green {*bold*}" href="https://support.apple.com/en-us/HT201304">iOS built-in parental control settings</a> (Restrictions).</p>
                                </div>  
                                <div class="col-sm-12 col-xs-12 bg-black-2 text-center mt-hedaer item">
                                    <img src="{$img}/icons/icon-android.png" width="97px" height="51px" alt="Solutions for Android Phones and Tablets (Android 2.2+)" />
                                </div>   
                                <div class="col-sm-12 col-xs-12 item event">
                                    <p>Android has no general built-in parental control settings, but includes similar <a class="color-green {*bold*}" href="https://support.google.com/googleplay/answer/1075738?hl=en">controls on Google Play</a>.</p>
                                </div>
                            </div>
                            <!-- end -->
                            
                            <!-- item2 -->
                            <div class="row margin-null">
                                {*<div class="col-sm-12 col-xs-12 bg-black-2 text-center mt-hedaer item">
                                    <p class="color-green">Parental Control Level</p>
                                </div>*}
                                <div class="col-sm-12 col-xs-12 bg-lavel-green-2 item">
                                    <img src="{$img}/levels/l-2.png" width="37px" height="37px" alt="Middle-level Parental Сontrol" />
                                    <section> 
                                        <label>Middle-level <br />Parental Control</label>
                                        <span>(6-8 y.o. schoolchildren)</span>
                                    </section>
                                </div>
                                <div class="col-sm-12 col-xs-12 bg-black-2 text-center mt-hedaer item">
                                    <p class="color-green">Potential Issues</p>
                                </div>
                                <div class="col-sm-12 col-xs-12 item event">
                                    <ul class="rsp-list">
                                        <li>Location tracking</li>
                                        <li>Game apps (time wasting)</li>
                                        <li>Browser use (explicit content)</li>
                                    </ul>
                                </div>
                                <div class="col-sm-12 col-xs-12 bg-black-2 text-center mt-hedaer item">
                                    <img src="{$img}/icons/icon-iphone.png" width="101px" height="64px" alt="Solutions for iPhones, iPads, and iPods Touch (iOS 6.0+)" />
                                </div>   
                                <div class="col-sm-12 col-xs-12 item event">
                                    <p>All the functions that can help solve these issues are <a class="color-green {*bold*}" href="http://{$domain}/iphone-with-jailbreak-monitoring.html">introduced in Pumpic Basic</a>.</p> 
                                    <p>If your main goal is to track your kids’ location, you can use <a class="color-green {*bold*}" href="http://{$domain}/icloud-iphone-without-jailbreak-monitoring.html">Pumpic iCloud Solution</a> without a need to jailbreak the target device.</p>
                                </div>  
                                <div class="col-sm-12 col-xs-12 bg-black-2 text-center mt-hedaer item">
                                    <img src="{$img}/icons/icon-android.png" width="97px" height="51px" alt="Solutions for Android Phones and Tablets (Android 2.2+)" >
                                </div>   
                                <div class="col-sm-12 col-xs-12 item event">
                                    <p><a class="color-green {*bold*}" href="http://{$domain}/store.html">Pumpic Basic</a> is the best effective solution for these purposes.</p>
                                </div>
                            </div>
                            <!-- end -->
                            
                            <!-- item3 -->
                            <div class="row margin-null">
                                {*<div class="col-sm-12 col-xs-12 bg-black-2 text-center mt-hedaer item">
                                    <p class="color-green">Parental Control Level</p>
                                </div>*}
                                <div class="col-sm-12 col-xs-12 bg-lavel-green-3 item">
                                    <img src="{$img}/levels/l-3.png" width="37px" height="37px" alt="High-level Parental Сontrol" />
                                    <section> 
                                        <label>High-level <br />Parental Control</label>
                                        <span>(10-12 y.o. tweens)</span>
                                    </section>
                                </div>
                                <div class="col-sm-12 col-xs-12 bg-black-2 text-center mt-hedaer item">
                                    <p class="color-green">Potential Issues</p>
                                </div>
                                <div class="col-sm-12 col-xs-12 item event">
                                    <ul class="rsp-list">
                                        <li>First messenger use experience (Skype, WhatsApp, Viber, Kik etc.)</li>
                                        <li>Exposure to social networks</li>
                                        <li>Active camera use</li>
                                        <li>Location tracking</li>
                                    </ul>
                                </div>
                                <div class="col-sm-12 col-xs-12 bg-black-2 text-center mt-hedaer item">
                                    <img src="{$img}/icons/icon-iphone.png" width="101px" height="64px" alt="Solutions for iPhones, iPads, and iPods Touch (iOS 6.0+)" />
                                </div>   
                                <div class="col-sm-12 col-xs-12 item event">
                                    <p><a class="color-green {*bold*}" href="http://{$domain}/icloud-iphone-without-jailbreak-monitoring.html">Pumpic Premium</a> is the best effective solution for these purposes.</p>
                                </div>  
                                <div class="col-sm-12 col-xs-12 bg-black-2 text-center mt-hedaer item">
                                    <img src="{$img}/icons/icon-android.png" width="97px" height="51px" alt="Solutions for Android Phones and Tablets (Android 2.2+)" />
                                </div>   
                                <div class="col-sm-12 col-xs-12 item event">
                                    <p><a class="color-green {*bold*}" href="http://{$domain}/store.html">Pumpic Premium</a> is the best effective solution for these purposes.</p>
                                </div>
                            </div>
                            <!-- end -->
                            
                            <!-- item4 -->
                            <div class="row margin-null">
                                {*<div class="col-sm-12 col-xs-12 bg-black-2 text-center mt-hedaer item">
                                    <p class="color-green">Parental Control Level</p>
                                </div>*}
                                <div class="col-sm-12 col-xs-12 bg-lavel-green-4 item">
                                    <img src="{$img}/levels/l-4.png" width="37px" height="37px" alt="Top-level Parental Сontrol" />
                                    <section> 
                                        <label>Top-level <br />Parental Control</label>
                                        <span>(13-17 y.o. teens)</span>
                                    </section>
                                </div>
                                <div class="col-sm-12 col-xs-12 bg-black-2 text-center mt-hedaer item">
                                    <p class="color-green">Potential Issues</p>
                                </div>
                                <div class="col-sm-12 col-xs-12 item event">
                                    <ul class="rsp-list">
                                        <li>Misgiving contacts (calls, texts)</li>
                                        <li>Sexting danger</li>
                                        <li>Prevention of depression and a suicide</li>
                                        <li>Cyberbullying prevention (as both a victim and a potential bully)</li>
                                    </ul>
                                </div>
                                <div class="col-sm-12 col-xs-12 bg-black-2 text-center mt-hedaer item">
                                    <img src="{$img}/icons/icon-iphone.png" width="101px" height="64px" alt="Solutions for iPhones, iPads, and iPods Touch (iOS 6.0+)" />
                                </div>   
                                <div class="col-sm-12 col-xs-12 item event">
                                    <p>Limitless and comprehensive protection comes with <a class="color-green {*bold*}" href="http://{$domain}/store.html">Pumpic Premium subscription</a>.</p>
                                </div>  
                                <div class="col-sm-12 col-xs-12 bg-black-2 text-center mt-hedaer item">
                                    <img src="{$img}/icons/icon-android.png" width="97px" height="51px" alt="Solutions for Android Phones and Tablets (Android 2.2+)" />
                                </div>   
                                <div class="col-sm-12 col-xs-12 item event">
                                    <p>Limitless and comprehensive protection comes with <a class="color-green {*bold*}" href="http://{$domain}/store.html">Pumpic Premium subscription</a>.</p>
                                </div>
                            </div>
                            <!-- end -->
                            
                            </div>
                        </div>
                        <!-- END -->
                                        
                    </div>
                </div>
            </div>
        </div>    
        <!-- END -->
        
        {include file='../../includes/main/main-quick-link.tpl' 
            blockBg="dark"
        }


        {*
            Template: BANNER PROMO
            Переменные:
                title (text): промо текст.
        *}
        {*{include file='../../includes/content/banner-promo.tpl'
                title = "Keep your <span>family safe</span>"
        }*}
        
        {include file='../../includes/content/banners/index.tpl'
            title = "Keep your <span>family safe</span>"
        }
        <!-- END CONTENT -->    
           
        <!-- RECOMMENDED -->
        {*
            Template: RECOMMENDED
        *}    
        {include file='../../includes/main/main-recommended.tpl'}
        
        <!-- FOOTER -->
        {*
            Template: FOOTER
        *}
        {include file='../../includes/main/main-footer.tpl'
            our_products= "no"}
                
    </div>
    {*
        Template: ANALYTICS
    *}        
    {include file='../../includes/main/main-analytics-footer.tpl'}
</body>
</html>