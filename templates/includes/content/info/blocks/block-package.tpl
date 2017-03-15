<div class='mt10'>
    <div>
        {*<section>*}
            {*<div class="new-icloud-feature">*}
            {*{if isset($language) && $language == "bra"}*}
                {*<div class="block-promo-sale"></div>*}
                {*<h2 class="block-promo-h2"><p class="text-yellow">Ahorra un 40%</p> en el 2do plano.</h2>*}
            {*{elseif isset($language) && $language == "de"}*}
                {*<div class="block-promo-sale"></div>*}
                {*<h2 class="block-promo-h2"><p class="text-yellow">Sparen Sie 40%</p> auf das 2. Paket!</h2>*}
            {*{elseif isset($language) && $language == "fra"}*}
                {*<div class="block-promo-sale"></div>*}
                {*<h2 class="block-promo-h2"><p class="text-yellow">Économisez 40%</p> sur le 2ème achat!</h2>*}
            {*{elseif isset($TwoPlans) && $TwoPlans == "yes"}*}
                {*<div class="label-new">*}
                    {*<img src="{$img}/icons/icon-pumpic-icloud.png" alt="" />*}

                {*</div>*}
                {*<div class="block-promo-sale"></div>*}
                {*<h2 class="block-promo-h2"><p class="text-yellow">Save 40%</p> on the 2nd plan.<br class="only-pc" /> Limited time offer!</h2>*}
            {*{else}*}

                {*<div class="block-promo-sale"></div>*}
                {*<h2 class="block-promo-h2"><p class="text-yellow">Save 40%</p> on the 2nd plan.</h2>*}
            {*{/if}*}
            {*</div>*}
        {*</section>*}
        <section class="vertical-aligh-middle">
            {if isset($planPackageBuyType) && $planPackageBuyType == 'link'}
                {if isset($language) && $language == "bra"}
                    <a class="btn btn-default btn-red-link ga-action-click {if isset($planPackageBuyClass)}{$planPackageBuyClass}{/if}"
                       ga-action ="click"
                       ga-category="store link header"
                       ga-label="Comprar Agora"
                       href='{if isset($planPackageBuyUrl) && $planPackageBuyUrl != ""}{$planPackageBuyUrl}{else}/store.html{/if}'>Comprar Agora</a>
                    {elseif isset($language) && $language == "de"}
                    <a class="btn btn-default btn-red-link ga-action-click {if isset($planPackageBuyClass)}{$planPackageBuyClass}{/if}"
                       ga-action ="click"
                       ga-category="store link header"
                       ga-label="Jetzt kaufen"
                       href='{if isset($planPackageBuyUrl) && $planPackageBuyUrl != ""}{$planPackageBuyUrl}{else}/store.html{/if}'>Jetzt kaufen</a>                    {elseif isset($language) && $language == "fra"}
                    <a class="btn btn-default btn-red-link ga-action-click {if isset($planPackageBuyClass)}{$planPackageBuyClass}{/if}"
                       ga-action ="click"
                       ga-category="store link header"
                       ga-label="Achetez Maintenant"
                       href='{if isset($planPackageBuyUrl) && $planPackageBuyUrl != ""}{$planPackageBuyUrl}{else}/store.html{/if}'>Achetez Maintenant!</a>
                    {else}
                <a class="btn btn-default btn-red-link ga-action-click {if isset($planPackageBuyClass)}{$planPackageBuyClass}{/if}"
                   ga-action ="click"
                   ga-category="store link header"
                   ga-label="View Pricing"
                   href='{if isset($planPackageBuyUrl) && $planPackageBuyUrl != ""}{$planPackageBuyUrl}{else}/store.html{/if}'>View Pricing{*Start Now!*}</a>
                {/if}
            {else}    
            <form method="POST" action="{if isset($planPackageBuyUrl) && $planPackageBuyUrl != ""}{$planPackageBuyUrl}{else}/store.html{/if}" autocomplete="off">
                {*<input type='hidden' name='price[productID]' value='19' />*}
                <button class="btn btn-default ga-action-click"
                        value="true"
                        type="submit"
                        name="price[submit]"

                        ga-action ="click"
                        ga-category="store link header"
                        ga-label="View Pricing"
                        > {if isset($language) && $language == "bra"}Comprar Agora{elseif isset($language) && $language == "de"}Jetzt kaufen{elseif isset($language) && $language == "fra"}Achetez Maintenant!{else}View Pricing{/if}{*Start Now!*}</button>
            </form>
            {/if}    
        </section>
    </div>
</div>