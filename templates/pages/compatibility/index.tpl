{strip}
{include file='../../includes/wrap-title-header.tpl'}
    
	
<title>{$getSetting.title}</title>
<meta name="description" content="{$getSetting.description}" />

<meta name="robots" content="noindex,nofollow" />

{include file='../../includes/wrap-title-footer.tpl'}
<body>
    
{include file='../../includes/button-help.tpl'}
{include file='../../includes/button-goup.tpl'}
	<div class="wrapper">
	{include file='../../includes/topmenu-logo-login.tpl' topmenu_active="compatibility"}
        <div class="very_easy">
            <div class="container">
                <div class="row">
                    <div class="col-lg-10 col-lg-offset-1">
                        <div class="row">
                            <h2>Compatibility</h2>
                        </div>

                        <!-- #log -->
                        <div class="row">
                            <div id="log"></div>
                        </div>
                        <!-- end -->

                        {if $getSetting._item}
                            <!-- item device -->
                            <div class="row">
                                <h3 class="col-lg-12"><a href="#">{$getSetting._item.name}</a></h3>
                                <div class="col-sm-4 col-md-4">
                                    <div class="thumbnail">

                                        <div class="img_thumb">
                                            <img src="http://{$getSetting.api._domain}/{$getSetting.api.path_img}/{$getSetting._item.m_img}" height="202" width="90" alt="">
                                        </div>

                                        <div class="caption">

                                            <span>OS:<strong> {$getSetting._item.os}</strong></span>
                                            <span>Versions:<strong> {$getSetting._item.version}</strong></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-8 col-md-8">
                                    {foreach from=$getSetting._item.features key=name item=params}
                                        <ul class="option_list">
                                            <li>
                                                <span>{$name}</span>
                                                <ul>
                                                    {foreach from=$params key=alies item=value}
                                                        {if $value}
                                                            <li class="mobile_tooltip" title="{$value}"> {$alies}</li>
                                                        {/if}
                                                    {/foreach}
                                                </ul>
                                            </li>
                                        </ul>
                                    {/foreach}
                                </div>
                            </div>

                            {if $getSetting._item.custom_text}
                                <div class="row">
                                    <div class="col-lg-12">
                                        <p class="blockquate_bottom">{$getSetting._item.custom_text}</p>
                                    </div>
                                </div>
                            {/if}

                        {/if}
                        <!-- end -->
                    </div>
                </div>
            </div>
            {*include file='../../includes/compatibility-footer-promo.tpl' model=$compatibilityDeviceUri*}
            
            {include file='../../includes/main-footer-promo.tpl'}
        </div>

	{include file='../../includes/footer.tpl'}
	</div>
	{include file='../../includes/analytics-footer.tpl'}
</body>
</html>
{/strip}	
	