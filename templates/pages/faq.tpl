{strip}

{include file='../includes/main/main-header.tpl'
    title="Frequently asked questions about Pumpic"
    description="Pumpic is easy-to-use and user-friendly Cell Phone Tracking App. Learn our FAQ section to find answers to all Pumpic related issues. You can also send your questions to us."
}

<body>
    <!-- FLY BUTTON -->
    {include file='../includes/main/main-button-help.tpl'}
    {include file='../includes/main/main-button-goup.tpl'}
	<div class="wrapper">
	{include file='../includes/main/main-top-menu.tpl' 
                topmenu_active='faq'
                cache_id = "includes_main_main-top-menu"
                nocache
        }	
		<divv class="very_easy">
			<div class="container">
				<div class="row">
					<div class="col-lg-10 col-lg-offset-1">
                                            
                                            <!-- ContactUs -->
                                            <div class="row text-center">
						<h2>Contact Us</h2>
						<p class="text-justify">We are a team of talented designers and developers, who joined forces to create unique and user-friendly smartphones monitoring solutions. Pumpic App was designed to help parents take care of their children and protect them using smartphone monitoring. The application runs on iOS and Android operating system devices only.</p> 
                                                <p class="text-justify">If you have any questions or suggestions, which will help improve our services, please feel free to contact us using the form below or via email.</p>
						<p>
                                                    <a class="link_bordered">
                                                        <strong>Customer Support Team</strong> – <span id="emai-support-v2"></span>
                                                    </a><br />
                                                    <a class="link_bordered">
                                                        <strong>Billing Department</strong> – <span id="emai-billing"></span> {*billing@pumpic.com*}
                                                    </a> 
                                                    <br />
                                                    <a class="link_bordered">
                                                        <strong>Press and Media</strong> – <span id="emai-info"></span> {*info@pumpic.com*}
                                                    </a>
						</p>
                                            </div>
                                            
                                            <div class="row">
							<div class="form">
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
													<option value="iOS">iOS</option>
													<option value="Android">Android</option>
                                                                                                        <option value="Other">Other</option>
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
                                                                                        
											<p>Learn more from our {*<a href="/faq.html">*}FAQ{*</a>*} before submitting an application.</p>
											<button class="btn btn-orange mod-center event-submit">Submit Ticket <!-- btn-warning <i class="icon-right-open"></i>-->
											</button>
										</div>
									</fieldset>
								</form>
							</div>
                                            </div>
                                            
                                            <!-- End -->
                                            
						<div class="row">
							<div class="col-lg-12">
                                                                <h2>Frequently Asked Questions</h2>
								<div class="tab_category">
									{include file='../includes/content/faq-category.tpl'}
									<div class="box_category">
										<ul>
                                                                                        <!-- #what-is-pumpic-app -->
											<li>
												<a id="what-is-pumpic-app" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse1">What is Pumpic?</a>
												<div id="collapse1" class="collapse">
													<p>Pumpic is a feature-rich parental control application designed to monitor your kids’ smartphones and tablets activity such as text messages, phone calls, GPS location, web browsing history, contacts, calendar scheduled events, social media etc.</p>
												</div>
											</li>
											<li>
												<a id="what-is-pumpic-app" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse2">Is it legal to use Pumpic?</a>
												<div id="collapse2" class="collapse">
													<p>It is legal to install and use Pumpic only on the device you own personally or that belongs to your underage children. Pumpic does not condone the use of its software for any illegal purposes including but not limited to tracking people’s cell phones without their notice or permission.</p>
												</div>
											</li>
											<li>
												<a id="what-is-pumpic-app" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse3">Can Pumpic be detected on the target device?</a>
												<div id="collapse3" class="collapse">
													<p>Yes, Pumpic is a visible application that works in a customary mode, meaning its icon is located on the target screen of a cell phone and can be viewed by the user. In addition, there can be alerts, notifications, badges that display the operation of the app etc.</p>
												</div>
											</li>
                                                                                        
                                                                                        <!-- #start -->
											<li>
												<a id="start" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse4">Where to start?</a>
												<div id="collapse4" class="collapse">
													<p>First, register your account on the website. Choose the most optimal Pumpic subscription plan that suits your needs and budget. Log in to proceed with the payment and further installation.</p>
												</div>
											</li>
											<li>
												<a id="start" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse5">Where can I check the captured data?</a>
												<div id="collapse5" class="collapse">
													<p>Soon after Pumpic is installed on the device you want to monitor and connected to our server, the captured data will be uploaded to the Control Panel of your personal account automatically.</p>
												</div>
											</li>
											<li>
												<a id="start" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse6">Do I need to jailbreak/root the target device to install Pumpic?</a>
												<div id="collapse6" class="collapse">
                                                                                                    <p>The app can be used to monitor devices both with jailbreak and without. To track jailbreak-free devices, one can use iCloud feature, otherwise the target device must be jailbroken. Please note that monitoring of jailbreak-free devices is limited to the following features:  SMS, Calls, Contacts, Browser History, Bookmarks, Calendar events.</p>
                                                                                                    <p>Android devices require rooting to get access to the following features: Emails and Social Networks monitoring.</p>
                                                                                                    {*<p>To install Pumpic, the target iOS device must be jailbroken.</p>  
                                                                                                    <p>Android devices require rooting to get access to all the features of the app.</p>*}
                                                                                                </div>
											</li>
											<li>
												<a id="start" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse7">Is physical access required or can I install the app remotely?</a>
												<div id="collapse7" class="collapse">
													<p>To install the application, physical access to the target cell phone or tablet is required. If done properly, the installation process will take no longer than 5 minutes. After that, the app can be controlled remotely from your account.</p>
												</div>
											</li>
                                                                                        
                                                                                        <!-- #install -->
											<li>
												<a id="install" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse8">How to install Pumpic?</a>
												<div id="collapse8" class="collapse">
                                                                                                    <p>
                                                                                                        Installation is very easy and stress-free. Here you will find detailed and stepwise installation instructions for <a class="text-link" target="_blank" href="http://cp.pumpic.com/how-to-install/android-instructions.html">Android</a> and <a class="text-link" target="_blank" href="http://cp.pumpic.com/how-to-install/ios-instructions.html">iOS</a>. If you run into difficulties, feel free to contact our Customer Support Team for help.
                                                                                                    </p>
												</div>
											</li>
											<li>
												<a id="install" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse9">How to uninstall Pumpic?</a>
												<div id="collapse9" class="collapse">
                                                                                                    <b>Uninstall the app on iOS:</b>
                                                                                                    <p>Go to Cydia > Manage > Sources > Click on apps.pumpic.com (the Developer’s Repo) > Updated > Modify > Uninstall > Uninstall will be completed > Go to the Cydia once again > Manage > Sources > Edit > Click on “remove” Next to the Developer’s Repo.</p>
                                                                                                    <b>Uninstall the app on Android:</b>
                                                                                                    <p>Go to Phone > Settings > Security > Device administrators > Uncheck the box next to the app > Get back to settings > Apps > com.pumpic > Uninstall.</p>
                                                                                                    <b>Uninstall within the app:</b>
                                                                                                    <p>Run Pumpic App > Enter your Secret Key to proceed to Settings > Tap button “Delete”. </p>
												</div>
											</li>
											<li>
												<a id="install" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse10">Can I install/uninstall the application remotely?</a>
												<div id="collapse10" class="collapse">
                                                                                                    <p>Installation or removal of Pumpic can be only done manually. Please, make sure you have physical access to the device you plan to monitor before purchasing a subscription.</p>
												</div>
											</li>
											<li>
												<a id="install" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse11">How to update Pumpic?</a>
												<div id="collapse11" class="collapse">
                                                                                                    <b>iOS and Android:</b>
                                                                                                    <p>The app is updated automatically on iOS and Android devices.</p>
                                                                                                    <b>BlackBerry:</b>
                                                                                                    <p>BlackBerry devices are not supported at the moment. We work hard to make them compatible in the nearest future.</p>
                                                                                                    {*<ol>
                                                                                                        <li>Take the target device where the app is installed.</li>
                                                                                                        <li>Open a web browser on the target phone and proceed to: apps.pumpic.com. The app will start downloading automatically.</li> 
                                                                                                        <li>When it’s downloaded, open the Notification Panel (by swiping your finger from the top of the screen to the bottom) and click on the downloaded apk file.</li> 
                                                                                                        <li>Agree with everything that pops up on the screen and click Install.</li> 
                                                                                                        <li>When the app is successfully updated, click “Done”.</li> 
                                                                                                    </ol>*}
												</div>
											</li>
											<li>
												<a id="install" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse12">How often does information get updated?</a>
												<div id="collapse12" class="collapse">
													<p>Pumpic transfers new data to your personal account each Updated Period. This interval identifies how often the device with Pumpic set up is connected to our server and sends the information to your Control Panel directly. When you adjust “Update Period” manually from your personal account, please consider that intervals less than 10 min may noticeably reduce battery life.</p>
												</div>
											</li>
											<li>
												<a id="install" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse13">Is it possible to add more devices to my Control Panel or will I have to set up an account for each new device?</a>
												<div id="collapse13" class="collapse">
													<p>Our Control Panel is very flexible and allows adding as many devices as you wish. However, please be informed that only one device can be connected to a specific Pumpic subscription.</p>
												</div>
											</li>
											<li>
												<a id="install" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse14">Can I switch my subscription plan to another device?</a>
												<div id="collapse14" class="collapse">
													<p>Unfortunately, it is not allowed. Only the device you purchased the subscription plan for can run the app.</p>
												</div>
											</li>
											<li>
												<a id="install" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse15">How to jailbreak iOS?</a>
												<div id="collapse15" class="collapse">
													<p>
                                                                                                            Detailed instructions on how to jailbreak an iOS device can be found <a class="text-link" target="_blank" href="http://{$domain}/security/how-to-jailbreak-iphone-4-4s-5-5s-5c-ios-7/">here</a>. Note that all iOS devices have to be jailbroken before installing Pumpic.
                                                                                                        </p>
												</div>
											</li>
											<li>
												<a id="install" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse16">Is there a limit per day? How to find out if I have reached the limit on my plan?</a>
												<div id="collapse16" class="collapse">
													<p>There is no daily limit. Depending on how actively you use the app, you can reach it in one day, week or month.</p>
                                                                                                        <p>If you notice that the data has stopped updating in your Control Panel after a while, that might signal that you have reached the limit. Contact our Customer Support Team to double-check this information. In this case, you can either obtain the same subscription plan or upgrade it.</p>
												</div>
											</li>
                                                                                        
                                                                                        <!-- #compatibility -->
											<li>
												<a id="compatibility" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse17">What devices support Pumpic?</a>
												<div id="collapse17" class="collapse">
                                                                                                    <p>Pumpic is supported by the majority of smartphones and tablets. To make sure your particular device model is compatible with the application, please visit our <a class="text-link" target="_blank" href="http://{$domain}/compatibility/">Compatibility page</a> or contact our Customer Support Team.</p>
                                                                                                    <p>BlackBerry devices are not supported at the moment. We work hard to make them compatible in the nearest future.</p>
                                                                                                </div>
											</li>
                                                                                        {*
											<li>
												<a id="compatibility" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse18">How to jailbreak iOS?</a>
												<div id="collapse18" class="collapse">
													<p>Detailed instructions on how to jailbreak an iOS device can be found here. Note that all iOS devices have to be jailbroken before installing Pumpic.</p>
												</div>
											</li>*}
											<li>
												<a id="compatibility" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse19">Does jailbreak void warranty? Can I delete jailbreak from the target iOS device to restore warranty?</a>
												<div id="collapse19" class="collapse">
													<p>Yes, jailbreak voids iOS warranty. However, it is completely restorable. To recover the warranty you should either update your gadget to the latest iOS version or restore the phone to primary settings. Please consider that in this case Pumpic will not function.</p>
												</div>
											</li>
											<li>
												<a id="compatibility" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse20">Is jailbreak visible while connected with iTunes, iCloud?</a>
												<div id="collapse20" class="collapse">
													<p>Jailbreak is not visible while connected with iTunes or iCloud. You will be able to use both in regular mode even after jailbreaking your iOS.</p>
												</div>
											</li>
											<li>
												<a id="compatibility" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse21">How to root Android?</a>
												<div id="collapse21" class="collapse">
                                                                                                    <p>Detailed instructions on how to root an Android device can be found <a class="text-link" target="_blank" href="http://www.digitaltrends.com/mobile/how-to-root-android/">here</a>. Note that Android devices do not require rooting to run Pumpic. However, one should root the target device to get full access to all Pumpic features.</p>
												</div>
											</li>
											<li>
												<a id="compatibility" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse22">Does Android rooting void warranty?</a>
												<div id="collapse22" class="collapse">
													<p>Take notice that rooting of Android may void your warranty. The decision to root your Android or not should be done at your own risk.</p>
												</div>
											</li>
											<li>
												<a id="compatibility" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse23">How to cancel my Pumpic subscription and/or delete my account?</a>
												<div id="collapse23" class="collapse">
													<p>To cancel your Pumpic subscription and/or delete your account please contact our Customer Support Team.</p>
												</div>
											</li>
											<li>
												<a id="compatibility" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse24">Is the app attached to the mobile phone operator, SIM card or the device itself?</a>
												<div id="collapse24" class="collapse">
													<p>The app is attached to the device itself. It will continue working, even if you change the carrier or switch your SIM card.</p>
												</div>
											</li>
											<li>
												<a id="compatibility" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse25">Does the app require Internet connection to fully function?</a>
												<div id="collapse25" class="collapse">
													<p>The app itself does not require the Internet connection for monitoring. However, to transfer the collected data to your Control Panel, the target device needs to have Internet connection. Usually EDGE/3G Internet is enough, however, to transfer multimedia files you will need Wi-Fi connection.</p>
												</div>
											</li>
                                                                                        
                                                                                        <!-- #billing -->
											<li>
												<a id="billing" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse26">How much do Pumpic Basic and Pumpic Premium cost?</a>
												<div id="collapse26" class="collapse">
                                                                                                    <p>To get current information on prices, please visit our <a class="text-link" target="_blank" href="http://{$domain}/store.html">Pricing page</a> or contact our Customer Support Team.</p>
												</div>
											</li>
											<li>
												<a id="billing" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse27">What payment methods are available?</a>
												<div id="collapse27" class="collapse">
													<p>There are multiple payment methods available for the convenience of our customers. They include:</p>
                                                                                                        <ul class='list-items'>
                                                                                                            <li>Visa/MasterCard</li> 
                                                                                                            <li>PayPal</li>
                                                                                                            <li>Bank/Wire Transfer</li> 
                                                                                                            <li>American Express</li> 
                                                                                                            <li>Discover/Novus</li> 
                                                                                                            <li>Diners Club</li> 
                                                                                                            <li>Fax</li> 
                                                                                                            <li>JCB</li> 
                                                                                                        </ul>
												</div>
											</li>
											<li>
												<a id="billing" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse28">Is it possible to get a refund?</a>
												<div id="collapse28" class="collapse">
													<p>
                                                                                                            Pumpic users can request a refund, if their reasons for doing so comply with our <a class="text-link" target="_blank" href="http://{$domain}/policy.html#refund-policy">Refund policy</a>. You can email your refund request to our Customer Support Team and explain in details why, in your opinion, you qualify for a refund. Our Dispute Manager will get back to you in the shortest time possible.
                                                                                                        </p>
												</div>
											</li>
											<li>
												<a id="billing" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse29">How to disable the automatic billing option?</a>
												<div id="collapse29" class="collapse">
													<p>The automatic billing option can be deactivated at your request. Use our online chat, place a ticket via our contact form or simply send an email to our Customer Support Team, and we will do it for you.</p>
												</div>
											</li>
                                                                                        
                                                                                        {*<li>
												<a id="billing" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse30">How much does it cost to upgrade my plan?</a>
												<div id="collapse30" class="collapse">
													<p>If you decide to upgrade your subscription plan, you will need to pay the difference in the price of your current subscription and the subscription you want to upgrade to. Please note that you will need to get in touch with our Customer Support Team to have your price recalculated and get step-by-step assistance with upgrading your plan. Once the payment is successfully done, your account will be upgraded within 5 minutes.</p>
												</div>
											</li>*}
                                                                                        
                                                                                        <li>
												<a id="billing" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse31">What will I see in my bank statement?</a>
												<div id="collapse31" class="collapse">
													<p>The bill for Pumpic services will appear in your bank statement.</p>
												</div>
											</li>
                                                                                        
                                                                                        <li>
												<a id="billing" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse32">What happens after the purchase?</a>
												<div id="collapse32" class="collapse">
													<p>Please check your inbox after processing your payment. Consider that sometimes automatically generated emails may be classified as Spam, so please check Spam box as well. You will receive a payment confirmation message from the billing company, and one more email with both a link to your Control Panel and login credentials.</p>
												</div>
											</li>
                                                                                        
                                                                                        <!-- #other -->
                                                                                        <li>
												<a id="other" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse33">How to block incoming calls?</a>
												<div id="collapse33" class="collapse">
													<p>To block incoming calls from a specific phone number, add it to the Black list under the Settings tab. The app will automatically block attempts to reach the target cell phone user and the caller will hear only busy tones.</p>
												</div>
											</li>
                                                                                        {*<li>
												<a id="other" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse34">How to start tracking BBM?</a>
												<div id="collapse34" class="collapse">
													<p>Open up BBM on the target phone. Tap on the icon with the BlackBerry symbol. Choose “Options”. Find the “Save Chat History” option and choose “Device”. Click “Agree” once it asks about saving the settings and save the changes.</p>
												</div>
											</li>*}
                                                                                        <li>
												<a id="other" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse35">Where can I view the information on the target user’s SMS/call logs?</a>
												<div id="collapse35" class="collapse">
													<p>All the data from the target device including SMS/call logs, is located in your Control Panel under corresponding tabs. Navigate through your Control Panel searching for the required information.</p>
												</div>
											</li>
                                                                                        <li>
												<a id="other" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse36">How can I delete information from my Control Panel?</a>
												<div id="collapse36" class="collapse">
													<p>Unfortunately, this option is currently unavailable. However, feel certain that we have taken every precaution to ensure your data is safe and protected.</p>
												</div>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						{*<div class="row">
								<div class="form">
                                                                    <form action="" method="POST" name="form-faq" class="form-faq">
										<fieldset>
											<legend>Have any Other Questions?</legend>
											<div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3">
                                                                                                <span class="info"></span>
												<div class="form-group">
													<input id="name"
                                                                                                               type="text" 
                                                                                                               class="form-control required" 
                                                                                                               placeholder="Name*" 
                                                                                                               name="name" 
                                                                                                               value="" />
												</div>
												<div class="form-group">
													<input id="email"
                                                                                                               type="email" 
                                                                                                               class="form-control required" 
                                                                                                               placeholder="Email*" 
                                                                                                               name="email" 
                                                                                                               value="">
												</div>
												<div class="form-group">
													<textarea id="question"
                                                                                                            rows="10" 
                                                                                                            class="required"
                                                                                                            placeholder="Question*" 
                                                                                                            name="question"></textarea>
												</div>
                                                                                                <div class="fatal-error"></div>
												<button class="btn btn-orange mod-center event-submit">Send
												</button> <!-- btn-warning-->
											</div>
										</fieldset>
									</form>
								</div>
						</div> *}
					</div>
				</div>
			</div>
		</div>
                                                                                        
                {*{include file='../includes/content/banners/banner-promo-trial.tpl'}*}
                
                {include file='../includes/content/banners/index.tpl'}
		<!-- FOOTER -->
                
                <!-- RECOMMENDED -->
                {*
                    Template: RECOMMENDED
                *}    
                {include file='../includes/main/main-recommended.tpl'}
                
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
                    ga('send', 'event', 'store link', 'click', 'faq-store-header');
                });
            });
        </script>
</body>
</html>
{/strip}