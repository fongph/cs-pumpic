{assign 'showVisitStore' 'true'}
{assign 'showViewDemo' 'true'}
{assign 'showFreeTrial' 'false'}

{if isset($showDemo)}{assign 'showViewDemo' $showDemo}{/if}
{if isset($showStore)}{assign 'showVisitStore' $showStore}{/if}

<div {if isset($hook)}id="{$hook}"{/if}  class="{if isset($blockBg)}{$blockBg}{else}dark{/if}">
    <div class="container">
            <div class="row">
                    <div class="col-sm-5 col-md-5 col-lg-5 col-sm-offset-1 col-md-offset-1 col-lg-offset-1">
                        {if !isset($paginations) || (isset($paginations) && $paginations == 'yes')}
                           <!-- slider TAB -->
                            <div id="boxSlider" class="padding-null boxes-slider {*col-s-sm-10 col-xs-sm-8 col-sm-11 col-md-12 col-lg-12*} model-center">
                                <div class="blockSlider">
                                    <div class="slider-ipad">
                                        
                                        {for $foo=1 to 9}
                                        <!-- #{$foo} -->    
                                        <div class="slide">
                                            <div class="bgIpad {if isset($bgTab)}{$bgTab}{else}bgAndroid{/if}">
                                                <img src="{$img}/slider_home/{$foo}.jpg" alt="{if isset($imgAlt)}{$imgAlt}{else}{/if}">
                                            </div>
                                        </div>
                                        {/for} 
                                        
                                    </div>
                                </div>
                                <!-- navigation -->
                                <div id="slider-next"></div>
                                <div id="slider-prev"></div> 
                            </div>   

                            <!-- End --> 
                            
                        {else}
                           <div class="text-center relative_box">
                                    <img src="{$img}/{$imgUrl}" alt="{$imgAlt}" class="ipad-pic">
                            </div>
                        {/if}  
                    </div>
                    <div class="col-sm-5 col-md-5 col-lg-5">
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
                                               class="btn-orange featured-link link-hl ga-action-click"
                                               target="_blank"
                                                ga-action ="click"
                                                ga-category="demo link"
                                                ga-label="body">Live Demo{*<i class="icon-angle-double-right"></i>*}</a>
                                        </li>
                                        {/if}
                                        {if $showVisitStore eq "true"}
                                        <li>
                                            <a href="/store.html"
                                               class="btn-fix-red{*btn-green*} ga-action-click"
                                                ga-action ="click"
                                                ga-category="store link"
                                                ga-label="body"
                                               >Visit Store</a>
                                        </li>
                                        {/if}
                                        {if $showFreeTrial eq "true"}
                                        <li>
                                            <a href="/free-trial.html"
                                                class="btn btn-yellow ga-action-click"
                                                ga-action ="click"
                                                ga-category="free trial"
                                                ga-label="body"
                                               >Free Trial</a>
                                        </li>
                                        {/if}
                                    </ul>
                            </div>
                    </div>
            </div>
    </div>
</div>