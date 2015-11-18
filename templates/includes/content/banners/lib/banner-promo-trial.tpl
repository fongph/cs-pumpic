<!-- banner_promo_trial -->
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
                    {nocache} 
                    <form method="POST" action="/free-trial.html" autocomplete="off">
                        {*<input type='hidden' name='price[productID]' value='19' />*}
                        <button class="btn-yellow ga-action-click" 
                                value="true" 
                                type="submit" 
                                name="price[submit]"

                                ga-action ="click"
                                ga-category="trial"
                                ga-label="free trial"
                                >Try Now</button>
                    </form>
                    {/nocache} 
                    {*<a href="http://sites.fastspring.com/pumpic/product/pumpic-premium-3m-v1" 
                       class="btn-yellow ga-action-click" 
                       id="plans-block-view-demo"
                       ga-action ="click"
                       ga-category="demo link"
                       ga-label="prices"
                       >
                        Try Now
                    </a>*}
                </div>
            </div>
        </div>
    </div>
</div>
<!-- end -->