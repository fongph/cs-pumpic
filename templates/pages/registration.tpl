{*registration out="getOut" post=$smarty.post*}
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
	{include file='../includes/topmenu-logo-login.tpl' topmenu_active="false"}	
<div class="very_easy">
			<div class="container">
                            
                             <div class="row">
                                <div class="col-lg-10 col-lg-offset-1">
                                        <div class="row">
                                                <legend class="text-center {*uppercase*}">Register</legend>
                                                {*<h2>Register</h2>*}
                                                {if $productID}
                                                    <h3 class="pb20 text-center">Please register your email before proceeding with your payment</h3>
                                                {/if}    
                                                
                                        </div>
                                        <div class="row">
                                                <div class="col-lg-12">
                                                    {include file='../includes/main-registration.tpl'} 
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
	