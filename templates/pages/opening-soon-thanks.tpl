{strip}

{include file='../includes/main/main-header.tpl'
    robots="no" 
    title="Thank you for choosing pumpic.com"
    description="Thank you for choosing pumpic.com"
}

<body>
    <!-- FLY BUTTON -->
    {include file='../includes/main/main-button-help.tpl'}
    {include file='../includes/main/main-button-goup.tpl'}
	<div class="wrapper">
	{include file='../includes/main/main-top-menu.tpl' 
                topmenu_active='home'
                cache_id = "includes_main_main-top-menu"
                nocache
        }	
		<divv class="very_easy">
			<div class="container">
				<div class="row">
					<div class="col-lg-10 col-lg-offset-1">
						<div class="row">
							<div class="col-lg-12">
								
                                                            {*openigsoonSendMail out="getOut" post=$smarty.post*}
                                                            
                                                            {if $getOut._error}
                                                                <div class="box-info-messange center">
                                                                    <label class="green">Error!</label>
                                                                    <p>{$getOut._error}</p>
                                                                </div>
                                                            {elseif $getOut._success}   
                                                                <div class="box-info-messange center">
                                                                    <label class="green">Thank You for registering!</label>
                                                                    <p>{$getOut._success}</p>
                                                                </div>
                                                            {/if}    
                                                            
                                                                
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