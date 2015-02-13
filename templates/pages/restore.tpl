{*restore out="getOut" post=$smarty.post*}
{strip}
    
{include file='../includes/main/main-header.tpl'
    robots="no" 
    title="Pumpic.com mobile monitoring software."
    description="Cellspy.org meta description"
    keywords = "parental control, employee monitoring"
}      
    
<body>
    <!-- FLY BUTTON -->
    {include file='../includes/main/main-button-help.tpl'}
    {include file='../includes/main/main-button-goup.tpl'}
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
                                                <legend class="text-center">Restore Password</legend>
                                        </div>
                                        <div class="row">
                                                <div class="col-lg-12">
                                                    {include file='../includes/main/form/main-restore.tpl'
                                                             cache_id = "includes_main-restore"
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
                {include file='../includes/main/main-footer.tpl' 
                    our_products = "no"
                }
	</div>
	{include file='../includes/main/main-analytics-footer.tpl'}
</body>
</html>
{/strip}	
	