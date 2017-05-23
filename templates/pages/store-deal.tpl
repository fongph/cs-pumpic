{*Order out="getProducts"*}
{*formOrder post=$smarty.post*}
{include file='../includes/main/main-header.tpl'
showRand="true"
title="Phone Tracker Prices and Subscription Plans | Pumpic"
description="Pumpic offers high-quality cell phone tracking software for a good price. Learn more about subscription plans. Choose the one that suits your monitoring needs."}
<body>
<style>
    @media (max-width: 767px) {
        .filter_fe .filter_icon {
            display: none;
        }
    }
    @media (min-width: 767px) {
        .double_offer.checkbox {
            display: none;
        }
    }

</style>
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

    <style>
        .banner-store {
            max-width: 782px;
            margin: 0 auto;
            background: url("https://www.wearewebstars.dk/codepen/img//s2.png"), linear-gradient(-54deg,#1d477d,#3594a2,#bb6884) no-repeat bottom;
            background-size: 130px, 100%;
            padding: 8px 0 0;
            display: flex;
            justify-content: space-around;
        }
        .banner-store .banner-text {
            font-size: 15px;
            color: #ffffff;
            text-align: center;
            max-width: 475px;
        }
        @media (max-width: 454px) {
            .banner-store {
                padding: 8px 8px 0;
                flex-wrap: wrap;
                justify-content: center;
            }
            .banner-store .image-left {
                order: 1;
            }
            .banner-store .image-right {
                order: 2;
            }
        }
    </style>
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
                                    <div class="filter_fe">
                                        <ul class="filter_list">
                                            <li id="filter-ios" class="filter_item filter-active"><i class="fa fa-apple filter_icon"></i> <b>iOS</b> <span class="filter_version _version-hide-xs">{$ver_icloud_bot} - {$ver_icloud_up}</span><span class="filter_version"> (iCloud)</span>
                                                <div class="filter_version">13 features</div>
                                            </li>
                                            <li id="filter-android" class="filter_item"><i class="fa fa-android filter_icon"></i> <b>Android</b> <span class="filter_version _version-hide-xs">{$ver_android_bot} - {$ver_android_up}</span>
                                                <div class="filter_version">26 features</div>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="prod-head clearfix">
                                        {*---LIST ICLOUD---*}
                                        <div id="prod-list-ios">
                                            <div class="col-sm-6 small-mobile-pd">
                                                <div class="prod-wrap">
                                                    <div class="prod-short-inf">
                                                        <div class="prod-head__img"><img src="/images/icloud-pack.png" alt="..."></div>
                                                        <p class="prod-head__version"><i class="icon-apple filter_icon"></i><b>iOS {$ver_icloud_bot} - {$ver_icloud_up}</b></p>
                                                        <p>
                                                            <span class="prod-head__device phone">iPhone</span>
                                                            <span class="prod-head__device tablet">iPad</span>
                                                            <span class="prod-head__device smart">iPod Touch</span>
                                                        </p>
                                                        <p class="prod-head__price"><span>starting from </span><b>$5.95/</b><span> month</span></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <ul class="prod-list">
                                                    <li><span>Monitor iPhone, iPad, iPod Touch without jailbreak</span></li>
                                                    <li><span>Needs NO APP to be installed on the monitored device</span></li>
                                                    <li><span>Target iCloud (Apple ID) password is required</span></li>
                                                    <li><span>Might require physical access to check/adjust settings</span></li>
                                                </ul>
                                                <a href="#icloud-features-h" class="a-default prod-features hidden-xs">Show all 13 features</a>
                                            </div>
                                        </div>
                                        {*---LIST ICLOUD---*}
                                        {*---LIST ANDROID---*}
                                        <div id="prod-list-android" style="display: none;">
                                            <div class="col-sm-6 small-mobile-pd">
                                                <div class="prod-wrap">
                                                    <div class="prod-short-inf">
                                                        <div class="prod-head__img"><img src="/images/android-pack.png" alt="..."></div>
                                                        <p class="prod-head__version"><i class="icon-android filter_icon"></i><b>Android {$ver_android_bot} - {$ver_android_up}</b></p>
                                                        <p>
                                                            <span class="prod-head__device phone">Smartphone</span>
                                                            <span class="prod-head__device tablet">Tablet</span>
                                                        </p>
                                                        <p class="prod-head__price"><span>starting from </span><b>$5.33/</b><span> month</span></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <ul class="prod-list">
                                                    <li><span>Monitor and manage Android smartphones & tablets</span></li>
                                                    <li><span>Physical access to install the app on the target device is required</span></li>
                                                    <li><span>The app is visible but password-protected</span></li>
                                                    <li class="hidden-xs"><span>Root might be needed for <a href="#root-h" class="prod-list__link hidden-xs">some monitoring features</a><span class="visible-xs">some monitoring features</span></span></li>
                                                    <li class="visible-xs"><span>Root might be needed for some monitoring features</span></span></li>
                                                </ul>
                                                <a href="#android-features-h" class="a-default prod-features hidden-xs">Show all 26 features</a>
                                            </div>
                                        </div>
                                        {*---LIST ANDROID---*}
                                    </div>
                                    <div class="support_new_os"><div class="wr_support_new_os"><i class="icon-android d_green"></i> Android {$ver_android_bot} - {$ver_android_up}
                                            <i class="icon-apple d_green"></i> iOS {$ver_ios_bot} - {$ver_jailbreak_up} (with jailbreak)   <i class="icon-cloud d_green"></i>   iCloud iOS {$ver_icloud_up}</div></div>
                                </caption>
                                <thead>
                                <tr>
                                    <th>
                                        {*---ICLOUD---*}
                                        <div data-info-block="ios">
                                            <div class="premium_wr prod-icloud">
                                                <div class="pricep">
                                                    <div class="buy-wrapper">
                                                    <div class="wrapper_pack clearfix">
                                                        <div class="wr_pack_premium wr_icloud _single-pack-icloud"></div>
                                                        {*<div class="wr_pack_double_premium wr_icloud-double _double-pack-icloud"></div>*}
                                                        <div class="wr_price_big">
                                                            <span></span><div class="box-currence"><div class="symbol" attr-iso="usd">$</div><div class="curr icloud-price-per-month" >{$defaultIosiCloudPrice}</div></div><span class="_period">/ month</span>
                                                        </div>
                                                    </div>
                                                        <div class="list_price icloud-list_price">
                                                        <form name="price_premium" method="POST" action="/buy.html" class="buy-form-with-offer" autocomplete="off" >
                                                            {*<div class="save__2plan">*}
                                                                {*<div class="save__text label-touch">*}
                                                                    {*<input type="checkbox" data-group="icloud" name="icloud-40off" id="icloud-40off-main" data-checkboxes="icloud-40off">*}
                                                                    {*<label for="icloud-40off-main">*}
                                                                    {*<span>Save 40%</span> on the 2nd plan. <div class="limited-time">Limited time offer!</div>*}
                                                                    {*</label>*}
                                                                {*</div>*}
                                                            {*</div>*}
                                                            <input id='product_price_icloud' type='hidden' name='price[productID]' value='{if isset($defaultIosiCloud)}{$defaultIosiCloud}{else}0{/if}' class="product_price"/>
                                                            <ul>
                                                                {foreach from=$getProducts.iosiCloud key=key item=item}

                                                                    <li>
                                                                        <label class="label_radio hover_label_radio {if $item.period == '24'}r_on{else}r_off{/if}">
                                                                            <input class="data-price" data-target=".icloud-price-per-month" data-cur="usd" data-price-usd="{$item.price}" data-offer-price-usd="{$getProducts.iosiCloudDouble[$key].price}" data-period="{$item.period}" data-product="{$item.id}" data-offer-product="{$getProducts.iosiCloudDouble[$key].id}" data-group="icloud" name="optionsRadios" id="optionsRadios{$item.id}1" value="{$item.id}" type="radio" />
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
                                                            <button class="btn btn-default ga-action-click"
                                                                    ga-action ="click"
                                                                    ga-category="store"
                                                                    ga-label="buy icloud"
                                                                    value="true" type="submit" name="price[submit]">Buy</button>
                                                        </form>
                                                        {*<div class="show_premium_features _icloud-f"><div class="show-f _icloud-f">Show features <i class="fa fa-chevron-down"></i></div><div class="hide-f _icloud-f" style="display: none;">Hide features  <i class="fa fa-chevron-up"></i></div></div>*}

                                                    </div>
                                                </div>
                                                    <div class="premium_fe _icloud-f">
                                                        <div class="premium_h" style="text-transform: none;" id="icloud-features-h">
                                                            iCloud monitoring features
                                                        </div>
                                                        <ul class="icloud-features m0">
                                                            <li class="icloud-features__item">
                                                                <p class="icloud-features__name"><i class="icon-ok"></i>Calls history</p>
                                                                <p class="icloud-features__info m0">View detailed data on incoming/outgoing calls: name, phone number, time and duration.</p>
                                                            </li>
                                                            <li class="icloud-features__item">
                                                                <p class="icloud-features__name"><i class="icon-ok"></i>Text message history</p>
                                                                <p class="icloud-features__info m0">View text content and supported attachments sent or received via SMS, MMS, and iMessages.</p>
                                                            </li>
                                                            <li class="icloud-features__item">
                                                                <p class="icloud-features__name"><i class="icon-ok"></i>WhatsApp</p>
                                                                <p class="icloud-features__info m0">Track chats and calls on WhatsApp.</p>
                                                            </li>
                                                            <li class="icloud-features__item">
                                                                <p class="icloud-features__name"><i class="icon-ok"></i>Calendar</p>
                                                                <p class="icloud-features__info m0">Monitor scheduled dates and events.</p>
                                                            </li>
                                                            <li class="icloud-features__item">
                                                                <p class="icloud-features__name"><i class="icon-ok"></i>Notes</p>
                                                                <p class="icloud-features__info m0">Track Notes on the target iOS device.
                                                                    <br>Up to iOS 8.4.1
                                                                </p>
                                                            </li>
                                                            <li class="icloud-features__item">
                                                                <p class="icloud-features__name"><i class="icon-ok"></i>Bookmarks</p>
                                                                <p class="icloud-features__info m0">View all websites visited and bookmarked as preferred ones.<br>Up to iOS 8.4.1</p>
                                                            </li>
                                                            <li class="icloud-features__item">
                                                                <p class="icloud-features__name"><i class="icon-ok"></i>Browsing history</p>
                                                                <p class="icloud-features__info m0">View all visited websites.</p>
                                                            </li>
                                                            <li class="icloud-features__item">
                                                                <p class="icloud-features__name"><i class="icon-ok"></i>Photos</p>
                                                                <p class="icloud-features__info m0">View all photos stored on a device.</p>
                                                            </li>
                                                            <li class="icloud-features__item">
                                                                <p class="icloud-features__name"><i class="icon-ok"></i>Skype</p>
                                                                <p class="icloud-features__info m0">Track chats and calls on Skype.<br>Up to iOS 8.4.1</p>
                                                            </li>
                                                            <li class="icloud-features__item">
                                                                <p class="icloud-features__name"><i class="icon-ok"></i>Kik</p>
                                                                <p class="icloud-features__info m0">Track conversations via Kik.<br>iOS 9.0 and up</p>
                                                            </li>
                                                            <li class="icloud-features__item">
                                                                <p class="icloud-features__name"><i class="icon-ok"></i>Historical data</p>
                                                                <p class="icloud-features__info m0">View all the previous data ever stored on a device.</p>
                                                            </li>
                                                            <li class="icloud-features__item">
                                                                <p class="icloud-features__name"><i class="icon-ok"></i>Location history</p>
                                                                <p class="icloud-features__info m0">Track current location as well as the entire route history. Map view available.</p>
                                                            </li>
                                                            <li class="icloud-features__item">
                                                                <p class="icloud-features__name"><i class="icon-ok"></i>Contacts</p>
                                                                <p class="icloud-features__info m0">View contact list including names, addresses, numbers and emails.</p>
                                                            </li>
                                                        </ul>
                                                        <div class="table_title free-label">
                                                            <h3 class="free-label__headname">FREE:</h3>
                                                            <span class="free-label__item"><i class="icon-ok"></i>Remote control panel</span>
                                                            <span class="free-label__item"><i class="icon-ok"></i>Software updates</span>
                                                        </div>
                                                        {*<div class="show_premium_features _icloud-f"><div class="show-f _icloud-f">Show features <i class="fa fa-chevron-down"></i></div><div class="hide-f _icloud-f" style="display: none;">Hide features  <i class="fa fa-chevron-up"></i></div></div>*}

                                                    </div>

                                                    <div class="prod-icloud prod-2">
                                                        <div class="wrapper_pack wrapper_pack2 clearfix">
                                                            <div class="wr_pack_premium wr_icloud _single-pack-icloud"></div>
                                                            {*<div class="wr_pack_double_premium wr_icloud-double _double-pack-icloud"></div>*}
                                                            <div class="wr_price_big">
                                                                <span></span><div class="box-currence"><div class="symbol" attr-iso="usd">$</div><div class="curr icloud-price-per-month">{$defaultiCloudProduct}</div></div><span class="_period">/ month</span>
                                                            </div>
                                                        </div>
                                                        <div class="list_price icloud-list_price" id="foot_h4">
                                                            <form name="price_premium_bottom" method="POST" action="/buy.html" class="buy-form-with-offer" autocomplete="off">
                                                                <input id='product_price_icloud' type='hidden' name='price[productID]' value='{if isset($defaultIosiCloud)}{$defaultIosiCloud}{else}0{/if}' class="product_price"/>
                                                                <ul>
                                                                    {foreach from=$getProducts.iosiCloud key=key item=item}
                                                                        <li>
                                                                            <label class="label_radio hover_label_radio {if $item.period == '24'}r_on{else}r_off{/if}">
                                                                                <input class="data-price" data-target=".icloud-price-per-month" data-cur="usd" data-price-usd="{$item.price}" data-offer-price-usd="{$getProducts.iosiCloudDouble[$key].price}" data-period="{$item.period}" data-product="{$item.id}" data-offer-product="{$getProducts.iosiCloudDouble[$key].id}" data-group="icloud"  name="optionsRadios" id="optionsRadios{$item.id}2" value="{$item.id}" type="radio" />
                                                                                <span class="sp">
                                                                            <strong>{$item.period}</strong> {if $item.period == 7}days{elseif $item.period == 1}month{else}months{/if}
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
                                                                <button class="btn btn-default ga-action-click"
                                                                        ga-action ="click"
                                                                        ga-category="store"
                                                                        ga-label="buy icloud"
                                                                        value="true" type="submit" name="price[submit]">Buy</button>
                                                            </form>
                                                            {*<div class="space_line">&nbsp;</div>*}
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        {*---ICLOUD---*}
                                        {*---ANDROID---*}

                                        <div class="prod-list-android clearfix" data-info-block="android" style="display: none;">
                                        {* ANDROID AJAX LOADING*}
                                            <div id="loader"><img src="/images/loader.svg"></div>
                                            {*{include file='../includes/store/store-desktop.tpl'} for debug*}
                                        </div>
                                        {* ---ANDROID---*}

                                    </th>
                                </tr>
                                </thead>
                            </table>
                            <table class="tb_pricing">
                                <tr>
                                    <td style="padding: 0;">
                                        <div class="table_header">

                                            <!-- Block currencies -->
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

                                            <!-- Block choose currency include -->
                                            <div class="pull-right">
										<span class="payment-methods">
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
                                    </td></tr>
                            </table>
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
                    <p>Check the most important data from the target device on the go by using Control Panel Mobile Application! Just purchase any subscription plan, download the FREE application to your mobile device and log in with your Control Panel credentials.</p>
                </div>
                <div class="store-links">
                    <img src="/images/app-store.png" alt="Pumpic Parental Monitoring on App Store" alt="">
                    <img src="/images/google-play.png" alt="Pumpic Parental Monitoring on Google Play" alt="">
                </div>
            </div>
        </div>
    </div>
</div>
<style>
    #lightbox {
        display: none;
    }


    @media (min-width: 500px) {
        #discount-modal .modal-dialog {
            width: 450px;
        }
    }
    @media (max-width: 499px) {
        #discount-modal .modal-dialog {
            width: 95%;
        }
    }
    #discount-modal .modal-dialog {
        position: absolute;
        left: 50%;
        top: 50%;
        margin: 0;
        transform: translate(-50%, -50%);
    }
    .discount-modal_content {
        padding: 20px 20px 50px;
        background-color: #ffffff;
        border-radius: 8px;
    }
    .discount-modal_content .close {
        font-weight: 300;
        font-size: 35px;
        margin-right: 14px;
        position: absolute;
        top: 10px;
        right: 3px;
    }
    .discount-modal_body h2 {
        font-size: 78px;
        color: #2fbdbd;
        font-weight: bold;
        margin-bottom: 0;
    }
    .discount-modal_body .modal-subtitle {
        font-size: 27px;
        font-weight: normal;
        margin-bottom: 15px;
        text-align: center;
        color: #4d4f5b;
    }

    .discount-modal_code {
        font-size: 44px;
        font-weight: bold;
        letter-spacing: 0.05em;
        color: #CF4757;
        border-top: 1px solid #DBDCDE;
        border-bottom: 1px solid #DBDCDE;
        text-align: center;
        padding: 15px 0;
    }
    @media (max-width: 500px) {
        .discount-modal_code {
            font-size: 35px;
        }
    }
    .discount-modal_text {
        line-height: 2.3;
        margin: 20px 0;
        text-align: center;
    }
    .discount-modal_footer {
        text-align: center;
    }
    .discount-modal_footer .btn {
        font-weight: normal;
        font-size: 22px;
        padding: 8px 35px;
    }
