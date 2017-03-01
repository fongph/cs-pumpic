    <div class="basic_wr">
        <div class="basic_h">
            Basic
        </div>
        <div class="priceb">
            <div class="wrapper_pack clearfix">
                <div class="wr_pack_basic android_basic_pack _single-pack-android-basic"></div>
                {*<div class="wr_pack_double_basic android_basic_pack2 _double-pack-android-basic"></div>*}
                <div class="wr_price_big">
                    <span></span><div class="box-currence"><div class="symbol" attr-iso="usd">$</div><div class="curr andr-basic-price-per-month">{$defaultAndriodBasicPrice}</div></div><span> / month</span>
                </div>
            </div>
            <div class="list_price">
                <form name="price_basic" method="POST" action="/buy.html" class="buy-form-with-offer" autocomplete="off">

                    <input id='product_price_basic' type='hidden' name='price[productID]' value="{$defaultAndriodBasic}" class="product_price" />
                    <ul>
                        {foreach from=$getProducts.androidBasic key=key item=item}
                            <li>
                                <label class="label_radio hover_label_radio {if $item.period == '12'}r_on{else}r_off{/if}">
                                    <input class="data-price" data-target=".andr-basic-price-per-month" data-cur="usd" data-price-usd="{$item.price}" data-offer-price-usd="{$getProducts.androidBasicDouble[$key].price}" data-period="{$item.period}" data-product="{$item.id}" data-offer-product="{$getProducts.androidBasicDouble[$key].id}" data-group="android-basic"  name="optionsRadios" id="optionsRadios{$item.id}1" value="{$item.id}" type="radio" />
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
                                            <div class="box-currence"><div class="symbol" attr-iso="usd">$</div><div class="curr">{$getProducts.androidBasicDouble[$key].price}</div></div>
                                        </strong>
                                    </div>
                                </label>
                            </li>
                        {/foreach}
                    </ul>
                    <button class="btn btn-default ga-action-click"
                            ga-action ="click"
                            ga-category="store"
                            ga-label="buy android basic"
                            value="true" type="submit" name="price[submit]">Buy Basic</button>
                    <div class="show_basic_features"><a href="#">Show Basic features</a></div>
                </form>
            </div>
        </div>
    </div>
    <div class="premium_wr">
        <div class="premium_h">
            Premium
        </div>
        <div class="pricep">
            <div class="wrapper_pack clearfix">
                <div class="wr_pack_premium android_prem_pack _single-pack-android-prem"></div>
                {*<div class="wr_pack_double_premium android_prem_pack2 _double-pack-android-prem"></div>*}
                <div class="wr_price_big">
                    <span></span><div class="box-currence"><div class="symbol" attr-iso="usd">$</div><div class="curr andr-premium-price-per-month">{$defaultAndroidPremiumPrice}</div></div><span>/ month</span>
                </div>
            </div>
            <div class="list_price">
                <form name="price_premium" method="POST" action="/buy.html" class="buy-form-with-offer" autocomplete="off">
                    <input id='product_price_premium' type='hidden' name='price[productID]' value='{if isset($getDefaultAndroidPremium)}{$getDefaultAndroidPremium}{else}0{/if}' class="product_price"/>

                    <ul>
                        {foreach from=$getProducts.androidPremium key=key item=item}
                            <li>
                                <label class="label_radio hover_label_radio {if $item.period == '12'}r_on{else}r_off{/if}">
                                    <input class="data-price" data-target=".andr-premium-price-per-month" data-cur="usd" data-price-usd="{$item.price}" data-offer-price-usd="{$getProducts.androidPremiumDouble[$key].price}" data-period="{$item.period}" data-product="{$item.id}" data-offer-product="{$getProducts.androidPremiumDouble[$key].id}" data-group="android-prem"  name="optionsRadios" id="optionsRadios{$item.id}1" value="{$item.id}" type="radio" />
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
                                            <div class="box-currence"><div class="symbol" attr-iso="usd">$</div><div class="curr">{$getProducts.androidPremiumDouble[$key].price}</div></div>
                                        </strong>
                                    </div>
                                </label>
                            </li>
                        {/foreach}
                    </ul>
                    </ul>
                    <button class="btn btn-default ga-action-click"
                            ga-action ="click"
                            ga-category="store"
                            ga-label="buy android premium"
                            value="true" type="submit" name="price[submit]">Buy Premium</button>
                    <div class="show_premium_features"><a href="#">Show Premium features</a></div>
                </form>
            </div>
        </div>
    </div>

    <div class="premium_h clearfix" id="android-features-h" style="text-transform: none;">
        Android monitoring features
    </div>
    <div class="clearfix">
        <div class="basic_wr">
            <div class="priceb" style="margin-top: 0px;padding: 25px 0 5px;">
                <div class="basic_fe" style="margin-top: 0;">
                    <ul>
                        <li data-toggle="tooltip" data-placement="top" title="View detailed data on incoming/outgoing calls: name, phone number, time and duration."><i class="icon-ok"></i> Calls history <span>(<b>700</b> calls monthly)</span>
                        </li>
                        <li data-toggle="tooltip" data-placement="top" title="View text content sent or received via SMS, MMS.</div>"><i class="icon-ok"></i> Text message history <span>(<b>300</b> SMS monthly)</span></li>
                        <li data-toggle="tooltip" data-placement="top" title="Block calls from specific numbers."><i class="icon-ok"></i> Calls blocking </li>
                        <li data-toggle="tooltip" data-placement="top" title="Block SMS from specific senders and/or containing specific keywords.</div><div class='br'><strong>Up to Android 4.4.4</strong></div>"><i class="icon-ok"></i> SMS blocking</li>
                        <li data-toggle="tooltip" data-placement="top" title="Set a number of SMS a user can send daily. <div class='br'><strong>Pumpic keyboard activation required</strong></div>"><i class="icon-ok"></i> SMS limiting <i class="icon-info-circled"></i></li>
                        <li data-toggle="tooltip" data-placement="top" title="Track current location as well as the entire route history. Map view available."><i class="icon-ok"></i> Location history</li>
                        <li data-toggle="tooltip" data-placement="top" title="Set specific zones and receive alerts once the target device leaves them or enters."><i class="icon-ok"></i> Geo-fences</li>
                        <li data-toggle="tooltip" data-placement="top" title="View contact list including names, addresses, numbers and emails."><i class="icon-ok"></i> Contacts</li>
                        <li data-toggle="tooltip" data-placement="top" title="Monitor scheduled dates and events."><i class="icon-ok"></i> Calendar</li>
                        <li data-toggle="tooltip" data-placement="top" title="View all visited websites.<br><b>Root required starting from Android 6.0</b>"><i class="icon-ok"></i> Browsing history</li>
                        <li data-toggle="tooltip" data-placement="top" title="Block specific websites on a target device.<br><b>Root required starting from Android 6.0</b>"><i class="icon-ok"></i> Websites blocking</li>

                        <li data-toggle="tooltip" data-placement="top" title="View all websites visited and bookmarked as preferred ones.<br><b>Root required starting from Android 6.0</b>"><i class="icon-ok"></i> Bookmarks</li>
                        <li data-toggle="tooltip" data-placement="top" title="View all photos stored on a device."><i class="icon-ok"></i> Photos</li>

                        <li data-toggle="tooltip" data-placement="top" title="Monitor, block or set time limits on all applications (games, services etc.) downloaded on a device."><i class="icon-ok"></i> Applications Management</li>
                        <li data-toggle="tooltip" data-placement="top" title="View all videos stored on a device."><i class="icon-cancel"></i> Videos</li>

                        <li data-toggle="tooltip" data-placement="top" title="View all the previous data ever stored on a device."><i class="icon-cancel"></i> Historical data</li>
                        <li data-toggle="tooltip" data-placement="top" title="Control devices remotely.<div class='br'><strong>Up to Android 4.4.4</strong></div>"><i class="icon-cancel"></i> SMS commands
                        </li>
                        <li data-toggle="tooltip" data-placement="top" title="View every keystroke typed on a target device.<br><b>Pumpic keyboard activation required</b>"><i class="icon-cancel"></i> Keylogger <i class="icon-info-circled"></i></li>
                        <p class="root_text">Root required:</p>
                        <li data-toggle="tooltip" data-placement="top" title="View all emails and detailed contact data. </div>"><i class="icon-ok"></i> Emails</li>
                        <li data-toggle="tooltip" data-placement="top" title="Track chats and calls on Skype.</div>"><i class="icon-cancel"></i> Skype </li>
                        <li data-toggle="tooltip" data-placement="top" title="Track chats and calls on WhatsApp.</div>"><i class="icon-cancel"></i> WhatsApp </li>
                        <li data-toggle="tooltip" data-placement="top" title="Track chats and calls on Viber. </div>"><i class="icon-cancel"></i> Viber</li>
                        <li data-toggle="tooltip" data-placement="top" title="Track conversations via Kik.</div>"><i class="icon-cancel"></i> Kik</li>
                        <li data-toggle="tooltip" data-placement="top" title="Monitor posted images and comments on Instagram. </div>"><i class="icon-cancel"></i> Instagram</li>
                        <li data-toggle="tooltip" data-placement="top" title="Limited monitoring of chat messages. </div>"><i class="icon-cancel"></i> Snapchat</li>
                        <li data-toggle="tooltip" data-placement="top" title="Track chats and calls on Facebook. </div>"><i class="icon-cancel"></i> Facebook{*Messages*}</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="premium_wr">
            <div class="pricep" style="margin-top: 0px; padding: 25px 0 5px;">
                <div class="premium_fe" style="margin-top: 0;">
                    <ul>
                        <li data-toggle="tooltip" data-placement="top" title="View detailed data on incoming/outgoing calls: name, phone number, time and duration."><i class="icon-ok"></i> Calls history <span>(unlimited)</span>
                        </li>
                        <li data-toggle="tooltip" data-placement="top" title="View text content sent or received via SMS, MMS.</div>"><i class="icon-ok"></i> Text message history <span>(unlimited)</span></li>
                        <li data-toggle="tooltip" data-placement="top" title="Block calls from specific numbers."><i class="icon-ok"></i> Calls blocking </li>
                        <li data-toggle="tooltip" data-placement="top" title="Block SMS from specific senders and/or containing specific keywords.</div><div class='br'><strong>Up to Android 4.4.4</strong></div>"><i class="icon-ok"></i> SMS blocking</li>
                        <li data-toggle="tooltip" data-placement="top" title="Set a number of SMS a user can send daily. <div class='br'><strong>Pumpic keyboard activation required</strong></div>"><i class="icon-ok"></i> SMS limiting <i class="icon-info-circled"></i></li>
                        <li data-toggle="tooltip" data-placement="top" title="Track current location as well as the entire route history. Map view available."><i class="icon-ok"></i> Location history</li>
                        <li data-toggle="tooltip" data-placement="top" title="Set specific zones and receive alerts once the target device leaves them or enters."><i class="icon-ok"></i> Geo-fences</li>
                        <li data-toggle="tooltip" data-placement="top" title="View contact list including names, addresses, numbers and emails."><i class="icon-ok"></i> Contacts</li>
                        <li data-toggle="tooltip" data-placement="top" title="Monitor scheduled dates and events."><i class="icon-ok"></i> Calendar</li>
                        <li data-toggle="tooltip" data-placement="top" title="View all visited websites.<br><b>Root required starting from Android 6.0</b>"><i class="icon-ok"></i> Browsing history</li>
                        <li data-toggle="tooltip" data-placement="top" title="Block specific websites on a target device.<br><b>Root required starting from Android 6.0</b>"><i class="icon-ok"></i> Websites blocking</li>

                        <li data-toggle="tooltip" data-placement="top" title="View all websites visited and bookmarked as preferred ones.<br><b>Root required starting from Android 6.0</b>"><i class="icon-ok"></i> Bookmarks</li>
                        <li data-toggle="tooltip" data-placement="top" title="View all photos stored on a device."><i class="icon-ok"></i> Photos</li>

                        <li data-toggle="tooltip" data-placement="top" title="Monitor, block or set time limits on all applications (games, services etc.) downloaded on a device."><i class="icon-ok"></i> Applications Management</li>
                        <li data-toggle="tooltip" data-placement="top" title="View all videos stored on a device."><i class="icon-ok"></i> Videos</li>

                        <li data-toggle="tooltip" data-placement="top" title="View all the previous data ever stored on a device."><i class="icon-ok"></i> Historical data</li>
                        <li data-toggle="tooltip" data-placement="top" title="Control devices remotely.<div class='br'><strong>Up to Android 4.4.4</strong></div>"><i class="icon-ok"></i> SMS commands
                        </li>
                        <li data-toggle="tooltip" data-placement="top" title="View every keystroke typed on a target device.<br><b>Pumpic keyboard activation required</b>"><i class="icon-ok"></i> Keylogger <i class="icon-info-circled"></i></li>
                        <p class="root_text">Root required:</p>
                        <li data-toggle="tooltip" data-placement="top" title="View all emails and detailed contact data. </div>"><i class="icon-ok"></i> Emails</li>
                        <li data-toggle="tooltip" data-placement="top" title="Track chats and calls on Skype.</div>"><i class="icon-ok"></i> Skype </li>
                        <li data-toggle="tooltip" data-placement="top" title="Track chats and calls on WhatsApp.</div>"><i class="icon-ok"></i> WhatsApp </li>
                        <li data-toggle="tooltip" data-placement="top" title="Track chats and calls on Viber. </div>"><i class="icon-ok"></i> Viber</li>
                        <li data-toggle="tooltip" data-placement="top" title="Track conversations via Kik.</div>"><i class="icon-ok"></i> Kik</li>
                        <li data-toggle="tooltip" data-placement="top" title="Monitor posted images and comments on Instagram. </div>"><i class="icon-ok"></i> Instagram</li>
                        <li data-toggle="tooltip" data-placement="top" title="Limited monitoring of chat messages. </div>"><i class="icon-ok"></i> Snapchat</li>
                        <li data-toggle="tooltip" data-placement="top" title="Track chats and calls on Facebook. </div>"><i class="icon-ok"></i> Facebook{*Messages*}</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="table_title mobile-off free-label">
        <h3 class="free-label__headname">FREE:</h3>
        <span class="free-label__item"><i class="icon-ok"></i>Remote control panel</span>
        <span class="free-label__item"><i class="icon-ok"></i>Software updates</span>
        <span class="free-label__item"><i class="icon-ok"></i>Remove device lock</span>
        <span class="free-label__item"><i class="icon-ok"></i>Sim card change alert</span>
    </div>
    <div class="clearfix" style="position: relative;">
        <div class="basic_wr">
            <div class="basic_h" id="foot_h1">
                Basic
            </div>

            <div class="priceb">
                <div class="wrapper_pack clearfix">

                    <div class="wr_pack_basic android_basic_pack _single-pack-android-basic"></div>
                    <div class="wr_pack_double_basic android_basic_pack2 _double-pack-android-basic"></div>
                    <div class="wr_price_big">
                        <span></span><div class="box-currence"><div class="symbol" attr-iso="usd">$</div><div class="curr andr-basic-price-per-month">{$defaultAndriodBasicPrice}</div></div><span> / month</span>
                    </div>
                </div>
                <div class="list_price" id="foot_h2">
                    <form name="price_basic_bottom" method="POST" action="/buy.html" class="buy-form-with-offer" autocomplete="off">
                        <input id='product_price_basic' type='hidden' name='price[productID]' value="{$defaultAndroidBasicProduct}" class="product_price" />

                        <ul>
                            {foreach from=$getProducts.androidBasic key=key item=item}
                                <li>
                                    <label class="label_radio hover_label_radio {if $item.period == '12'}r_on{else}r_off{/if}">
                                        <input class="data-price" data-target=".andr-basic-price-per-month" data-cur="usd" data-price-usd="{$item.price}" data-offer-price-usd="{$getProducts.androidBasicDouble[$key].price}" data-period="{$item.period}" data-product="{$item.id}" data-offer-product="{$getProducts.androidBasicDouble[$key].id}" data-group="android-basic"  name="optionsRadios" id="optionsRadios{$item.id}2" value="{$item.id}" type="radio" />
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
                                                <div class="box-currence"><div class="symbol" attr-iso="usd">$</div><div class="curr">{$getProducts.androidBasicDouble[$key].price}</div></div>
                                            </strong>
                                        </div>
                                    </label>
                                </li>
                            {/foreach}
                        </ul>
                        <button class="btn btn-default ga-action-click"
                                ga-action ="click"
                                ga-category="store"
                                ga-label="buy android basic"
                                value="true" type="submit" name="price[submit]">Buy Basic</button>
                    </form>
                </div>
            </div>
        </div>

        <div class="premium_wr">
            <div class="premium_h" id="foot_h3">
                Premium
            </div>
            <div class="pricep">
                <div class="wrapper_pack clearfix">
                    <div class="wr_pack_premium android_prem_pack _single-pack-android-prem"></div>
                    <div class="wr_pack_double_premium android_prem_pack2 _double-pack-android-prem"></div>
                    <div class="wr_price_big">
                        <span></span><div class="box-currence"><div class="symbol" attr-iso="usd">$</div><div class="curr andr-premium-price-per-month">{$defaultAndroidPremiumPrice}</div></div><span>/ month</span>
                    </div>
                </div>
                <div class="list_price" id="foot_h4">
                    <form name="price_premium_bottom" method="POST" action="/buy.html" class="buy-form-with-offer" autocomplete="off">
                        <input id='product_price_premium' type='hidden' name='price[productID]' value='{if isset($getDefaultAndroidPremium)}{$getDefaultAndroidPremium}{else}0{/if}' class="product_price" />

                        <ul>
                            {foreach from=$getProducts.androidPremium key=key item=item}
                                <li>
                                    <label class="label_radio hover_label_radio {if $item.period == '12'}r_on{else}r_off{/if}">
                                        <input class="data-price" data-target=".andr-premium-price-per-month" data-cur="usd" data-price-usd="{$item.price}" data-offer-price-usd="{$getProducts.androidPremiumDouble[$key].price}" data-period="{$item.period}" data-product="{$item.id}" data-offer-product="{$getProducts.androidPremiumDouble[$key].id}" data-group="android-prem"  name="optionsRadios" id="optionsRadios{$item.id}2" value="{$item.id}" type="radio" />
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
                                                <div class="box-currence"><div class="symbol" attr-iso="usd">$</div><div class="curr">{$getProducts.androidPremiumDouble[$key].price}</div></div>
                                            </strong>
                                        </div>
                                    </label>
                                </li>
                            {/foreach}
                        </ul>
                        <input type="checkbox" data-group="android-prem" name="android-40off" class="hidden">
                        <button class="btn btn-default ga-action-click"
                                ga-action ="click"
                                ga-category="store"
                                ga-label="buy android premium"
                                value="true" type="submit" name="price[submit]">Buy Premium</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    {*<script src='/public/javascripts/frontend-old.min.js'></script>*}