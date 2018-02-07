<style>
    @media (max-width: 767px) {
        .filter_fe .filter_icon {
            display: none;
        }
    }
    /*.prod-icloud.prod-2 {*/
        /*padding-bottom: 20px;*/
    /*}*/
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
                                                    <p class="prod-head__price"><span>starting from </span><b>$39.99/</b><span> month</span></p>
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
                                                    <p class="prod-head__price"><span>starting from </span><b>$23.99/</b><span> month</span></p>
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
                                                <div class="buy-wrapper hidden-xs">
                                                    <div class="wrapper_pack clearfix">
                                                        <div class="wr_pack_premium wr_icloud _single-pack-icloud"></div>
                                                        <div class="wr_pack_double_premium wr_icloud-double _double-pack-icloud"></div>
                                                        <div class="wr_price_big">
                                                            <span></span><div class="box-currence"><div class="symbol" attr-iso="usd">$</div><div class="curr icloud-price-per-month" >{$defaultIosiCloudPrice}</div></div><span>/ month</span>
                                                        </div>
                                                    </div>
                                                    <div class="list_price icloud-list_price">
                                                        <form name="price_premium" onsubmit="return false;" class="buy-form-with-offer" autocomplete="off" >
                                                            {*<div class="save__2plan">*}
                                                            {*<div class="save__text label-touch">*}
                                                            {*<input type="checkbox" data-group="icloud" name="icloud-40off" id="icloud-40off-main" data-checkboxes="icloud-40off">*}
                                                            {*<label for="icloud-40off-main">*}
                                                            {*<span>Save 40%</span> on the 2nd plan. <div class="limited-time">Limited time offer!</div>*}
                                                            {*</label>*}
                                                            {*</div>*}
                                                            {*</div>*}
                                                            <input id='product_price_icloud' type='hidden' name='price[productID]' value='{if isset($defaultIosiCloud)}{$defaultIosiCloud}{else}0{/if}' class="product_price"/>
                                                            <ul class="hidden">
                                                                {foreach from=$getProducts.iosiCloud key=key item=item}
                                                                    <li>
                                                                        <label class="label_radio hover_label_radio {if $item.period == '1'}r_on{else}r_off{/if}">
                                                                            <input class="data-price"
                                                                                   data-target=".icloud-price-per-month"
                                                                                   data-cur="usd"
                                                                                   data-price-usd="{$item.price}"
                                                                                   data-offer-price-usd="{$getProducts.iosiCloudDouble[$key].price}"
                                                                                   data-period="{$item.period}"
                                                                                   data-product="{$item.path}"
                                                                                   data-offer-product="{$getProducts.iosiCloudDouble[$key].id}"
                                                                                   data-group="icloud"
                                                                                   name="optionsRadios"
                                                                                   id="optionsRadios{$item.id}1"
                                                                                   value="{$item.id}"
                                                                                   type="radio" />
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
                                                                    value="true" type="submit" name="price[submit]"
                                                                    data-fsc-item-path-value="{$defaultIosiCloudPath}"
                                                                    onclick="buyOnClick(this);"
                                                                    data-fsc-action="Add,Checkout"
                                                                    disabled>
                                                            {* Buy *}
                                                            Out of Stock
                                                            </button>
                                                            <p class="out-of-stock">Until 02.12.2018 </p>
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
                                                        <div class="wr_pack_double_premium wr_icloud-double _double-pack-icloud"></div>
                                                        <div class="wr_price_big">
                                                            <span></span><div class="box-currence"><div class="symbol" attr-iso="usd">$</div><div class="curr icloud-price-per-month">{$defaultIosiCloudPrice}</div></div><span>/ month</span>
                                                        </div>
                                                    </div>
                                                    <div class="list_price icloud-list_price" id="foot_h4">
                                                        <form name="price_premium_bottom" onsubmit="return false;" class="buy-form-with-offer" autocomplete="off">
                                                            <input id='product_price_premium' type='hidden' name='price[productID]' value='{if isset($defaultIosiCloud)}{$defaultIosiCloud}{else}0{/if}' class="product_price" />
                                                            <ul class="hidden">
                                                                {foreach from=$getProducts.iosiCloud key=key item=item}
                                                                    <li>
                                                                        <label class="label_radio hover_label_radio {if $item.period == '1'}r_on{else}r_off{/if}">
                                                                            <input class="data-price"
                                                                                   data-target=".icloud-price-per-month"
                                                                                   data-cur="usd"
                                                                                   data-price-usd="{$item.price}"
                                                                                   data-offer-price-usd="{$getProducts.iosiCloudDouble[$key].price}"
                                                                                   data-period="{$item.period}"
                                                                                   data-product="{$item.path}"
                                                                                   data-offer-product="{$getProducts.iosiCloudDouble[$key].id}"
                                                                                   data-group="icloud"
                                                                                   name="optionsRadios"
                                                                                   id="optionsRadios{$item.id}2"
                                                                                   value="{$item.id}"
                                                                                   type="radio" />
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
                                                                    value="true" type="submit" name="price[submit]"
                                                                    data-fsc-item-path-value="{$defaultIosiCloudPath}"
                                                                    onclick="buyOnClick(this);"
                                                                    data-fsc-action="Add,Checkout"
                                                                    disabled>
                                                            {* Buy *}
                                                            Out of Stock
                                                            </button>
                                                            <p class="out-of-stock">Until 02.12.2018 </p>
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
                                        {*{include file='../../includes/store/store-desktop.tpl'}*}
                                    {*for debug*}
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
</style>
