{include file='../includes/main/main-header.tpl'
    robots="yes" 
    title="Compatibility search results"
    description="Ensure the phone you want to track is mentioned in the Compatibility list and OS Requirements. If it meets the requirements, you can install pumpic monitoring app."
} 

<body>
    <!-- FLY BLOCKS -->
    {include file='../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->
    
	<div class="wrapper">
	{include file='../includes/main/main-top-menu.tpl' 
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
                                        <div class="row">
                                            <div class="col-lg-12 pb20 intro-compatibility">
                                                <span>Pumpic is compatible with all major smartphones and tablets. Operating systems supported: <b>Android (smartphone and tablets)</b> starting from <b>2.2</b> version, 
                                                    <b>iOS (iPhones, iPad, iPods Touch)</b> starting from <b>6.0</b> version. This page is a partial list of phones and devices that are compatible with Pumpic.</span>
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
                                                <span>sorted by popularity</span>
                                            </div>    
                                        </div>
                                    
                                        <!-- #log -->
                                        <div class="row">
                                            <div id="log"></div>
                                        </div>
                                        <!-- end -->
                                    
                                        <!-- BLOCK NEW LIST COMPATIBILYTI -->
                                        <div class='row'>
                                            <div class="box-get-search-result clearfix">
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
                                                                                <a target="_blank" href="http://{$domain}/compatibility/{$model.alies}/">{$model.name}</a>
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
                                            </div>
                                        </div>
                                        
                                        <!-- search result -->
                                        {*<div class="row">
                                            <h2 class="result-title">Most popular smartphones</h2>
                                            <div class="box-get-search-result clearfix">
                                            {nocache}    
                                                {foreach from=$phones item=phone}
                                                    <div class="col-sm-3 col-md-3 col-xs-6" id="search-result-item">
                                                        <div class="thumbnail">
                                                            <a class="img_thumb" href="/compatibility/{$phone.uri_name}/" target="_blank">
                                                                <img height="202" width="90" alt="{$phone.name}" title="{$phone.name}" src="//{$api_device._domain}/{$api_device.path_img}/{$phone.m_img}">
                                                            </a>
                                                            <div class="caption">
                                                                <h3><a href="/compatibility/{$phone.uri_name}/" target="_blank">{$phone.name}</a></h3>
                                                                <span>OS: <strong>{$phone.os}</strong></span>
                                                                <span>Versions: <strong>{$phone.version}</strong></span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                {/foreach}
                                            {/nocache}    
                                            </div>
                                            <div class="box-navigations">
                                                <ul class="pagination">
                                                {nocache}    
                                                    {foreach from=$pages item=page}
                                                        {if $page === false}
                                                            <li class="disabled"><span class="ellipse">…</span></li>
                                                        {elseif $page == $currentPage}
                                                            <li class="active"><span class="current">{$page+1}</span></li>
                                                        {else}
                                                            <li><a href="/compatibility.html{if $page}?page={$page}{/if}" class="page-link" href="#page={$page+1}">{$page+1}</a></li>
                                                        {/if}
                                                    {/foreach}
                                                {/nocache}    
                                                </ul>
                                            </div>
                                        </div>*}
                                        <!-- end -->
                                </div>
                        </div>
                </div>
                <div class="row row_top_border">
                    <div class="container">
                        <div class="col-lg-10 col-lg-offset-1">
                            <div class="row">
                                <div class="form">
                                    {include file='../includes/main/form/main-compatibility-send-find-phone.tpl'
                                        cache_id = "main-compatibility-send-find-phone"
                                        nocache} 
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