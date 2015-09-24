{include file='../includes/main/main-header.tpl'
    robots="yes" 
    title="iPhone tracking without jailbreak | Pumpic"
    description="Enjoy Pumpic mobile monitoring app on iPhones, iPads and iPods Touch without jailbreak. Monitor calls, text messages, contacts, browsing history, bookmarks, and calendar via iCloud."
}    
    
<body>
    <!-- FLY BLOCKS -->
    {include file='../includes/main/main-button-help.tpl'}
    {include file='../includes/main/main-button-goup.tpl'}
    <!-- END FLY BLOCKS-->
    
    <div class="wrapper icloud-iphone-without-jailbreak-monitoring">
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
        
        <!-- CONTENT -->
        {include file='../includes/content/info/info-promo.tpl'
            imgUrl = "header_banners/icloud-iphone-monitoring-without-jailbreak.png"
            imgAlt = "Apple iOS Mobile Monitoring App"
            imgAlign = "right"
            imgVerticalAlign = "bottom"
            textAlign = "right"
            title = "Apple Monitoring App<br>iCloud Solution"
            description = "Enjoy multitask tracking without Jailbreak. 
                            <br>Control iPhone use. Follow communication and online activity."
                         
            promoBuyBlock = "no"
            iCloudSolution = 'no'
            planPackageBuy = "yes"
            planPackageBuyUrl = '#icloud-solution'
            planPackageBuyType = 'link'
            planPackageBuyClass = 'go_block_scroll'

            TouchPad = 'yes'
            Android = 'no'
            InfoBlock = 'no'

            block_video = "yes"
            block_video_src = "http://www.youtube.com/embed/Atg0CbaytAY"
        }
        {* jailbreak = "true" *}
        {* ?rel=0&wmode=transparent&fs=0&autoplay=1&modestbranding=1&autohide=1 *}
        {*
            iCloudSolution = 'yes'
            iCloudSolutionButtonClass = 'btn-default'
            iCloudSolutionUrl = '/iphone-with-jailbreak-monitoring.html#choose-subscription-plan'
            iCloudSolutionDescription = 'Want more monitoring <br />features?'
            iCloudClass = 'icloud-p9'
            iCloudSolutionBTitle = 'Jailbreak solution'
            iCloudSolutionIButton = 'ico-cloud-lock'
        *}
        
        <!-- BLOCK ICLOUD SOLUTION -->
        <div class="row-white">
            <div class="container">
                <h2 class="list-group-item-heading text-center"><i class="icons ico-cloud{*ico-jailbreak*}"></i> iCloud Solution</h2>
            </div>
        </div>
        <!-- END ICLOUD SOLUTION -->
        
        <!-- BLOCK HOW IT WORK -->
        <div class="b-how-it-work light">
            <div class="container">
                <div class="col-lg-8 col-lg-offset-2">
                <h2 class="text-center">How It Works</h2>
                    <div class="row text-center">
                        <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <h3 class="weight-normal"><i class="icons icon-buy"></i>  Buy</h3>
                            <p>
                                iCloud solution is available with <b>Premium subscription</b> only.
                            </p>
                            <p>
                               Soon after submitting the payment, you will receive <b>an email</b>. 
                            </p>
                        </div>
                        <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <h3 class="weight-normal"><i class="icons icon-install"></i>Install</h3>
                            <p>
                                Follow the guidelines from the email and fill in <b>iCloud login</b> and <b>password</b> of the target device. 
                            </p>
                            <p>
                                Note that physical access may be required to change device settings (turn iCloud Backup on).
                            </p>
                        </div>
                        <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <h3 class="weight-normal"><i class="icons icon-remotely"></i> Start tracking</h3>
                            <p>
                                Enter your <b>Control Panel</b> to monitor the data from the target device.
                            </p>
                            <p>
                                Use any browser, any computer or mobile gadget to get the access to your Control Panel.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END BLOCK HOW IT WORK -->
        
        <!-- BLOCK PRICE AND FEATURES -->
        <div id='icloud-solution' class="no_bg prices-padding padding-reset">
            <div class="container">
                <div class="row">
                    <div class="col-lg-10 col-lg-offset-1">
                        <div class="row">
                            <div class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 pt20">
                                <table class="tb_pricing table-bordered pricing-second">
                                    {*<caption>
                                        <div class="table_title border-none">
                                            <h2 class="h2-sm">Features</h2>
                                        </div>
                                    </caption>*}
                                    <thead>
                                        <tr>
                                            <th>
                                                <div class="basic_wr row-pricing-panel w100 icloud-box">
                                                    <div class="basic_h text-transform-none">
                                                        iCloud Solution
                                                    </div>
                                                    <div class="priceb border-none">
                                                        <div class="dtable">
                                                            <div class="dtable-cell text-center">
                                                            <div class="dtable-text text-right">
                                                                {*<strong class='none-uppercase'>iCloud Solution</strong><br>*}
                                                                 <span class='none-uppercase'>iCloud Solution is provided <br>with Premium subscription only</span>
                                                            </div>
                                                                <div class="wr_pack">
                                                                    <img src="images/premium_pack.png">
                                                                </div>
                                                                <div class="wr_price_big">
                                                                    <span></span>
                                                                    <div class="box-currence">
                                                                        <div class="symbol" attr-iso="usd">$</div>
                                                                        <div class="curr" id="premium-price-per-month">6.99{*14.66*}</div>
                                                                    </div><span> / month</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                       
                                                        <div id="list-plans-premium-package" class="box-plans-package">
                                                           <section class="full"> 

                                                            <div class="list-plans box-table">
                                                                <div class="table-rows">
                                                                    <div class="item-plan table-column col-xs-sm-4 col-sm-4 col-md-4 col-lg-4 vertical-aligh-middle">
                                                                        <i class="i-price-plans-big-premium"></i>
                                                                    </div>
                                                                    <div class="item-plan table-column col-xs-sm-8 col-sm-8 col-md-8 col-lg-8">
                                                                        <p class="full">Buy <strong class="text-red">6</strong> or <strong class="text-red">12</strong> month plan 
                                                                           and <strong class="text-red">get 2 plans for free</strong></p>
                                                                    </div>
                                                                </div>
                                                            </div>  

                                                           </section>        
                                                        </div>         
                                                                 
                                                        <div class="list_price">
                                                            <form name="price_premium" method="POST" action="/buy.html" autocomplete="off">
                                                                <input id='product_price_premium' type='hidden' name='price[productID]' value='0' class="product_price" />
                                                
                                                                <ul>
                                                                    {foreach from=$getProducts.premium key=key item=_item}
                                                                    <li class="">
                                                                        <label class="label_radio hover_label_radio r_off">
                                                                            <input class="data-price" data-target="#premium-price-per-month" data-cur="usd" 
                                                                                   data-price-usd="{$_item.price}" data-period="{$_item.period}" name="optionsRadios" id="optionsRadios{$_item.id}1" 
                                                                                   value="{$_item.id}" type="radio"  
                                                                                   {if $_item.period == '12'} checked="checked" {/if} />
                                                                            <span class="sp">
                                                                                <strong>
                                                                                    {$_item.period}
                                                                                </strong> {if $_item.period == 1}month{else}months{/if}
                                                                            </span>
                                                                             
                                                                            <div class="box-small-package">    
                                                                                {if $_item.period > 3}<span class="small_package i-price-plans-small-premium"></span>{/if} 
                                                                            </div>     
                                                                                
                                                                            <span class="sp_price">
                                                                                <strong>
                                                                                    <div class="box-currence"><div class="symbol" attr-iso="usd">$</div><div class="curr">{$_item.price}</div></div>
                                                                                </strong>
                                                                            </span>     
                                                                        </label>
                                                                    </li>
                                                                    {/foreach}
                                                                </ul>
                                                                <button class="btn btn-default ga-action-submit"
                                                                        ga-action ="click"
                                                                        ga-category="icloud-iphone-without-jailbreak-monitoring"
                                                                        ga-label="buy premium"
                                                                        ga-page="/icloud-iphone-without-jailbreak-monitoring.html"
                                                                        value="true" type="submit" name="price[submit]">Buy Now</button>
                                                                <!-- <div class="show_basic_features"><a href="#">Show Basic features</a>
                                                                </div> -->
                                                            </form>
                                                        </div>
                                                    </div>
                                                
                                                
                                                </div>
                                                
                                            </th>
                                        </tr>
                                        
                                        <tr>
                                            <th>
                                                <div class="table_title {*border-none*}">
                                                    <h2 class="h2-sm">Features</h2>
                                                </div>
                                            </th>
                                        </tr>
                                        
                                        <tr>
                                            <th>
                                                <div class="basic_wr padding-none-list span-list-block">
                                                    <div class="priceb border-none">
                                                        <div class="basic_fe reset-list media-sm-block">
                                                            <ul class="list_price-no-link list_price-no-link-inline">

                                                                <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Text Messages <span>View text content of SMS, MMS, and iMessages sent or received.{*View sent and received messages.*}</span>
                                                                </li>
                                                                <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Calls <span>Follow in- and outbound calls.</span>
                                                                </li>
                                                                <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Contacts <span>View existing contacts.</span></li>
                                                                <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Photos <span>View camera shots and downloaded photos.</span></li>
                                                                <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Skype <span>Monitor personal, group messages, and calls.</span></li>
                                                                
                                                                <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Location <span>Track the exact location on the map.</span></li>
                                                            </ul>
                                                        </div>
                                                    </div>


                                                </div>
                                                <div class="basic_wr padding-none-list span-list-block">
                                                    <div class="pricep">
                                                        <div class="basic_fe reset-list media-sm-block">
                                                            <ul class="list_price-no-link list_price-no-link-inline">

                                                                <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Browser <span>View visited websites.</span></li>
                                                                <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Bookmarks <span>View bookmarked websites.</span></li>
                                                                <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Calendar  <span>Follow scheduled events.</span></li>
                                                                <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> WhatsApp  <span>Follow personal messages and group chats.</span></li>
                                                                <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Notes  <span>View notes kept on the target device.</span></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                                <p class="inline-block text-center none-uppercase"><i class='fz15 inline-block'>If there is not enough functionality of Pumpic iCloud solution, you can try full featured <a class='a-default' href="http://{$domain}/iphone-with-jailbreak-monitoring.html">Pumpic jailbreak solution</a>.</i></p>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th>
                                                <div class="coming_soon_block">
                                                <h2 class="text-warning font-weight400">Coming soon:</h2>
                                                    <ul>
                                                        {*<li><b>Skype</b><i class="coming-soon-icons cs-ico-skype"></i><span>Follow personal, group messages and calls.</span></li>
                                                        <li><b>WhatsApp</b><i class="coming-soon-icons cs-ico-whatsapp"></i><span>Follow personal messages and group chats.</span></li>*}
                                                        {*<li><div><b>Photos</b><i class="coming-soon-icons cs-ico-photos"></i></div><span>View camera shots and downloaded photos.</span></li>*}
                                                        {*<li><div><b>Notes</b><i class="coming-soon-icons cs-ico-notes"></i></div><span>View notes kept on the target device.</span></li>*}
                                                        <li><div><b>Kik</b><i class="coming-soon-icons cs-ico-kik"></i></div><span>Monitor online text communication.</span></li>
                                                        {*<li><b>Skype</b><i class="icons ico-skype"></i> <span>Follow personal, group messages and calls.</span></li>
                                                        <li><b>Notes</b> <i class="icons ico-notes"></i> <span> View notes kept on the target device.</span></li>
                                                        <li><b>Emails</b> <i class="icons ico-emails"></i> <span>Monitor sent and received emails.</span></li>*}
                                                    </ul>
                                                {*<h3 class="text-warning font-weight400">And Even More Features!</h3>*}
                                                </div>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th >
                                            <div class="table_title">
                                                <h2 class="text-success h2-sm">Additional Benefits</h2>
                                            </div>
                                                <div class="basic_wr padding-none-list span-list-block additional-benefits-item">
                                                    <div class="priceb border-none">
                                                        <div class="basic_fe reset-list media-sm-block">
                                                            <ul class="list_price-no-link">

                                                                <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Removal Protection <span>Since you do not need to install the application, it cannot be deleted from the target device.</span></li>
                                                            </ul>
                                                        </div>
                                                    </div>


                                                </div>
                                                <div class="basic_wr padding-none-list span-list-block additional-benefits-item">
                                                    <div class="pricep border-none">
                                                        <div class="basic_fe reset-list media-sm-block">
                                                            <ul class="list_price-no-link">

                                                                <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Remote Activity Control <span>View all the data from the target device via your personal Control Panel. <p class='pt10 pb0'>Control Panel can be accessed from any browser and any computer or mobile gadget (smartphones and tablets).</p></span></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </th>
                                        </tr>
                                        
                                        <tr>
                                            <th>
                                                <div class="refund_10 refund_bg">
                                                    <div class="wr_refund text-transform-none">
                                                        <div class="day10">10-DAY 
                                                            <span class="d_green">Refund Policy</span>
                                                        </div>
                                                        <div class="fulfill-link">
                                                            <span class="store-full-link"><a href="http://pumpic.com/policy.html#refund-policy">if you fulfill these rules <i class="icon-angle-double-right"></i></a></span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="table_header text-transform-none text-center">
                                                  <span class='none-uppercase'>Payment methods:</span>
                                                  <i class="ico-cart-visa"></i>
                                                  <i class="ico-cart-mcart"></i>
                                                  <i class="ico-cart-maestro"></i>
                                                  <i class="ico-cart-aexpress"></i>
                                                  <i class="ico-cart-descover-new"></i>
                                                  <i class="ico-cart-paypal-new"></i>
                                                </div>
                                            </th>
                                        </tr>
                                        
                                        
                                    </thead>
                                </table>

                                <script type="text/javascript">
                                function roundUsing(func, number, prec) {
                                    var tempnumber = number * Math.pow(10, prec);
                                    tempnumber = func(tempnumber);
                                    return tempnumber / Math.pow(10, prec);
                                }
                                var symbols = {
                                    usd: '$',
                                    eur: '€',
                                    gbp: '£'
                                };
                                $('input[data-target="#basic-price-per-month"], input[data-target="#premium-price-per-month"]').change(function() {

                                    var currentValue = $(this).attr('data-price-' + $(this).attr('data-cur')) / Number($(this).attr('data-period'));

                                    console.log( currentValue );    

                                    // currentValue = roundUsing(Math.round, currentValue, 2);
                                    currentValue = (Math.floor(currentValue * 100) / 100).toFixed(2);
                                    $($(this).attr('data-target'))
                                        .html(currentValue)
                                        .prev('div.symbol')
                                        .html(symbols[$(this).attr('data-cur')] ? symbols[$(this).attr('data-cur')] : '');
                                });
                                
                                </script>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- block upgrade include-->
        </div>
        <!-- END BLOCK PRICE AND FEATURES -->
        
        {*include file='../includes/main/main-testimonials.tpl'
                title = "Trusted by Over 10 000 Customers Worldwide"
                sliders = "false"
                blockBg="light"*}
                
        {* BLOCK TESTIMONIALS HTML (sliders) *}    
        <div class="light">
            <div class="container">
                <h2 class="text-center testimonial-title">Trusted by Over 10 000 Customers Worldwide:</h2>
                <div class="row">

                    <div class="bxSliders">

                        <!-- SLIDE #1 -->
                        <div class="slide">
                            <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <img src="{$img}/testimonials/testimonials_new_25.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>Mike P. (Denver, CO)</h4>
                                            <p>“I didn’t like that my son played games on his iPad all the time. He didn’t want to do his homework, nor to clean his room. All he did was taping on the screen of his tablet. So, I decided to limit his “addiction” somehow. I didn’t want to take away the device, so I searched online and found Pumpic. After I had installed the app, I realized it was what I needed. For now, I can easily set limits on his gaming, Internet use and chatting. I don’t let him play, until his work is done.”</p>
                                    </div>
                            </div>
                            <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <img src="{$img}/testimonials/testimonials_new_26.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>Peter G. (Richmond, VA)</h4>
                                            <p>“I heard about Pumpic from my neighbors, who used it as parental controls to look after kids when at work, and to protect their own cell phones, in case they are lost or stolen. I also wanted to try it, but I didn’t want to jailbreak iPhones I’d bought for my children, my wife and me. When they told me it was available without jailbreak, I sing up and ordered the app with iCloud feature for all my family the very same day. I’m glad I can see my kids are protected now, I can monitor them online and prevent from dangers. And I’m also sure that my wife is safe, as well as she knows I’m ok too.”</p>
                                    </div>
                            </div>
                            <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <img src="{$img}/testimonials/testimonials_new_27.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>Sandra O. (Nashville, TN)</h4>
                                            <p>“Pumpic has reasonably simplified my life. I didn’t know where to find enough time to look after my three sons, and at the same time work full time. I saw Pumpic ad in the Internet and decided to give it a try. I asked my older son to jailbreak his own iPhone and tablets of my younger kids. Then I installed the app on their devices. I can finally calm down and be sure that my children are safe, even when I’m not at home. Thanks Pumpic for helping parents like me.”</p>
                                    </div>
                            </div>
                        </div> <!-- .slide-->
                        <!-- END SLIDER #1 -->
                        <!-- SLIDE #2 -->
                        <div class="slide">
                            <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <img src="{$img}/testimonials/testimonials_new_44.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>Amanda T. (St. Louis, MO)</h4>
                                            <p>“My daughter has recently become inseparable friends with her iPod Touch. She doesn’t want to do anything but listen to music, chat with her friends via Skype or simply scroll her Facebook feed. My husband decided to take away her device, but I said it was not the best idea. We both agreed that a parental control app would be a solution, and decided to try Pumpic. It is amazing! In addition to various device limits, it lets us track her location, Internet usage and block inappropriate content. It is a real helping hand for parents.”</p>
                                    </div>
                            </div>
                            <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <img src="{$img}/testimonials/testimonials_new_45.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>Monica A. (Tampa, FL)</h4>
                                            <p>“My husband and I have two teenage daughters. We long ago realized that we should have a tool to keep an eye on their online life and phone activities. But we couldn’t find a universal app to monitor our older daughter’s iPhone and Android device we bought for our little one. A friend of ours recommended trying Pumpic. He was using it for two or three months on his own, and was very satisfied with results. My husband bought two subscriptions for a year at once. I couldn’t believe it would work so good. The app allows us to see who calls them and write messages, where they go online and track their location in real time. It’s a must-have solution for parents in the modern world I think.”</p>
                                    </div>
                            </div>
                            <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <img src="{$img}/testimonials/testimonials_new_46.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>Jason G. (Los Angeles, CA)</h4>
                                            <p>“I’ve made my son a gift, bought him a brand new iPhone for all that great job he did at school. The first thing I thought about after the purchase was how to secure my kid. I didn’t want him to spend much time chatting and gaming like most kids do today. I also wanted to make sure I’ll find his iPhone, if my son loses it or it is stolen. My friends recommended me Pumpic and I’m even more than satisfied with the app. It keeps my son and his device protected.”</p>
                                    </div>
                            </div>
                        </div> <!-- .slide-->
                        <!-- END SLIDER #2-->

                    </div> <!-- .bxSliders -->

                </div>
            </div>
        </div>        
        
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