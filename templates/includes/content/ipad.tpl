{assign 'showVisitStore' 'true'}
{assign 'showViewDemo' 'true'}
{assign 'showFreeTrial' 'false'}

<div class="{if $blockBg}{$blockBg}{else}dark{/if}">
    <div class="container">
            <div class="row">
                    <div class="col-sm-5 col-md-5 col-lg-5 col-sm-offset-1 col-md-offset-1 col-lg-offset-1">
                            <div class="text-center relative_box">
                                    <img src="{$img}/{$imgUrl}" alt="{$imgAlt}" class="ipad-pic">
                            </div>
                    </div>
                    <div class="col-sm-5 col-md-5 col-lg-5">
                            <div class="ipad-text">
                                    <h2 class="{if $textAlign == "left"}text-left{elseif $textAlign == "center"}text-center{elseif $textAlign == "right"}text-right{/if}">{if $title}{$title}{else}Easy-to-Use Control Panel{/if}</h2>
                                    <p>
                                        {if $description}
                                            {$description}
                                        {else}    
                                        Try Control Panel demo to see Pumpic for Android in use.
                                        <br />
                                        Buy Pumpic to keep your kids safe and secured right now.
                                        {/if}
                                    </p>
                                    <ul>
                                        {if $showViewDemo eq "true"}
                                        <li>
                                            <a href="http://demo.{$domain}/setDevice/125?redirect_url=cp/calls"
                                               class="btn-orange featured-link link-hl ga-action-click"
                                                ga-action ="click"
                                                ga-category="demo link"
                                                ga-label="body">Live Demo{*<i class="icon-angle-double-right"></i>*}</a>
                                        </li>
                                        {/if}
                                        {if $showVisitStore eq "true"}
                                        <li>
                                            <a href="http://{$domain}/store.html" 
                                               class="btn-fix-red{*btn-green*} ga-action-click"
                                                ga-action ="click"
                                                ga-category="store link"
                                                ga-label="body"
                                               >Visit Store</a>
                                        </li>
                                        {/if}
                                        {if $showFreeTrial eq "true"}
                                        <li>
                                            <a href="http://{$domain}/free-trial.html"
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