{strip}
{include file='../includes/wrap-title-header.tpl'}

	<title>Thank you for choosing pumpic.com</title>
	<meta name="description" content="Thank you for choosing pumpic.com" />
	
{include file='../includes/wrap-title-footer.tpl'}
<body>
{include file='../includes/button-help.tpl'}
{include file='../includes/button-goup.tpl'}
	<div class="wrapper">
	{include file='../includes/main/main-top-menu.tpl' topmenu_active='home'}	
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
		{include file='../includes/footer.tpl'}
	</div>
	{include file='../includes/analytics-footer.tpl'}
</body>
</html>
{/strip}