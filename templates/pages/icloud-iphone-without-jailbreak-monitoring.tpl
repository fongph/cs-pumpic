{include file='../includes/main/main-header.tpl'
    showRand="true"
    title="iPhone tracking without jailbreak | Pumpic"
    description="Enjoy Pumpic mobile monitoring app on iPhones, iPads and iPods Touch without jailbreak. Monitor calls, text messages, contacts, browsing history, bookmarks, and calendar via iCloud."
}

<body>
<style>
    .table_header .list-currencies>a {
        margin-left: 0;
        line-height: 0.7;
    }
</style>
    <!-- BLOCK GTM -->
    {include file='../includes/main/main-after-body.tpl'}
    <!-- END BLOCK GTM -->

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
            description = "Reliable tracking with no jailbreak required."

            promoBuyBlock = "no"
            iCloudSolution = 'no'
            planPackageBuy = "yes"
            planPackageBuyUrl = '#icloud-solution'
            planPackageBuyType = 'link'
            planPackageBuyClass = 'go_block_scroll'
            TouchPad = 'yes'
            Android = 'no'
            Apple = 'no'
            InfoBlock = 'no'

            block_video = "yes"
            block_video_src = "https://www.youtube.com/embed/Atg0CbaytAY"
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
                <h2 class="list-group-item-heading text-center"><i class="icon icon-apple" style="margin-right: 5px;"></i> iCloud Solution</h2>
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
                                iCloud solution is available with the <b>Premium subscription</b> only.
                            </p>
                            <p>
                               Soon after submitting the payment, you will receive <b>an email</b>.
                            </p>
                        </div>
                        <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <h3 class="weight-normal"><i class="icons icon-install"></i>Install</h3>
                            <p>
                                Follow the guidelines in the email and fill in the <b>iCloud login</b> and <b>password</b> of the target device.
                            </p>
                            <p>
                                Note that physical access may be required to change the target device settings (turn iCloud Backup on).
                            </p>
                        </div>
                        <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <h3 class="weight-normal"><i class="icons icon-remotely"></i> Start tracking</h3>
                            <p>
                                Enter your <b>Control Panel</b> to monitor data from the target device.
                            </p>
                            <p>
                                Use any browser, any computer, or mobile gadget to get access your Control Panel.
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
                                                    <div class="priceb border-none" style="padding-top: 0;">
                                                        <div class="dtable">
                                                            <div class="dtable-cell text-center" style="padding: 0;">
                                                            {*<div class="dtable-text text-right">*}
                                                                {*<strong class='none-uppercase'>iCloud Solution</strong><br>*}
                                                                 {*<span class='none-uppercase'>iCloud Solution is provided <br>with Premium subscription only</span>*}
                                                            {*</div>*}
                                                                <div style="width: 100px; display: inline-block; vertical-align: middle;">
                                                                <div class="wr_pack_premium wr_icloud _single-pack-icloud"></div>
                                                                <div class="wr_pack_double_premium wr_icloud-double _double-pack-icloud" style="margin-top: 9px;"></div>
                                                                    </div>
                                                                <div class="wr_price_big" style="vertical-align: middle;">
                                                                    <span></span>
                                                                    <div class="box-currence">
                                                                        <div class="symbol" attr-iso="usd">$</div>
                                                                        <div class="curr icloud-price-per-month">{$defaultIosiCloudPrice}</div>
                                                                    </div><span> / month</span>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="list_price">
                                                            <form name="price_premium" method="POST" action="/buy.html" class="buy-form-with-offer" autocomplete="off">
                                                                <input id='product_price_premium' type='hidden' name='price[productID]' value='{if isset($defaultIosiCloud)}{$defaultIosiCloud}{else}0{/if}' class="product_price" />

                                                                <ul>
                                                                    {foreach from=$getProducts.iosiCloud key=key item=item}
                                                                        <li>
                                                                            <label class="label_radio hover_label_radio {if $item.period == '12'}r_on{else}r_off{/if}">
                                                                                <input class="data-price" data-target=".icloud-price-per-month" data-cur="usd" data-price-usd="{$item.price}" data-offer-price-usd="{$getProducts.iosiCloudDouble[$key].price}" data-period="{$item.period}" data-product="{$item.id}" data-offer-product="{$getProducts.iosiCloudDouble[$key].id}" data-group="icloud"  name="optionsRadios" id="optionsRadios{$item.id}1" value="{$item.id}" type="radio"{if $item.period == '12'} checked="checked"{/if} />
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
                                                                        <input type="checkbox" data-group="icloud">
                                                                        Get the 2nd plan with <span>40% OFF!</span>
                                                                    </label>
                                                                </div>
                                                                <button class="btn btn-default ga-action-submit"
                                                                        ga-action ="click"
                                                                        ga-category="icloud-iphone-without-jailbreak-monitoring"
                                                                        ga-label="buy icloud"
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
                                                    <div class="priceb border-none" style="padding-top: 0;">
                                                        <div class="basic_fe reset-list media-sm-block">
                                                            <ul class="list_price-no-link list_price-no-link-inline">

                                                                <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Text Messages <span>View text content of SMS, MMS, and iMessages sent or received.{*View sent and received messages.*}</span>
                                                                </li>
                                                                <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Calls <span>Follow in- and outbound calls.</span>
                                                                </li>
                                                                <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Contacts <span>View existing contacts.</span></li>
                                                                <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Photos <span>View camera shots and downloaded photos.</span></li>
                                                                <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Skype <span>Monitor personal, group messages, and calls.<br/> Up to iOS 8.4.1</span></li>
                                                                <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Location History<span>Track current location as well as the entire route history.</span></li>
                                                                <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Browser <span>View visited websites.</span></li>
                                                            </ul>
                                                        </div>
                                                    </div>


                                                </div>
                                                <div class="basic_wr padding-none-list span-list-block">
                                                    <div class="pricep">
                                                        <div class="basic_fe reset-list media-sm-block">
                                                            <ul class="list_price-no-link list_price-no-link-inline">
                                                                <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Deleted SMS <span>Track deleted SMS that were backed up before being deleted</span></li>
                                                                <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Bookmarks <span>View bookmarked websites. <br/> Up to iOS 8.4.1 </span></li>
                                                                <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Calendar  <span>Follow scheduled events.</span></li>
                                                                <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> KiK <span>Monitor online text communication. <br/> iOS 9.0 and up</span></li>
                                                                <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> WhatsApp  <span>Follow personal messages and group chats.</span></li>
                                                                <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Notes  <span>View notes saved on the target device.<br/> Up to iOS 8.4.1</span></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                                <p class="inline-block text-center none-uppercase"><i class='fz15 inline-block'>If Pumpic iCloud solution functionality is not enough for you, try full featured <a class='a-default' href="http://{$domain}/iphone-with-jailbreak-monitoring.html">Pumpic jailbreak solution</a>.</i></p>
                                            </th>
                                        </tr>

                                        <tr>
                                            <th >
                                            <div class="table_title">
                                                <h2 class="text-success h2-sm">Additional Benefits</h2>
                                            </div>
                                                <div class="basic_wr padding-none-list span-list-block additional-benefits-item">
                                                    <div class="priceb border-none" style="padding-top: 0;">
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
                                                <div class="basic_wr row-pricing-panel w100 icloud-box">
                                                    <div class="basic_h text-transform-none">
                                                        iCloud Solution
                                                    </div>
                                                    <div class="priceb border-none" style="padding-top: 0;">
                                                        <div class="dtable">
                                                            <div class="dtable-cell text-center" style="padding: 0;">
                                                                {*<div class="dtable-text text-right">*}
                                                                {*<strong class='none-uppercase'>iCloud Solution</strong><br>*}
                                                                {*<span class='none-uppercase'>iCloud Solution is provided <br>with Premium subscription only</span>*}
                                                                {*</div>*}
                                                                <div style="width: 100px; display: inline-block; vertical-align: middle;">
                                                                    <div class="wr_pack_premium wr_icloud _single-pack-icloud"></div>
                                                                    <div class="wr_pack_double_premium wr_icloud-double _double-pack-icloud" style="margin-top: 9px;"></div>
                                                                </div>
                                                                <div class="wr_price_big" style="vertical-align: middle;">
                                                                    <span></span>
                                                                    <div class="box-currence">
                                                                        <div class="symbol" attr-iso="usd">$</div>
                                                                        <div class="curr icloud-price-per-month">{$defaultIosiCloudPrice}</div>
                                                                    </div><span> / month</span>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="list_price">
                                                            <form name="price_premium" method="POST" action="/buy.html" class="buy-form-with-offer" autocomplete="off">
                                                                <input id='product_price_premium' type='hidden' name='price[productID]' value='{if isset($defaultIosiCloud)}{$defaultIosiCloud}{else}0{/if}' class="product_price" />

                                                                <ul>
                                                                    {foreach from=$getProducts.iosiCloud key=key item=item}
                                                                        <li>
                                                                            <label class="label_radio hover_label_radio {if $item.period == '12'}r_on{else}r_off{/if}">
                                                                                <input class="data-price" data-target=".icloud-price-per-month" data-cur="usd" data-price-usd="{$item.price}" data-offer-price-usd="{$getProducts.iosiCloudDouble[$key].price}" data-period="{$item.period}" data-product="{$item.id}" data-offer-product="{$getProducts.iosiCloudDouble[$key].id}" data-group="icloud"  name="optionsRadios" id="optionsRadios{$item.id}1" value="{$item.id}" type="radio"{if $item.period == '12'} checked="checked"{/if} />
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
                                                                        <input type="checkbox" data-group="icloud">
                                                                        Get the 2nd plan with <span>40% OFF!</span>
                                                                    </label>
                                                                </div>
                                                                <button class="btn btn-default ga-action-submit"
                                                                        ga-action ="click"
                                                                        ga-category="icloud-iphone-without-jailbreak-monitoring"
                                                                        ga-label="buy icloud"
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
                                                <div class="table_header text-transform-none">
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
                                                <div class="pull-right" style="margin-top: 3px;">
                                                  <span class='none-uppercase'">Payment methods:</span>
                                                  <i class="ico-cart-visa"></i>
                                                  <i class="ico-cart-mcart"></i>
                                                  <i class="ico-cart-maestro"></i>
                                                  <i class="ico-cart-aexpress"></i>
                                                  <i class="ico-cart-descover-new"></i>
                                                  <i class="ico-cart-paypal-new"></i>
                                                </div>
                                                </div>
                                            </th>
                                        </tr>


                                    </thead>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- block upgrade include-->
        </div>
        <!-- END BLOCK PRICE AND FEATURES -->

