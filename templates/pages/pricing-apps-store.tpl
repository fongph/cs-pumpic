{*Order out="getProducts"*}
{*formOrder post=$smarty.post*}

{include file='../includes/main/main-header.tpl'
    showRand="true"
    title="Phone Tracker Prices and Subscription Plans | Pumpic"
    description="Pumpic offers high-quality Cell Phone Tracking Software for a good price. Find out more about Pumpic cost and subscription plan types to choose the one suitable for your monitoring needs."
}

<body>
    <!-- BLOCK GTM -->
    {include file='../includes/main/main-after-body.tpl'}
    <!-- END BLOCK GTM -->
    
    <!-- FLY BLOCKS -->
    {include file='../includes/main/main-button-help.tpl'}
    {include file='../includes/main/main-button-goup.tpl'}
    <!-- END FLY BLOCKS-->
    <div class="wrapper">
        {include file='../includes/main/main-top-menu.tpl' 
                topmenu_active='pricing'
                cache_id = "includes_main_main-top-menu"
                nocache
        }
        

        
        {*
            Template: PHONE
            Переменные:
                style (text): стиль блока Phone (blue|black). * - blue 
        *}
        {include file='../includes/content/phone/block-phone.tpl'
                 style="black"   
        }
	
        <div class="no_bg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-10 col-lg-offset-1">
                        <div class="row">
                            <h1 class="h2 text-center">
                                Subscription Plans
                            </h1>
                            <div class="col-lg-10 col-md-10 col-lg-offset-1 col-md-offset-1">
                                    <table class="tb_pricing table-bordered pricing-second">
                                        <caption>
                                            <div class="table_header">
                                                <!-- Block currencies -->
                                                <div class="pull-left">
                                                    <div class="list-currencies clearfix"></div>
                                                </div>

                                                <!-- Block choose currency include -->
                                                <div class="pull-right">
                                                    <span>
                                                        Payment methods:
                                                    </span>

                                                    <i class="ico-cart-visa">
                                                    </i>
                                                    <i class="ico-cart-mcart">
                                                    </i>
                                                    <i class="ico-cart-aexpress">
                                                    </i>
                                                    <i class="ico-cart-descover-new">
                                                    </i>
                                                    <i class="ico-cart-paypal-new">
                                                    </i>

                                                </div>
                                            </div>
                                            <div class="table_title mobile-off">
                                                <h3>
                                                    Free with every plan:
                                                </h3>
                                                <span>
                                                    <i class="icon-ok">
                                                    </i>Remote activity control
                                                </span>
                                                <span>
                                                    <i class="icon-ok">
                                                    </i>Removal protection
                                                </span>
                                                <span>
                                                    <i class="icon-ok">
                                                    </i>Remote Device Lock
                                                </span>
                                                <span>
                                                    <i class="icon-ok">
                                                    </i>Instant location
                                                </span>
                                                <span>
                                                    <i class="icon-ok">
                                                    </i>SIM card change alert
                                                </span>
                                            </div>
                                        <div class="refund_new_11">
                                            <div class="wr_refund">
                                                <div class="day10">
                                                    10-DAY <span class="d_green">Refund Policy</span>
                                                </div>
                                                <div class="fulfill-link">
                                                    <span class='store-full-link'>
                                                        <a href='http://pumpic.com/policy.html#refund-policy'>if you fulfill these rules <i class='icon-angle-double-right'></i></a>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="support_new_os"><div class="wr_support_new_os"><i class="icon-android d_green"></i> Android {$ver_android_bot} - {$ver_android_up}
                                                <i class="icon-apple d_green"></i> iOS {$ver_ios_bot} - {$ver_jailbreak_up} (with jailbreak)   <i class="icon-cloud d_green"></i>   iCloud iOS {$ver_icloud_up}</div></div>
                                        </caption>
                                        <thead>
                                            <tr>
                                                <th>
                                                    <div class="basic_wr">
                                                        <div class="basic_h">
                                                            Basic
                                                        </div>
                                                        <div class="priceb">
                                                            <div class="wr_pack">
                                                                <img src="{$img}/basic_pack.png">
                                                            </div>
                                                            <div class="wr_price_big">
                                                                <span></span><div class="box-currence"><div class="symbol" attr-iso="usd">$</div><div class="curr" id="basic-price-per-month">5.33</div></div><span> / month</span>
                                                            </div>
                                                            
                                                            <div id="list-plans-basic-package" class="box-plans-package mt15">
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
                                                                <input id='product_price_basic' type='hidden' name='price[productID]' value='{if isset($getDefaultBasic)}{$getDefaultBasic}{else}0{/if}' class="product_price" />
                                                                <ul>
                                                                    {foreach from=$getProducts.basic key=key item=_item}
                                                                    <li class= "">
                                                                        <label class="label_radio hover_label_radio {if $_item.period == '12'}r_on{else}r_off{/if}"><input class="data-price" data-target="#basic-price-per-month" data-cur="usd" data-price-usd="{$_item.price}" data-period="{$_item.period}" name="optionsRadios" id="optionsRadios{$_item.id}1"
                                                                        value="{$_item.id}" type="radio" 
                                                                        {if $_item.period == '12'} checked="checked" {/if}
                                                                        />
                                                                        <span class="sp">
                                                                            <strong>
                                                                                {$_item.period}
                                                                            </strong> {if $_item.period == 1}month{else}months{/if}
                                                                        </span>
                                                                         
                                                                        <div class="box-small-package">    
                                                                            {if $_item.period > 3}<span class="small_package i-price-plans-small-basic"></span>{/if} 
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
                                                                <button class="btn btn-default ga-action-click" 
                                                                        ga-action ="click"
                                                                        ga-category="store"
                                                                        ga-label="buy basic"
                                                                        value="true" type="submit" name="price[submit]">Buy Basic</button>
                                                                <div class="show_basic_features"><a href="#">Show Basic features</a></div>
                                                                </form>
                                                            </div>
                                                            <div class="basic_fe">
                                                                <ul>
                                                                    <li data-toggle="tooltip" data-placement="top" title="View detailed data on incoming/outgoing calls: name, phone number, time and duration."><i class="icon-ok"></i> Calls history <span>(unlimited)</span>
                                                                    </li>
                                                                    <li data-toggle="tooltip" data-placement="top" title="View text content sent or received via SMS, MMS, and iMessages.</div>"><i class="icon-ok"></i> Text message history <span>(unlimited)</span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title="Block calls from specific numbers."><i class="icon-ok"></i> Calls blocking </li>
                                                                    <li data-toggle="tooltip" data-placement="top" title="Block SMS from specific senders and/or containing specific keywords. <div class='br'><strong>Android: Root Required</strong></div><div class='br'><strong>Not available for Android 5.0 and newer versions.</strong></div>"><i class="icon-ok"></i> SMS blocking </li>
                                                                    <li data-toggle="tooltip" data-placement="top" title="Set a number of SMS a user can send daily. <div class='br'><strong>Android: Activated Keylogger Needed</strong></div>"><i class="icon-ok"></i> SMS limiting</li>
                                                                    <li data-toggle="tooltip" data-placement="top" title="Track current location as well as the entire route history. Map view available."><i class="icon-ok"></i> Location history</li>
                                                                    <li data-toggle="tooltip" data-placement="top" title="Set specific zones and receive alerts once the target device leaves them or enters. <div class='br'><strong>Not available for iOS 9.0 and newer versions.</strong></div>"><i class="icon-ok"></i> Geo-fences</li>
                                                                    <li data-toggle="tooltip" data-placement="top" title="View contact list including names, addresses, numbers and emails."><i class="icon-ok"></i> Contacts</li>
                                                                    <li data-toggle="tooltip" data-placement="top" title="Monitor scheduled dates and events."><i class="icon-ok"></i> Calendar</li>
                                                                    <li data-toggle="tooltip" data-placement="top" title="Track Notes on the target iOS device.<div class='br'><strong>Not available for iOS 9.0 and newer versions.</strong></div>"><i class="icon-ok"></i> Notes</li>
                                                                    <li data-toggle="tooltip" data-placement="top" title="View all visited websites."><i class="icon-ok"></i> Browsing history</li>
                                                                    <li data-toggle="tooltip" data-placement="top" title="Block specific websites on a target device."><i class="icon-ok"></i> Websites blocking</li>

                                                                    <li data-toggle="tooltip" data-placement="top" title="View all websites visited and bookmarked as preferred ones."><i class="icon-ok"></i> Bookmarks</li>
                                                                    <li data-toggle="tooltip" data-placement="top" title="View all photos stored on a device."><i class="icon-ok"></i> Photos</li>

                                                                    <li data-toggle="tooltip" data-placement="top" title="View all emails and detailed contact data. <div class='br'><strong>Android: Root Required</strong></div>"><i class="icon-ok"></i> Emails</li>
                                                                    <li data-toggle="tooltip" data-placement="top" title="Monitor, block or set time limits on all applications (games, services etc.) downloaded on a device."><i class="icon-ok"></i> Applications Management</li>
                                                                    <li data-toggle="tooltip" data-placement="top" title="View all videos stored on a device."><i class="icon-cancel"></i> Videos</li>
                                                                    <li data-toggle="tooltip" data-placement="top" title="Track conversations via Skype, WhatsApp, Viber, and Kik. Monitor Skype and WhatsApp calls.<div class='br'><strong>Android: Root Required</strong></div>"><i class="icon-cancel"></i> Viber/WhatsApp/Skype/Kik</li>
                                                                    <li data-toggle="tooltip" data-placement="top" title="Monitor posted images and comments on Instagram. <div class='br'><strong>Android: Root Required</strong></div>"><i class="icon-cancel"></i> Instagram</li>
                                                                    <li data-toggle="tooltip" data-placement="top" title="Monitor Snapchat photos, videos, and comments. <div class='br'><strong>Not available for iOS 9.0 and newer versions.</strong><br><strong>Android: Root and Xposed Required</strong></div>"><i class="icon-cancel"></i> Snapchat</li>
                                                                    <li data-toggle="tooltip" data-placement="top" title="Track chats and calls on Facebook. <div class='br'><strong>Android: Root Required</strong></div>"><i class="icon-cancel"></i> Facebook{*Messages*}</li>
                                                                    <li data-toggle="tooltip" data-placement="top" title="View all the previouse data ever stored on a device."><i class="icon-cancel"></i> Historical data</li>
                                                                    <li data-toggle="tooltip" data-placement="top" title="Control devices remotely.<div class='br'><strong>Not supported: Android 5.0 and higher.</strong></div>"><i class="icon-cancel"></i> SMS commands
                                                                    </li>
                                                                    <li data-toggle="tooltip" data-placement="top" title="View every keystroke typed on a target device."><i class="icon-cancel"></i> Keylogger</li>
                                                                    <li data-toggle="tooltip" data-placement="top" title="Monitor Apple devices without jailbreak. View Calls, Text messages, Photos, Location, Notes, Contacts, Browsing History, Bookmarks, Calendar, Skype, and WhatsApp."><i class="icon-cancel"></i>  <strong style="font-size: 14px">iCloud Monitoring</strong> (<span class="fz13">without jailbreak up to iOS {$ver_icloud_up}</span>)</li>

                                                                </ul>
                                                            </div>
                                                        <div class="basic_h" id="foot_h1">
                                                            Basic
                                                        </div>
                                                            <div class="list_price" id="foot_h2">
                                                            <div class="space_line">&nbsp;</div>
                                                            
                                                            
                                                            
                                                            
                                                            <form name="price_basic_bottom" method="POST" action="/buy.html" autocomplete="off">
                                                                <input id='product_price_basic' type='hidden' name='price[productID]' value='{if isset($getDefaultBasic)}{$getDefaultBasic}{else}0{/if}' class="product_price" />
                                                                
                                                                <ul>
                                                                    {foreach from=$getProducts.basic key=key item=_item}
                                                                    <li class= "">
                                                                        <label class="label_radio hover_label_radio {if $_item.period == '12'}r_on{else}r_off{/if}"><input name="optionsRadios" id="optionsRadios{$_item.id}2"
                                                                        value="{$_item.id}" type="radio" 
                                                                        {if $_item.period == '12'} checked="checked" {/if}
                                                                        />
                                                                            <span class="sp">
                                                                                <strong>
                                                                                    {$_item.period}
                                                                                </strong> {if $_item.period == 1}month{else}months{/if}
                                                                            </span>

                                                                            <div class="box-small-package">    
                                                                                {if $_item.period > 3}<span class="small_package i-price-plans-small-basic"></span>{/if} 
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
                                                                <button class="btn btn-default ga-action-click" 
                                                                        ga-action ="click"
                                                                        ga-category="store"
                                                                        ga-label="buy basic"
                                                                        value="true" type="submit" name="price[submit]">Buy Basic</button>
                                                                </form>
                                                            <div class="space_line">&nbsp;</div> 
                                                            </div>                                                        
                                                        </div>

                                                        
                                                    </div>
                                                    <div class="premium_wr">
                                                        <div class="premium_h">
                                                            Premium
                                                        </div>
                                                        <div class="pricep">
                                                            <div class="wr_pack">
                                                                <img src="{$img}/premium_pack.png">
                                                            </div>
                                                            <div class="wr_price_big">
                                                                <span></span><div class="box-currence"><div class="symbol" attr-iso="usd">$</div><div class="curr" id="premium-price-per-month">6.99{*14.66*}</div></div><span>/ month</span>
                                                            </div>
                                                            
                                                            
                                                            <div id="list-plans-premium-package" class="box-plans-package mt15">
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
                                                                <input id='product_price_premium' type='hidden' name='price[productID]' value='{if isset($getDefaultPremium)}{$getDefaultPremium}{else}0{/if}' class="product_price"/>
                                                                
                                                                <ul>
                                                                    {foreach from=$getProducts.premium key=key item=_item}
                                                                    <li class= "">
                                                                        <label class="label_radio hover_label_radio {if $_item.period == '12'}r_on{else}r_off{/if}"><input class="data-price" data-target="#premium-price-per-month" data-cur="usd" data-price-usd="{$_item.price}" data-period="{$_item.period}" name="optionsRadios" id="optionsRadios{$_item.id}3"
                                                                        value="{$_item.id}" type="radio" 
                                                                        {if $_item.period == '12'} checked="checked" {/if}
                                                                        />
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
                                                                <button class="btn btn-default ga-action-click" 
                                                                        ga-action ="click"
                                                                        ga-category="store"
                                                                        ga-label="buy premium"
                                                                        value="true" type="submit" name="price[submit]">Buy Premium</button>
                                                                <div class="show_premium_features"><a href="#">Show Premium features</a></div>
                                                                </form>
                                                            </div>
                                                           <div class="premium_fe">
                                                            <ul>
                                                                <li data-toggle="tooltip" data-placement="top" title="View detailed data on incoming/outgoing calls: name, phone number, time and duration."><i class="icon-ok"></i> Calls history <span>(unlimited) <img src="/images/cloud-grey.png"> </span>
                                                                    </li>
                                                                <li data-toggle="tooltip" data-placement="top" title="View text content sent or received via SMS, MMS, and iMessages.</div>"><i class="icon-ok"></i> Text message history <span>(unlimited)</span> <img src="/images/cloud-grey.png"> </li>
                                                                <li data-toggle="tooltip" data-placement="top" title="Block calls from specific numbers."><i class="icon-ok"></i> Calls blocking </li>
                                                                <li data-toggle="tooltip" data-placement="top" title="Block SMS from specific senders and/or containing specific keywords. <div class='br'><strong>Android: Root Required</strong></div><div class='br'><strong>Not available for Android 5.0 and newer versions.</strong></div>"><i class="icon-ok"></i> SMS blocking </li>
                                                                <li data-toggle="tooltip" data-placement="top" title="Set a number of SMS a user can send daily. <div class='br'><strong>Android: Activated Keylogger Needed</strong></div>"><i class="icon-ok"></i> SMS limiting</li>
                                                                <li data-toggle="tooltip" data-placement="top" title="Track current location as well as the entire route history. Map view available."><i class="icon-ok"></i> Location history</li>
                                                                <li data-toggle="tooltip" data-placement="top" title="Set specific zones and receive alerts once the target device leaves them or enters. <div class='br'><strong>Not available for iOS 9.0 and newer versions.</strong></div>"><i class="icon-ok"></i> Geo-fences</li>
                                                                <li data-toggle="tooltip" data-placement="top" title="View contact list including names, addresses, numbers and emails."><i class="icon-ok"></i> Contacts <img src="/images/cloud-grey.png"></li>
                                                                <li data-toggle="tooltip" data-placement="top" title="Monitor scheduled dates and events."><i class="icon-ok"></i> Calendar <img src="/images/cloud-grey.png"></li>
                                                                <li data-toggle="tooltip" data-placement="top" title="Track Notes on the target iOS device.<div class='br'><strong>Not available for iOS 9.0 and newer versions.</strong></div>"><i class="icon-ok"></i> Notes <img src="/images/cloud-grey.png"></li>
                                                                <li data-toggle="tooltip" data-placement="top" title="View all visited websites."><i class="icon-ok"></i> Browsing history <img src="/images/cloud-grey.png"></li>
                                                                <li data-toggle="tooltip" data-placement="top" title="Block specific websites on a target device."><i class="icon-ok"></i> Websites blocking</li>

                                                                <li data-toggle="tooltip" data-placement="top" title="View all websites visited and bookmarked as preferred ones."><i class="icon-ok"></i> Bookmarks <img src="/images/cloud-grey.png"></li>
                                                                <li data-toggle="tooltip" data-placement="top" title="View all photos stored on a device."><i class="icon-ok"></i> Photos <img src="/images/cloud-grey.png"></li>

                                                                <li data-toggle="tooltip" data-placement="top" title="View all emails and detailed contact data. <div class='br'><strong>Android: Root Required</strong></div>"><i class="icon-ok"></i> Emails</li>
                                                                <li data-toggle="tooltip" data-placement="top" title="Monitor, block or set time limits on all applications (games, services etc.) downloaded on a device."><i class="icon-ok"></i> Applications Management</li>
                                                                <li data-toggle="tooltip" data-placement="top" title="View all videos stored on a device."><i class="icon-ok"></i> Videos</li>
                                                                <li data-toggle="tooltip" data-placement="top" title="Track conversations via Skype, WhatsApp, Viber, and Kik. Monitor Skype and WhatsApp calls.<div class='br'><strong>Android: Root Required</strong></div>"><i class="icon-ok"></i> Viber/WhatsApp/Skype/Kik</li>
                                                                <li data-toggle="tooltip" data-placement="top" title="Monitor posted images and comments on Instagram. <div class='br'><strong>Android: Root Required</strong></div>"><i class="icon-ok"></i> Instagram</li>
                                                                <li data-toggle="tooltip" data-placement="top" title="Monitor Snapchat photos, videos, and comments. <div class='br'><strong>Not available for iOS 9.0 and newer versions.</strong><br><strong>Android: Root and Xposed Required</strong></div>"><i class="icon-ok"></i> Snapchat</li>
                                                                <li data-toggle="tooltip" data-placement="top" title="Track chats and calls on Facebook. <div class='br'><strong>Android: Root Required</strong></div>"><i class="icon-ok"></i> Facebook{*Messages*}</li>
                                                                <li data-toggle="tooltip" data-placement="top" title="View all the previouse data ever stored on a device."><i class="icon-ok"></i> Historical data <img src="/images/cloud-grey.png"></li>
                                                                <li data-toggle="tooltip" data-placement="top" title="Control devices remotely.<div class='br'><strong>Not supported: Android 5.0 and higher.</strong></div>"><i class="icon-ok"></i> SMS commands
                                                                    </li>
                                                                <li data-toggle="tooltip" data-placement="top" title="View every keystroke typed on a target device."><i class="icon-ok"></i> Keylogger</li>
                                                                <li data-toggle="tooltip" data-placement="top" title="Monitor Apple devices without jailbreak. View Calls, Text messages, Photos, Location, Notes, Contacts, Browsing History, Bookmarks, Calendar, Skype, and WhatsApp."><i class="icon-ok"></i>  <strong style="font-size: 14px">iCloud Monitoring</strong> (<span class="fz13">without jailbreak up to iOS {$ver_icloud_up}</span>)</li>

                                                            </ul>
                                                            </div>
                                                        <div class="premium_h" id="foot_h3">
                                                            Premium
                                                        </div>
                                                        <div class="list_price" id="foot_h4">
                                                        <div class="space_line">&nbsp;</div> 
                                                            <form name="price_premium_bottom" method="POST" action="/buy.html" autocomplete="off">
                                                                <input id='product_price_premium' type='hidden' name='price[productID]' value='{if isset($getDefaultPremium)}{$getDefaultPremium}{else}0{/if}' class="product_price" />
                                                                
                                                                <ul>
                                                                    {foreach from=$getProducts.premium key=key item=_item}
                                                                    <li class= "">
                                                                        <label class="label_radio hover_label_radio {if $_item.period == '12'}r_on{else}r_off{/if}"><input name="optionsRadios" id="optionsRadios{$_item.id}4"
                                                                        value="{$_item.id}" type="radio" 
                                                                        {if $_item.period == '12'} checked="checked" {/if}
                                                                        />
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
                                                                <button class="btn btn-default ga-action-click"
                                                                        ga-action ="click"
                                                                        ga-category="store"
                                                                        ga-label="buy premium"
                                                                        value="true" type="submit" name="price[submit]">Buy Premium</button>
                                                                </form>
                                                                <div class="space_line">&nbsp;</div> 
                                                            </div>
                                                        </div>
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
                                        var symbols = { usd: '$', eur: '€', gbp: '£', cad: '$', aud: '$'};
                                        $('input[data-target="#basic-price-per-month"], input[data-target="#premium-price-per-month"]').change(function(){
                                            
                                            var currentValue = $(this).attr('data-price-'+$(this).attr('data-cur')) / Number($(this).attr('data-period'));
                                            //currentValue = roundUsing(Math.round, currentValue, 4);
                                            currentValue = (Math.floor(currentValue * 100) / 100).toFixed(2);
                                            $($(this).attr('data-target'))
                                                    .html(currentValue)
                                                    .prev('div.symbol')
                                                    .html(symbols[$(this).attr('data-cur')] ? symbols[$(this).attr('data-cur')] : '');
                                        });
                                    </script>
                               
                                <div class="space_line">&nbsp;</div>
                                <div class="link_circle_italic2">
                                    <div class="style-links2">
                                        <span class="circle_ico2"></span>You need to have physical access to the target device or iCloud password to install the application.
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- block upgrade include-->

            <div class="hr-grey"></div>


            <div class="container">
            <div class="apps-store col-xs-12 col-sm-12 col-md-7">
                <p class="free-pumpic-control"><span>Bonus!</span> FREE Pumpic Control Panel Mobile App with every plan!</p>
                <div class="apps-store-text">
                <p>Check the most important data from the target device on the go by using Control Panel Mobile Application! Just purchase any subscription plan, download the FREE application to your mobile device and login with your Control Panel credentials.</p>
                </div>
                <div class="store-links">
                    <a class="ga-action-click" ga-category="Mobile App Buttons" ga-action="click" ga-label="Store GP" target="_blank" href="https://play.google.com/store/apps/details?id=com.pumpic.mobile.monitoring"><img src="/images/google-play.png" alt="Pumpic Parental Monitoring on Google Play" alt=""></a>
                </div>
            </div>

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
    <script type="text/javascript">
    {literal}
    $(document).ready(function(){
        $('[data-toggle="tooltip"]').tooltip({
            placement:'top',
            animation:false,
            html: true,
            
        });
        //$('[data-toggle="tooltip"]').tooltip('show');//for debug
        
    });
    {/literal}
    </script>
    {include file='../includes/main/main-analytics-footer.tpl'}
    
</body>
</html>
