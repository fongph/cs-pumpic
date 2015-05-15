{*registration out="getOut" post=$smarty.post*}
{strip}
    
{include file='../includes/main/main-header.tpl'
    robots="no" 
    title="Pumpic.com mobile monitoring software."
    description="Cellspy.org meta description"
    keywords = "parental control, employee monitoring"
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
                            
                             <div class="row">
                                <div class="col-lg-10 col-lg-offset-1">
                                        <div class="row">
                                                <legend class="text-center">Register</legend>
                                                {if $productID}
                                                    <h3 class="pb20 text-center">Please register your email before proceeding with your payment</h3>
                                                {/if}    
                                                
                                        </div>
                                        <div class="row">
                                                <div class="col-lg-12">
                                                    {include file='../includes/main/form/main-registration.tpl'
                                                        cache_id = "includes_main-registration"
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
                {include file='../includes/main/main-footer.tpl'}
	</div>
	{include file='../includes/main/main-analytics-footer.tpl'}
</body>
</html>
{/strip}	
	