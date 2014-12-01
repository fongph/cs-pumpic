{strip}
{include file='../includes/wrap-title-header.tpl'}

	<title>Share your thoughts with Pumpic</title>
	<meta name="description" content="Pumpic is always open for any questions and suggestions, which will help improve the software. Feel free to get in touch via the online application form, email or 24/7 Customer Support Team." />
	
{include file='../includes/wrap-title-footer.tpl'}
<body>
{include file='../includes/button-help.tpl'}
{include file='../includes/button-goup.tpl'}
	<div class="wrapper">
	{include file='../includes/topmenu-logo-login.tpl' topmenu_active='home'}	
		<div class="very_easy">
			<div class="container">
				<div class="col-lg-10 col-lg-offset-1">
					<div class="row text-center">
						<h2>CONTACT US</h2>
						<p class="text-justify">We are a team of talented designers and developers, who combined forces to create unique and user-friendly surveillance solution. We introduced Pumpic Mobile Phone Monitoring Application for parents to take care of their children and business owners to control their employees remotely. The application is supported by most of devices that run iOs, Android and Blackberry. We made it for people and convenience in operation. If you have any questions or suggestions, which will make our service better, please feel free to contact us using the form below or via email.</p>
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
								<form action="" class="form-contact-us" name="send-mail-conyacy-us" method="POST">
									<fieldset>
										<legend class="tolowercase">Send your questions to us</legend>
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
                                                                                                        <option value="0" selected>Chose your OS*</option>
													<option value="iOS">IOS</option>
													<option value="Android">Android</option>
													<option value="blackberry">BlackBerry</option>
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
											<button class="btn btn-warning">Submit Ticket<i class="icon-right-open"></i>
											</button>
										</div>
									</fieldset>
								</form>
							</div>
					</div>
				</div>
			</div>
		</div>
		{include file='../includes/main-footer-promo.tpl'}
		{include file='../includes/footer.tpl'}
	</div>
	{include file='../includes/analytics-footer.tpl'}
</body>
</html>
{/strip}