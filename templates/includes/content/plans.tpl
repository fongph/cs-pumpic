<div class="plans">
    <div class="container gutter-narrow">
        <div class="row">
            <div class="col-sm-7 col-md-7 col-lg-7 col-sm-offset-2 col-md-offset-2 col-lg-offset-2">
                <div class="row">
                    <div class="col-sm-4 col-md-4 col-lg-4">
                        <div class="panel panel_inverse">
                            <div class="panel-heading">
                                    BASIC
                            </div>
                            <div class="panel-body text-center">
                                <div class="price">
                                        $11<sup>66</sup>/<sub>month</sub> 
                                </div>
                                <a href="http://{$domain}/store.html" 
                                   class="btn btn-default ga-action-click" 
                                   id="plans-block-buy-basic"
                                   ga-action ="{$gaAction}"
                                   ga-category="{$gaBasicCat}"
                                   ga-label="{$gaLabel}"
                                   >Buy Basic</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-7 col-md-7 col-lg-7">
                        <div class="panel panel-bestvalue panel_inverse">
                            <div class="panel-heading">
                                    PREMIUM
                            </div>
                            <div class="panel-body text-center">
                                <div class="price">
                                        $33<sup>33</sup>/<sub>month</sub> 
                                </div>
                                <a href="http://{$domain}/store.html" 
                                   class="btn btn-default ga-action-click" 
                                   id="plans-block-buy-premium"
                                   ga-action ="{$gaAction}"
                                   ga-category="{$gaPremiumCat}"
                                   ga-label="{$gaLabel}"
                                   >Buy Premium</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            {if (isset($gaStoreLinkCat) 
                    || isset($gaDemoLinkCat)) 
                        && isset($gaAction) 
                            && isset($gaLabel)} 
                            
               {include file='../main/main-plans-links.tpl'
                        gaStoreLinkCat = $gaStoreLinkCat
                        gaDemoLinkCat = $gaDemoLinkCat
    
                        gaAction = $gaAction
                        gaLabel = $gaLabel
                }             
                            
            {else}
                {include file='../main/main-plans-links.tpl'
                        gaStoreLinkCat = "store link"
                        gaDemoLinkCat = "demo link"
    
                        gaAction = "click"
                        gaLabel = "prices"
                }
            {/if}   
        </div>
    </div>
</div>