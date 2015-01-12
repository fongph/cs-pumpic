{strip}
{include file='../includes/wrap-title-header.tpl'}

	<title>Compatibility search results</title>
	<meta name="description" content="Ensure the phone you want to track is mentioned in the Compatibility list and OS Requirements. If it meets the requirements, you can install pumpic monitoring app." />
	
{include file='../includes/wrap-title-footer.tpl'}
<body>
{include file='../includes/button-help.tpl'}
{include file='../includes/button-goup.tpl'}
	<div class="wrapper">
	{include file='../includes/topmenu-logo-login.tpl' topmenu_active="compatibility"}	
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
                                                                <span>Versions:<strong> 6.0 or later (jailbreak required)</strong></span>
                                                                <a href="#" class="text-succes search-category" attr_os="ios">View all supported iOS devices</a>
                                                        </div>
                                                </div>
                                                <div class="col-sm-4 col-md-4">
                                                        <div class="thumb">
                                                                <span class="ico-left"><i class="icon-android"></i></span>
                                                                <span>OS:<strong> Android</strong></span>
                                                                <span>Versions:<strong> 2.2 or later (rooted)</strong></span>
                                                                <a href="#" class="text-succes search-category" attr_os="android">View all supported Android devices</a>
                                                        </div>
                                                </div>
                                                {*<div class="col-sm-4 col-md-4">
                                                        <div class="thumb">
                                                                <span class="ico-left"><i class="icon-blackberry"></i></span>
                                                                <span>OS:<strong> BlackBerry</strong></span>
                                                                <span>Versions:<strong> 7.0 – 7.1</strong></span>
                                                                <a href="#" class="text-succes search-category" attr_os="blackberry">View all supported BlackBerry devices</a>
                                                        </div>
                                                </div>*}
                                        </div>
                                    
                                        <!-- #log -->
                                        <div class="row">
                                            <div id="log"></div>
                                        </div>
                                        <!-- end -->
                                    
                                        <!-- search result -->
                                        <div class="row">
                                            
                                            <div class="box-get-search-result clearfix"></div>
                                            <div class="box-navigations"></div>
                                            
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
                                                            <form class="send_find_phone" method="POST" action="" name="send_find_phone">
                                                                        <fieldset>
                                                                                <legend>
                                                                                    CAN’T FIND YOUR DEVICE HERE?<span>LET’S CHECK IF IT IS COMPATIBLE:</span>
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
                                                                                        <button class="btn btn-warning">Submit<i class="icon-right-open"></i>
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

	{include file='../includes/footer.tpl'}
	</div>
	{include file='../includes/analytics-footer.tpl'}
        <script type="text/javascript">
            $(document).ready(function(){
                $('#header-menu-store-link').click(function(){
                    ga('send', 'event', 'store link', 'click', 'compatibility-store-header');
                });
            });
        </script>
</body>
</html>
{/strip}	
	