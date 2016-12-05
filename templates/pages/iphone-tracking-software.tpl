{include file='../includes/main/main-header.tpl'
    showRand="true"
    title="iPhone parental control software | Pumpic"
    description="Pumpic Apple iOS monitoring app for iPhones, iPads, and iPods Touch. View calls and text messages. Track GPS location. Follow social media and online activity remotely."
}    
    
<body>
<style>
    .priceb,.pricep {
        margin-top: 0!important;
    }
    @media (max-width: 540px) {
        .basic_wr .priceb {
            padding-top: 0;
        }
    }
</style>
    <!-- BLOCK GTM -->
    {include file='../includes/main/main-after-body.tpl'}
    <!-- END BLOCK GTM -->
    
    <!-- FLY BLOCKS -->
    {include file='../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->
    
    <div class="wrapper iphone-tracking-software">
        <!-- TOP MENU -->

	{include file='../includes/main/main-top-menu.tpl'
            demoHref = '/setDevice/126'
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
            imgUrl = "header_banners/iphone-tracking-software.png"
            imgAlt = "Apple iOS Mobile Monitoring App"
            imgAlign = "right"
            imgVerticalAlign = "bottom"
            textAlign = "right"
            title = "Apple Mobile<br>Monitoring App"
            description = "Enjoy iOS multitask tracking with or without Jailbreak.<br>Track location. View calls and texts. Follow online activity."
            
            promoBuyBlock = "no"
            planPackageBuy = "no"
            
            TouchPad = 'yes'
            Android = 'no'
            Apple = 'no'
            Icloud = 'no'
            InfoBlock = 'no'
            block_video = "yes"
            block_video_src = "https://www.youtube.com/embed/Atg0CbaytAY"
        }
        
        <div class="light">
            <div class="container">
                <div class="row position-relative">
                    <div class='iphones-text-full-width-block'>
                        <h2>Choose Subscription Plan</h2>
                    </div>
                    {*<div class="save__2plan">*}
                        {*<div class="save__text">*}
                            {*<input type="checkbox" data-group="icloud" name="get-40off" id="get-40off-main" data-checkboxes="get-40off">*}
                            {*<label for="get-40off-main"></label>*}
                            {*<span>Save 40%</span> on the 2nd plan. Limited time offer!*}
                        {*</div>*}
                    {*</div>*}


                    
                        <div class="list-group-box">
                            <div class="list-group list-group-bg">
                                <ul >
                                  <li href="#" class="list-group-item text-center">
                                    <h4 class="list-group-item-heading"><i class="fa fa-apple"></i> iOS <span style="font-size: 16px;">(iCloud Solution)</span></h4>
                                  </li>
                                  <li href="#" class="list-group-item">
                                    <p class="list-group-item-text">
                                        <span class="title"><i class="icon-cancel text-gray"></i> Jailbreak - <span class="text-gray">Not Required</span></span>
                                        <span>You do not need to jailbreak the target iOS device ({$ver_icloud_bot} - {$ver_icloud_up}) before installing the app.</span>
                                    </p>
                                  </li>
                                  <li href="#" class="list-group-item">
                                    <p class="list-group-item-text">
                                        <span class="title"><i class="icon-cancel text-gray"></i> Physical Access - <span class="text-gray">Not Required</span></span>
                                        <span>You do not need physical access to the target device unless you need to check iCloud or backup settings & perform a backup manually.</span>
                                    </p>
                                  </li>
                                  <li href="#" class="list-group-item">
                                    <p class="list-group-item-text">
                                        <span class="title"><i class="icon-eye-closed text-gray"></i> The app is <span class="text-gray">Not Required</span></span>
                                        <span>You don’t need to install the app, and thus, no one will be able to delete it.<br/>&nbsp;</span>
                                    </p>
                                  </li>
                                  <li href="#" class="list-group-item">
                                    <p class="list-group-item-text">
                                        <span class="title"><i class="icon-ok text-success"></i> iCloud Password - <span class="text-success">Required</span></span>
                                        <span>You need to know iCloud password of the target iOS device.</span>
                                    </p>
                                  </li>
                                  <li href="#" class="list-group-item">
                                    <p class="list-group-item-text">
                                        <span class="title"><label class='block-number'>11</label> Monitoring features</span>
                                        <span>Simple iCloud monitoring that does not require jailbreak of the target device.</span>
                                    </p>
                                  </li>
                                  <li href="#" class="list-group-item pc-pb65 text-center">
                                    <a href="http://{$domain}/icloud-iphone-without-jailbreak-monitoring.html" 
                                       class="list-group-item-link a-default">Learn more<i class="icons ico-arrows"></i></a>
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
                                                <div class="wrapper_pack">
                                                    <div class="wr_pack_premium wr_icloud _single-pack-icloud" style="margin-top: 12px;"></div>
                                                    <div class="wr_pack_double_premium wr_icloud-double _double-pack-icloud"></div>

                                                </div>
                                                </div>
                                                <div class="dtable-cell">
                                                    <div class="wr_price_big">
                                                        <span></span>
                                                        <div class="box-currence">
                                                            <div class="symbol" attr-iso="usd">$</div>
                                                            <div class="curr" id="icloud-price-per-month">{$defaultIosiCloudPrice}</div>
                                                        </div><span> / month</span>
                                                    </div>
                                                </div>
                                            </div>         
                                            <div class="list_price">
                                                <form name="price_premium_bottom" method="POST" action="/buy.html" class="buy-form-with-offer" autocomplete="off">
                                                    <input id='product_price_premium2' type='hidden' name='price[productID]' value='{if isset($defaultIosiCloud)}{$defaultIosiCloud}{else}0{/if}' class="product_price"/>
                                    
                                                    <ul>
                                                        {foreach from=$getProducts.iosiCloud key=key item=item}
                                                            <li>
                                                                <label class="label_radio hover_label_radio {if $item.period == '12'}r_on{else}r_off{/if}">
                                                                    <input class="data-price" data-target="#icloud-price-per-month" data-cur="usd" data-price-usd="{$item.price}" data-offer-price-usd="{$getProducts.iosiCloudDouble[$key].price}" data-period="{$item.period}" data-product="{$item.id}" data-offer-product="{$getProducts.iosiCloudDouble[$key].id}" data-group="icloud"  name="optionsRadios" id="optionsRadios{$item.id}2" value="{$item.id}" type="radio"{if $item.period == '12'} checked="checked"{/if} />
                                                                    <span class="sp">
                                                                        <strong>{$item.period}</strong> {if $item.period == 1}month{else}months{/if}
                                                                    </span>

                                                                    <div class="box-small-package">
                                                                        <div class="offer_old_price"><div class="box-currence strike__currence"><div class="symbol" attr-iso="usd">$</div><div class="curr">{$item.price * 2|string_format:"%.2f"}</div></div></div>
                                                                    </div>

                                                                    <div class="package_price">
                                                                        <strong>
                                                                            <div class="box-currence"><div class="symbol" attr-iso="usd">$</div><div class="curr">{$item.price}</div></div>
                                                                        </strong>
                                                                    </div>
                                                                    <div class="package_offer_price">
                                                                        <strong>
                                                                            <div class="box-currence"><div class="symbol" attr-iso="usd">$</div><div class="curr">{$getProducts.iosiCloudDouble[$key].price}</div></div>
                                                                        </strong>
                                                                    </div>
                                                                </label>
                                                            </li>
                                                        {/foreach}
                                                    </ul>
                                                    <div class="double_offer checkbox">
                                                        <label>
                                                            <input type="checkbox" data-group="icloud" name="get-40off">
                                                            Get the 2nd plan with <span>40% OFF!</span>
                                                        </label>
                                                    </div>
                                                    <button class="btn btn-default ga-action-click" 
                                                            ga-action ="click"
                                                            ga-category="iphone-tracking-software"
                                                            ga-label="buy icloud"
                                                            value="true" type="submit" name="price[submit]">Buy Now</button>
                                                    <!-- <div class="show_basic_features"><a href="#">Show Basic features</a>
                                                    </div> -->
                                                </form>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="list-group">
                                <ul >
                                    <li href="#" class="list-group-item text-center">
                                        <h4 class="list-group-item-heading"><i class="fa fa-unlock-alt"></i> iOS <span style="font-size: 16px;">(Jailbreak Solution)</span></h4>
                                    </li>
                                    <li href="#" class="list-group-item">
                                        <p class="list-group-item-text">
                                            <span class="title"><i class="icon-ok text-success"></i> Jailbreak - <span class="text-success">Required</span></span>
                                            <span>You need to jailbreak the target iOS device ({$ver_ios_bot} - {$ver_jailbreak_up}) before installing <br />the app.{*You need to jailbreak the target iOS device before installing the app.*}</span>
                                        </p>
                                    </li>
                                    <li href="#" class="list-group-item">
                                        <p class="list-group-item-text">
                                            <span class="title"><i class="icon-ok text-success"></i> Physical Access - <span class="text-success">Required</span></span>
                                            <span>You need physical access to the target device to install the app on it.<br>&nbsp;</span>
                                        </p>
                                    </li>
                                    <li href="#" class="list-group-item">
                                        <p class="list-group-item-text">
                                            <span class="title"><i class="icon-eye text-success"></i> The app is <span class="text-success">Visible</span></span>
                                            <span>Pumpic is visible on the target device. However, to disable it, change settings, or delete the app a secret code is required.</span>
                                        </p>
                                    </li>
                                    <li href="#" class="list-group-item">
                                        <p class="list-group-item-text">
                                            <span class="title"><i class="icon-cancel text-gray"></i> iCloud Password - <span class="text-gray">Not Required</span></span>
                                            <span>You do not need to know the iCloud password of the target iOS device.</span>
                                        </p>
                                    </li>
                                    <li href="#" class="list-group-item">
                                        <p class="list-group-item-text">
                                            <span class="title"><label class='block-number'>23</label> Monitoring features</span>
                                            <span>Multi-featured real-time <a class="a-default" target="_blank" href="/how-to-setup-parental-controls-on-iphone.html">iOS monitoring</a> with filtering and blocking options.</span>
                                        </p>
                                    </li>
                                    <li href="#" class="list-group-item pc-pb65 text-center">
                                        <a href="http://{$domain}/iphone-with-jailbreak-monitoring.html"
                                           class="list-group-item-link a-default">Learn more<i class="icons ico-arrows"></i></a>
                                    </li>
                                </ul>
                                <div class="row-pricing-panel">
                                    <div class="premium_wr" style="">
                                        <div class="premium_h">
                                            Jailbreak Solution
                                        </div>
                                        <div class="pricep border-right-sm {*border-right-ddd*}">
                                            <div class="dtable">
                                                <div class="dtable-cell">
                                                    <div class="wrapper_pack">
                                                        <div class="wr_pack_premium wr_icloud_jb _single-pack-jailbreak" style="margin-top: 12px;"></div>
                                                        <div class="wr_pack_double_premium wr_icloud_jb-double _double-pack-jailbreak"></div>
                                                    </div>
                                                </div>
                                                <div class="dtable-cell">
                                                    <div class="wr_price_big">
                                                        <span></span>
                                                        <div class="box-currence">
                                                            <div class="symbol" attr-iso="usd">$</div>
                                                            <div class="curr" id="jailbreak-price-per-month">{$getDefaultiosJailbreak}</div>
                                                        </div><span>/ month</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="list_price">
                                                <form name="price_premium" method="POST" action="/buy.html" class="buy-form-with-offer" autocomplete="off">
                                                    <input id='product_price_premium1' type='hidden' name='price[productID]' value='{if isset($getDefaultiosJailbreak)}{$getDefaultiosJailbreak}{else}0{/if}' class="product_price"/>

                                                    <ul>
                                                        {foreach from=$getProducts.iosJailbreak key=key item=item}
                                                            <li>
                                                                <label class="label_radio hover_label_radio {if $item.period == '12'}r_on{else}r_off{/if}">
                                                                    <input class="data-price" data-target="#jailbreak-price-per-month" data-cur="usd" data-price-usd="{$item.price}" data-offer-price-usd="{$getProducts.iosJailbreakDouble[$key].price}" data-period="{$item.period}" data-product="{$item.id}" data-offer-product="{$getProducts.iosJailbreakDouble[$key].id}" data-group="jailbreak"  name="optionsRadios" id="optionsRadios{$item.id}1" value="{$item.id}" type="radio"{if $item.period == '12'} checked="checked"{/if} />
                                                                    <span class="sp">
                                                                        <strong>{$item.period}</strong> {if $item.period == 1}month{else}months{/if}
                                                                    </span>

                                                                    <div class="box-small-package">
                                                                        <div class="offer_old_price"><div class="box-currence strike__currence"><div class="symbol" attr-iso="usd">$</div><div class="curr">{$item.price * 2|string_format:"%.2f"}</div></div></div>
                                                                    </div>

                                                                    <div class="package_price">
                                                                        <strong>
                                                                            <div class="box-currence"><div class="symbol" attr-iso="usd">$</div><div class="curr">{$item.price}</div></div>
                                                                        </strong>
                                                                    </div>
                                                                    <div class="package_offer_price">
                                                                        <strong>
                                                                            <div class="box-currence"><div class="symbol" attr-iso="usd">$</div><div class="curr">{$getProducts.iosJailbreakDouble[$key].price}</div></div>
                                                                        </strong>
                                                                    </div>
                                                                </label>
                                                            </li>
                                                        {/foreach}
                                                    </ul>
                                                    <div class="double_offer checkbox">
                                                        <label>
                                                            <input type="checkbox" data-group="jailbreak" name="get-40off">
                                                            Get the 2nd plan with <span>40% OFF!</span>
                                                        </label>
                                                    </div>

                                                    <button class="btn btn-default ga-action-click"
                                                            ga-action ="click"
                                                            ga-category="iphone-tracking-software"
                                                            ga-label="buy jailbreak"
                                                            value="true" type="submit" name="price[submit]">Buy Now</button>
                                                    <!--   <div class="show_premium_features"><a href="#">Show Premium features</a>
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
                    <div class="table_header table_header-border text-center">
                        <div class="pull-left">
                            <div class="list-currencies clearfix">
                                <span>Currency:</span>
                                <a class="store-link-currancy-flag active">
                                    <i class="ico-flag-usd"></i><span>USD</span>
                                </a>
                                <a class="store-link-currancy-flag active">
                                    <i class="ico-flag-gbp"></i><span>GBP</span>
                                </a>
                                <a class="store-link-currancy-flag active">
                                    <i class="ico-flag-eur"></i><span>EUR</span>
                                </a>
                                <a class="store-link-currancy-flag active">
                                    <i class="ico-flag-cad"></i><span>CAD</span>
                                </a>
                                <a class="store-link-currancy-flag active">
                                    <i class="ico-flag-aud"></i><span>AUD</span>
                                </a>
                            </div>
                        </div>
                        <div class="pull-right">
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
        </div>
        {* include file='../includes/testimonials.tpl'
                title = "Trusted by Over 10,000 Customers Worldwide"
                sliders = "false"
                blockBg="light" *} 
        
        {* BLOCK TESTIMONIALS HTML (sliders) *}    
        <div class="light">
            <div class="container">
                <h2 class="text-center testimonial-title">Trusted by Over 10,000 Customers Worldwide:</h2>
                <div class="row">

                    <div class="bxSliders only-pc">
                        <!-- SLIDE #1 -->
                        <div class="slide">
                            <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <img src="{$img}/testimonials/testimonials_new_25.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>Mike P. (Denver, CO)</h4>
                                            <p>“I didn’t like that my son played games on his iPad all the time. He didn’t want to do his homework, nor to clean his room. All he did was taping on the screen of his tablet. So, I decided to limit his “addiction” somehow. I didn’t want to take away the device, so I searched online and found Pumpic. After I had installed the app, I realized it was what I needed. For now, I can easily set limits on his gaming, Internet use and chatting. I don’t let him play, until his work is done.”</p>
                                    </div>
                            </div>
                            <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <img src="{$img}/testimonials/testimonials_new_26.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>Peter G. (Richmond, VA)</h4>
                                            <p>“I heard about Pumpic from my neighbors, who used it as parental controls to look after kids when at work, and to protect their own cell phones, in case they are lost or stolen. I also wanted to try it, but I didn’t want to jailbreak iPhones I’d bought for my children, my wife and me. When they told me it was available without jailbreak, I sing up and ordered the app with iCloud feature for all my family the very same day. I’m glad I can see my kids are protected now, I can monitor them online and prevent from dangers. And I’m also sure that my wife is safe, as well as she knows I’m ok too.”</p>
                                    </div>
                            </div>
                            <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <img src="{$img}/testimonials/testimonials_new_27.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>Sandra O. (Nashville, TN)</h4>
                                            <p>“Pumpic has reasonably simplified my life. I didn’t know where to find enough time to look after my three sons, and at the same time work full time. I saw Pumpic ad in the Internet and decided to give it a try. I asked my older son to jailbreak his own iPhone and tablets of my younger kids. Then I installed the app on their devices. I can finally calm down and be sure that my children are safe, even when I’m not at home. Thanks Pumpic for helping parents like me.”</p>
                                    </div>
                            </div>
                        </div> <!-- .slide-->

                        <!-- SLIDE #2 -->
                        <div class="slide">
                            <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <img src="{$img}/testimonials/marsha-h.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>Marsha H. (Ellensburg, WA)</h4>
                                            <p>“My daughter has recently become inseparable friends with her iPod Touch. She doesn’t want to do anything but listen to music, chat with her friends via Skype or simply scroll her Facebook feed. My husband decided to take away her device, but I said it was not the best idea. We both agreed that a parental control app would be a solution, and decided to try Pumpic. It is amazing! In addition to various device limits, it lets us track her location, Internet usage and block inappropriate content. It is a real helping hand for parents.”</p>
                                    </div>
                            </div>
                            <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <img src="{$img}/testimonials/vickie-l.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>Vickie L. (North Platte, NE)</h4>
                                            <p>“My husband and I have two teenage daughters. We long ago realized that we should have a tool to keep an eye on their online life and phone activities. But we couldn’t find a universal app to monitor our older daughter’s iPhone and Android device we bought for our little one. A friend of ours recommended trying Pumpic. He was using it for two or three months on his own, and was very satisfied with results. My husband bought two subscriptions for a year at once. I couldn’t believe it would work so good. The app allows us to see who calls them and write messages, where they go online and track their location in real time. It’s a must-have solution for parents in the modern world I think.”</p>
                                    </div>
                            </div>
                            <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <img src="{$img}/testimonials/david-p.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>David P. (Louisville, KY)</h4>
                                            <p>“I’ve made my son a gift, bought him a brand new iPhone for all that great job he did at school. The first thing I thought about after the purchase was how to secure my kid. I didn’t want him to spend much time chatting and gaming like most kids do today. I also wanted to make sure I’ll find his iPhone, if my son loses it or it is stolen. My friends recommended me Pumpic and I’m even more than satisfied with the app. It keeps my son and his device protected.”</p>
                                    </div>
                            </div>
                        </div> <!-- .slide-->
                    </div>
                    <div class="bxSliderMobile"></div>

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