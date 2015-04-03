
{*authorization out="getOut" post=$smarty.post*}
{strip}
    
{include file='../includes/main/main-header.tpl'
    robots="no" 
    title="Login to Pumpic"
    description="parental control, employee monitoring"
}     
    
<body>
    <!-- FLY BLOCKS -->
    {include file='../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->
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
                                                <legend class="text-center">Login to Pumpic Control Panel</legend>
                                        </div>
                                        <div class="row">
                                                <div class="col-lg-12">
                                                    {include file='../includes/main/form/main-login.tpl'
                                                        cache_id="includes_main-login"
                                                        nocache
                                                    } 
                                                </div>
                                        </div>
                                        <div class='row'>
                                            <div class='col-lg-12'>
                                                <div id='login-member-yet'>
                                                    <h2>Not a member yet?</h2>
                                                    <div class='block-buttons text-center'>
                                                        <a href='http://{$domain}/store.html' class='btn btn-red'>Buy Now</a>
                                                    </div>
                                                </div>
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
</body>
</html>
{/strip}	
	