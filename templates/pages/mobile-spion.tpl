{include file='../includes/main/main-header.tpl'
    robots="yes" 
    title="Mobile und iCloud Spion für iPhone und Android"
    description="Nach der Pumpic Installation werden sämtliche Daten des Zielgeräts and Ihr Control Panel gesendet. Dieses kann von Ihrem Browser oder jedem anderen Gerät, wie PCs, Smartphones und Tablets geöffnet werden. Im Control Panel können Sie nicht nur die Informationen einsehen, sondern auch Einschränkungen einrichten und spezifische Aktivitäten blockieren."
}    
    
<body>
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

            block_video = "no"
            block_video_src = ""

            language="de"
        } {* bottom *}
        
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
            lang="de"
        }  {* no_bg bg-wite *}
        
        <!-- BLOCK FEATURES -->
        {include file='../includes/content/country/block-features-mobile-spy-de.tpl'}

        <!-- BLOCK PRICING -->
        <div id="store" class="dark c-f-border-top box-price-premium-v1">
            <div class="container">

                <div class="row">
                    <div class="col-lg-10 col-lg-offset-1">
                        <div class="row">
                            <div class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 pt20">
                                <table class="tb_pricing table-bordered pricing-second">
                                    <thead>
                                    <tr>
                                        <th>
                                            <div class="basic_wr row-pricing-panel w100 icloud-box">
                                                <div class="basic_h text-transform-none">
                                                    Preise
                                                </div>
                                                <div class="priceb border-none">
                                                    <div class="dtable">
                                                        <div class="dtable-cell text-center">
                                                            <div class="wr_pack_premium"></div>
                                                            <div class="wr_pack_double_premium"></div>
                                                            <div class="wr_price_big">
                                                                <span></span>
                                                                <div class="box-currence">
                                                                    <div class="symbol" attr-iso="eur">€</div>
                                                                    <div class="curr premium-price-per-month">{if isset($getDefaultPremiumMoth)}{$getDefaultPremiumMoth}{else}6.99{/if}</div>
                                                                </div><span> / Monat</span>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="list_price">
                                                        <form name="price_premium" method="POST" action="/buy.html" class="buy-form-with-offer" autocomplete="off">
                                                            <input id='product_price_premium' type='hidden' name='price[productID]' value='{if isset($getDefaultPremium)}{$getDefaultPremium}{else}0{/if}' class="product_price" />

                                                            <ul>
                                                                {foreach from=$getProducts.premium key=key item=item}
                                                                <li class="">
                                                                    <label class="label_radio hover_label_radio {if $item.period == '12'}r_on{else}r_off{/if}">
                                                                        <input class="data-price" data-target=".premium-price-per-month" data-cur="usd" data-price-usd="{$item.price}" data-offer-price-usd="{$getProducts.premiumDouble[$key].price}" data-period="{$item.period}" data-product="{$item.id}" data-offer-product="{$getProducts.premiumDouble[$key].id}" data-group="premium"  name="optionsRadios" id="optionsRadios{$item.id}2" value="{$item.id}" type="radio"{if $item.period == '12'} checked="checked"{/if} />
                                                                        <span class="sp">
                                                                            <strong>{$item.period}</strong> {if $item.period == 1}Monat{else}Monate{/if}
                                                                        </span>

                                                                        <div class="box-small-package">
                                                                            <div class="offer_old_price"><div class="box-currence strike__currence"><div class="symbol" attr-iso="eur">€</div><div class="curr">{$item.price * 2|string_format:"%.2f"}</div></div></div>
                                                                        </div>

                                                                        <div class="package_price">
                                                                            <strong>
                                                                                <div class="box-currence"><div class="symbol" attr-iso="eur">€</div><div class="curr">{$item.price}</div></div>
                                                                            </strong>
                                                                        </div>
                                                                        <div class="package_offer_price">
                                                                            <strong>
                                                                                <div class="box-currence"><div class="symbol" attr-iso="eur">€</div><div class="curr">{$getProducts.premiumDouble[$key].price}</div></div>
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
                                                            <button class="btn btn-default ga-action-submit mb20"
                                                                    ga-action ="click"
                                                                    ga-category="icloud-iphone-without-jailbreak-monitoring"
                                                                    ga-label="buy premium"
                                                                    ga-page="/icloud-iphone-without-jailbreak-monitoring.html"
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
                                                {*<ul class="list-price-phones text-center">
                                                    <li><i class="icon-android"></i>Android 2.2 - 5.1</li>
                                                    <li><i class="icon-apple"></i>iOS 6.0 - 8.4 (with jailbreak)</li>
                                                </ul>*}
                                                <div id="list-price-phones" class="wr_support_new_os">
                                                    <i class="icon-android d_green"></i> Android {$ver_android_bot} - {$ver_android_up}
                                                    <i class="icon-apple d_green"></i> iOS {$ver_ios_bot} - {$ver_jailbreak_up} (mit Jailbreak)
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
                                        <label>Apple iOS erfordert einen Jailbreak vor der Installation. Manche Überwachungsfunktionen benötigen rooting Android Geräte. Bitte werfen Sie einen Blick in die oben stehende Tabelle und denken Sie sorgfältig über die einzelnen Möglichkeiten nach. Bitte beachten Sie auch, dass die Pumpic App auf den Zielgeräten sichtbar ist. Gleichzeitig ist sie mit einem geheimen Schlüssel gesichert und kann ohne Erlaubnis weder gelöscht noch angepasst werden.</label>
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
        
         <!-- BLOCK COMPATIBILITY -->
        {include file='../includes/content/compatibility/compatibility-table.tpl'
            title="Kompatibilität"
            versionIOS="iOS {$ver_icloud_bot} - {$ver_icloud_up}"
            androidText=""
            iosText="iCloud Passwort ist für die Installation notwendig"
            blockBg="light" 
            onlyItem="ios"
            lang="de"
        } 
        
        <!-- BLOCK FEATURES -->
        {include file='../includes/content/country/block-features-icloud-spy-de.tpl'}
        
        <!-- BLOCK PRICING -->
        <div class="dark c-f-border-top box-price-premium-v2">
            <div class="container">
                
                <div class="row">
                    <div class="col-lg-10 col-lg-offset-1">
                        <div class="row">
                            <div class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 pt20">
                                <table class="tb_pricing table-bordered pricing-second">
                                    <thead>
                                        <tr>
                                            <th>
                                                <div class="basic_wr row-pricing-panel w100 icloud-box">
                                                    <div class="basic_h text-transform-none">
                                                        Preise
                                                    </div>
                                                    <div class="priceb border-none">
                                                        <div class="dtable">
                                                            <div class="dtable-cell text-center">
                                                                <div class="wr_pack_premium"></div>
                                                                <div class="wr_pack_double_premium"></div>
                                                                <div class="wr_price_big">
                                                                    <span></span>
                                                                    <div class="box-currence">
                                                                        <div class="symbol" attr-iso="eur">€</div>
                                                                        <div class="curr premium-price-per-month">{if isset($getDefaultPremiumMoth)}{$getDefaultPremiumMoth}{else}6.99{/if}</div>
                                                                    </div><span> / Monat</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                       
                                                        <div class="list_price">
                                                            <form name="price_premium_bottom" method="POST" action="/buy.html" class="buy-form-with-offer" autocomplete="off">
                                                                <input id='product_price_premium' type='hidden' name='price[productID]' value='{if isset($getDefaultPremium)}{$getDefaultPremium}{else}0{/if}' class="product_price" />
                                                
                                                                <ul>
                                                                    {foreach from=$getProducts.premium key=key item=item}
                                                                    <li class="">
                                                                        <label class="label_radio hover_label_radio {if $item.period == '12'}r_on{else}r_off{/if}">
                                                                            <input class="data-price" data-target=".premium-price-per-month" data-cur="usd" data-price-usd="{$item.price}" data-offer-price-usd="{$getProducts.premiumDouble[$key].price}" data-period="{$item.period}" data-product="{$item.id}" data-offer-product="{$getProducts.premiumDouble[$key].id}" data-group="premium"  name="optionsRadios" id="optionsRadios{$item.id}2" value="{$item.id}" type="radio"{if $item.period == '12'} checked="checked"{/if} />
                                                                            <span class="sp">
                                                                                <strong>{$item.period}</strong> {if $item.period == 1}Monat{else}Monate{/if}
                                                                            </span>
                                                                             
                                                                            <div class="box-small-package">
                                                                                <div class="offer_old_price"><div class="box-currence strike__currence"><div class="symbol" attr-iso="eur">€</div><div class="curr">{$item.price * 2|string_format:"%.2f"}</div></div></div>
                                                                            </div>

                                                                            <div class="package_price">
                                                                                <strong>
                                                                                    <div class="box-currence"><div class="symbol" attr-iso="eur">€</div><div class="curr">{$item.price}</div></div>
                                                                                </strong>
                                                                            </div>
                                                                            <div class="package_offer_price">
                                                                                <strong>
                                                                                    <div class="box-currence"><div class="symbol" attr-iso="eur">€</div><div class="curr">{$getProducts.premiumDouble[$key].price}</div></div>
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
                                                                <button class="btn btn-default ga-action-submit mb20"
                                                                        ga-action ="click"
                                                                        ga-category="icloud-iphone-without-jailbreak-monitoring"
                                                                        ga-label="buy premium"
                                                                        ga-page="/icloud-iphone-without-jailbreak-monitoring.html"
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
                                                        <i class="icon-apple d_green"></i> iOS {$ver_icloud_bot} - {$ver_icloud_up}
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


    <style>

        .basic_wr .priceb{
            margin-top: 0;
        }

        .wr_pack_double_premium {
            margin: 25px 10px 0 20%;
        }

    </style>


</body>
</html>