</style>

<div id="discount-modal" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <div class="discount-modal_content">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <div class="discount-modal_body">
                <h2>WAIT!</h2>
                <p class="modal-subtitle">Get 10% OFF now!</p>
                <div class="discount-modal_code">10OFF4YOU</div>
                <p class="discount-modal_text">Just copy the discount code above <br>
                    and enter it at the Checkout</p>
            </div>
            <div class="discount-modal_footer">
                <button type="button" class="btn btn-default ga-action-click" ga-category="Store-exit-banner" ga-action="click" ga-label="10%-off" data-dismiss="modal">Choose Your Plan</button>
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
{include file='../includes/main/main-analytics-footer.tpl'
emptyScript="true"}
<script src="/javascripts/frontend.min.js?1423094400" data-delete="delete"></script><script src="/javascripts/store-init.js"></script>
{literal}
<script>
    $(function () {
        var modalWasShown = false;
        $(document).mouseleave(function () {
            if(!modalWasShown) {
                $('#discount-modal').modal("show")
                modalWasShown = true;
            }
        });
    })

    var $buoop = {vs:{i:10,f:25,o:15,s:7,c:30},api:4,reminder:0,text:"Ouch! Seems like the version of your browser {brow_name}  is too old. To proceed, please,  <a{up_but}>Update it</a> or <a{ignore_but}>Ignore</a>"};
    function $buo_f(){
        var e = document.createElement("script");
        e.src = "//browser-update.org/update.min.js";
        document.body.appendChild(e);
    };
    try {document.addEventListener("DOMContentLoaded", $buo_f,false)}
    catch(e){window.attachEvent("onload", $buo_f)}
    (function() {var UA = window.navigator.userAgent;
        if(
        (UA.indexOf('Mobile Safari') !== -1 && UA.indexOf('Android ') !== -1 && UA.substr(UA.indexOf('Version/')+8, 1) < 4) ||
        (UA.indexOf('Opera Mobi/') !== -1 && UA.substr(UA.indexOf('Opera/')+6, 2) === 12) ||
        (UA.indexOf('IEMobile/10.0') !== -1)
        ) {
            return alert('Ouch! Seems like the version of your browser is too old. To proceed, please, update it.')
        } else if (
                (UA.indexOf('UC Browser') !== -1) ||
                (/\bSilk\b/.test(navigator.userAgent)) ||
                (/\bYaBrowser\b/.test(navigator.userAgent))
        ) {
            alert('Wow! It seems that you might have a problem with purchasing on our website while using your browser. To proceed without a problems, please, use one of these browsers: \nInternet Explorer version 11 \nFirefox version 24 or newer \nChrome version 22 or newer Safari version 6.2.8 or newer \nOpera version 11.6 or newer\niOS Safari 5 or newer \nAndroid Browser 5.0 or newer \nBlackberry Browser 7.1 or newer \nOpera Mobile 15 or newer \nInternet Explorer Mobile 11')
        }
    })()
</script>
{/literal}
</body>
</html>
