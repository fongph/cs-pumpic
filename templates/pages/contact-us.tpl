{strip}
    
{include file='../includes/main/main-header.tpl'
    robots="no" 
    title="Share your thoughts with Pumpic"
    description="Pumpic is always open for any questions and suggestions, which will help improve the software. Feel free to get in touch via the online application form, email or 24/7 Customer Support Team."
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
		<div class="very_easy">
			<div class="container">
				<div class="col-lg-10 col-lg-offset-1">
					<div class="row text-center">
						<h2>Contact Us{*CONTACT US*}</h2>
						<p class="text-justify">We are a team of talented designers and developers, who joined forces to create unique and user-friendly childcare monitoring solution. We introduced Pumpic App for parents to take care of their children and secure their happiness. The application is supported by most of devices that run iOS and Android. We made it for people and convenience in use. If you have any questions or suggestions, which will make our service better, please feel free to contact us using the form below or via email.</p>
						<p>
                                                    <a class="link_bordered">
                                                        <strong>Customer Support Team</strong>–<span id="emai-support-v2"></span>
                                                    </a>
                                                        <!--
							<a href="#" class="link_bordered">
								<strong>Customer Support Team</strong>– support@pumpic.com
                                                        </a> -->
							<br />
						</p>
						<!--p>
							<span><strong>Company:</strong> </span>
							<br />
							<span><strong>Address:</strong> </span>
						</p-->
					</div>
					<div class="row">
						<!-- <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3"> -->
							<div class="form">
                                                                {* contactusSend contact_us=$smarty.post *}
								<form action="" class="form-contact-us" name="send-mail-contact-us" method="POST">
									<fieldset>
										<legend class="uppercase">Send Your Questions to Us</legend>
										<div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3">
                                                                                        <span class="info"></span>
											<div class="form-group">
												<input id="name" 
                                                                                                       name="name" 
                                                                                                       type="text" 
                                                                                                       class="form-control text required" 
                                                                                                       placeholder="Name*" 
                                                                                                       value="" />
											</div>
                                                                                        
											<div class="form-group">
												<input id="email" 
                                                                                                       name="email" 
                                                                                                       type="email" 
                                                                                                       class="form-control text required" 
                                                                                                       placeholder="Email*" 
                                                                                                       value="" />
											</div>
                                                                                        
                                                                                    
											<div class="form-group">
												<select id="os" 
                                                                                                        class="select" 
                                                                                                        name="os">
                                                                                                        <option value="0" selected>Choose your OS*</option>
													<option value="iOS">IOS</option>
													<option value="Android">Android</option>
													{*<option value="blackberry">BlackBerry</option>*}
												</select>
                                                                                                <input id="wos" 
                                                                                                       name="wos" 
                                                                                                       type="hidden" 
                                                                                                       class="form-control text required" 
                                                                                                       placeholder="Wos*" 
                                                                                                       value="" />
											</div>
                                                                                        
                                                                                    
											<div class="form-group">
												<textarea id="description" 
                                                                                                          rows="10" 
                                                                                                          name="description" 
                                                                                                          class="required" 
                                                                                                          placeholder="Question*"></textarea>
											</div>
                                                                                        
                                                                                        <div class="fatal-error"></div>
                                                                                        
											<p>Learn more from our <a href="/faq.html">FAQ</a> before submitting an application.</p>
											<button class="btn btn-orange mod-center event-submit">Submit Ticket <!-- btn-warning <i class="icon-right-open"></i>-->
											</button>
										</div>
									</fieldset>
								</form>
							</div>
					</div>
				</div>
			</div>
		</div>
		{*include file='../includes/main/main-footer-promo.tpl' 
                        labelButton="contacts-now"*}
                {include file='../includes/content/banners/banner-promo-trial.tpl'}        
                
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