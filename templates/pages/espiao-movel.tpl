{include file='../includes/main/main-header.tpl'
    robots="yes" 
    title="Rastreador de celular | Pumpic"
    description="Pumpic rastreador de celular. Espiao movel e compativel com todos os dispositivos IOS e Android."
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
    
    <div class="wrapper block-free-trial b-p-countries page-espiao">
        <!-- TOP MENU -->

	{include file='../includes/country/main-top-menu.tpl'
            lang="bra"
            topmenu_active='home'
            cache_id = "includes_main_main-top-menu"
            nocache
        }
        

        <style>
            .page-espiao .visual-text p.header-info-descriptions {
                font-size: 14px;
            }
            .page-espiao #block-table-header tr, 
            .page-espiao #table-container tr {
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
            title = "App de Monitoramento Móvel <br />para Apple iOS e Android <br />Smartphones e Tablets"
            fz="32"
            classTitle="c-lh-h1-title"
            description = "Rastreia ligações, mensagens de texto, localizações e atividades online.<br />Mantenha seus olhos abertos. Agora disponível no Brasil."
            promoBuyBlock = "no"
            planPackageBuy = "yes"

            block_video = "no"
            block_video_src = ""

            language="bra"
        } {* bottom *}
        
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
            blockBg="light" 
        }  {* no_bg bg-wite *}
        
        <!-- BLOCK FEATURES -->
        {include file='../includes/content/country/block-features-mobile-spy-bra.tpl'
            title="Recursos"
        }
        
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
                                                        Preços
                                                    </div>
                                                    <div class="priceb border-none">
                                                        <div class="dtable">
                                                            <div class="dtable-cell text-center">
                                                                <div class="wr_pack">
                                                                    <img src="images/premium_pack.png">
                                                                </div>
                                                                <div class="wr_price_big">
                                                                    <span></span>
                                                                    <div class="box-currence">
                                                                        <div class="symbol" attr-iso="usd">$</div>
                                                                        <div class="curr premium-price-per-month">33.33</div>
                                                                    </div><span> / mês</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                                 
                                                        <div class="list_price">
                                                            <form name="price_premium" method="POST" action="/buy.html" class="buy-form" autocomplete="off">
                                                                <input id='product_price_premium' type='hidden' name='price[productID]' value='{if isset($getDefaultPremium)}{$getDefaultPremium}{else}0{/if}' class="product_price" />
                                                
                                                                <ul>
                                                                    {foreach from=$getProducts.premium key=key item=_item}
                                                                    <li class="">
                                                                        <label class="label_radio hover_label_radio r_off">
                                                                            <input class="data-price" data-parent="box-price-premium-v1" data-target=".premium-price-per-month" data-cur="usd" 
                                                                                   data-price-usd="{$_item.price}" data-group="premium" data-period="{$_item.period}" name="optionsRadios" id="optionsRadios{$_item.id}1" 
                                                                                   value="{$_item.id}" type="radio"  
                                                                                   {if $_item.period == '12'} checked="checked" {/if} />
                                                                            <span class="sp">
                                                                                <strong>
                                                                                    {$_item.period}
                                                                                </strong> {if $_item.period == 1}mês{else}meses{/if}
                                                                            </span>
                                                                             
                                                                            <div class="box-small-package"></div>
                                                                                
                                                                            <span class="sp_price">
                                                                                <strong>
                                                                                    <div class="box-currence"><div class="symbol" attr-iso="usd">$</div><div class="curr">{$_item.price}</div></div>
                                                                                </strong>
                                                                            </span>     
                                                                        </label>
                                                                    </li>
                                                                    {/foreach}
                                                                </ul>
                                                                <button class="btn btn-default ga-action-submit mb20"
                                                                        ga-action ="click"
                                                                        ga-category="icloud-iphone-without-jailbreak-monitoring"
                                                                        ga-label="buy premium"
                                                                        ga-page="/icloud-iphone-without-jailbreak-monitoring.html"
                                                                        value="true" type="submit" name="price[submit]">Comprar Agora</button>
                                                            </form>
                                                        </div>
                                                    </div>
                                                
                                                </div>
                                                
                                            </th>
                                        </tr>
                                        
                                        <tr>
                                            <th>
                                                <div class="refund_10 refund_bg">
                                                    <div class="wr_refund text-transform-none">
                                                        
                                                        <div class="day10"> 
                                                            <span class="d_green">Política de Reembolso de</span>
                                                            10 DIAS
                                                        </div>
                                                        
                                                    </div>
                                                </div>
                                                <div class="table_header text-transform-none text-center">
                                                    <div id="list-price-phones" class="wr_support_new_os">
                                                        <i class="icon-android d_green"></i> Android {$ver_android_bot} - {$ver_android_up}
                                                        <i class="icon-apple d_green"></i> iOS {$ver_ios_bot} - {$ver_jailbreak_up} (com jailbreak)
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
                                        <label>O Apple iOS requer que seja feito jailbreak antes da instalação. Alguns recursos de monitoramento requerem acesso de root do Android. Por favor verifique a tabela acima e considere cada opção com cuidado. Note que o app Pumpic fica visível nos dispositivos onde serão instalados. Porém ele é protegido com uma chave secreta e não pode ser excluído ou modificado sem a sua permissão.</label>
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
            title="Espião iCloud"
        } 
        
        <!-- BLOCK HOW-IT-WORK -->
        {include file='../includes/content/country/how-it-work-bra_2.tpl'
            blockBg="dark"
        } 
        
         <!-- BLOCK COMPATIBILITY -->
        {include file='../includes/content/compatibility/compatibility-table.tpl'
            title="Compatibilidade"
            versionIOS="iOS {$ver_icloud_bot} - {$ver_icloud_up}"
            androidText=""
            iosText="A senha do iCloud é necessária para esta instalação"
            blockBg="light" 
            onlyItem="ios"
            lang="bra"
        } 
        
        <!-- BLOCK FEATURES -->
        {include file='../includes/content/country/block-features-icloud-spy-bra.tpl'
            title="Recursos"
        }
        
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
                                                        Preço
                                                    </div>
                                                    <div class="priceb border-none">
                                                        <div class="dtable">
                                                            <div class="dtable-cell text-center">
                                                                <div class="wr_pack">
                                                                    <img src="images/premium_pack.png">
                                                                </div>
                                                                <div class="wr_price_big">
                                                                    <span></span>
                                                                    <div class="box-currence">
                                                                        <div class="symbol" attr-iso="usd">$</div>
                                                                        <div class="curr premium-price-per-month">{if isset($getDefaultPremiumMoth)}{$getDefaultPremiumMoth}{else}33.33{/if}</div>
                                                                    </div><span> / mês</span>
                                                                </div>
                                                            </div>
                                                        </div>        
                                                                 
                                                        <div class="list_price">
                                                            <form name="price_premium_bottom" method="POST" action="/buy.html" class="buy-form" autocomplete="off">
                                                                <input id='product_price_premium' type='hidden' name='price[productID]' value='{if isset($getDefaultPremium)}{$getDefaultPremium}{else}0{/if}' class="product_price" />
                                                
                                                                <ul>
                                                                    {foreach from=$getProducts.premium key=key item=_item}
                                                                    <li class="">
                                                                        <label class="label_radio hover_label_radio r_off">
                                                                            <input class="data-price" data-target=".premium-price-per-month" data-cur="usd" 
                                                                                   data-price-usd="{$_item.price}" data-parent="box-price-premium-v2" data-period="{$_item.period}" data-group="premium" name="optionsRadios" id="optionsRadios{$_item.id}1" 
                                                                                   value="{$_item.id}" type="radio"  
                                                                                   {if $_item.period == '12'} checked="checked" {/if} />
                                                                            <span class="sp">
                                                                                <strong>
                                                                                    {$_item.period}
                                                                                </strong> {if $_item.period == 1}mês{else}meses{/if}
                                                                            </span>
                                                                             
                                                                            <div class="box-small-package"></div>
                                                                                
                                                                            <span class="sp_price">
                                                                                <strong>
                                                                                    <div class="box-currence"><div class="symbol" attr-iso="usd">$</div><div class="curr">{$_item.price}</div></div>
                                                                                </strong>
                                                                            </span>     
                                                                        </label>
                                                                    </li>
                                                                    {/foreach}
                                                                </ul>
                                                                <button class="btn btn-default ga-action-submit mb20"
                                                                        ga-action ="click"
                                                                        ga-category="icloud-iphone-without-jailbreak-monitoring"
                                                                        ga-label="buy premium"
                                                                        ga-page="/icloud-iphone-without-jailbreak-monitoring.html"
                                                                        value="true" type="submit" name="price[submit]">Comprar Agora</button>
                                                            </form>
                                                        </div>
                                                    </div>
                                                
                                                </div>
                                                
                                            </th>
                                        </tr>
                                        
                                        <tr>
                                            <th>
                                                <div class="refund_10 refund_bg">
                                                    <div class="wr_refund text-transform-none">
                                                        <div class="day10"> 
                                                            <span class="d_green">Política de Reembolso de</span>
                                                            10 DIAS
                                                        </div>
                                                        {*<span class="d_green">Política de Reembolso de </span><div class="day10">10 DIAS</div>*}
                                                    </div>
                                                </div>
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
                                        <label>O login e senha do iCloud no dispositivo pretendido são necessários para a instalação. O acesso físico pode ser necessário para alterar as configurações (ative o iCloud Backup). O monitoramento do iCloud é invisível no dispositivo pretendido.</label>
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
    
</body>
</html>