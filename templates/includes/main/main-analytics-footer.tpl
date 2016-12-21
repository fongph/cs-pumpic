<script src="http://code.jquery.com/jquery-1.11.1.min.js?{style_cache data='2015-02-05'}"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js?{style_cache data='2015-02-05'}"></script>

{if isset($emptyScript) && $emptyScript == "true"}
    &nbsp;
{else}
<script src="{$jsMin}/frontend.min.js?{style_cache data='2015-02-05'}"></script>
{/if}
{*<script type="text/javascript" src="https://cdn.ywxi.net/js/1.js" async></script>*}