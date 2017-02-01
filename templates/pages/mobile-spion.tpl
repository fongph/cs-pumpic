{include file='../includes/main/main-header.tpl'
    title="Mobile und iCloud Spion für iPhone und Android"
    description="Nach der Pumpic Installation werden sämtliche Daten des Zielgeräts and Ihr Control Panel gesendet. Dieses kann von Ihrem Browser oder jedem anderen Gerät, wie PCs, Smartphones und Tablets geöffnet werden. Im Control Panel können Sie nicht nur die Informationen einsehen, sondern auch Einschränkungen einrichten und spezifische Aktivitäten blockieren."
}    
    
<body>
<style>
    .double_offer.checkbox {
        display: block;
        line-height: 1.6;
        margin: 0 auto 10px;
        max-width: 244px;
    }
    .double_offer label {
        text-align: left;
        width: 100%;
    }
    .double_offer label input {
        margin-top: 7px;
    }
    .premium_wr .pricep {
        margin-top: 0;
    }
    @media (max-width: 700px) {
        .basic_wr .priceb, .premium_wr .pricep {
            padding-top: 15px;
            padding-bottom: 20px;
        }
    }
</style>
    <!-- BLOCK GTM -->
    {include file='../includes/main/main-after-body.tpl'}
    <!-- END BLOCK GTM -->
    
    <!-- FLY BLOCKS -->
    {include file='../includes/content/fly/fly_blocks.tpl'
        visibleFlyFeatures="no"
    }
    <!-- END FLY BLOCKS-->
    
    <div class="wrapper block-free-trial b-p-countries page-germany">
        <!-- TOP MENU -->

	{include file='../includes/country/main-top-menu.tpl'
            lang="de"
            topmenu_active='home'
            cache_id = "includes_main_main-top-menu"
            nocache
        }
        

        <style>
            .page-germany .visual-text p.header-info-descriptions {
                font-size: 14px;
            }
            .page-germany #block-table-header tr, 
            .page-germany #table-container tr {
                display: table;
            }
        </style>
        <!-- BLOCK HEADER -->
        {include file='../includes/content/info/info-promo.tpl'
            infoBlockMobile="no"

            collg="7"
            colLeft="col-md-4 col-lg-5"

            imgUrl = "header_banners/header-countries.png"
            imgAlt = "Landing Mobile"
            imgAlign = "left bottom-only-mobile"
            imgVerticalAlign = "center"
            textAlign = "left"
            title = "Mobile Überwachungs-App <br />für Apple iOS und Android <br />Smartphones und Tablets"
            fz="34"
            classTitle="c-lh-h1-title"
            description = "Verfolgen Sie Anrufe, Textnachrichten, Aufenthaltsorte und Online-Aktivitäten.<br />Halten Sie die Augen offen. Jetzt auch in Deutschland erhältlich."
            promoBuyBlock = "no"
            planPackageBuy = "yes"
            planPackageBuyType = "link"
            planPackageBuyClass = "anchor-menu-fly"
            planPackageBuyUrl = "#store"
            block_video = "no"
            block_video_src = ""

            language="de"
        } {* bottom *}

        <!-- BLOCK TITLE -->
        {include file='../includes/content/country/title.tpl'
        hook="icloud-spy"
        blockBg="light"
        icon="true"
        iconName="cloud"
        title="iCloud Spy"
        }

        <!-- BLOCK HOW-IT-WORK -->
        {include file='../includes/content/country/how-it-work-de_2.tpl'
        blockBg="dark"
        }

        <div id="compatibility-table" class="light b-c-table-de">
            <div class="container"><h2 class="text-center">Kompatibilität</h2>
                <div class="row">
                    <div class="block-only-item col-md-4 col-lg-4 model-center">
                        <div class="">
                            <div id="block-compatibility-table" class="ios-table">
                                <div class="table-header">
                                    <section><span class="title"> <i class="fa fa-apple fa-lg"></i> iOS (iCloud)</span>
                                    </section>
                                </div>
                                <div class="table-body">
                                    <div class="text-center"><p style="">iCloud Passwort ist für die Installation
                                            notwendig</p></div>
                                    <div>
                                        <div class="div-table">
                                            <div class="div-table-row">
                                                <div class="div-table-column">
                                                    <span>iPhones / iPads / iPods Touch:</span></div>
                                                <div class="div-table-column"><span
                                                            class="color-green">iOS {$ver_icloud_bot} - {$ver_icloud_up}</span></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- BLOCK FEATURES -->
        {include file='../includes/content/country/block-features-icloud-spy-de.tpl'}

        <!-- BLOCK PRICING -->
        <div class="dark c-f-border-top box-price-premium-v2" id="store">
            <div class="container">

                <div class="row">
                    <div class="col-lg-10 col-lg-offset-1">
                        <div class="row">
                            <div class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 pt20">
                                <h2 class="text-center">iCloud Entscheidung</h2>
                                <table class="tb_pricing table-bordered pricing-second">
                                    <thead>
                                    <tr>
                                        <th>
                                            <div class="basic_wr row-pricing-panel w100 icloud-box">
                                                <div class="priceb border-none">
                                                    <div class="buy-wrapper">
                                                        <div class="wrapper_pack clearfix">
                                                            <div class="wr_pack_premium wr_icloud _single-pack-icloud"></div>
                                                            <div class="wr_pack_double_premium wr_icloud-double _double-pack-icloud"></div>
                                                            <div class="wr_price_big">
                                                                <span></span><div class="box-currence"><div class="symbol" attr-iso="usd">$</div><div class="curr icloud-price-per-month" >{$defaultIosiCloudPrice}</div></div><span>/ Monat</span>
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
                                                                            <label class="label_radio hover_label_radio {if $item.period == '12'}r_on{else}r_off{/if}">
                                                                                <input class="data-price" data-target=".icloud-price-per-month" data-cur="usd" data-price-usd="{$item.price}" data-offer-price-usd="{$getProducts.iosiCloudDouble[$key].price}" data-period="{$item.period}" data-product="{$item.id}" data-offer-product="{$getProducts.iosiCloudDouble[$key].id}" data-group="icloud" name="optionsRadios" id="optionsRadios{$item.id}1" value="{$item.id}" type="radio"{if $item.period == '12'} checked="checked"{/if} />
                                                                                <span class="sp">
                                                                            <strong>{$item.period}</strong> {if $item.period == 1}Monat{else}Monate{/if}
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
                                                                        Erhalten Sie das 2. Paket mit <span>40% Rabatt!</span>
                                                                    </label>
                                                                </div>
                                                                <button class="btn btn-default ga-action-click"
                                                                        ga-action ="click"
                                                                        ga-category="store"
                                                                        ga-label="buy icloud"
                                                                        value="true" type="submit" name="price[submit]">Jetzt kaufen</button>
                                                            </form>
                                                            {*<div class="show_premium_features _icloud-f"><div class="show-f _icloud-f">Show features <i class="fa fa-chevron-down"></i></div><div class="hide-f _icloud-f" style="display: none;">Hide features  <i class="fa fa-chevron-up"></i></div></div>*}

                                                        </div>
                                                    </div>
                                                </div>

                                        </th>
                                    </tr>

                                    <tr>
                                        <th>
                                            <div class="table_header text-transform-none text-center">
                                                <div id="list-price-phones" class="wr_support_new_os">
                                                    <i class="fa fa-apple d_green"></i> iOS {$ver_icloud_bot} - {$ver_icloud_up}
                                                </div>
                                            </div>
                                        </th>
                                    </tr>


                                    </thead>
                                </table>

                                <div class="space_line">&nbsp;</div>

                                <div class="link_circle_italic2">
                                    <div class="style-links2">
                                        <span class="circle_ico2"></span>
                                        <label>Für die Installation sind iCloud Login und Passwort des Zielgeräts erforderlich. Auch physischer Zugang zum Zielgerät kann notwendig sein, um die Geräteeinstellungen zu ändern (um das iCloud Backup zu aktivieren). Die iCloud Überwachung ist auf dem Zielgerät unsichtbar.</label>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <!-- BLOCK TITLE -->
        {include file='../includes/content/country/title.tpl'
            hook="mobile-spy"
            blockBg="light"
            icon="false"
            iconName=""
            title="Mobile Spy"
        } 
        
        <!-- BLOCK HOW-IT-WORK -->
        {include file='../includes/content/country/how-it-work-de.tpl'
                blockBg="dark"
        } 
        
        <!-- BLOCK COMPATIBILITY -->
        {include file='../includes/content/compatibility/compatibility-table.tpl'
            title="Kompatibilität"
            blockBg="light"
            onlyItem = "android"
            lang="de"
        }  {* no_bg bg-wite *}
        
        <!-- BLOCK FEATURES -->
        {include file='../includes/content/country/block-features-mobile-spy-de.tpl'}

        <!-- BLOCK PRICING -->
        <div class="dark c-f-border-top box-price-premium-v1">
            <div class="container">

                <div class="row">
                    <div class="col-lg-10 col-lg-offset-1">
                        <div class="row">
                            <div class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 pt20">
                                {*ANDROID BUY BLOCK*}
                                <h2 class="text-center">Android Entscheidung</h2>
                                <table class="tb_pricing table-bordered pricing-second">
                                    <thead>
                                    <tr>
                                        <th>
                                            <div class="basic_wr">
                                                <div class="basic_h">
                                                    Basic
                                                </div>
                                                <div class="priceb">
                                                    <div class="wrapper_pack clearfix"  style="margin-top: 0;">
                                                        <div class="wr_pack_basic android_basic_pack _single-pack-android-basic"></div>
                                                        <div class="wr_pack_double_basic android_basic_pack2 _double-pack-android-basic"></div>
                                                        <div class="wr_price_big">
                                                            <span></span><div class="box-currence"><div class="symbol" attr-iso="usd">$</div><div class="curr andr-basic-price-per-month">{$defaultAndriodBasicPrice}</div></div><span> / Monat</span>
                                                        </div>
                                                    </div>
                                                    <div class="list_price">
                                                        <form name="price_basic" method="POST" action="/buy.html" class="buy-form-with-offer" autocomplete="off">

                                                            <input id='product_price_basic' type='hidden' name='price[productID]' value="{$defaultAndriodBasic}" class="product_price" />
                                                            <ul>
                                                                {foreach from=$getProducts.androidBasic key=key item=item}
                                                                    <li>
                                                                        <label class="label_radio hover_label_radio {if $item.period == '12'}r_on{else}r_off{/if}">
                                                                            <input class="data-price" data-target=".andr-basic-price-per-month" data-cur="usd" data-price-usd="{$item.price}" data-offer-price-usd="{$getProducts.androidBasicDouble[$key].price}" data-period="{$item.period}" data-product="{$item.id}" data-offer-product="{$getProducts.androidBasicDouble[$key].id}" data-group="android-basic"  name="optionsRadios" id="optionsRadios{$item.id}1" value="{$item.id}" type="radio"{if $item.period == '12'} checked="checked"{/if} />
                                                                            <span class="sp">
                                                                            <strong>{$item.period}</strong> {if $item.period == 1}Monat{else}Monate{/if}
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
                                                            <div class="double_offer checkbox">
                                                                <label>
                                                                    <input type="checkbox" data-group="android-basic" name="android-40off">
                                                                    Erhalten Sie das 2. Paket mit <br><span>40% Rabatt!</span>
                                                                </label>
                                                            </div>
                                                            <button class="btn btn-default ga-action-click"
                                                                    ga-action ="click"
                                                                    ga-category="store"
                                                                    ga-label="buy android basic"
                                                                    value="true" type="submit" name="price[submit]">Jetzt kaufen</button>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="premium_wr">
                                                <div class="premium_h">
                                                    Premium
                                                </div>
                                                <div class="pricep">
                                                    <div class="wrapper_pack clearfix" style="margin-top: 0;">
                                                        <div class="wr_pack_premium android_prem_pack _single-pack-android-prem"></div>
                                                        <div class="wr_pack_double_premium android_prem_pack2 _double-pack-android-prem"></div>
                                                        <div class="wr_price_big">
                                                            <span></span><div class="box-currence"><div class="symbol" attr-iso="usd">$</div><div class="curr andr-premium-price-per-month">{$defaultAndroidPremiumPrice}</div></div><span>/ Monat</span>
                                                        </div>
                                                    </div>
                                                    <div class="list_price">
                                                        <form name="price_premium" method="POST" action="/buy.html" class="buy-form-with-offer" autocomplete="off">
                                                            <input id='product_price_premium' type='hidden' name='price[productID]' value='{if isset($getDefaultAndroidPremium)}{$getDefaultAndroidPremium}{else}0{/if}' class="product_price"/>

                                                            <ul>
                                                                {foreach from=$getProducts.androidPremium key=key item=item}
                                                                    <li>
                                                                        <label class="label_radio hover_label_radio {if $item.period == '12'}r_on{else}r_off{/if}">
                                                                            <input class="data-price" data-target=".andr-premium-price-per-month" data-cur="usd" data-price-usd="{$item.price}" data-offer-price-usd="{$getProducts.androidPremiumDouble[$key].price}" data-period="{$item.period}" data-product="{$item.id}" data-offer-product="{$getProducts.androidPremiumDouble[$key].id}" data-group="android-prem"  name="optionsRadios" id="optionsRadios{$item.id}1" value="{$item.id}" type="radio"{if $item.period == '12'} checked="checked"{/if} />
                                                                            <span class="sp">
                                                                            <strong>{$item.period}</strong> {if $item.period == 1}Monat{else}Monate{/if}
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
                                                            <div class="double_offer checkbox">

                                                                <label>
                                                                    <input type="checkbox" data-group="android-prem" name="android-40off">
                                                                    Erhalten Sie das 2. Paket mit <br><span>40% Rabatt!</span>
                                                                </label>
                                                            </div>
                                                            <button class="btn btn-default ga-action-click"
                                                                    ga-action ="click"
                                                                    ga-category="store"
                                                                    ga-label="buy android premium"
                                                                    value="true" type="submit" name="price[submit]">Jetzt kaufen</button>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </th>
                                    </tr>

                                    <tr>
                                        <th>
                                            <div class="table_header text-transform-none text-center">
                                                <div id="list-price-phones" class="wr_support_new_os">
                                                    <i class="fa fa-android d_green"></i> Android {$ver_android_bot} - {$ver_android_up}
                                                </div>
                                            </div>
                                        </th>
                                    </tr>


                                    </thead>
                                </table>

                                <div class="space_line">&nbsp;</div>

                                <div class="link_circle_italic2">
                                    <div class="style-links2">
                                        <span class="circle_ico2"></span>
                                        <label>Manche Überwachungsfunktionen benötigen rooting Android Geräte. Bitte werfen Sie einen Blick in die oben stehende Tabelle und denken Sie sorgfältig über die einzelnen Möglichkeiten nach. Bitte beachten Sie auch, dass die Pumpic App auf den Zielgeräten sichtbar ist. Gleichzeitig ist sie mit einem geheimen Schlüssel gesichert und kann ohne Erlaubnis weder gelöscht noch angepasst werden.</label>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        {include file='../includes/content/ipad.tpl'
                hook="ipad"
                blockBg="light"
                imgUrl = "parental_control/ipad.png"
                imgAlt = "Android"
                title = "Leicht zu bedienendes Control Panel"
                textAlign = "left"
                description="Im Control Panel können Sie nicht nur die Informationen einsehen, sondern auch mit Handy Spion Einschränkungen einrichten, ohne Zustimmung Handy orten und spezifische Aktivitäten blockieren."
                lang="de"
                language="en"

                showDemo="false"
                showStore="false"
        }
        
        <!-- FOOTER -->
        {*
            Template: FOOTER
            Переменные:
                our_products (text): Включить выключить блок OUR PRODUCTS (no|yes). * - yes 
        *}
        {include file='../includes/country/main-footer.tpl'
            lang="de"
        }
                
    </div>
       
    {include file='../includes/main/main-analytics-footer.tpl'}



</body>
</html>