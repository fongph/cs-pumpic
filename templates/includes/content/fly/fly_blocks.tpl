<!-- FLY BUTTON -->
{include file='../../main/main-button-help.tpl'}
{include file='../../main/main-button-goup.tpl'}
<!-- END FLY BUTTON -->


<!-- FLY BLOCK -->
{if !isset($visibleFlyFeatures) || $visibleFlyFeatures == "yes"}
    {include file='./fly_features_v2.tpl'}
{/if}
<!-- END FLY BLOCK -->

