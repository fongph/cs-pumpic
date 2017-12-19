<!-- FLY BUTTON -->
{include file='../../main/main-button-help.tpl'}
{include file='../../main/main-button-goup.tpl'}
<!-- END FLY BUTTON -->


<!-- FLY BLOCK -->
{* {if !isset($visibleFlyFeatures) || $visibleFlyFeatures == "yes"}
    {if $smarty.server.REQUEST_URI|strstr:'reviews'}
        {include file='./fly_features_v3.tpl'}
    {else}
        {include file='./fly_features_v2.tpl'}
    {/if} *}
    {* {include file='./fly_features_v2.tpl'} *}
    {* {include file='./fly_features_v2_friday.tpl'} *}
{* {/if} *}
<!-- END FLY BLOCK -->

