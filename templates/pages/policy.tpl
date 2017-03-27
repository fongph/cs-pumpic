{strip}
    {if ($preview)}{$robots='no'}{/if}
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
							<div class="col-lg-12">
                                <h2 id="legal-policy">Legal Policies</h2>

                                <ul class="feature_list">
                                    <li><a href="/direct-notice{if ($preview)}{$preview}{/if}.html">Direct Notice</a></li>
                                    <li><a href="/tos{if ($preview)}{$preview}{/if}.html">Term of Use</a></li>
                                    <li><a href="/policy{if ($preview)}{$preview}{/if}.html#privacy_policy">Privacy Policy & COPPA Notice</a></li>
                                </ul>
                                <article>
                                    <p class="text-justify">Please carefully read this end user license agreement (here and after "EULA") before purchasing or using Pumpic software. By purchasing, downloading, installing, logging in, or otherwise using the application as well as a cloud based monitoring solution (here and after iCloud solution), you agree to adhere to the terms of this license. If you do not accept the terms of this license, do not purchase, download, install, log in, or use Pumpic software, delete it as well as all of its related files from your device. This EULA is a legal agreement between you and the software provider. By purchasing, downloading, installing, logging in, or otherwise using the app or iCloud solution, you agree to be bound by the terms. </p>
                                    <p class="text-justify">By accepting this agreement, you agree to install this software only on a device or devices owned by you and, for cloud-based or other monitoring that does not require installation on a device, to use it only in connection with an account, application, or program you have the legal right to access. You also agree to inform any person(s) who use(s) a device with the software installed and any other person with the right to access a monitored account of the presence of the software. Failure to comply may result in you breaking state and federal laws. You understand and agree that you shall be responsible for any legal costs incurred by the application provider resulting from your improper or illegal use of the software.</p>
                                </article>

                                    {$policy}

                                <div class="row_top_border">
                                    <h3 class="text-center">Contact Us{*CONTACT US*}</h3>
                                    <p class="text-center">
                                        If you have any questions regarding the aforementioned Refund Policy, Privacy Policy or<br/>any other questions on operation of this Site, please feel free to contact us via
                                    </p>
                                    <p class="text-center text-success">
                                        <span id="img-support"></span>
                                        {*<a href="mailto:support@pumpic.com">support@pumpic.com</a>*}
                                    </p>
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