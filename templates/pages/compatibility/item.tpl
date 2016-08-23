{strip}
{include file='../../includes/main/header/wrap-title-header.tpl'}


<title>{$getSetting.title}</title>
<meta name="description" content="{$getSetting.description}" />

{if isset($getSetting._item.custom_text) && empty($getSetting._item.custom_text)}
    <meta name="robots" content="noindex,nofollow" />
{/if}

{include file='../../includes/main/header/wrap-title-footer.tpl'}
<body>
    <!-- BLOCK GTM -->
    {include file='../../includes/main/main-after-body.tpl'}
    <!-- END BLOCK GTM -->

        <!-- FLY BLOCKS -->
    {include file='../../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->

	<div class="wrapper">
	{include file='../../includes/main/main-top-menu.tpl'
                topmenu_active="compatibility"
                show_control_panel_link="1"
        }



        {*
            Template: PHONE
            Переменные:
                style (text): стиль блока Phone (blue|black). * - blue
        *}
        {include file='../../includes/content/phone/block-phone.tpl'
                 style="black"
        }

        <div class="very_easy">
            <div class="container">
                <div class="row">
                    <div class="col-lg-10 col-lg-offset-1">
                        <div class="row">
                            <div class="h2 text-center">Compatibility</div>
                        </div>

                        <!-- #log -->
                        <div class="row">
                            <div id="log"></div>
                        </div>
                        <!-- end -->

                        {if $getSetting._item.os  == "Android"}
                            <style>
                                .icon-icloud, .icloud-compatibility {
                                    display: none;
                                }
                            </style>
                        {/if}

                        {if $getSetting._item}
                            <!-- item device -->
                            <div class="row">
                                {if $getSetting._item.alies}
                                <div class="breadcrumbs col-lg-12">
                                    <div class="h4">
                                        <a class="underline" href="http://{$domain}/compatibility/">Compatibility</a>
                                        <span class="arrows icon-right-open"></span>
                                    </div>
                                    <h1 class='h3'>
                                        {$getSetting._item.name}
                                        {*<a href="http://{$domain}/compatibility/{$getSetting._item.alies}/">{$getSetting._item.name}</a>*}
                                    </h1>
                                </div>
                                {/if}
                                <div class="col-sm-4 col-md-4">
                                    <div class="thumbnail">

                                        <div class="img_thumb">
                                            <img src="http://{$getSetting.api._domain}/{$getSetting.api.path_img}/{$getSetting._item.m_img}" height="202" width="90" alt="">
                                        </div>

                                        <div class="caption init-height">
                                            <section class="text-center">

                                            <span>OS: <strong>{if $getSetting._item.os  == "iOS"}iOS (with jailbreak) {else}{$getSetting._item.os}{/if} </strong></span>
                                            <span>Versions:<strong> {$getSetting._item.version}</strong></span>

                                            </section>


                                            {if $getSetting._item.os  == "iOS"}
                                                {if $getSetting._item.name  == "Apple iPhone 4"}
                                                    <section class="text-center" style="padding-top: 7px">
                                                        <span>OS: <strong>{if $getSetting._item.os  == "iOS"}iOS iCloud {else}{$getSetting._item.os}{/if} </strong></span>
                                                        <span>Versions:<strong> {$ver_icloud_bot} - 7.1.2 </strong></span>
                                                    </section>

                                                    {elseif $getSetting._item.name  == "Apple iPhone 3GS" || $getSetting._item.name  == "Apple iPod touch 4th"}

                                                    <section class="text-center" style="padding-top: 7px">
                                                        <span>OS: <strong>{if $getSetting._item.os  == "iOS"}iOS iCloud {else}{$getSetting._item.os}{/if} </strong></span>
                                                        <span>Versions:<strong> {$ver_icloud_bot} - 6.1.6 </strong></span>
                                                    </section>

                                                        {else}

                                                    <section class="text-center" style="padding-top: 7px">
                                                        <span>OS: <strong>{if $getSetting._item.os  == "iOS"}iOS iCloud {else}{$getSetting._item.os}{/if} </strong></span>
                                                        <span>Versions:<strong> {$ver_icloud_bot} - {$ver_icloud_up}</strong></span>
                                                    </section>
                                                {/if}
                                            {/if}
                                        </div>
                                        <div class="text-center">
                                          <p class="thumpnail_info">
                                            Have a look at the data you will be able to monitor on your
                                            {if $getSetting._item.os == "iOS"} jailbroken {$getSetting._item.name}.
                                            {else if $getSetting._item.os == "Android"} rooted {$getSetting._item.name}.
                                            {/if}
                                          </p>
                                          <a href="http://demo.{$domain}/setDevice/125?redirect_url=cp/calls"
                                             style="margin-bottom:10px;"
                                             class="btn btn-lg btn-orange text-center ga-action-click"
                                             target="_blank"
                                              ga-action ="click"
                                              ga-category="compatibility"
                                              ga-label="demo">Live Demo{*<i class="icon-angle-double-right"></i>*}</a>
                                          <p class="thumpnail_info">
                                            Get the Pumpic app right now. Enjoy its benefits at once.
                                          </p>
                                          <a  href="/store.html"
                                           class="btn btn-default ga-action-click"
                                           ga-action="click"
                                           ga-category="compatibility"
                                           ga-label="store">Buy Pumpic</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-8 col-md-8 table-resp">
                                    {foreach from=$getSetting._item.features key=name item=params}
                                        <ul class="{if $getSetting._item.features|@count < 5}option_list w25p{else}option_list{/if}">

                                            <li>
                                                <span>{$name}</span>
                                                <ul>
                                                    {foreach from=$params key=alies item=value}
                                                        {*if $value*}
                                                            <li class="mobile_tooltip" title="{$value}"> {$alies}</li>
                                                        {*/if*}
                                                    {/foreach}
                                                </ul>
                                            </li>
                                        </ul>
                                    {/foreach}
                                </div>
                            </div>

                            <div class="container">
                                    <div class="col-lg-10">
                                            <div class="row">
                                                <div class="form" style="margin-bottom:40px;">
                                                  {nocache}
                                                  {include file='../../includes/main/form/main-compatibility-send-find-phone.tpl'
                                                  cache_id = "main-compatibility-send-find-phone"
                                                  inputHidden = "true" }
                                                  {/nocache}
                                                </div>
                                            </div>
                                    </div>
                            </div>
                          </div>
                        </div>
                      </div>


                          <div class="container">
                            <div class="col-lg-10 col-lg-offset-1">
                              <div class="row">

                                {if $getSetting._item.custom_text}
                                <div class="row block_custom_text">
                                  <div class="col-lg-12">
                                    <div class="blockquate_bottom">{$getSetting._item.custom_text}</div>
                                  </div>
                                </div>
                                {/if}

                                {/if}
                                <!-- end -->
                              </div>
                            </div>
                          </div>
                </div>
                {include file='../../includes/content/add-resources.tpl'}

            </div>
            {*include file='../../includes/compatibility-footer-promo.tpl' model=$compatibilityDeviceUri*}

            {*include file='../../includes/main-footer-promo.tpl'*}

        </div>
        {*{include file='../../includes/content/banners/banner-promo-trial.tpl'}*}

        {include file='../../includes/content/banners/index.tpl'}

        <!-- RECOMMENDED -->
        {*
            Template: RECOMMENDED
        *}
        {include file='../../includes/main/main-recommended.tpl'}

                <!-- FOOTER -->
                {*
                    Template: FOOTER
                    Переменные:
                        our_products (text): Включить выключить блок OUR PRODUCTS (no|yes). * - yes
                *}
                {include file='../../includes/main/main-footer.tpl'
                    _popUp= '../../includes/main-popUp.tpl'
                }

	</div>
	{include file='../../includes/main/main-analytics-footer.tpl'}
</body>
</html>
{/strip}
