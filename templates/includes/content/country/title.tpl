<!-- BLOCK ICLOUD SOLUTION -->
<div {if isset($hook)}id="{$hook}"{/if} class="row-{if isset($blockBg)}{$blockBg}{else}white{/if}">
    <div class="container">
        <h2 class="list-group-item-heading text-center">{if isset($icon) && $icon == "true"}<i class="icons ico-{if isset($iconName)}{$iconName}{else}cloud{/if}"></i>{/if} {if isset($title)}{$title}{else}{/if}</h2>
    </div>
</div>
<!-- END ICLOUD SOLUTION -->