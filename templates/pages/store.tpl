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
<!-- END FLY BLOCKS-->
<div class="wrapper">
    {include file='../includes/main/main-top-menu.tpl'
    topmenu_active='pricing'
    show_control_panel_link="1"
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




    {*{foreach from=$getProducts.premium-double key=key item=_item}*}
    {**}
    {*{/foreach}*}

    {**}
    {*{$getProducts.basicDouble|@debug_print_var}*}


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
                                    <div class="support_new_os"><div class="wr_support_new_os"><i class="icon-android d_green"></i> Android {$ver_android_bot} - {$ver_android_up}
                                            <i class="icon-apple d_green"></i> iOS {$ver_ios_bot} - {$ver_jailbreak_up} (with jailbreak)   <i class="icon-cloud d_green"></i>   iCloud iOS {$ver_icloud_up}</div></div>
                                </caption>

                                <thead>
                                <tr>
                                    <th>
                                        <div class="save__2plan">
                                            <div class="save__text">
                                                <span>Save 40%</span> on the 2nd plan. Limited time offer!
                                            </div>
                                        </div>


                                        <div class="save__2plan save__second">
                                            <div class="save__text">
                                                <span>Save 40%</span> on the 2nd plan. Limited time offer!
                                            </div>
                                        </div>




                                        <div class="basic_wr">
                                            <div class="basic_h">
                                                Basic
                                            </div>
                                            <div class="priceb">
                                                <div class="wr_pack_basic"></div>
                                                <div class="wr_pack_double_basic"></div>
                                                <div class="wr_price_big">
                                                    <span></span><div class="box-currence"><div class="symbol" attr-iso="usd">$</div><div class="curr" id="basic-price-per-month">{$defaultBasicPrice}</div></div><span> / month</span>
                                                </div>

                                                <div class="list_price">
                                                    <form name="price_basic" method="POST" action="/buy.html" class="buy-form-with-offer" autocomplete="off">
                                                        <input id='product_price_basic' type='hidden' name='price[productID]' value="{$defaultPremiumProduct}" class="product_price" />
                                                        <ul>
                                                            {foreach from=$getProducts.basic key=key item=item}
                                                                <li>
                                                                    <label class="label_radio hover_label_radio {if $item.period == '12'}r_on{else}r_off{/if}">
                                                                        <input class="data-price" data-target="#basic-price-per-month" data-cur="usd" data-price-usd="{$item.price}" data-offer-price-usd="{$getProducts.basicDouble[$key].price}" data-period="{$item.period}" data-product="{$item.id}" data-offer-product="{$getProducts.basicDouble[$key].id}" data-group="basic"  name="optionsRadios" id="optionsRadios{$item.id}1" value="{$item.id}" type="radio"{if $item.period == '12'} checked="checked"{/if} />
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
                                                                                <div class="box-currence"><div class="symbol" attr-iso="usd">$</div><div class="curr">{$getProducts.basicDouble[$key].price}</div></div>
                                                                            </strong>
                                                                        </div>
                                                                    </label>
                                                                </li>
                                                            {/foreach}
                                                            </ul>

                                                            <div class="double_offer checkbox">
                                                                <label>
                                                                    <input type="checkbox" data-group="basic">
                                                                    Get the 2nd plan with <span>40% OFF!</span>
                                                                </label>
                                                            </div>
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
                                                        <li data-toggle="tooltip" data-placement="top" title="View detailed data on incoming/outgoing calls: name, phone number, time and duration."><i class="icon-ok"></i> Calls history <span>(700 calls monthly)</span>
                                                        </li>
                                                        <li data-toggle="tooltip" data-placement="top" title="View text content sent or received via SMS, MMS, and iMessages.</div>"><i class="icon-ok"></i> Text message history <span>(300 SMS monthly)</span></li>
                                                        <li data-toggle="tooltip" data-placement="top" title="Block calls from specific numbers."><i class="icon-ok"></i> Calls blocking </li>
                                                        <li data-toggle="tooltip" data-placement="top" title="Block SMS from specific senders and/or containing specific keywords. <div class='br'><strong>Android: Root Required</strong></div><div class='br'><strong>Not available for Android 5.0 and newer versions.</strong></div>"><i class="icon-ok"></i> SMS blocking </li>
                                                        <li data-toggle="tooltip" data-placement="top" title="Set a number of SMS a user can send daily. <div class='br'><strong>Android: Activated Keylogger Needed</strong></div>"><i class="icon-ok"></i> SMS limiting</li>
                                                        <li data-toggle="tooltip" data-placement="top" title="Track current location as well as the entire route history. Map view available."><i class="icon-ok"></i> Location history</li>
                                                        <li data-toggle="tooltip" data-placement="top" title="Set specific zones and receive alerts once the target device leaves them or enters."><i class="icon-ok"></i> Geo-fences</li>
                                                        <li data-toggle="tooltip" data-placement="top" title="View contact list including names, addresses, numbers and emails."><i class="icon-ok"></i> Contacts</li>
                                                        <li data-toggle="tooltip" data-placement="top" title="Monitor scheduled dates and events."><i class="icon-ok"></i> Calendar</li>
                                                        <li data-toggle="tooltip" data-placement="top" title="Track Notes on the target iOS device."><i class="icon-ok"></i> Notes</li>
                                                        <li data-toggle="tooltip" data-placement="top" title="View all visited websites."><i class="icon-ok"></i> Browsing history</li>
                                                        <li data-toggle="tooltip" data-placement="top" title="Block specific websites on a target device."><i class="icon-ok"></i> Websites blocking</li>

                                                        <li data-toggle="tooltip" data-placement="top" title="View all websites visited and bookmarked as preferred ones."><i class="icon-ok"></i> Bookmarks</li>
                                                        <li data-toggle="tooltip" data-placement="top" title="View all photos stored on a device."><i class="icon-ok"></i> Photos</li>

                                                        <li data-toggle="tooltip" data-placement="top" title="View all emails and detailed contact data. <div class='br'><strong>Android: Root Required</strong></div>"><i class="icon-ok"></i> Emails</li>
                                                        <li data-toggle="tooltip" data-placement="top" title="Monitor, block or set time limits on all applications (games, services etc.) downloaded on a device."><i class="icon-ok"></i> Applications Management</li>
                                                        <li data-toggle="tooltip" data-placement="top" title="View all videos stored on a device."><i class="icon-cancel"></i> Videos</li>


                                                        <li data-toggle="tooltip" data-placement="top" title="Track chats and calls on Skype.<div class='br'><strong>Android: Root Required</strong></div>"><i class="icon-cancel"></i> Skype </li>
                                                        <li data-toggle="tooltip" data-placement="top" title="Track chats and calls on WhatsApp.<div class='br'><strong>Android: Root Required</strong></div>"><i class="icon-cancel"></i> WhatsApp </li>
                                                        <li data-toggle="tooltip" data-placement="top" title="Track chats and calls on Viber. <div class='br'><strong>Android: Root Required</strong></div>"><i class="icon-cancel"></i> Viber</li>
                                                        <li data-toggle="tooltip" data-placement="top" title="Track conversations via Kik.<div class='br'><strong>Android: Root Required</strong></div>"><i class="icon-cancel"></i> Kik</li>
                                                        <li data-toggle="tooltip" data-placement="top" title="Monitor posted images and comments on Instagram. <div class='br'><strong>Android: Root Required</strong></div>"><i class="icon-cancel"></i> Instagram</li>
                                                        <li data-toggle="tooltip" data-placement="top" title="Monitor Snapchat photos, videos, and comments. <div class='br'><strong>Android: Root and Xposed Required</strong></div>"><i class="icon-cancel"></i> Snapchat</li>
                                                        <li data-toggle="tooltip" data-placement="top" title="Track chats and calls on Facebook. <div class='br'><strong>Android: Root Required</strong></div>"><i class="icon-cancel"></i> Facebook{*Messages*}</li>
                                                        <li data-toggle="tooltip" data-placement="top" title="View all the previouse data ever stored on a device."><i class="icon-cancel"></i> Historical data</li>
                                                        <li data-toggle="tooltip" data-placement="top" title="Control devices remotely.<div class='br'><strong>Not supported: Android 5.0 and higher.</strong></div>"><i class="icon-cancel"></i> SMS commands
                                                        </li>
                                                        <li data-toggle="tooltip" data-placement="top" title="View every keystroke typed on a target device."><i class="icon-cancel"></i> Keylogger</li>
                                                        <li data-toggle="tooltip" data-placement="top" title="Monitor Apple devices without jailbreak. View Calls, Text messages, Photos, Location, Notes, Contacts, Browsing History, Bookmarks, Calendar, Skype, and WhatsApp.<div class='br'><strong>Note: Two-step verification must be disabled in the account of the target device.</strong></div>"><i class="icon-cancel"></i>  <strong style="font-size: 14px">iCloud Monitoring</strong> (<span class="fz13">without jailbreak up to iOS {$ver_icloud_up}</span>)</li>

                                                    </ul>
                                                </div>
                                                <div class="basic_h" id="foot_h1">
                                                    Basic
                                                </div>
                                                <div class="list_price" id="foot_h2">
                                                    <div class="space_line">&nbsp;</div>
                                                    <form name="price_basic_bottom" method="POST" action="/buy.html" class="buy-form-with-offer" autocomplete="off" style="margin-top: 55px;">
                                                        <input id='product_price_basic' type='hidden' name='price[productID]' value="{$defaultBasicProduct}" class="product_price" />

                                                        <ul>
                                                            {foreach from=$getProducts.basic key=key item=item}
                                                                <li>
                                                                    <label class="label_radio hover_label_radio {if $item.period == '12'}r_on{else}r_off{/if}">
                                                                        <input class="data-price" data-target="#basic-price-per-month" data-cur="usd" data-price-usd="{$item.price}" data-offer-price-usd="{$getProducts.basicDouble[$key].price}" data-period="{$item.period}" data-product="{$item.id}" data-offer-product="{$getProducts.basicDouble[$key].id}" data-group="basic"  name="optionsRadios" id="optionsRadios{$item.id}2" value="{$item.id}" type="radio"{if $item.period == '12'} checked="checked"{/if} />
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
                                                                                <div class="box-currence"><div class="symbol" attr-iso="usd">$</div><div class="curr">{$getProducts.basicDouble[$key].price}</div></div>
                                                                            </strong>
                                                                        </div>
                                                                    </label>
                                                                </li>
                                                            {/foreach}
                                                        </ul>
                                                        <div class="double_offer checkbox">
                                                            <label>
                                                                <input type="checkbox" data-group="basic">
                                                                Get the 2nd plan with <span>40% OFF!</span>
                                                            </label>
                                                        </div>
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
                                                <div class="wr_pack_premium"></div>
                                                <div class="wr_pack_double_premium"></div>
                                                <div class="wr_price_big">
                                                    <span></span><div class="box-currence"><div class="symbol" attr-iso="usd">$</div><div class="curr" id="premium-price-per-month">{$defaultPremiumPrice}</div></div><span>/ month</span>
                                                </div>

                                                <div class="list_price">
                                                    <form name="price_premium" method="POST" action="/buy.html" class="buy-form-with-offer" autocomplete="off" style="margin-top: 55px;">
                                                        <input id='product_price_premium' type='hidden' name='price[productID]' value='{if isset($getDefaultPremium)}{$getDefaultPremium}{else}0{/if}' class="product_price"/>

                                                        <ul>
                                                            {foreach from=$getProducts.premium key=key item=item}
                                                                <li>
                                                                    <label class="label_radio hover_label_radio {if $item.period == '12'}r_on{else}r_off{/if}">
                                                                        <input class="data-price" data-target="#premium-price-per-month" data-cur="usd" data-price-usd="{$item.price}" data-offer-price-usd="{$getProducts.premiumDouble[$key].price}" data-period="{$item.period}" data-product="{$item.id}" data-offer-product="{$getProducts.premiumDouble[$key].id}" data-group="premium"  name="optionsRadios" id="optionsRadios{$item.id}1" value="{$item.id}" type="radio"{if $item.period == '12'} checked="checked"{/if} />
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
                                                                                <div class="box-currence"><div class="symbol" attr-iso="usd">$</div><div class="curr">{$getProducts.premiumDouble[$key].price}</div></div>
                                                                            </strong>
                                                                        </div>
                                                                    </label>
                                                                </li>
                                                            {/foreach}
                                                        </ul>
                                                        <div class="double_offer checkbox">
                                                            <label>
                                                                <input type="checkbox" data-group="premium">
                                                                Get the 2nd plan with <span>40% OFF!</span>
                                                            </label>
                                                        </div>
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
                                                        <li data-toggle="tooltip" data-placement="top" title="Block calls from specific numbers."><i class="icon-ok"></i> Calls blocking</li>
                                                        <li data-toggle="tooltip" data-placement="top" title="Block SMS from specific senders and/or containing specific keywords. <div class='br'><strong>Android: Root Required</strong></div><div class='br'><strong>Not available for Android 5.0 and newer versions.</strong></div>"><i class="icon-ok"></i> SMS blocking </li>
                                                        <li data-toggle="tooltip" data-placement="top" title="Set a number of SMS a user can send daily. <div class='br'><strong>Android: Activated Keylogger Needed</strong></div>"><i class="icon-ok"></i> SMS limiting</li>
                                                        <li data-toggle="tooltip" data-placement="top" title="Track current location as well as the entire route history. Map view available."><i class="icon-ok"></i> Location history <img src="/images/cloud-grey.png"></li>
                                                        <li data-toggle="tooltip" data-placement="top" title="Set specific zones and receive alerts once the target device leaves them or enters."><i class="icon-ok"></i> Geo-fences</li>
                                                        <li data-toggle="tooltip" data-placement="top" title="View contact list including names, addresses, numbers and emails."><i class="icon-ok"></i> Contacts <img src="/images/cloud-grey.png"></li>
                                                        <li data-toggle="tooltip" data-placement="top" title="Monitor scheduled dates and events."><i class="icon-ok"></i> Calendar <img src="/images/cloud-grey.png"></li>
                                                        <li data-toggle="tooltip" data-placement="top" title="Track Notes on the target iOS device.<div class='br'><strong>iCloud monitoring up to iOS 8.4.1</strong>"><i class="icon-ok"></i> Notes <img src="/images/cloud-grey.png"></li>
                                                        <li data-toggle="tooltip" data-placement="top" title="View all visited websites."><i class="icon-ok"></i> Browsing history <img src="/images/cloud-grey.png"></li>
                                                        <li data-toggle="tooltip" data-placement="top" title="Block specific websites on a target device."><i class="icon-ok"></i> Websites blocking</li>

                                                        <li data-toggle="tooltip" data-placement="top" title="View all websites visited and bookmarked as preferred ones. <div class='br'><strong>iCloud monitoring up to iOS 8.4.1</strong>"><i class="icon-ok"></i> Bookmarks <img src="/images/cloud-grey.png"> </li>
                                                        <li data-toggle="tooltip" data-placement="top" title="View all photos stored on a device."><i class="icon-ok"></i> Photos <img src="/images/cloud-grey.png"></li>

                                                        <li data-toggle="tooltip" data-placement="top" title="View all emails and detailed contact data. <div class='br'><strong>Android: Root Required</strong></div>"><i class="icon-ok"></i> Emails</li>
                                                        <li data-toggle="tooltip" data-placement="top" title="Monitor, block or set time limits on all applications (games, services etc.) downloaded on a device."><i class="icon-ok"></i> Applications Management</li>
                                                        <li data-toggle="tooltip" data-placement="top" title="View all videos stored on a device.<div class='br'><strong>iCloud monitoring starting from <br> iOS 9.0</strong>"><i class="icon-ok"></i> Videos  <img src="/images/cloud-grey.png"></li>


                                                        <li data-toggle="tooltip" data-placement="top" title="Track chats and calls on Skype.<div class='br'><strong>iCloud monitoring up to iOS 9.0.2</strong><div class='br'><strong>Android: Root Required</strong></div>"><i class="icon-ok"></i> Skype <img src="/images/cloud-grey.png"></li>
                                                        <li data-toggle="tooltip" data-placement="top" title="Track chats and calls on WhatsApp.<div class='br'><strong>Android: Root Required</strong></div>"><i class="icon-ok"></i> WhatsApp <img src="/images/cloud-grey.png"></li>
                                                        <li data-toggle="tooltip" data-placement="top" title="Track chats and calls on Viber. <div class='br'><strong>Android: Root Required</strong></div>"><i class="icon-ok"></i> Viber</li>
                                                        <li data-toggle="tooltip" data-placement="top" title="Track conversations via Kik.<div class='br'><strong>Android: Root Required</strong></div>"><i class="icon-ok"></i> Kik</li>


                                                        <li data-toggle="tooltip" data-placement="top" title="Monitor posted images and comments on Instagram. <div class='br'><strong>Android: Root Required</strong></div>"><i class="icon-ok"></i> Instagram</li>
                                                        <li data-toggle="tooltip" data-placement="top" title="Monitor Snapchat photos, videos, and comments.<br><strong>Android: Root and Xposed Required</strong></div>"><i class="icon-ok"></i> Snapchat</li>
                                                        <li data-toggle="tooltip" data-placement="top" title="Track chats and calls on Facebook. <div class='br'><strong>Android: Root Required</strong></div>"><i class="icon-ok"></i> Facebook{*Messages*}</li>
                                                        <li data-toggle="tooltip" data-placement="top" title="View all the previouse data ever stored on a device."><i class="icon-ok"></i> Historical data <img src="/images/cloud-grey.png"></li>
                                                        <li data-toggle="tooltip" data-placement="top" title="Control devices remotely.<div class='br'><strong>Not supported: Android 5.0 and higher.</strong></div>"><i class="icon-ok"></i> SMS commands
                                                        </li>
                                                        <li data-toggle="tooltip" data-placement="top" title="View every keystroke typed on a target device."><i class="icon-ok"></i> Keylogger</li>
                                                        <li data-toggle="tooltip" data-placement="top" title="Monitor Apple devices without jailbreak. View Calls, Text messages, Photos, Location, Notes, Contacts, Browsing History, Bookmarks, Calendar, Skype, and WhatsApp.<div class='br'><strong>Note: Two-step verification must be disabled in the account of the target device.</strong></div>"><i class="icon-ok"></i>  <strong style="font-size: 14px">iCloud Monitoring</strong> (<span class="fz13">without jailbreak up to iOS {$ver_icloud_up}</span>)</li>

                                                    </ul>
                                                </div>
                                                <div class="premium_h" id="foot_h3">
                                                    Premium
                                                </div>
                                                <div class="list_price" id="foot_h4">
                                                    <div class="space_line">&nbsp;</div>
                                                    <form name="price_premium_bottom" method="POST" action="/buy.html" class="buy-form-with-offer" autocomplete="off" style="margin-top: 57px;">
                                                        <input id='product_price_premium' type='hidden' name='price[productID]' value='{if isset($getDefaultPremium)}{$getDefaultPremium}{else}0{/if}' class="product_price" />

                                                        <ul>
                                                            {foreach from=$getProducts.premium key=key item=item}
                                                                <li>
                                                                    <label class="label_radio hover_label_radio {if $item.period == '12'}r_on{else}r_off{/if}">
                                                                        <input class="data-price" data-target="#premium-price-per-month" data-cur="usd" data-price-usd="{$item.price}" data-offer-price-usd="{$getProducts.premiumDouble[$key].price}" data-period="{$item.period}" data-product="{$item.id}" data-offer-product="{$getProducts.premiumDouble[$key].id}" data-group="premium"  name="optionsRadios" id="optionsRadios{$item.id}2" value="{$item.id}" type="radio"{if $item.period == '12'} checked="checked"{/if} />
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
                                                                                <div class="box-currence"><div class="symbol" attr-iso="usd">$</div><div class="curr">{$getProducts.premiumDouble[$key].price}</div></div>
                                                                            </strong>
                                                                        </div>
                                                                    </label>
                                                                </li>
                                                            {/foreach}
                                                        </ul>
                                                        <div class="double_offer checkbox">
                                                            <label>
                                                                <input type="checkbox" data-group="premium">
                                                                Get the 2nd plan with <span>40% OFF!</span>
                                                            </label>
                                                        </div>
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

                            <div class="space_line">&nbsp;</div>
                            <div class="link_circle_italic2">
                                <div class="style-links2">
                                    <span class="circle_ico2"></span>You need to have physical access to the target device or iCloud password to install the application.
                                    Physical access might be required for iCloud monitoring solution to check iCloud or backup settings & perform a backup manually.
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
            html: true

        });
        //$('[data-toggle="tooltip"]').tooltip('show');//for debug

    });
    {/literal}
</script>
{include file='../includes/main/main-analytics-footer.tpl'}

</body>
</html>