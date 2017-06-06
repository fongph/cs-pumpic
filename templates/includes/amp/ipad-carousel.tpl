{assign 'showVisitStore' 'true'}
{assign 'showViewDemo' 'true'}
{assign 'showFreeTrial' 'false'}

{if isset($showDemo)}{assign 'showViewDemo' $showDemo}{/if}
{if isset($showStore)}{assign 'showVisitStore' $showStore}{/if}

            <div class="col-sm-12 {if isset($theme)}{$theme}{else}dark{/if}">
                    <!-- slider TAB -->
                    <div class=" ipad-frame boxes-slider model-center">
                        <div class="blockSlider text-center">
                            <amp-carousel width="315"
                                          height="230"
                                          layout="responsive"
                                          controls
                                          type="slides">
                                {for $foo=1 to 9}
                                    <!-- #{$foo} -->
                                    <amp-img src="{$img}/slider_home/{$foo}.jpg"
                                             width="315"
                                             height="230"
                                             layout="responsive"
                                             alt="{if isset($imgAlt)}{$imgAlt}{else}{/if}"></amp-img>
                                {/for}
                            </amp-carousel>
                        </div>
                    </div>


                <div class="ipad-text">
                    <h2 class="{if $textAlign == "left"}text-left{elseif $textAlign == "center"}text-center{elseif $textAlign == "right"}text-right{/if}">
                        {if $title}{$title}{else}Easy-to-Use Control Panel{/if}
                    </h2>
                    {if isset($language)}
                        <div class="block-language">
                            {if isset($lang) && $lang == "de"}
                                <label class="left">Control Panel auf Englisch</label><i class="lang-icon-{$language} right"></i>
                            {elseif isset($lang) && $lang == "bra"}
                                <label class="left">Painel de Controle em Inglês</label><i class="lang-icon-{$language} right"></i>                                                     {elseif isset($lang) && $lang == "fra"}
                                <label class="left">Panneau de Contrôle en Anglais</label><i class="lang-icon-{$language} right"></i>
                            {else}
                                <label class="left">Control Panel in English</label><i class="lang-icon-{$language} right"></i>
                            {/if}

                        </div>
                    {/if}
                    <p>
                        {if isset($description)}
                            {$description}
                        {else}
                            {*Try Control Panel demo to see Pumpic for Android in use.
                            <br />
                            Buy Pumpic to keep your kids safe and secured right now.*}

                            Right after installing Pumpic, all the data from the target mobile phone will be sent to your Control Panel. It can be accessed from any browser and any device, including PCs, smartphones and tablets. In Control Panel, you can not only view the information, but also set restrictions and block some of activities.

                        {/if}
                    </p>
                    <ul>
                        {if $showViewDemo eq "true"}
                            <li>
                                <a href="{$schema}demo.{$domain}/setDevice/125?redirect_url=cp/calls"
                                   class="btn-orange featured-link link-hl"
                                   id="carousel-demo-link"
                                   target="_blank">
                                Live Demo{*<i class="icon-angle-double-right"></i>*}</a>
                            </li>
                        {/if}
                        {if $showVisitStore eq "true"}
                            <li>
                                <a href="/store.html"
                                   class="btn-fix-red{*btn-green*}"
                                   id="carousel-store-link"
                                >Visit Store</a>
                            </li>
                        {/if}
                        {if $showFreeTrial eq "true"}
                            <li>
                                <a href="/free-trial.html"
                                   class="btn btn-yellow"
                                   id="carousel-trial-link"
                                >Free Trial</a>
                            </li>
                        {/if}
                    </ul>

                </div>
            </div>