<div class="{if $blockBg}{$blockBg}{else}dark{/if}">
    <div class="container">
            <h2 class="text-center testimonial-title">{if $title}{$title}{else}Trusted by Over 10,000 Customers Wordwide{/if}:</h2>
            <div class="row">
                
                {if $sliders == "true"}
                    {include file='../content/testimonials/testimonials_sliders.tpl'}
                {else}
                    {include file='../content/testimonials/testimonials_static.tpl'}
                {/if}
                    
            </div>
    </div>
</div>