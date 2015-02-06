
{*authorization out="getOut" post=$smarty.post*}
{strip}
{include file='../includes/wrap-title-header.tpl'}

	<title>Pumpic.com mobile monitoring software.</title>
	<meta name="description" content="Cellspy.org meta description" />
	<meta name="keywords" content="parental control, employee monitoring"/>

{include file='../includes/wrap-title-footer.tpl'}
<body>
{include file='../includes/button-help.tpl'}
{include file='../includes/button-goup.tpl'}
	<div class="wrapper">
	{include file='../includes/main/main-top-menu.tpl' 
            topmenu_active="false"
            cache_id = "includes_main_main-top-menu"
            nocache}	
<div class="very_easy">
			<div class="container">
                            
                             <div class="row">
                                <div class="col-lg-10 col-lg-offset-1">
                                        <div class="row">
                                                <legend class="text-center">Login</legend>
                                        </div>
                                        <div class="row">
                                                <div class="col-lg-12">
                                                    {include file='../includes/main-login.tpl'
                                                        cache_id="includes_main-login"
                                                        nocache
                                                    } 
                                                </div>
                                        </div>
                                </div>
                             </div>     
                           
			</div>
		</div>
     

	{include file='../includes/footer.tpl'}
	</div>
	{include file='../includes/analytics-footer.tpl'}
</body>
</html>
{/strip}	
	