{compatibilityDevice out="getSetting" api=$api_device}

{strip}
{include file='../../includes/wrap-title-header.tpl'}
    
	
<title>{$getSetting.title}</title>
<meta name="description" content="{$getSetting.description}" />

{include file='../../includes/wrap-title-footer.tpl'}
<body>
    
{include file='../../includes/button-help.tpl'}
{include file='../../includes/button-goup.tpl'}
	<div class="wrapper">
	{include file='../../includes/topmenu-logo-login.tpl' topmenu_active="features"}	
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
									<a href="http://{$getSetting.api._domain}/{$getSetting.api.path_img}/{$getSetting._item.big_img}" class="img_thumb" data-lightbox="{$getSetting._item.name}" data-title="{$getSetting._item.name}">
										<img src="http://{$getSetting.api._domain}/{$getSetting.api.path_img}/{$getSetting._item.img}" height="202" width="90" alt="">
									</a>
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
                {include file='../../includes/compatibility-footer-promo.tpl' model=$getSetting._item.name}
        </div>

	{include file='../../includes/footer.tpl'}
	</div>
	{include file='../../includes/analytics-footer.tpl'}
</body>
</html>
{/strip}	
	