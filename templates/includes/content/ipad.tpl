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
                                    <h2>{if $title}{$title}{else}Easy-to-Use Control Panel{/if}</h2>
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
                                        <li>
                                            <a href="http://demo.{$domain}"
                                               class="featured-link link-hl ga-action-click"
                                                ga-action ="{$gaAction}"
                                                ga-category="{$gaDemoLinkCat}"
                                                ga-label="{$gaLabel}">View demo<i class="icon-angle-double-right"></i></a>
                                        </li>
                                        <li>
                                            <a class="btn btn-green ga-action-click"
                                                ga-action ="{$gaAction}"
                                                ga-category="{$gaStoreLinkCat}"
                                                ga-label="{$gaLabel}"
                                               >Visit Store</a>
                                        </li>
                                    </ul>
                            </div>
                    </div>
            </div>
    </div>
</div>