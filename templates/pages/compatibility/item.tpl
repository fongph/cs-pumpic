{strip}
{include file='../../includes/main/header/wrap-title-header.tpl'}
    
	
<title>{$getSetting.title}</title>
<meta name="description" content="{$getSetting.description}" />

{if isset($getSetting._item.custom_text) && empty($getSetting._item.custom_text)}
    <meta name="robots" content="noindex,nofollow" />
{/if}

{include file='../../includes/main/header/wrap-title-footer.tpl'}
<body>
        <!-- FLY BLOCKS -->
    {include file='../../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->
    
	<div class="wrapper">
	{include file='../../includes/main/main-top-menu.tpl' 
                topmenu_active="compatibility"
                cache_id = "includes_main_main-top-menu"
                nocache
        }
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
                                {if $getSetting._item.alies}
                                <div class="breadcrumbs col-lg-12">
                                    <h4>
                                        <a class="underline" href="http://{$domain}/compatibility/">Compatibility</a>
                                        <span class="arrows icon-right-open"></span>
                                    </h4>
                                    <h3>
                                        <a href="http://{$domain}/compatibility/{$getSetting._item.alies}/">{$getSetting._item.name}</a>
                                    </h3>
                                </div>
                                {/if}
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
                                                        {*if $value*}
                                                            <li class="mobile_tooltip" title="{$value}"> {$alies}</li>
                                                        {*/if*}
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
            
            {*include file='../../includes/main-footer-promo.tpl'*}
            
        </div>
        {*{include file='../../includes/content/banners/banner-promo-trial.tpl'}*}
        
        {include file='../../includes/content/banners/index.tpl'}

        <!-- RECOMMENDED -->
        {*
            Template: RECOMMENDED
        *}    
        {include file='../../includes/main/main-recommended.tpl'}
        
                <!-- FOOTER -->
                {*
                    Template: FOOTER
                    Переменные:
                        our_products (text): Включить выключить блок OUR PRODUCTS (no|yes). * - yes 
                *}
                {include file='../../includes/main/main-footer.tpl'
                    _popUp= '../../includes/main-popUp.tpl'
                } 
        
	</div>
	{include file='../../includes/main/main-analytics-footer.tpl'}
</body>
</html>
{/strip}	
	