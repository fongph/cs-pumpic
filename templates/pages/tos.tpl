{strip}
    {$robots='no'}
{include file='../includes/main/main-header.tpl'
    title="Privacy Policy, Refunds, Terms & Conditions"
    description="Pumpic is a mobile phone monitoring application with the vast possibilities. Learn more about the app's usage legal policy. Pumpic is for legitimate use only."
}

    
<body>
    <!-- BLOCK GTM -->
    {include file='../includes/main/main-after-body.tpl'}
    <!-- END BLOCK GTM -->
    
    <!-- FLY BLOCKS -->
    {include file='../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->
	<div class="wrapper">
		{include file='../includes/main/main-top-menu.tpl' 
                        show_control_panel_link="1"
                        cache_id = "includes_main_main-top-menu"
                        nocache
                }
                

                
                {*
                    Template: PHONE
                    Переменные:
                        style (text): стиль блока Phone (blue|black). * - blue 
                *}
                {include file='../includes/content/phone/block-phone.tpl'
                         style="black"   
                }
                
		<div class="very_easy">
			<div class="container">
				<div class="row box-anchor">
					<div class="col-lg-10 col-lg-offset-1">
						<div class="row">
                            <a href="/policy.html">Go to Legal Policies </a>
							<div class="col-lg-12">
                                {$tos}
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
            $(document).ready(function(){
                $('#header-menu-store-link').click(function(){
                    ga('send', 'event', 'store link', 'click', 'policy-store-header');
                });
            });
        </script>
</body>
</html>
{/strip}