{Content
    styleTitle=""
    title=""
    blockBg='dark'}

    <div id="grid-images" class="row">
        <div class="col-lg-12 col-md-12 col-sm-12">
            <h2 class="h3 text-left">What Benefits iCloud Solution Over Jailbreak</h3>
            <div class="pt30 pb20">
                <img class="img-align-right" alt="Best Free Parental Controls for Android' Location" src="{$img}/landings/icloud-iphone-without-jailbreak-monitoring.png" width="207px" height="208px" />
                <img class="app-icon-left" src="{$img}/landings/icon-icloud-iphone-without-jailbreak-monitoring.png" alt="">
			<p>Apple iCloud tracking allows you to monitor your children on iPhones, iPads, and iPods Touch without jailbreaking their gadgets. Moreover, iCloud parental control does not require an app to be installed on the target device, which means that you don’t need to take the target device in hands to install the app on it to start monitoring. All the tracked information is gathered via the iCloud backup and sent directly to your Control Panel.</p>
			<p>The iCloud mobile tracker is an option provided by Pumpic with iOS (iCloud) solution subscription plan. It lets you monitor 11+ activities with even more opportunities to come soon. This feature allows seeing text messages saved on iCloud. Thus, you can view SMS, MMS, and iMessages your children send or receive to prevent them from misgiving communication and cyberbullying, using bad words, and sexting.</p>
			<p>By monitoring call logs, which is also possible with the iCloud Solution, you can see who calls your children as well as whom they call, at what time, and for how long each conversation lasts. Pumpic iCloud tracking logs browsing history and bookmarks allowing parents to control kids’ Internet activities.</p>
			<p>iCloud GPS tracking is also a significant advantage. At any time, you can request your kid’s location and find out his or her whereabouts pinpointed accurately on the map. With Pumpic iCloud <a class="a-default" href="/iphone-location-tracking.html">location tracking</a>, you will always know where your children go and be able to prevent them from visiting places you don’t approve.</p>
			<p>And even more! You can oversee kids’ communication over WhatsApp, Kik, and other messengers where children are highly exposed to cyberbullying and online predator attacks. Among iCloud Solution features, you will also find monitoring Calendar, Contacts, Photos, which completes the picture of your children’s mobile behavior and safety to the fullest.</p>
			<p>To perform iPhone tracking of your kid’s device through iCloud the following requirements must be satisfied:</p>
			<ul class="list-images">
			   <li><img src="{$img}/landings/mark.png" alt="Check Mark" class="lc-1" style="left: -29px; height: auto; width: auto; background-size: contain;" />you must know the iCloud login and password;</li>
               <li><img src="{$img}/landings/mark.png" alt="Check Mark" class="lc-1" style="left: -29px; height: auto; width: auto; background-size: contain;"/>backup must be enabled on the target device.</li>
			   <li><img src="{$img}/landings/mark.png" alt="Check Mark" class="lc-1" style="left: -29px; height: auto; width: auto; background-size: contain;"/>two-step verification must be disabled on the target device.</li>
			</ul>
			<p>For information to be successfully uploaded to your Control Panel, the backup must be performed under the following conditions:</p>
			<ul class="list-images">
			   <li><img src="{$img}/landings/mark.png" alt="Check Mark" class="lc-1" style="left: -29px; height: auto; width: auto; background-size: contain;" />the target device is connected to Wi-Fi;</li>
               <li><img src="{$img}/landings/mark.png" alt="Check Mark" class="lc-1" style="left: -29px; height: auto; width: auto; background-size: contain;" />it is connected to the power source (charging);</li>
			   <li><img src="{$img}/landings/mark.png" alt="Check Mark" class="lc-1" style="left: -29px; height: auto; width: auto; background-size: contain;" />the screen of the target device is locked. </li>
			</ul>
			<p>Pumpic iCloud Solution provides excellent opportunities for you to monitor and protect your children even if you don’t want to puzzle out how to jailbreak an iOS device, which is required by all other multi-featured parental control applications.</p>
            </div>
        </div>
    </div>
{EndContent}

        {*include file='../includes/testimonials.tpl'
                title = "Trusted by Over 10,000 Customers Worldwide"
                sliders = "false"
                blockBg="light"*}

        {* BLOCK TESTIMONIALS HTML (sliders) *}
        <div class="light">
            <div class="container">
                <h2 class="text-center testimonial-title">Trusted by Over 10,000 Customers Worldwide:</h2>
                <div class="row">

                    <div class="bxSliders only-pc">
                        <!-- SLIDE #1 -->
                        <div class="slide">
                            <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <img src="{$img}/testimonials/abraham-z.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>Abraham Z. - father of 14 y.o. girl</h4>
                                            <p>“Two months ago my daughter got her first part-time job in a big shopping mall. She uses public transport to get there and sometimes has to work in the evening. I want to be sure that she is safe on her way to and from work, that’s why I chose Pumpic to help me track her iPhone. This app is easy to install, its design is intuitive. I think that Pumpic is a great choice for parents.”</p>
                                    </div>
                            </div>
                            <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <img src="{$img}/testimonials/dominick-h.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>Dominick H. - father of 16 y.o. boy</h4>
                                            <p>“My elder son has recently turned 16 and as most of the teens in this age, he wants to be less controlled by us, his parents. He spends more time outing with his friends and often seems to be obsessed with his phone. I thought that using a parental control app is a good idea. When choosing among different apps, I saw that Pumpic appears to be the most useful one. Now I always know where my son is and with whom he spends his time. I’m thinking to use Pumpic on my younger kids’ mobile phones as well.”</p>
                                    </div>
                            </div>
                            <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <img src="{$img}/testimonials/lillie-r.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>Lillie R. – mother of four</h4>
                                            <p>“I’m a mom of four children aged from 8 to 17. You may imagine that parenting along with the household chores takes all my time. I’m trying my best but still worry that I may miss something important in the life of my kids. Using a parental control app is absolutely necessary for me and among many I chose Pumpic because it provides me with the widest range of useful features. Thanks, Pumpic, I feel less worried now.”</p>
                                    </div>
                            </div>
                        </div> <!-- .slide-->

                        <!-- SLIDE #2 -->
                        <div class="slide">
                            <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <img src="{$img}/testimonials/testimonials_new_44.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>Susie W. - mother of 15 y.o. boy</h4>
                                            <p>“Some time ago a friend recommended me this app as a helpful one to keep an eye on my kids. After monitoring my elder son’s phone, I found out that he has been posting on a social site photos with a bottle of beer in one hand and a cigarette in the other. No need to say that he was using all this not as fashionable accessories... Probably he thought that it “looks cool”. We had a serious talk, and he agreed that until he comes of age, he wouldn’t drink and smoke.”</p>
                                    </div>
                            </div>
                            <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <img src="{$img}/testimonials/testimonials_new_45.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>Diana S. - mother of 14 y.o. girl</h4>
                                            <p>“My daughter has recently joined Facebook and now spends quite much time on the phone like a lot of her peers do. She seems to be super excited about messaging with her friends and posting stuff on her page. I don’t mind that much but still want to be sure that her circle of contacts is safe. With Pumpic, I can monitor her texts, calls and social media posts, which is great. The app has many pros; as a con, I’d name the necessity to install this software on your child’s phone. But if it’s not a problem for you, Pumpic may be just what you need.”</p>
                                    </div>
                            </div>
                            <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <img src="{$img}/testimonials/testimonials_new_46.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>Herbert G. - father of 14 y.o. boy</h4>
                                            <p>“Sport activities take quite a lot of time. My son is into swimming and recently started making good progress. He has to work out and train almost daily and last month he has attended a competition in the other city. Of course, I want to know where he spends time and that all is fine with him. Pumpic has given me an opportunity to keep an eye on my boy in an easy way. Besides, Pumpic provides many other features such as monitoring texts and social network activity.”</p>
                                    </div>
                            </div>
                        </div> <!-- .slide-->
                    </div>
                    <div class="bxSliderMobile"></div>

                    {*<div class="bxSliders only-mobile">
                        <!-- SLIDE #1 -->
                        <div class="slide">
                            <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                <img src="{$img}/testimonials/testimonials_new_25.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>Mike P. (Denver, CO)</h4>
                                            <p>“I didn’t like that my son played games on his iPad all the time. He didn’t want to do his homework, nor to clean his room. All he did was taping on the screen of his tablet. So, I decided to limit his “addiction” somehow. I didn’t want to take away the device, so I searched online and found Pumpic. After I had installed the app, I realized it was what I needed. For now, I can easily set limits on his gaming, Internet use and chatting. I don’t let him play, until his work is done.”</p>
                                    </div>
                            </div>
                        </div> <!-- .slide-->

                        <!-- SLIDE #2 -->
                        <div class="slide">
                            <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                <img src="{$img}/testimonials/testimonials_new_26.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>Peter G. (Richmond, VA)</h4>
                                            <p>“I heard about Pumpic from my neighbors, who used it as parental controls to look after kids when at work, and to protect their own cell phones, in case they are lost or stolen. I also wanted to try it, but I didn’t want to jailbreak iPhones I’d bought for my children, my wife and me. When they told me it was available without jailbreak, I sing up and ordered the app with iCloud feature for all my family the very same day. I’m glad I can see my kids are protected now, I can monitor them online and prevent from dangers. And I’m also sure that my wife is safe, as well as she knows I’m ok too.”</p>
                                    </div>
                            </div>
                        </div> <!-- .slide-->
                        <!-- SLIDE #3 -->
                        <div class="slide">
                            <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                <img src="{$img}/testimonials/testimonials_new_27.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>Sandra O. (Nashville, TN)</h4>
                                            <p>“Pumpic has reasonably simplified my life. I didn’t know where to find enough time to look after my three sons, and at the same time work full time. I saw Pumpic ad in the Internet and decided to give it a try. I asked my older son to jailbreak his own iPhone and tablets of my younger kids. Then I installed the app on their devices. I can finally calm down and be sure that my children are safe, even when I’m not at home. Thanks Pumpic for helping parents like me.”</p>
                                    </div>
                            </div>
                        </div> <!-- .slide-->

                        <!-- SLIDE #4 -->
                        <div class="slide">
                            <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                <img src="{$img}/testimonials/testimonials_new_44.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>Amanda T. (St. Louis, MO)</h4>
                                            <p>“My daughter has recently become inseparable friends with her iPod Touch. She doesn’t want to do anything but listen to music, chat with her friends via Skype or simply scroll her Facebook feed. My husband decided to take away her device, but I said it was not the best idea. We both agreed that a parental control app would be a solution, and decided to try Pumpic. It is amazing! In addition to various device limits, it lets us track her location, Internet usage and block inappropriate content. It is a real helping hand for parents.”</p>
                                    </div>
                            </div>
                        </div> <!-- .slide-->

                        <!-- SLIDE #5 -->
                        <div class="slide">
                            <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                <img src="{$img}/testimonials/testimonials_new_45.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>Monica A. (Tampa, FL)</h4>
                                            <p>“My husband and I have two teenage daughters. We long ago realized that we should have a tool to keep an eye on their online life and phone activities. But we couldn’t find a universal app to monitor our older daughter’s iPhone and Android device we bought for our little one. A friend of ours recommended trying Pumpic. He was using it for two or three months on his own, and was very satisfied with results. My husband bought two subscriptions for a year at once. I couldn’t believe it would work so good. The app allows us to see who calls them and write messages, where they go online and track their location in real time. It’s a must-have solution for parents in the modern world I think.”</p>
                                    </div>
                            </div>
                        </div> <!-- .slide-->

                        <!-- SLIDE #6 -->
                        <div class="slide">
                            <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                <img src="{$img}/testimonials/testimonials_new_46.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>Jason G. (Los Angeles, CA)</h4>
                                            <p>“I’ve made my son a gift, bought him a brand new iPhone for all that great job he did at school. The first thing I thought about after the purchase was how to secure my kid. I didn’t want him to spend much time chatting and gaming like most kids do today. I also wanted to make sure I’ll find his iPhone, if my son loses it or it is stolen. My friends recommended me Pumpic and I’m even more than satisfied with the app. It keeps my son and his device protected.”</p>
                                    </div>
                            </div>
                        </div> <!-- .slide-->

                        <!-- END -->
                    </div>*}

                    {*<div class="bxSliders">

                        <!-- SLIDE #1 -->
                        <div class="slide">
                            <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <img src="{$img}/testimonials/abraham-z.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>Abraham Z. - father of 14 y.o. girl</h4>
                                            <p>“Two months ago my daughter got her first part-time job in a big shopping mall. She uses public transport to get there and sometimes has to work in the evening. I want to be sure that she is safe on her way to and from work, that’s why I chose Pumpic to help me track her iPhone. This app is easy to install, its design is intuitive. I think that Pumpic is a great choice for parents.”</p>
                                    </div>
                            </div>
                            <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <img src="{$img}/testimonials/dominick-h.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>Dominick H. - father of 16 y.o. boy</h4>
                                            <p>“My elder son has recently turned 16 and as most of the teens in this age, he wants to be less controlled by us, his parents. He spends more time outing with his friends and often seems to be obsessed with his phone. I thought that using a parental control app is a good idea. When choosing among different apps, I saw that Pumpic appears to be the most useful one. Now I always know where my son is and with whom he spends his time. I’m thinking to use Pumpic on my younger kids’ mobile phones as well.”</p>
                                    </div>
                            </div>
                            <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <img src="{$img}/testimonials/lillie-r.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>Lillie R. – mother of four</h4>
                                            <p>“I’m a mom of four children aged from 8 to 17. You may imagine that parenting along with the household chores takes all my time. I’m trying my best but still worry that I may miss something important in the life of my kids. Using a parental control app is absolutely necessary for me and among many I chose Pumpic because it provides me with the widest range of useful features. Thanks, Pumpic, I feel less worried now.”</p>
                                    </div>
                            </div>
                        </div> <!-- .slide-->
                        <!-- END SLIDER #1 -->
                        <!-- SLIDE #2 -->
                        <div class="slide">
                            <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <img src="{$img}/testimonials/testimonials_new_44.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>Susie W. - mother of 15 y.o. boy</h4>
                                            <p>“Some time ago a friend recommended me this app as a helpful one to keep an eye on my kids. After monitoring my elder son’s phone, I found out that he has been posting on a social site photos with a bottle of beer in one hand and a cigarette in the other. No need to say that he was using all this not as fashionable accessories... Probably he thought that it “looks cool”. We had a serious talk, and he agreed that until he comes of age, he wouldn’t drink and smoke.”</p>
                                    </div>
                            </div>
                            <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <img src="{$img}/testimonials/testimonials_new_45.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>Diana S. - mother of 14 y.o. girl</h4>
                                            <p>“My daughter has recently joined Facebook and now spends quite much time on the phone like a lot of her peers do. She seems to be super excited about messaging with her friends and posting stuff on her page. I don’t mind that much but still want to be sure that her circle of contacts is safe. With Pumpic, I can monitor her texts, calls and social media posts, which is great. The app has many pros; as a con, I’d name the necessity to install this software on your child’s phone. But if it’s not a problem for you, Pumpic may be just what you need.”</p>
                                    </div>
                            </div>
                            <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <img src="{$img}/testimonials/testimonials_new_46.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>Herbert G. - father of 14 y.o. boy</h4>
                                            <p>“Sport activities take quite a lot of time. My son is into swimming and recently started making good progress. He has to work out and train almost daily and last month he has attended a competition in the other city. Of course, I want to know where he spends time and that all is fine with him. Pumpic has given me an opportunity to keep an eye on my boy in an easy way. Besides, Pumpic provides many other features such as monitoring texts and social network activity.”</p>
                                    </div>
                            </div>
                        </div> <!-- .slide-->
                        <!-- END SLIDER #2-->

                    </div> <!-- .bxSliders -->*}

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
