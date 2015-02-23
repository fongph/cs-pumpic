{assign 'var' 'free_trial'}

{if $var eq 'free_trial'}
    {assign 'url' './lib/banner-promo-trial.tpl'}
{elseif $name eq 'parent-control'}
    {assign 'url' './lib/banner-promo-parent-control.tpl'}
{elseif $name eq 'buy'}
    {assign 'url' './lib/banner-promo-buy.tpl'}
{else}
    {assign 'url' './lib/banner-promo-buy.tpl'}
{/if}

{include file=$url title = $title}