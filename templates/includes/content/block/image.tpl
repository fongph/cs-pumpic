{if $imgUrl && $imgWidth && $imgHeight}
<div class="wp-caption text-{if $blockAlign}{$blockAlign}{else}center{/if}" id="attachment">
        <img alt="{$imgAlt}" 
             src="{$img}/{$imgUrl}" 
             class="size-full front" 

             width="{$imgWidth}" 
             height="{$imgHeight}">
        <span>
        {if $captionText}
            <p class="wp-caption-text">{$captionText}</p>
        {/if}
        </span>
</div>
{/if}