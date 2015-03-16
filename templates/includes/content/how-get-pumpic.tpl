<div class="{if $blockBg}{$blockBg}{else}dark{/if} howtouse-pumpic">
    <div class="container">
            <h2 class="text-center">{if $title}{$title}{else}How it works{*How to Get Pumpic*}{/if}</h2>
                
            {if $style eq 'static' || !isset($style)}
                {include file='./how_get_pumpic/static.tpl'}
            {elseif $style eq 'images'}
                {include file='./how_get_pumpic/free_trial.tpl'}
            {/if}    
                
    </div>
</div>