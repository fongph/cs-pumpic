{assign 'var' 'mobile-operators'}

{if $var eq 'free_trial'}
    {assign 'url' './lib/banner-promo-trial.tpl'}
{elseif isset($var) && $var eq 'teenagers'}
    {assign 'url' './lib/banner-promo-teenagers.tpl'}
{elseif isset($var) && $var eq 'mobile-operators'}
    {assign 'url' './lib/banner-promo-mobile-operators.tpl'}    
{elseif isset($name) && $name eq 'parent-control'}
    {assign 'url' './lib/banner-promo-parent-control.tpl'}
{elseif isset($name) && $name eq 'buy'}
    {assign 'url' './lib/banner-promo-buy.tpl'}
{else}
    {assign 'url' './lib/banner-promo-buy.tpl'}
{/if}

{include file=$url title = (isset($title)) ? $title : ""}