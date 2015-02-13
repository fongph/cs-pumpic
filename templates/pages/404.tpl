{strip}
 
{include file='../includes/main/main-header.tpl'
    robots="no" 
    title="Page not Found"
}    
    
<body>
    <!-- FLY BUTTON -->
    {include file='../includes/main/main-button-help.tpl'}
    {include file='../includes/main/main-button-goup.tpl'}
	<div class="wrapper">
	{include file='../includes/main/main-top-menu.tpl'}	
		<div class="very_easy">
			<div class="container">
				<div class="row">
					<div class="col-lg-10 col-lg-offset-1">
						<div class="row">
							<div class="col-lg-12">
								<h2>404 Page not found</h2>
								<article>
									<p class="text-justify"></p>
								</article>
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
	