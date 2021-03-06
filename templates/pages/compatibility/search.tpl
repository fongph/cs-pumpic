{include file='../../includes/main/header/wrap-title-header.tpl'}

	<title>{if $meta_title}{$meta_title}{else}Compatibility search results{/if}</title>
	<meta name="description" content="Ensure the phone you want to track is mentioned in the Compatibility list and OS Requirements. If it meets the requirements, you can install pumpic monitoring app." />
	
        <meta name="robots" content="noindex,nofollow" />
        
{include file='../../includes/main/header/wrap-title-footer.tpl'}
<body>

    <!-- BLOCK GTM -->
    {include file='../../includes/main/main-after-body.tpl'}
    <!-- END BLOCK GTM -->
    
        <!-- FLY BLOCKS -->
    {include file='../../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->
    
	<div class="wrapper">
	{include file='../../includes/main/main-top-menu.tpl' 
                topmenu_active="compatibility"
                show_control_panel_link="1"
        }	
        

        
        {*
            Template: PHONE
            Переменные:
                style (text): стиль блока Phone (blue|black). * - blue 
        *}
        {include file='../../includes/content/phone/block-phone.tpl'
                 style="black"   
        }
        
<div class="very_easy">
                <div class="container">
                        <div class="row">
                                <div class="col-lg-10 col-lg-offset-1">
                                        <div class="row">
                                                <h2>Compatibility</h2>
                                        </div>
                                        <div class="row">
                                                <div class="col-lg-12">
                                                    {assign sw ''}
                                                    {if $search_word} 
                                                        {assign sw $search_word}
                                                    {/if}
                                                    {include file='../../includes/main/form/main-compatibility-search.tpl'
                                                            cache_id = "main-compatibility-search"
                                                            search_word = $sw
                                                        nocache}
                                                </div>
                                        </div>
                                    
                                        {include file='../../includes/main/main-compatibility-filters.tpl'}
                                    
                                        <!-- #log -->
                                        <div class="row">
                                            <div id="log"></div>
                                        </div>
                                        <!-- end -->
                                    
                                        <!-- search result -->
                                        <div class="row">
                                            {if $title_search}<h2 class="result-title">{$title_search}</h2>{/if}
                                            <div class="box-get-search-result clearfix">
                                            {nocache}    
                                                {foreach from=$phones item=phone}
                                                    <div class="col-sm-3 col-md-3 col-xs-6" id="search-result-item">
                                                        <div class="thumbnail">
                                                            <a class="img_thumb" href="/compatibility/{$phone.uri_name}/" {*target="_blank"*} >
                                                                <img height="202" width="90" alt="{$phone.name}" title="{$phone.name}" src="//{$api_device._domain}/{$api_device.path_img}/{$phone.m_img}">
                                                            </a>
                                                            <div class="caption" style="font-size: 13px;{if $phone.os  == "Android"}height:90px;{/if}">
                                                                <h3><a class='a-default' href="/compatibility/{$phone.uri_name}/" {*target="_blank"*}>{$phone.name}</a></h3>
                                                                {if $phone.os  == "iOS"}
                                                                    {if $phone.name  == "Apple iPhone 4"}
                                                                        <section>
                                                                            <span><strong>{if $phone.os  == "iOS"}iOS{else}{$phone.os}{/if} </strong>
                                                                                {if $phone.os == "iOS"} <b>{$ver_icloud_bot} -7.1.2</b>{/if}</span>
                                                                        </section>

                                                                    {elseif $phone.name  == "Apple iPhone 3GS" || $phone.name  == "Apple iPod touch 4th"}

                                                                        <section>
                                                                            <span><strong>{if $phone.os  == "iOS"}iOS{else}{$phone.os}{/if} </strong>
                                                                                {if $phone.os == "iOS"} <b>{$ver_icloud_bot} - 6.1.6</b>{/if}</span>
                                                                        </section>

                                                                    {else}

                                                                        <section>
                                                                            <span><strong>{if $phone.os  == "iOS"}iOS{else}{$phone.os}{/if} </strong> {if $phone.os  == "iOS"} <b>{$ver_icloud_bot} - {$ver_icloud_up}</b>{/if}</span>
                                                                        </section>
                                                                    {/if}
                                                                {/if}
                                                                {if $phone.os  != "iOS"}
                                                                    <span>
                                                                    <b>{$phone.os} {$ver_android_bot} - {$ver_android_up}</b>
                                                                    </span>
                                                                    {/if}






                                                            </div>
                                                        </div>
                                                    </div>
                                                {/foreach}
                                            {/nocache}    
                                            </div>
                                            {if $pages}
                                            <div class="box-navigations">
                                                <ul class="pagination">
                                                {nocache}    
                                                    
                                                    {foreach from=$pages item=page}
                                                        {if $page === false}
                                                            <li class="disabled"><span class="ellipse">…</span></li>
                                                        {elseif $page == $currentPage}
                                                            <li class="active"><span class="current">{$page+1}</span></li>
                                                        {else}
                                                            <li><a href="/compatibility/{$link_page}/?{if $page+1}page={$page+1}{/if}" class="page-link" {*href="#page={$page+1}"*}>{$page+1}</a></li>
                                                        {/if}
                                                    {/foreach}
                                                   
                                                {/nocache}    
                                                </ul>
                                            </div>
                                            {/if}     
                                        </div>
                                        <!-- end -->
                                </div>
                        </div>
                </div>
                <div class="row row_top_border">
                        <div class="container">
                                <div class="col-lg-10 col-lg-offset-1">
                                        <div class="row">
                                            <div class="form">
                                            {include file='../../includes/main/form/main-compatibility-send-find-phone.tpl'
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
                {include file='../../includes/main/main-footer.tpl'
                    _popUp= '../../includes/main-popUp.tpl'
                } 
                                                   
	</div>
        {include file='../../includes/main/main-analytics-footer.tpl'}

    <script type="text/javascript">
        {*var Devices = {
            imgPath: '{$schema}pumpic.com{$api_device._domain}/{$api_device.path_img}/',
            $titleBlock:  $('.result-title'),
            $resBlock: $('.box-get-search-result'),
            $paginationBlock: $('.box-navigations'),
            $log: $('#log'),
            search: function(request, params){
    
                Devices.$titleBlock.html('');
                Devices.$resBlock.html('');
                Devices.$paginationBlock.html('');
                Devices.$log.html('');
    
                $.get('/compatibility.html', request, function(result){
    
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
            },
            {* submitHandler: function( form ) {
                var $form = $(form);
                $form.submit();
                return false;
                
               // var searchStr = $searchForm.find('input[name="device-model"]').val();
               // Devices.search({ query: searchStr }, { title: 'Search results for "' + searchStr + '"'});
               // return false;
            } *}
        });
    </script>

</body>
</html>