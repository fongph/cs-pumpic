{*<!-- banner3 -->
<div class="promo promo-blue">
    <div class="container">
        <div class="row">
            <div class="small-banner col-lg-offset-1">
                <div id="promo-item">
                    <img src="{$img}/parental_control/banner_promo_v3.png" 
                         class="visible-promo-blue-lg" 
                         height="150" 
                         width="270" 
                         alt="">
                </div>
                <div id="promo-item" class="col-sm-4 col-md-4 col-lg-4">
                    <div>
                        {if $title}
                            {$title}
                        {else}    
                            <span class='uppercase'>Try <i class='text-yellow'>7 days</i></span> <i class='text-yellow'>free</i> trial
                        {/if}
                    </div>
                </div>
                <div id="promo-item" class="col-sm-2 col-md-2 col-lg-2">
                    <a href="http://demo.{$domain}" 
                       class="btn btn-default btn-yellow ga-action-click" 
                       id="plans-block-view-demo"
                       ga-action ="click"
                       ga-category="demo link"
                       ga-label="prices"
                       >
                        Try Now
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- end --> *}  

<!-- banner 1 -->
<div class="promo promo-blue">
        <div class="container">
                <div class="row">
                        <div class="vertical_m">
                                <div>
                                        <img src="{$img}/parental_control/banner_promo_v3.png" 
                                             class="visible-lg" height="150" width="270" alt="">
                                </div>
                                <div class="promo-blue-text">
                                        <span class='uppercase'>Try <i class='text-yellow'>7 days</i></span> <i class='text-yellow'>free</i> trial
                                </div>
                                <div>
                                    <a href="http://demo.{$domain}" 
                                       class="btn btn-yellow ga-action-click" 
                                       id="plans-block-view-demo"
                                       ga-action ="click"
                                       ga-category="demo link"
                                       ga-label="prices"
                                       >
                                        Try Now
                                    </a>
                                </div>
                        </div>
                </div>
        </div>
</div>
<!-- end -->