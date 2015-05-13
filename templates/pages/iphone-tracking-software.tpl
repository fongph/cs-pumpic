{include file='../includes/main/main-header.tpl'
    robots="yes" 
    title="iPhone parental control software | Pumpic"
    description="Pumpic Apple iOS monitoring app for iPhones, iPads, and iPods Touch. View calls and text messages. Track GPS location. Follow social media and online activity remotely."
}    
    
<body>
    <!-- FLY BLOCKS -->
    {include file='../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->
    
    <div class="wrapper iphone-tracking-software">
        <!-- TOP MENU -->

	{include file='../includes/main/main-top-menu.tpl'
            topmenu_active='home'
            cache_id = "includes_main_main-top-menu"
            nocache
        }
        
        <!-- CONTENT -->
        {include file='../includes/content/info/info-promo.tpl'
            imgUrl = "header_banners/iphone-tracking-software.png"
            imgAlt = "Apple iOS Mobile Monitoring App"
            imgAlign = "right"
            imgVerticalAlign = "bottom"
            textAlign = "right"
            title = "Apple Mobile <br>Monitoring App"
            description = "Enjoy iOS multitask tracking with or without Jailbreak. 
                            <br>Track location. View calls and texts. Follow online activity."
            
            promoBuyBlock = "no"
            planPackageBuy = "no"
            
            TouchPad = 'yes'
            Android = 'no'
            Apple = 'no'
            InfoBlock = 'no'
        }
        
        <div class="light">
            <div class="container">
                <div class="row position-relative">
                    <div class='iphones-text-full-width-block'>
                        <h2>Choose Subscription Plan</h2>
                    </div>
                    
                        <div class="list-group-box">
                            <div class="list-group">
                                <ul >
                                  <li href="#" class="list-group-item text-center pb35">
                                    <h4 class="list-group-item-heading"><i class="icons ico-jailbreak"></i> Jailbreak Solution </h4>
                                    {*<small>Requirements:</small>*}
                                  </li>
                                  <li href="#" class="list-group-item">
                                    <p class="list-group-item-text">
                                        <span class="title"><i class="icon-ok"></i> Jailbreak - <span class="text-success">Required</span></span>
                                        <span>You need to jailbreak the target iOS device (6.0 - 8.1.2) before installing the app.{*You need to jailbreak the target iOS device before installing the app.*}</span>
                                    </p>
                                  </li>
                                  <li href="#" class="list-group-item">
                                    <p class="list-group-item-text">
                                        <span class="title"><i class="icon-ok"></i> Physical Access - <span class="text-success">Required</span></span>
                                        <span>You need physical access to the target device to install the app on it.</span>
                                    </p>
                                  </li>
                                  <li href="#" class="list-group-item">
                                    <p class="list-group-item-text">
                                        <span class="title"><i class="icon-ok"></i> The app is <span class="text-success">Visible</span></span>
                                        <span>Pumpic is visible on the target device. However, to disable it, change settings, or delete the app a secret code is required.</span>
                                    </p>
                                  </li>
                                  <li href="#" class="list-group-item">
                                    <p class="list-group-item-text">
                                        <span class="title"><i class="icon-cancel"></i> iCloud Password - <span class="text-danger">Not Required</span></span>
                                        <span>You do not need to know iCloud password of the target iOS device.</span>
                                    </p>
                                  </li>
                                  <li href="#" class="list-group-item">
                                    <p class="list-group-item-text">
                                        <span class="title"><label class='block-number'>22</label> Monitoring features</span>
                                        <span>Multi-featured real-time iOS monitoring with filtering and blocking options.</span>
                                    </p>
                                  </li>
                                  <li href="#" class="list-group-item pc-pb65">
                                    <a href="http://{$domain}/iphone-with-jailbreak-monitoring.html" 
                                       class="list-group-item-link a-default">Learn more <i class="icons ico-arrows"></i></a>
                                  </li>
                                </ul>
                                <div class="row-pricing-panel">
                                    <div class="basic_wr">
                                        <div class="basic_h text-uppercase">
                                            Basic
                                        </div>
                                        <div class="priceb border-left">
                                            <div class="dtable">
                                                <div class="dtable-cell">
                                                    <div class="wr_pack">
                                                        <img src="{$img}/basic_pack.png">
                                                    </div>
                                                </div>
                                                <div class="dtable-cell">
                                                    <div class="wr_price_big">
                                                        <span></span>
                                                        <div class="box-currence">
                                                            <symbol attr-iso="usd">$</symbol>
                                                            <curr id="basic-price-per-month">5.33{*11.33*}</curr>
                                                        </div><span> / month</span>
                                                    </div>
                                                </div>
                                            </div>
                                                    
                                            <div id="list-plans-basic-package" class="box-plans-package">
                                               <section> 
                                                
                                                <div class="list-plans box-table">
                                                    <div class="table-rows">
                                                        <div class="item-plan table-column col-xs-sm-6 col-sm-6 col-md-6 col-lg-6 vertical-aligh-middle">
                                                            <i class="i-price-plans-big-basic"></i>
                                                        </div>
                                                        <div class="item-plan table-column col-xs-sm-6 col-sm-6 col-md-6 col-lg-6">
                                                            <p>Buy <strong class="text-red">6</strong> or <strong class="text-red">12</strong> month plan 
                                                               and <strong class="text-red">get 2 plans for free</strong></p>
                                                        </div>
                                                    </div>
                                                </div>  
                                                   
                                               </section>        
                                            </div>    
                                                    
                                            <div class="list_price">
                                                <form name="price_basic" method="POST" action="/buy.html" autocomplete="off">
                                                    <input id='product_price_basic' type='hidden' name='price[productID]' value='0' class="product_price" />
                                    
                                                    <ul>
                                                        {foreach from=$getProducts.basic key=key item=_item}
                                                        <li class="">
                                                            <label class="label_radio hover_label_radio r_off">
                                                                <input class="data-price" data-target="#basic-price-per-month" data-cur="usd" data-price-usd="{$_item.price}" data-period="{$_item.period}" name="optionsRadios" id="optionsRadios{$_item.id}1" 
                                                                       value="{$_item.id}" type="radio" 
                                                                       {if $_item.period == '12'} checked="checked" {/if} />
                                                                <span class="sp">
                                                                    <strong>
                                                                        {$_item.period}
                                                                    </strong> months
                                                                </span>
                                                                 
                                                                <div class="box-small-package">    
                                                                    {if $_item.period > 3}<span class="small_package i-price-plans-small-basic"></span>{/if} 
                                                                </div>     
                                                                    
                                                                <span class="sp_price">
                                                                    <strong>
                                                                        <div class="box-currence"><symbol attr-iso="usd">$</symbol><curr>{$_item.price}</curr></div>
                                                                    </strong>
                                                                </span>   
                                                            </label>
                                                        </li>
                                                        {/foreach}
                                                        
                                                    </ul>
                                                    <button class="btn btn-default ga-action-click" 
                                                            ga-action ="click"
                                                            ga-category="iphone-tracking"
                                                            ga-label="buy-basic"
                                                            value="true" type="submit" name="price[submit]">Buy Now</button>
                                                <!--     <div class="show_basic_features"><a href="#">Show Basic features</a>
                                                    </div> -->
                                                </form>
                                            </div>
                                        </div>
                                    
                                    
                                    </div>
                                    <div class="premium_wr">
                                        <div class="premium_h text-uppercase">
                                            Premium
                                        </div>
                                        <div class="pricep border-right-sm {*border-right-ddd*}">
                                            <div class="dtable">
                                                <div class="dtable-cell">
                                                    <div class="wr_pack">
                                                        <img src="{$img}/premium_pack.png">
                                                    </div>
                                                </div>
                                                <div class="dtable-cell">
                                                    <div class="wr_price_big">
                                                        <span></span>
                                                        <div class="box-currence">
                                                            <symbol attr-iso="usd">$</symbol>
                                                            <curr id="premium-price-per-month">6.99{*14.66*}</curr>
                                                        </div><span>/ month</span>
                                                    </div>
                                                </div>
                                            </div>
                                                
                                            <div id="list-plans-premium-package" class="box-plans-package">
                                               <section> 
                                                
                                                <div class="list-plans box-table">
                                                    <div class="table-rows">
                                                        <div class="item-plan table-column col-xs-sm-6 col-sm-6 col-md-6 col-lg-6 vertical-aligh-middle">
                                                            <i class="i-price-plans-big-premium"></i>
                                                        </div>
                                                        <div class="item-plan table-column col-xs-sm-6 col-sm-6 col-md-6 col-lg-6">
                                                            <p>Buy <strong class="text-red">6</strong> or <strong class="text-red">12</strong> month plan 
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
                                                                       data-price-usd="{$_item.price}" data-period="{$_item.period}" name="optionsRadios" id="optionsRadios{$_item.id}2" value="{$_item.id}" 
                                                                       type="radio" {if $_item.period == '12'} checked="checked" {/if} />
                                                                <span class="sp">
                                                                    <strong>
                                                                       {$_item.period}
                                                                    </strong> months
                                                                </span>
                                                                 
                                                                <div class="box-small-package">    
                                                                    {if $_item.period > 3}<span class="small_package i-price-plans-small-premium"></span>{/if} 
                                                                </div>     
                                                                    
                                                                <span class="sp_price">
                                                                    <strong>
                                                                        <div class="box-currence"><symbol attr-iso="usd">$</symbol><curr>{$_item.price}</curr></div>
                                                                    </strong>
                                                                </span>   
                                                            </label>
                                                        </li>
                                                        {/foreach}
                                                    </ul>
                                                    <button class="btn btn-default ga-action-click"
                                                            ga-action ="click"
                                                            ga-category="iphone-tracking"
                                                            ga-label="buy-premium"
                                                            value="true" type="submit" name="price[submit]">Buy Now</button>
                                                  <!--   <div class="show_premium_features"><a href="#">Show Premium features</a>
                                                    </div> -->
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="list-group list-group-bg">
                                <ul >
                                  <li href="#" class="list-group-item text-center pb35">
                                    <h4 class="list-group-item-heading"><i class="icons ico-cloud"></i> iCloud Solution </h4>
                                    {*<small>Requirements:</small>*}
                                  </li>
                                  <li href="#" class="list-group-item">
                                    <p class="list-group-item-text">
                                        <span class="title"><i class="icon-cancel"></i> Jailbreak - <span class="text-danger">Not Required</span></span>
                                        <span>You do not need to jailbreak the target iOS device (6.0 - 8.3) before installing the app.{*You do not need to jailbreak the target iOS device before installing the app.*}</span>
                                    </p>
                                  </li>
                                  <li href="#" class="list-group-item">
                                    <p class="list-group-item-text">
                                        <span class="title"><i class="icon-cancel"></i> Physical Access - <span class="text-danger">Not Required</span></span>
                                        <span>You do not need to install the app on the target device.</span>
                                    </p>
                                  </li>
                                  <li href="#" class="list-group-item">
                                    <p class="list-group-item-text">
                                        <span class="title"><i class="icon-cancel"></i> The app is <span class="text-danger">Invisible</span></span>
                                        <span>Pumpic remains invisible on the target device. You don’t need to install the app, and thus, no one will be able to delete it.</span>
                                    </p>
                                  </li>
                                  <li href="#" class="list-group-item">
                                    <p class="list-group-item-text">
                                        <span class="title"><i class="icon-ok"></i> iCloud Password - <span class="text-success">Required</span></span>
                                        <span>You need to know iCloud password of the target iOS device.</span>
                                    </p>
                                  </li>
                                  <li href="#" class="list-group-item">
                                    <p class="list-group-item-text">
                                        <span class="title"><label class='block-number'>8</label> Monitoring features</span>
                                        <span>Simple iCloud monitoring that does not require jailbreak of the target device.</span>
                                    </p>
                                  </li>
                                  <li href="#" class="list-group-item pc-pb65">
                                    <a href="http://{$domain}/icloud-iphone-without-jailbreak-monitoring.html" 
                                       class="list-group-item-link a-default">Learn more <i class="icons ico-arrows"></i></a>
                                  </li>
                                </ul>
                                <div class="row-pricing-panel pricing-icloud-solution">
                                    <div class="basic_wr pricep fix-m-left {*border-left*} w100 icloud-box">
                                        <div class="basic_h">
                                            iCloud Solution
                                        </div>
                                        <div class="priceb">
                                            <div class="dtable">
                                                <div class="dtable-cell">
                                                    <div class="dtable-text text-right">
                                                        {*<strong class='none-uppercase'>iCloud Solution</strong><br>*}
                                                         <span>iCloud Solution is provided <br>with Premium subscription only</span>
                                                    </div>
                                                    <div class="wr_pack">
                                                        <img src="images/premium_pack.png">
                                                    </div>
                                                </div>
                                                <div class="dtable-cell">         
                                                    <div class="wr_price_big">
                                                        <span></span>
                                                        <div class="box-currence">
                                                            <symbol attr-iso="usd">$</symbol>
                                                            <curr id="premium-price-bottom-per-month">6.99{*14.66 *}</curr>
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
                                                            <p class="full" style='line-height: 1.0em;'>Buy <strong class="text-red">6</strong> or <strong class="text-red">12</strong> month plan 
                                                                <br />and <strong class="text-red">get 2 plans for free</strong></p>
                                                        </div>
                                                    </div>
                                                </div>  
                                                   
                                               </section>        
                                            </div>         
                                                     
                                            <div class="list_price">
                                                <form name="price_premium_bottom" method="POST" action="/buy.html" autocomplete="off">
                                                    <input id='product_price_premium' type='hidden' name='price[productID]' value='0' class="product_price" />
                                    
                                                    <ul>
                                                        {foreach from=$getProducts.premium key=key item=_item}
                                                        <li class="">
                                                            <label class="label_radio hover_label_radio r_off">
                                                                <input class="data-price" data-target="#premium-price-bottom-per-month" data-cur="usd" 
                                                                       data-price-usd="{$_item.price}" data-period="{$_item.period}" name="optionsRadios" id="optionsRadios{$_item.id}3" 
                                                                       value="{$_item.id}" type="radio" 
                                                                       {if $_item.period == '12'} checked="checked" {/if} />
                                                                <span class="sp">
                                                                    <strong>
                                                                        {$_item.period}
                                                                    </strong> months
                                                                </span>

                                                                <div class="box-small-package">    
                                                                    {if $_item.period > 3}<span class="small_package i-price-plans-small-premium"></span>{/if} 
                                                                </div>     
                                                                    
                                                                <span class="sp_price">
                                                                    <strong>
                                                                        <div class="box-currence"><symbol attr-iso="usd">$</symbol><curr>{$_item.price}</curr></div>
                                                                    </strong>
                                                                </span>        
                                                            </label>
                                                        </li>
                                                        {/foreach}
                                                       
                                                    </ul>
                                                    <button class="btn btn-default ga-action-click" 
                                                            ga-action ="click"
                                                            ga-category="iphone-tracking"
                                                            ga-label="buy-icloud"
                                                            value="true" type="submit" name="price[submit]">Buy Now</button>
                                                    <!-- <div class="show_basic_features"><a href="#">Show Basic features</a>
                                                    </div> -->
                                                </form>
                                            </div>
                                        </div>
                                    
                                    
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                </div>
                <div class="row text-center">
                    <div class="refund_10 refund_bg">
                        <div class="wr_refund">
                            <div class="day10">
                                10-DAY 
                                <span class="d_green">Refund Policy</span>
                            </div>
                            <div class="fulfill-link">
                                <span class="store-full-link"><a href="http://pumpic.com/policy.html#refund-policy">if you fulfill these rules <i class="icon-angle-double-right"></i></a></span>
                            </div>
                        </div>
                    </div>
                    <div class="table_header table_header-border text-center">
                      <span>
                              Payment methods:
                          </span>

                      <i class="ico-cart-visa">
                          </i>
                      <i class="ico-cart-mcart">
                          </i>
                      <i class="ico-cart-maestro">
                          </i>
                      <i class="ico-cart-aexpress">
                          </i>
                      <i class="ico-cart-descover-new">
                          </i>
                      <i class="ico-cart-paypal-new">
                          </i>
                                                            </div>
                </div>
            </div>
        </div>

        <script type="text/javascript">
        function roundUsing(func, number, prec) {
            var tempnumber = number * Math.pow(10, prec);
            tempnumber = func(tempnumber);
            return tempnumber / Math.pow(10, prec);
        }
        var symbols = { usd: '$', eur: '€', gbp: '£', cad: '$', aud: '$' };
        $('input[data-target="#basic-price-per-month"], input[data-target="#premium-price-per-month"], input[data-target="#premium-price-bottom-per-month"]').change(function() {

            var currentValue = $(this).attr('data-price-' + $(this).attr('data-cur')) / Number($(this).attr('data-period'));

            // currentValue = roundUsing(Math.round, currentValue, 2);
            currentValue = (Math.floor(currentValue * 100) / 100).toFixed(2);

            $($(this).attr('data-target'))
                .html(currentValue)
                .prev('symbol')
                .html(symbols[$(this).attr('data-cur')] ? symbols[$(this).attr('data-cur')] : '');
        });
        </script>                                                

        
        {* include file='../includes/main/main-testimonials.tpl'
                title = "Trusted by Over 10 000 Customers Worldwide"
                sliders = "false"
                blockBg="light" *} 
        
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
                                    <img src="{$img}/testimonials/testimonials_new_1.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>Amanda T. (St. Louis, MO)</h4>
                                            <p>“My daughter has recently become inseparable friends with her iPod Touch. She doesn’t want to do anything but listen to music, chat with her friends via Skype or simply scroll her Facebook feed. My husband decided to take away her device, but I said it was not the best idea. We both agreed that a parental control app would be a solution, and decided to try Pumpic. It is amazing! In addition to various device limits, it lets us track her location, Internet usage and block inappropriate content. It is a real helping hand for parents.”</p>
                                    </div>
                            </div>
                            <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <img src="{$img}/testimonials/testimonials_new_2.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>Monica A. (Tampa, FL)</h4>
                                            <p>“My husband and I have two teenage daughters. We long ago realized that we should have a tool to keep an eye on their online life and phone activities. But we couldn’t find a universal app to monitor our older daughter’s iPhone and Android device we bought for our little one. A friend of ours recommended trying Pumpic. He was using it for two or three months on his own, and was very satisfied with results. My husband bought two subscriptions for a year at once. I couldn’t believe it would work so good. The app allows us to see who calls them and write messages, where they go online and track their location in real time. It’s a must-have solution for parents in the modern world I think.”</p>
                                    </div>
                            </div>
                            <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <img src="{$img}/testimonials/testimonials_new_3.png" alt="" class="testimonial-photo">
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