<div class='mt10'>
    <div id='block-promo-buy' class="{if isset($language)}bb-p-buy-{$language}{/if} banner-header-package">
        <section>
            <p><i class="plan-header-premium"></i></p>
            
            {if isset($language) && $language == "bra"}
                <p>Compre o plano de 6 ou 12 
                <br class="only-pc" />meses e obtenha mais 2 grátis</p>
            {elseif isset($language) && $language == "de"}
                <p>Kaufen Sie den <strong>6</strong> oder <strong>12</strong> Monatsabo 
                <br class="only-pc" />und <strong>erhalten Sie 2 Monate kostenlos</strong></p>
            {else}
                <p>Buy <strong>6</strong> or <strong>12</strong> month plan 
                <br class="only-pc" />and <strong>get 2 plans for free</strong></p>
            {/if}    
            
            
        </section>
        <section class="vertical-aligh-middle">
            {if isset($planPackageBuyType) && $planPackageBuyType == 'link'}
                <a class="btn btn-default btn-red-link ga-action-click {if isset($planPackageBuyClass)}{$planPackageBuyClass}{/if}" 
                   ga-action ="click"
                   ga-category="premium"
                   ga-label="plan premium packahe"
                   href='{if isset($planPackageBuyUrl) && $planPackageBuyUrl != ""}{$planPackageBuyUrl}{else}/store.html{/if}'>Learn More{*Start Now!*}</a>
            {else}    
            <form method="POST" action="{if isset($planPackageBuyUrl) && $planPackageBuyUrl != ""}{$planPackageBuyUrl}{else}/store.html{/if}" autocomplete="off">
                {*<input type='hidden' name='price[productID]' value='19' />*}
                <button class="btn btn-default ga-action-click"
                        value="true"
                        type="submit"
                        name="price[submit]"

                        ga-action ="click"
                        ga-category="premium"
                        ga-label="plan premium packahe"
                        > {if isset($language) && $language == "bra"}Comprar Agora{elseif isset($language) && $language == "de"}Jetzt kaufen{else}Learn More{/if}{*Start Now!*}</button>
            </form>
            {/if}    
        </section>
    </div>
</div>