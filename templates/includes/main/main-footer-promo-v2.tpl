<div class="promo">
    <div class="container">
        <div class="row">
            <div class="vertical_m">
                <div>
                    <img src="{$img}/{if $bannerImg}{$bannerImg}{else}image_banners_2.png{/if}" class="visible-lg" height="132" width="367" alt="">
                </div>
                <div class="promo-text">
                    {if $sloganFirst}{$sloganFirst}{else}Prevent Troubles Remotely{/if}
                    <br />
                    <span>{if $sloganSecond}{$sloganSecond}{else}Secure Kids’ Happiness{/if}</span></div>
                <div>
                    <button id="promo-footer-buy" class="btn btn-default _forward_pricing"
                            ga-label-button="{if $labelButton}{$labelButton}{else}main-now{/if}"
                            ga-type-button="buy button"
                            ga-event="click">Buy Pumpic</button>
                </div>
            </div>
        </div>
    </div>
</div>