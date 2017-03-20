{include file='../includes/main/main-header.tpl'
    title="Rastreador de celular | Pumpic"
    description="Pumpic rastreador de celular. Espiao movel e compativel com todos os dispositivos IOS e Android."
}    
    
<body>
<style>
ium_wr .pricep {
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
    
    <div class="wrapper block-free-trial b-p-countries page-espiao">
        <!-- TOP MENU -->

	{include file='../includes/country/main-top-menu.tpl'
            lang="bra"
            topmenu_active='home'
            cache_id = "includes_main_main-top-menu"
            nocache
        }
        


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
            title = "App de Monitoramento Móvel <br />para Apple iOS e Android <br />Smartphones e Tablets"
            fz="32"
            classTitle="c-lh-h1-title"
            description = "Rastreia ligações, mensagens de texto, localizações e atividades online.<br />Mantenha seus olhos abertos. Agora disponível no Brasil."
            promoBuyBlock = "no"
            planPackageBuy = "yes"
            planPackageBuyType = "link"
            planPackageBuyClass = "anchor-menu-fly"
            planPackageBuyUrl = "#store"
            block_video = "no"
            block_video_src = ""

            language="bra"
        } {* bottom *}


        <!-- BLOCK TITLE -->
        {include file='../includes/content/country/title.tpl'
        hook="icloud-spy"
        blockBg="light"
        icon="true"
        iconName="cloud"
        title="Espião iCloud"
        }

        <!-- BLOCK HOW-IT-WORK -->
        {include file='../includes/content/country/how-it-work-bra_2.tpl'
        blockBg="dark"
        version = "icloud"
        }

        <!-- BLOCK COMPATIBILITY -->
        <div id="compatibility-table" class="light b-c-table-bra">
            <div class="container"><h2 class="text-center">Compatibilidade</h2>
                <div class="row">
                    <div class="block-only-item col-md-4 col-lg-4 model-center">
                        <div class="">
                            <div id="block-compatibility-table" class="ios-table">
                                <div class="table-header">
                                    <section><span class="title"> <i class="fa fa-apple"></i> iOS (iCloud)</span>
                                    </section>
                                </div>
                                <div class="table-body">
                                    <div class="text-center"><p style="">A senha do iCloud é necessária para esta
                                            instalação</p></div>
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
        {include file='../includes/content/country/block-features-icloud-spy-bra.tpl'
        title="Recursos"
        }

        <!-- BLOCK PRICING -->
        <div class="dark c-f-border-top box-price-premium-v2" id="store">
            <div class="container">

                <div class="row">
                    <div class="col-lg-10 col-lg-offset-1">
                        <div class="row">
                            <div class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 pt20">
                                <h2 class="text-center">iCloud solução</h2>
                                <table class="tb_pricing table-bordered pricing-second">
                                    <thead>
                                    <tr>
                                        <th>
                                            <div class="basic_wr row-pricing-panel w100 icloud-box">
                                                <div class="priceb border-none">
                                                    <div class="buy-wrapper">
                                                        <div class="wrapper_pack clearfix">
                                                            <div class="wr_pack_premium wr_icloud _single-pack-icloud"></div>
                                                            {*<div class="wr_pack_double_premium wr_icloud-double _double-pack-icloud"></div>*}
                                                            <div class="wr_price_big">
                                                                <span></span><div class="box-currence"><div class="symbol" attr-iso="usd">$</div><div class="curr icloud-price-per-month" >{$defaultIosiCloudPrice}</div></div><span>/ mês</span>
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
                                                                            <strong>{$item.period}</strong> {if $item.period == 1}mês{else}meses{/if}
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
                                                                        value="true" type="submit" name="price[submit]">Comprar Agora</button>
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
                                        <label>O login e senha do iCloud no dispositivo pretendido são necessários para a instalação. O acesso físico pode ser necessário para alterar as configurações (ative o iCloud Backup). O monitoramento do iCloud é invisível no dispositivo pretendido.</label>
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
            title="Espião Móvel"
        }

        <!-- BLOCK HOW-IT-WORK -->
        {include file='../includes/content/country/how-it-work-bra.tpl'
                blockBg="dark"
        }
        
        <!-- BLOCK COMPATIBILITY -->
        {include file='../includes/content/compatibility/compatibility-table.tpl'
            title="Compatibilidade"
            lang="bra"
            onlyItem="android"
            blockBg="light" 
        }  {* no_bg bg-wite *}
        
        <!-- BLOCK FEATURES -->
        {include file='../includes/content/country/block-features-mobile-spy-bra.tpl'
            title="Recursos"
        }
        
        <!-- BLOCK PRICING -->
        <div class="dark c-f-border-top box-price-premium-v1">
            <div class="container">
                
                <div class="row">
                    <div class="col-lg-10 col-lg-offset-1">
                        <div class="row">
                            <div class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 pt20">
                                {*ANDROID BUY BLOCK*}
                                <h2 class="text-center">Android solução</h2>
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
                                                            {*<div class="wr_pack_double_basic android_basic_pack2 _double-pack-android-basic"></div>*}
                                                            <div class="wr_price_big">
                                                                <span></span><div class="box-currence"><div class="symbol" attr-iso="usd">$</div><div class="curr andr-basic-price-per-month">{$defaultAndriodBasicPrice}</div></div><span> / mês</span>
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
                                                                            <strong>{$item.period}</strong> {if $item.period == 1}mês{else}meses{/if}
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
                                                                        value="true" type="submit" name="price[submit]">Comprar Agora</button>
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
                                                            {*<div class="wr_pack_double_premium android_prem_pack2 _double-pack-android-prem"></div>*}
                                                            <div class="wr_price_big">
                                                                <span></span><div class="box-currence"><div class="symbol" attr-iso="usd">$</div><div class="curr andr-premium-price-per-month">{$defaultAndroidPremiumPrice}</div></div><span>/ mês</span>
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
                                                                            <strong>{$item.period}</strong> {if $item.period == 1}mês{else}meses{/if}
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
                                                                        value="true" type="submit" name="price[submit]">Comprar Agora</button>
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
                                        <label>Alguns recursos de monitoramento requerem acesso de root do Android. Por favor verifique a tabela acima e considere cada opção com cuidado. Note que o app Pumpic fica visível nos dispositivos onde serão instalados. Porém ele é protegido com uma chave secreta e não pode ser excluído ou modificado sem a sua permissão.</label>
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
                title = "Painel de Controle Fácil de Usar"
                description="Logo após instalar o Pumpic, todos os dados do dispositivo pretendido serão enviados para o seu Painel de Controle. Eles podem ser acessados de qualquer navegador e de qualquer dispositivo, incluindo PCs, smartphones e tablets. No Painel de Controle, você pode não só ver as informações mas também definir restrições e bloquear algumas atividades."
                textAlign = "left"
                lang="bra"
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
            lang="bra"
        }
                
    </div>
       
    {include file='../includes/main/main-analytics-footer.tpl'}

    <style>

        .basic_wr .priceb{
            margin-top: 0;
        }

    </style>


</body>
</html>