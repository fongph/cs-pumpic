{include file='../includes/main/main-header.tpl'
title="Secure Parental Control Monitoring App | Pumpic"
description="Pumpic is a secure parental control app that protects your children from cyberbullying, adult content, online predators, and other threats. Keeping children safe is so easy with Pumpic!"
    langLinks='
    <link rel="alternate" hreflang="en" href="https://pumpic.com/parental-control-software.html" />
    <link rel="alternate" hreflang="de" href="https://pumpic.com/mobile-spion.html" />
    <link rel="alternate" hreflang="pt-br" href="https://pumpic.com/espiao-movel.html" />
    <link rel="alternate" hreflang="fr" href="https://pumpic.com/logiciel-de-controle-parental.html" />
'
}
{include file='../includes/main/header/store-checkout.tpl'}
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
    lang="en"
    hidden="yes"
    topmenu_active='home'
    cache_id = "includes_main_main-top-menu"
    nocache
    }



    <!-- BLOCK HEADER -->
    {include file='../includes/content/info/info-promo.tpl'
    infoBlockMobile="no"

    imgUrl = "header_banners/header-countries.png"
    imgAlt = "Landing Mobile"
    imgAlign = "left bottom-only-mobile"
    imgVerticalAlign = "center"
    textAlign = "left"
    title = "Mobile Monitoring App <br />for Apple iOS and Android <br />Smartphones and Tablets"
    fz="32"
    classTitle="c-lh-h1-title"
    description = "Track calls, texts, locations, and online activities.<br />Keep your eyes open. Now available worldwide."
    promoBuyBlock = "no"
    planPackageBuy = "yes"

    block_video = "no"
    block_video_src = ""

    language="en"
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
    {include file='../includes/content/country/how-it-work-en.tpl'
    blockBg="dark"
    }

    <!-- BLOCK COMPATIBILITY -->
    {include file='../includes/content/compatibility/compatibility-table.tpl'
    lang="en"
    blockBg="light"
    androidText = "<b>Rooting</b> is required to use some extended features"
    iosText = "<b>Jailbreak</b> is required before the installation"
    onlyItem = "android"

    }  {* no_bg bg-wite *}

    <!-- BLOCK FEATURES -->
    {include file='../includes/content/country/block-features-mobile-spy-en.tpl'
    title="Features"
    }

    <!-- BLOCK PRICING -->
    <div id="store" class="dark c-f-border-top">
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
                                                Pricing
                                            </div>
                                            <div class="priceb border-none">
                                                <div class="dtable">
                                                    <div class="dtable-cell text-center">
                                                        <div class="wr_pack_premium"></div>
                                                        <div class="wr_pack_double_premium"></div>
                                                        <div class="wr_price_big">
                                                            <span></span>
                                                            <div class="box-currence">
                                                                <div class="symbol" attr-iso="usd">$</div>
                                                                <div class="curr premium-price-per-month">6.99</div>
                                                            </div><span> / month</span>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="list_price">
                                                    <form name="price_premium" onsubmit="return false;" class="buy-form-with-offer" autocomplete="off">
                                                        <input id='product_price_premium' type='hidden' name='price[productID]' value='{if isset($defaultAndroidPremium)}{$defaultAndroidPremium}{else}0{/if}' class="product_price" />

                                                        <ul>
                                                            {foreach from=$getProducts.androidPremium key=key item=item}
                                                                <li>
                                                                    <label class="label_radio hover_label_radio {if $item.period == '12'}r_on{else}r_off{/if} ">
                                                                        <input class="data-price" data-target=".premium-price-per-month" data-cur="usd" data-price-usd="{$item.price}" data-offer-price-usd="{$getProducts.androidPremiumDouble[$key].price}" data-period="{$item.period}" data-product="{$item.path}" data-offer-product="{$getProducts.androidPremiumDouble[$key].id}" data-group="android-prem"  name="optionsRadios" id="optionsRadios{$item.id}1" value="{$item.id}" type="radio"{if $item.period == '12'} checked="checked"{/if} />
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
                                                        <button class="btn btn-default ga-action-submit"
                                                                ga-action ="click"
                                                                ga-category="parental-control-software"
                                                                ga-label="buy premium"
                                                                ga-page="/parental-control-software.html"
                                                                value="true" type="submit" name="price[submit]"
                                                                data-fsc-item-path-value="{$defaultAndroidPremiumPath}" onclick="buyOnClick(this);" data-fsc-action="Add,Checkout"
                                                        >Buy Now</button>
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
                                                <i class="icon-android d_green"></i> Android {$ver_android_bot} - {$ver_android_up}
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
                                    <label>Apple iOS requires jailbreaking before installation.  Some monitoring features require rooting Android devices. Please have a look at the table above and consider every option carefully. Note that the Pumpic app is visible on the target devices. At the same time, it is protected with a secret key and cannot be deleted or modified without your permission.</label>
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
    {include file='../includes/content/country/how-it-work-en_2.tpl'
    blockBg="dark"
    }

    {*<!-- BLOCK COMPATIBILITY -->*}
    {*{include file='../includes/content/compatibility/compatibility-table.tpl'*}
    {*title="Compatibility"*}
    {*versionIOS="iOS {$ver_icloud_bot} - {$ver_icloud_up}"*}
    {*androidText=""*}
    {*iosText="iCloud password is required for the installation"*}
    {*blockBg="light" *}
    {*onlyItem="ios"*}
    {*lang="bra"*}
    {*} *}
    {include file='../includes/content/compatibility/compatibility-table.tpl'
    blockBg="light"
    onlyItem="icloud"

    }

    <!-- BLOCK FEATURES -->
    {include file='../includes/content/country/block-features-icloud-spy-en.tpl'
    title="Features"
    }

    <!-- BLOCK PRICING -->
    <div class="dark c-f-border-top">
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
                                                Pricing
                                            </div>
                                            <div class="priceb border-none">
                                                <div class="dtable">
                                                    <div class="dtable-cell text-center">
                                                        <div class="wr_pack_premium wr_icloud _single-pack-icloud"></div>
                                                        <div class="wr_pack_double_premium"></div>
                                                        <div class="wr_price_big">
                                                            <span></span>
                                                            <div class="box-currence">
                                                                <div class="symbol" attr-iso="usd">$</div>
                                                                <div class="curr icloud-price-per-month">12.95</div>
                                                            </div><span> / month</span>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="list_price">
                                                    <form name="price_basic" onsubmit="return false;" class="buy-form-with-offer" autocomplete="off">
                                                        <input id='product_price_basic' type='hidden' name='price[productID]' value='{if isset($defaultIosiCloud)}{$defaultIosiCloud}{else}0{/if}' class="product_price" />

                                                        <ul>
                                                            {foreach from=$getProducts.iosiCloud key=key item=item}
                                                                <li>
                                                                    <label class="label_radio hover_label_radio {if $item.period == '6'}r_on{else}r_off{/if}">
                                                                        <input class="data-price" data-target=".icloud-price-per-month" data-cur="usd" data-price-usd="{$item.price}" data-offer-price-usd="{$getProducts.iosiCloudDouble[$key].price}" data-period="{$item.period}" data-product="{$item.path}" data-offer-product="{$getProducts.iosiCloudDouble[$key].id}" data-group="icloud"  name="optionsRadios" id="optionsRadios{$item.id}1" value="{$item.id}" type="radio"{if $item.period == '6'} checked="checked"{/if} />
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
                                                        <button class="btn btn-default ga-action-submit"
                                                                ga-action ="click"
                                                                ga-category="parental-control-software"
                                                                ga-label="buy icloud"
                                                                ga-page="/parental-control-software.html"
                                                                value="true" type="submit" name="price[submit]"
                                                                data-fsc-item-path-value="{$defaultIosiCloudPath}"
                                                                onclick="buyOnClick(this);"
                                                                data-fsc-action="Add,Checkout"
                                                        >Buy Now</button>
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
                                    <label>iCloud login and password of the target device are required for the installation. Physical access may be required to change device settings (turn iCloud Backup on). iCloud monitoring is invisible on the target device.</label>
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
    title = " Easy-to-Use Control Panel"
    description="Right after installing Pumpic, all the data from the target device will be sent to your Control Panel. It can be accessed from any browser and any device, including PCs, smartphones, and tablets. In Control Panel, you can not only view the information, but also set restrictions and block some of activities."
    textAlign = "left"
    lang="en"

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
    lang="en"
    }

</div>
<style>
    .basic_wr .priceb{
        margin-top: 0;
    }

    .wr_pack_double_premium {
        margin: 25px 10px 0 20%;
    }
</style>


{include file='../includes/main/main-analytics-footer.tpl'}
<script>
    $(document).ready(function () {

        $('input[data-period="12"]').closest('ul').find('label')
                .removeClass('r_on')
                .addClass('r_off');

        $('input[data-period="12"]').closest('ul').find('input')
                .removeAttr('checked');
        $('#product_price_premium').val($('input[data-period="12"]').val())

        $('input[data-period="12"]').attr('checked', 'checked');

        $('input[data-period="12"]').closest('label')
                .addClass('r_on')
                .removeClass('r_off');
    })

</script>
</body>
</html>