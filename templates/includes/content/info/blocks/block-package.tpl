<div class='mt10'>
    <div id='block-promo-buy' class="{if isset($language)}bb-p-buy-{$language}{/if} banner-header-package">
        <section>
            <div class="new-icloud-feature">
            {if isset($language) && $language == "bra"}
                <div class="label-new">
                    <img src="{$img}/icons/icon-pumpic-icloud.png" alt="" />
                    <span>NOVO!</span>
                </div>
                <p>Espião iCloud<br class="only-pc" /> para iOS 9.2.1<br class="only-pc" />&nbsp;</p>
            {elseif isset($language) && $language == "de"}
                <div class="label-new">
                    <img src="{$img}/icons/icon-pumpic-icloud.png" alt="" />
                    <span>NEU!</span>
                </div>
                <p>Kein Jailbreak iCloud<br class="only-pc" /> Ausgabe Überwachungs<br class="only-pc" /> für iOS 9.2.1</p>
            {else}
                <div class="label-new">
                    <img src="{$img}/icons/icon-pumpic-icloud.png" alt="" />
                    <span>NEW!</span>
                </div>
                <p>No Jailbreak iCloud<br class="only-pc" /> Monitoring Edition<br class="only-pc" /> for iOS 9.2.1</p>
            {/if}
            </div>
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