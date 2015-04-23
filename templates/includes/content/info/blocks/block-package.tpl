<div class='mt10'>
    <div id='block-promo-buy' class="banner-header-package">
        <section>
            <p><i class="plan-header-premium"></i></p>
            <p>Buy <strong>6</strong> or <strong>12</strong> month plan 
                <br class="only-pc" />and <strong>get 2 plans for free</strong></p>
        </section>
        <section class="vertical-aligh-middle">
            {if isset($planPackageBuyType) && $planPackageBuyType == 'link'}
                <a class="btn btn-default btn-red-link ga-action-click {if isset($planPackageBuyClass)}{$planPackageBuyClass}{/if}" 
                   ga-action ="click"
                   ga-category="premium"
                   ga-label="plan premium packahe"
                   href='{if isset($planPackageBuyUrl)}{$planPackageBuyUrl}{else}/store.html{/if}'>Start Now!</a>
            {else}    
            <form method="POST" action="{if isset($planPackageBuyUrl)}{$planPackageBuyUrl}{else}/store.html{/if}" autocomplete="off">
                {*<input type='hidden' name='price[productID]' value='19' />*}
                <button class="btn btn-default ga-action-click"
                        value="true"
                        type="submit"
                        name="price[submit]"

                        ga-action ="click"
                        ga-category="premium"
                        ga-label="plan premium packahe"
                        >Start Now!</button>
            </form>
            {/if}    
        </section>
    </div>
</div>