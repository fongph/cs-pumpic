{if isset($visible) && $visible == "true"}
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
                                        $3<sup>33</sup>/<sub>month</sub> 
                                </div>
                                <a href="/store.html" 
                                   class="btn btn-default ga-action-click" 
                                   id="plans-block-buy-basic"
                                   ga-action ="click"
                                   ga-category="buy basic"
                                   ga-label="prices"
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
                                        $13<sup>33</sup>/<sub>month</sub> 
                                </div>
                                <a href="/store.html" 
                                   class="btn btn-default ga-action-click" 
                                   id="plans-block-buy-premium"
                                   ga-action ="click"
                                   ga-category="buy premium"
                                   ga-label="prices"
                                   >Buy Premium</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            {include file='../main/main-plans-links.tpl'} 
        </div>
    </div>
</div>
{/if}        
