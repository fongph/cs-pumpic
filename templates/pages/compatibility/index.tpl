{include file='../../includes/main/header/wrap-title-header.tpl'}

	<title>Compatibility search results</title>
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
                cache_id = "includes_main_main-top-menu"
                show_control_panel_link="1"
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
                                                <div class="col-lg-12">
                                                    <form action="" name="box-search" method="POST" class="form-search compatibility-search">
                                                        <div class="input-group">
                                                                <input type="text" class="form-control required" name="device-model" value="" placeholder="Enter device model">
                                                                <span class="input-group-btn"><button class="btn btn-warning" type="submit">Search</button></span>
                                                        </div>
                                                        <div id="compatibility-search-error" class="fatal-error"></div>
                                                     </form>    
                                                </div>
                                        </div>
                                    
                                        <div class="row">
                                                <div class="col-sm-4 col-md-4 col-lg-offset-2">
                                                        <div class="thumb">
                                                                <span class="ico-left"><i class="icon-apple"></i></span>
                                                                <span>OS:<strong> iOS</strong></span>
                                                                <span>Versions:<strong> {$ver_ios_bot} - {$ver_ios_up} {*(jailbreak required)*}</strong></span>
                                                                <a href="#" class="text-succes search-category a-default" data-os="iOS">View all supported iOS devices</a>
                                                        </div>
                                                </div>
                                                <div class="col-sm-4 col-md-4">
                                                        <div class="thumb">
                                                                <span class="ico-left"><i class="icon-android"></i></span>
                                                                <span>OS:<strong> Android</strong></span>
                                                                <span>Versions:<strong> {$ver_android_bot} - {$ver_android_up}</strong></span>
                                                                <a href="#" class="text-succes search-category a-default" data-os="Android">View all supported Android devices</a>
                                                        </div>
                                                </div>
                                                {*<div class="col-sm-4 col-md-4">
                                                        <div class="thumb">
                                                                <span class="ico-left"><i class="icon-blackberry"></i></span>
                                                                <span>OS:<strong> BlackBerry</strong></span>
                                                                <span>Versions:<strong> 7.0 – 7.1</strong></span>
                                                                <a href="#" class="text-succes search-category a-default" attr_os="blackberry">View all supported BlackBerry devices</a>
                                                        </div>
                                                </div>*}
                                        </div>
                                    
                                        <!-- #log -->
                                        <div class="row">
                                            <div id="log"></div>
                                        </div>
                                        <!-- end -->
                                    
                                        
                                        <!-- BLOCK NEW LIST COMPATIBILYTI -->
                                        <div class='row'>
                                            <div class="col-sm-12 col-md-12 col-lg-12">
                                                <ul class="option_list">
                                                    <li><span>Manage calls</span>
                                                        <ul>
                                                            <li class="mobile_tooltip"> Call History</li>
                                                        </ul>
                                                            
                                                    </li>
                                                </ul>
                                                <ul class="option_list">
                                                    <li><span>Instant messengers</span>
                                                        <ul>
                                                            <li class="mobile_tooltip"> Skype</li>
                                                        </ul>
                                                            
                                                    </li>
                                                </ul>
                                                <ul class="option_list">
                                                    <li><span>Manage SMS</span>
                                                        <ul>
                                                            <li class="mobile_tooltip"> SMS History</li>
                                                        </ul>
                                                            
                                                    </li>
                                                </ul>
                                                <ul class="option_list">
                                                    <li><span>Browser</span>
                                                        <ul>
                                                            <li class="mobile_tooltip"> Browser history</li>
                                                        </ul>
                                                            
                                                    </li>
                                                </ul>
                                                <ul class="option_list">
                                                    <li><span>Other features</span>
                                                        <ul>
                                                            <li class="mobile_tooltip"> Location history</li>
                                                        </ul>
                                                            
                                                    </li>
                                                </ul>
                                            </div>
                                            
                                            <div class="col-sm-12 col-md-12 col-lg-12">
                                                <ul class="option_list">
                                                    <li><span>Manage calls</span>
                                                        <ul>
                                                            <li class="mobile_tooltip"> Call History</li>
                                                        </ul>
                                                            
                                                    </li>
                                                </ul>
                                                <ul class="option_list">
                                                    <li><span>Instant messengers</span>
                                                        <ul>
                                                            <li class="mobile_tooltip"> Skype</li>
                                                        </ul>
                                                            
                                                    </li>
                                                </ul>
                                                <ul class="option_list">
                                                    <li><span>Manage SMS</span>
                                                        <ul>
                                                            <li class="mobile_tooltip"> SMS History</li>
                                                        </ul>
                                                            
                                                    </li>
                                                </ul>
                                                <ul class="option_list">
                                                    <li><span>Browser</span>
                                                        <ul>
                                                            <li class="mobile_tooltip"> Browser history</li>
                                                        </ul>
                                                            
                                                    </li>
                                                </ul>
                                                <ul class="option_list">
                                                    <li><span>Other features</span>
                                                        <ul>
                                                            <li class="mobile_tooltip"> Location history</li>
                                                        </ul>
                                                            
                                                    </li>
                                                </ul>
                                            </div>
                                            
                                        </div>
                                        
                                        {*<!-- search result -->
                                        <div class="row">
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
                                        </div>
                                        <!-- end -->*}
                                </div>
                        </div>
                </div>
                <div class="row row_top_border">
                        <div class="container">
                                <div class="col-lg-10 col-lg-offset-1">
                                        <div class="row">
                                                        <div class="form">
                                                            <form class="send_find_phone" method="POST" action="" name="send_find_phone">
                                                                        <fieldset>
                                                                                <legend>
                                                                                    Can’t Find Your Device Here?<span>Let’s Check if it is Compatible:</span>
                                                                                    {*CAN’T FIND YOUR DEVICE HERE?<span>LET’S CHECK IF IT IS COMPATIBLE:</span>*}
                                                                                </legend>
                                                                                
                                                                                <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3">
                                                                                        <span class="info"></span>
                                                                                    
                                                                                        <div class="form-group">
                                                                                                <input id="device-model" type="text" 
                                                                                                       class="form-control required" 
                                                                                                       name="device-model" 
                                                                                                       value=""
                                                                                                       placeholder="Device model*">
                                                                                                
                                                                                                {*<p class="bg-danger"></p>*}
                                                                                        </div>
                                                                                        <div class="form-group has-error">
                                                                                                <input id="email" type="email" 
                                                                                                       class="form-control required" 
                                                                                                       name="email"
                                                                                                       value=""
                                                                                                       placeholder="Email*">
                                                                                                
                                                                                                {*<p class="bg-danger"></p>*}
                                                                                        </div>
                                                                                        <div class="fatal-error"></div>
                                                                                        <button class="btn btn-warning event-submit">Submit<i class="icon-right-open"></i>
                                                                                        </button>
                                                                                </div>
                                                                        </fieldset>
                                                                </form>
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
                {include file='../../includes/main/main-footer.tpl'}
                                                   
	</div>
        {include file='../../includes/main/main-analytics-footer.tpl'}

    <script type="text/javascript">
        var Devices = {
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
        });
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
            submitHandler: function(  ) {
                var searchStr = $searchForm.find('input[name="device-model"]').val();
                Devices.search({ query: searchStr }, { title: 'Search results for "' + searchStr + '"'});
                return false;
            }
        });
    </script>

</body>
</html>