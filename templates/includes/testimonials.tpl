<div class="{if $blockBg}{$blockBg}{else}dark{/if}">
    <div class="container">
            <h2 class="text-center testimonial-title">{if $title}{$title}{else}Trusted by Over 10,000 Customers Worldwide{/if}:</h2>
            <div class="row">
                
                {if $sliders == "true"}
                    {include file='../includes/content/testimonials/testimonials_sliders.tpl'}
                {else}
                    {include file='../includes/content/testimonials/testimonials_static.tpl'}
                {/if}
                    
            </div>
    </div>
</div>