{include file='../includes/main/main-header.tpl'
    robots="yes" 
    title="Smartphones compatibility with monitoring software"
    description="Ensure the phone you want to track is mentioned in the Compatibility list and OS Requirements. If it meets the requirements, you can install pumpic monitoring app."
} 

<body>
    <!-- BLOCK GTM -->
    {include file='../includes/main/main-after-body.tpl'}
    <!-- END BLOCK GTM -->
    
    <!-- FLY BLOCKS -->
    {include file='../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->
    
	<div class="wrapper">
        {nocache}    
            {include file='../includes/main/main-top-menu.tpl' 
                    topmenu_active="compatibility"
                    show_control_panel_link="1"
            }	
            
            {* cache_id = "includes_main_main-top-menu"
                    nocache   *}
            
        {/nocache}
        

        
        {*
            Template: PHONE
            Переменные:
                style (text): стиль блока Phone (blue|black). * - blue 
        *}
        {include file='../includes/content/phone/block-phone.tpl'
                 style="black"   
        }
        
<div class="very_easy">
    <div class="container">
        <div class="row">
            <div class="col-lg-10 col-lg-offset-1">
                <div class="row">
                        <h1 class="h2 text-center">Monitoring App Compatibility</h1>
                </div>
                <div class="row">
                    <div class="col-lg-12 pb20 intro-compatibility">
                        <span>Pumpic is compatible with the majority of mobile devices. Operating systems supported: <b>Android (smartphones and tablets)</b> starting from the <b>2.2</b> version, 
                            <b>iOS (iPhone, iPad, iPod Touch)</b> starting from the <b>6.0</b> version. This page contains a partial list of devices compatible with the Pumpic app.</span>
                    </div>
                </div>

                {include file='../includes/main/main-compatibility-filters.tpl'}

                <div class="row">
                        <h2>Search</h2>
                </div>

                <div class="row">
                    <div class="col-lg-12">
                       {include file='../includes/main/form/main-compatibility-search.tpl'
                            cache_id = "main-compatibility-search"
                        nocache}
                    </div>
                </div>

                <div class="row">
                    <div class="block-info-compatibility">
                        <h2>Popular models supported</h2>
                        <span>sorted in alphabetical order{*sorted by popularity*}</span>
                    </div>    
                </div>

                <!-- #log -->
                <div class="row">
                    <div id="log"></div>
                </div>
                <!-- end -->

                <!-- BLOCK NEW LIST COMPATIBILYTI -->
                <div class='row'>
                    <div class="block-compatibility col-lg-12 col-md-12 col-sm-12">
                        
                        <!-- // template-1 -->
                        <div id="temp-1">
                            {*nocache*}
                            <div class="bc-header">
                                
                            <div id="tabs" class="bc-tabs" data-tabs="tabs">
                                <section>
                                {foreach from=$phones item=phone key=key}
                                    {assign 'iteration' $key + 1}
                                
                                    <div data-cat-id="{$phone.cat_id}" class="item-tab {if $key == 0}active{/if}">
                                        <a href="#{$phone.cat_id}" data-toggle="tab">{$phone.cat_name}</a>
                                    </div>
                                    {*<div class="item-tab"><a href="#orange" data-toggle="tab">Orange</a></div>*}
                                
                                {if $iteration % $cols_cats == 0}     
                                    </section><section>
                                {/if}
                                
                                
                                {* if $iteration < 2}  {/if *}
                                
                                {*<section>
                                    <div class="item-tab"><a href="#black" data-toggle="tab">Black</a></div>
                                    <div class="item-tab"><a href="#test" data-toggle="tab">Test</a></div>
                                </section>*}
                                {/foreach} 
                                </section>
                            </div> <!-- #tabs -->
                                
                            </div>
                            
                            <div id="tab-content" class="tab-content bc-body">
                                {foreach from=$phones item=phone key=key}
                                <div class="tab-pane {if $key == 0}active{/if}" data-cat-id="{$phone.cat_id}">
                                    <table><tr><td><ul>
                                        {assign var=miteration value=1}
                                        {assign var=mtd value=3}
                                        {foreach from=$phone.models item=model key=mkey}
                                            
                                            <li>
                                                {if $model.custom_text && count($model.features) > 0}
                                                    <a onClick="window.location.href = 'http://{$domain}/compatibility/{$model.alies}/'">{$model.name}</a>
                                                {else}
                                                    <span>{$model.name}</span> 
                                                {/if}
                                            </li>
                                            {if $miteration % $phone.count == 0}     
                                                </ul></td><td><ul>
                                                {assign var=mtd value=$mtd-1}        
                                            {/if}
                                            
                                            {assign var=miteration value=$miteration+1}
                                            
                                        {/foreach}
                                        
                                    </ul></td>
                                      
                                    {if $mtd} 
                                        {for $foo=1 to $mtd}
                                            <td></td>
                                        {/for}
                                    {/if}
                                        
                                        </tr></table>
                                        
                                </div>  
                                {/foreach}
                                
                                <div class="clear"></div>
                            </div>
                            {*/nocache*}
                        </div> <!-- #temp-1 -->
                        <!-- end -->
                        <!-- // template-2 -->
                        <div id="temp-2">
                            
                            <ul>
                                {foreach from=$phones item=phone key=key}
                                <li data-cat-id="{$phone.cat_id}" class="{if $key == 0}active{/if}">
                                    <span>{$phone.cat_name}</span>
                                    <ul>
                                        {foreach from=$phone.models item=model}
                                        <li>
                                            {if $model.custom_text && count($model.features) > 0}
                                                <a href="http://{$domain}/compatibility/{$model.alies}/">{$model.name}</a>
                                            {else}
                                                <span>{$model.name}</span> 
                                            {/if}
                                        </li>
                                        {/foreach}
                                    </ul>
                                </li>
                                {/foreach}
                            </ul>
                            
                        </div> <!-- #temp-2 -->
                        
                        
                    </div>
                    
                    {*<div class="box-get-search-result clearfix">
                    {nocache}
                        <div class="col-sm-12 col-md-12 col-lg-12">
                            {foreach from=$phones item=phone key=key}
                                {assign 'iteration' $key + 1}
                                <ul id="lists-compatibility" class="option_list">
                                    <li><span>{$phone.cat_name}</span>
                                        <ul>
                                            {foreach from=$phone.models item=model}
                                                <li class="mobile_tooltip"> 
                                                    {if $model.custom_text && count($model.features) > 0}
                                                        <a href="http://{$domain}/compatibility/{$model.alies}/">{$model.name}</a>
                                                    {else}
                                                        <label>{$model.name}</label> 
                                                    {/if}
                                                </li>
                                            {/foreach}
                                        </ul>

                                    </li>
                                </ul>

                                {if $iteration % $cols == 0}     
                                    </div><div class="col-sm-12 col-md-12 col-lg-12">
                                {/if}

                            {/foreach} 
                        </div>    
                    {/nocache}
                    </div>
                    <div class="box-navigations">
                        <ul class="pagination"></ul>
                    </div>*}
                </div>

            </div>
        </div>
    </div>
    <div class="row row_top_border">
        <div class="container">
            <div class="col-lg-10 col-lg-offset-1">
                <div class="row">
                    <div class="form">
                        {* getOut = $getOut *}
                        {nocache}
                            {include file='../includes/main/form/main-compatibility-send-find-phone.tpl'}
                            {* cache_id = "main-compatibility-send-find-phone"
                                nocache *}
                        {/nocache}    
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
    
	<!-- FOOTER -->
        {*
            Template: FOOTER
            Переменные:
                our_products (text): Включить выключить блок OUR PRODUCTS (no|yes). * - yes 
        *}
        {include file='../includes/main/main-footer.tpl'}
	</div>
	{include file='../includes/main/main-analytics-footer.tpl'}

    <script type="text/javascript">
        
        {*var Devices = {
            imgPath: 'http://{$api_device._domain}/{$api_device.path_img}/',
            $titleBlock:  $('.result-title'),
            $resBlock: $('.box-get-search-result'),
            $paginationBlock: $('.box-navigations'),
            $log: $('#log'),
            search: function(request, params){
    
                Devices.$titleBlock.html('');
                Devices.$resBlock.html('');
                Devices.$paginationBlock.html('');
                Devices.$log.html('');
    
                $.get('/compatibility/', request, function(result){
    
                    if(Number(result.count) > 0) {
                        Devices.$titleBlock.html(params.title);
                        $.each(result.list, function(i, deviceData){
                            Devices.$resBlock.append(Devices.getRenderDeviceItem(deviceData))
                        });
    
                        if(Number(result.count) > 12){
                            Devices.$paginationBlock.pagination({
                                currentPage: Number(request.page)+1,
                                items: result.count,
                                itemsOnPage: 12,
                                cssStyle: false, prevText: false, nextText: false,
                                onPageClick: function(pageNum) {
                                    request.page = pageNum-1;
                                    Devices.search(request, params);
                                }
                            });
    
                        } else Devices.$paginationBlock.html('');
    
                    } else Devices.$log.html(params.hasOwnProperty('notFound') ? params.notFound : 'No results were found. In case of any questions, contact us using the form below.');
    
                });
            },
            getRenderDeviceItem: function(devData) {
                return  '<div id="search-result-item" class="col-sm-3 col-md-3 col-xs-6">' +
                        '<div class="thumbnail">' +
                        '<a target="_blank" href="/compatibility/'+ devData.uri_name +'/" class="img_thumb">' +
                        '<img src="'+Devices.imgPath+ devData.m_img +'" height="202" width="90" title="'+devData.name+'" alt="'+devData.name+'">' +
                        '</a>' +
                        '<div class="caption">' +
                        '<h3><a target="_blank" href="/compatibility/'+devData.uri_name+'/">'+devData.name+'</a></h3>' +
                        '<span>OS:<strong> '+devData.os+'</strong></span>' +
                        '<span>Versions:<strong> '+devData.version+'</strong></span>' +
                        '</div>' +
                        '</div>' +
                        '</div>';
            }
    
        };
        $('.search-category').on('click', function(){
            var request = $(this).data();
            var params = {
                title: "All " + request.os + " phones"
            };
    
            Devices.search(request, params);
            return false;
        }); *}
        
        
        var $searchForm = $('.form-search');
        $searchForm.validate({
            rules: {
                'device-model': {
                    required: true,
                    minlength: 2
                }
            },
            errorClass: "invalid",
            errorLabelContainer: "#compatibility-search-error",
            messages: {
                'device-model': {
                    required: "The Device Model field is empty",
                    minlength: "Enter at least 2 symbols to start search"
                }

            }{*,
            submitHandler: function( form ) {
                var $form = $(form);
                $form.submit();
                return false;
        
                
                //var searchStr = $searchForm.find('input[name="device-model"]').val();
                //Devices.search({ query: searchStr }, { title: 'Search results for "' + searchStr + '"'});
                //return false;
            }*}
        });
    </script>

</body>
</html>