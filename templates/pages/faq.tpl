{strip}

{include file='../includes/main/main-header.tpl'
    title="Frequently asked questions about Pumpic"
    description="Pumpic is easy-to-use and user-friendly Cell Phone Tracking App. Learn our FAQ section to find answers to all Pumpic related issues. You can also send your questions to us."
}

<body>
    <!-- FLY BLOCKS -->
    {include file='../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->
    
	<div id="tmp-faq" class="wrapper">
	{include file='../includes/main/main-top-menu.tpl' 
                topmenu_active='faq'
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
		<divv class="very_easy">
			<div class="container">
				<div class="row">
					<div class="col-lg-10 col-lg-offset-1">
                                            
                                            <!-- ContactUs -->
                                            <div class="row text-center">
						<h2>Contact Us</h2>
						<p class="text-justify">We are a team of talented designers and developers, who joined forces to introduce unique and user-friendly smartphone monitoring solutions. Pumpic app was created to help parents take care of their children and protect them by means of remote mobile tracking. The application runs on iOS and Android devices only.</p> 
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
                                                    {include file='../includes/content/phone/block-phone-content.tpl'}
						</p>
                                            </div>
                                            
                                            <div class="row">
                                                <div class="form">
                                                    {include file='../includes/main/form/main-faq-contact-us.tpl'
                                                        cache_id = "main-faq-contact-us"
                                                    nocache} 
                                                </div>
                                            </div>
                                            
                                            <!-- End -->
                                            
						<div class="row">
							<div class="col-lg-12">
                                                                <h2 id="faq_frequently_asked_questions">Frequently Asked Questions</h2>
								<div class="tab_category">
									{include file='../includes/content/faq-category.tpl'}
									<div class="box_category">
										<ul>
                                                                                        <!-- #what-is-pumpic-app -->
											<li>
												<a id="what-is-pumpic-app" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse1">What is Pumpic?</a>
												<div id="collapse1" class="collapse">
													<p>Pumpic is a feature-rich parental control application designed to monitor your kids’ smartphone and tablet activities such as text messages, phone calls, GPS location, web browsing history, contacts, calendar scheduled events, social media etc.</p>
												</div>
											</li>
											<li>
												<a id="what-is-pumpic-app" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse2">Is it legal to use Pumpic?</a>
												<div id="collapse2" class="collapse">
													<p>It is legal to install and use Pumpic only on devices you own personally or that belong to your underage children. Pumpic does not condone the use of its software for any illegal purposes including but not limited to tracking people’s cell phones without their notice or permission.</p>
												</div>
											</li>
											<li>
												<a id="what-is-pumpic-app" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse3">Can Pumpic be detected on the target device?</a>
												<div id="collapse3" class="collapse">
													<p>Yes, Pumpic is a visible application, which means that its icon can be detected on the screen of the target device and viewed by a user. In addition, there are alerts, notifications, and badges that display the operation of the app.</p>
													<p>However, if you use iCloud solution for monitoring iOS devices, you do not need to install the app on the target devices, and thus, its icon does not appear on the screen at all, and its operation is invisible.</p>
                                                                                                        <p>
                                                                                                            <div class="box-faq-images">
                                                                                                                <div class="faq-img">
                                                                                                                    <img src="{$img}/faq/visible-ios.png" {*width="270px" height="479px"*} />
                                                                                                                    <p><i>The app is visible on the screen of jailbroken iOS devices</i></p>
                                                                                                                </div>
                                                                                                                <div class="faq-img">
                                                                                                                    <img src="{$img}/faq/arrow_right-form.png" {*width="270px" height="480px"*} />
                                                                                                                    <p><i>The app is visible on the screen of Android devices</i></p>
                                                                                                                </div>
                                                                                                            </div>
                                                                                                        </p>
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
                                                                                                    <p><b>iOS:</b> The app can be used to monitor devices both with jailbreak and without. To track devices without jailbreak, you can use iCloud solution provided with Premium subscription. Otherwise, the target device must be jailbroken. Please note that monitoring of jailbreak-free iOS devices is currently limited to the following features: Text Messages, Calls, {*Contacts,*} Browsing History, Bookmarks, Calendar, Contacts, Photos, Skype, and WhatsApp.</p>
                                                                                                    <p><b>Android:</b> The target device requires rooting to get access to the following features: Email and Social Network monitoring.</p>
                                                                                                    {*<p>To install Pumpic, the target iOS device must be jailbroken.</p>  
                                                                                                    <p>Android devices require rooting to get access to all the features of the app.</p>*}
                                                                                                </div>
											</li>
											<li>
												<a id="start" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse7">Is physical access required or can I install the app remotely?</a>
												<div id="collapse7" class="collapse">
													<p>Physical access is required to install the app on the target device. However, iCloud solution provided with Premium subscription and designed for monitoring iOS devices requires neither physical access nor jailbreak.</p>
												</div>
											</li>
                                                                                        
                                                                                        <!-- #install -->
											<li>
												<a id="install" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse8">How to install Pumpic?</a>
												<div id="collapse8" class="collapse">
                                                                                                    <p>The installation is very easy and stress-free. It will take you no longer than 5 minutes. Once you have made a purchase, follow the guidelines pointed in a subscription email to complete the setup. Note that physical access to the target device is required (unless you choose iCloud solution for monitoring iOS devices). If you run into difficulties, feel free to contact our Customer Support Team for help.</p>
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
												<a id="install" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse10">Can I install or uninstall the application remotely?</a>
												<div id="collapse10" class="collapse">
                                                                                                    <p>Both installation and removal of Pumpic app is performed manually (unless you choose iCloud solution for monitoring iOS devices, which does not require installation at all). Please, make sure you have physical access to the target device before purchasing a subscription.</p>
																									<p>Note that if you use iCloud solution provided with Premium subscription and designed for iOS devices without jailbreak, you do not need to install the app on the target device at all. At the same time, you do not need physical access to the target device, meanwhile all the data is monitored through iCloud backup. </p>
																									<p>In this case, you will need to know iCloud login and password of the target device to connect it to your Control Panel. </p>
												</div>
											</li>
											<li>
												<a id="install" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse11">How to update Pumpic?</a>
												<div id="collapse11" class="collapse">
                                                                                                    <p><b>iOS:</b> The app is updated automatically on all iOS devices.</p>
                                                                                                    <p><b>Android:</b> Rooted devices are updated automatically. All other Android devices can be updated in two ways:</p>
																									<p>1) By tapping “Update” button in the app on the target device.</p>
																									<p>2) By following an instruction in your Control Panel.</p>
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
												<a id="install" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse12">How often is the information updated?</a>
												<div id="collapse12" class="collapse">
													<p>The information update frequency depends on each particular feature. At average, information is updated at least every 20 minutes.</p>
												</div>
											</li>
											<li>
												<a id="install" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse13">Is it possible to add more devices to my Control Panel or will I have to set up an account for each new device?</a>
												<div id="collapse13" class="collapse">
													<p>Our Control Panel is very flexible and allows adding as many devices as you wish. However, please note that only one device can be assigned to a specific Pumpic subscription.</p>
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
													<p>During the installation you will be provided with links to off-site sources, where you will find instructions on how to jailbreak iOS devices. Pumpic is not connected with such sources. Feel free to find relevant information on iOS jailbreak online on your own as well.</p>
													<p>If you do not want to jailbreak the target iPhone, iPad, or iPod Touch, you can use Pumpic iCloud solution. Note that it is provided with Premium subscription only.</p>
												</div>
											</li>
											<li>
												<a id="install" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse16">Is there any daily limit? How to find out if I have reached the limit on my plan?</a>
												<div id="collapse16" class="collapse">
													<p>Pumpic has no particular daily limits. There only are limits coming with Basic subscription plan, which allow you to monitor up to 700 calls and 300 SMS per month. However, you can reach these limits much earlier than a month.</p>
                                                    <p>If you notice that the data in your Control Panel has stopped updating, that might be a sign that you have reached a limit. Contact our Customer Support Team to make sure. In this case, you can either buy the same Basic subscription, upgrade to Premium or additionally order unlimited calls or SMS within your Basic subscription plan.</p>
												</div>
											</li>
                                                                                        
                                                                                        <!-- #compatibility -->
											<li>
												<a id="compatibility" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse17">What devices support Pumpic?</a>
												<div id="collapse17" class="collapse">
                                                                                                    <p>Pumpic is supported by the majority of smartphones and tablets. To make sure your particular device model is compatible with the application, please visit our <a class="text-link a-default" target="_blank" href="http://{$domain}/compatibility/">Compatibility</a> page or contact our Customer Support Team.</p>
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
												<a id="compatibility" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse19">Does jailbreak void a warranty? Can I delete jailbreak from the target iOS device to restore my warranty?</a>
												<div id="collapse19" class="collapse">
													<p>Yes, jailbreak voids iOS warranty. However, it is completely restorable. To recover your warranty you should either update your gadget to the latest iOS version or restore it to primary settings. Please consider that in this case Pumpic will not function.</p>
												</div>
											</li>
											<li>
												<a id="compatibility" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse20">Is jailbreak visible while connected to iTunes or iCloud?</a>
												<div id="collapse20" class="collapse">
													<p>Jailbreak is not visible while connected to iTunes or iCloud. You will be able to use both in regular mode even after jailbreaking your iOS device.</p>
												</div>
											</li>
											<li>
												<a id="compatibility" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse21">How to root Android?</a>
												<div id="collapse21" class="collapse">
                                                                                                    <p>During the installation you will be provided with links to off-site sources, where you will find instructions on how to root Android devices. Pumpic is not connected with such sources. Feel free to find relevant information on Android rooting online on your own as well.</p>
																									<p>Note that Android devices do not necessarily require rooting to run Pumpic. However, you should root the target device to get full access to all Pumpic features.</p>
												</div>
											</li>
											<li>
												<a id="compatibility" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse22">Does Android rooting void a warranty?</a>
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
												<a id="compatibility" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse24">Is the app attached to a mobile phone operator, a SIM card, or the target device itself?</a>
												<div id="collapse24" class="collapse">
													<p>The app is attached to the target device itself. It will continue working, even if you change a carrier or switch your SIM card.</p>
												</div>
											</li>
											<li>
												<a id="compatibility" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse25">Does the app require Internet connection to function at full efficiency?</a>
												<div id="collapse25" class="collapse">
													<p>The app itself does not require Internet connection for monitoring. However, to transfer the collected data to your Control Panel, the target device needs to have Internet connection. Usually EDGE/3G is enough. However, to transfer multimedia files you will need Wi-Fi connection.</p>
												</div>
											</li>
                                                                                        
                                                                                        <!-- #billing -->
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
													<p>Pumpic users can request a refund, if their reasons for doing so comply with our <a class="text-link a-default" target="_blank" href="http://{$domain}/policy.html#refund-policy">Refund Policy</a>. You can email your refund request to our Customer Support Team and explain in details why, in your opinion, you qualify for a refund. Our Customer Care will get back to you in the shortest time possible.</p>
												</div>
											</li>
											<li>
												<a id="billing" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse29">How to disable an automatic billing option?</a>
												<div id="collapse29" class="collapse">
													<p>An automatic billing option can be deactivated at your request. Use our online chat, place a ticket via our contact form or simply send an email to our Customer Support Team, and we will do it for you.</p>
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
													<p>In your bank statement, you will see FS *pumpic.com.</p>
												</div>
											</li>
                                                                                        
                                                                                        <li>
												<a id="billing" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse32">What happens after a purchase?</a>
												<div id="collapse32" class="collapse">
													<p>Please check your email after submitting your payment. Consider that sometimes automatically generated emails may be classified as Spam, so please check Spam box as well. You will receive a payment confirmation message from a billing company, and one more email from us with both a link to your Control Panel and login credentials.</p>
												</div>
											</li>
                                                                                        
                                                                                        <!-- #other -->
                                                                                        <li>
												<a id="other" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse33">How to block incoming calls?</a>
												<div id="collapse33" class="collapse">
													<p>To block incoming calls from a specific phone number, add this number to a Block list under a Settings tab. Pumpic will automatically block attempts to reach the target cell phone user and a caller will hear only busy tones.</p>
												</div>
											</li>
                                                                                        {*<li>
												<a id="other" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse34">How to start tracking BBM?</a>
												<div id="collapse34" class="collapse">
													<p>Open up BBM on the target phone. Tap on the icon with the BlackBerry symbol. Choose “Options”. Find the “Save Chat History” option and choose “Device”. Click “Agree” once it asks about saving the settings and save the changes.</p>
												</div>
											</li>*}
                                                                                        <li>
												<a id="other" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse35">Where can I view the information on the target user’s SMS and call logs?</a>
												<div id="collapse35" class="collapse">
													<p>All the data from the target device including SMS and call logs, is located in your Control Panel under corresponding tabs. Navigate through your Control Panel searching for the required information.</p>
												</div>
											</li>
                                                                                        <li>
												<a id="other" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse36">How can I delete information from my Control Panel?</a>
												<div id="collapse36" class="collapse">
													<p>Go to “Device Settings” section of your Control Panel and choose “Unassign Device” on the right corner below.  </p>
													<p>Note that this action cannot be undone. Your subscription will be deactivated, and you will not be able to use it any longer with any other device. All the data will be deleted from Control Panel immediately.</p>
												</div>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						{*<div class="row">
								<div class="form">
                                                                    <form action="/faq_send.html" method="POST" name="form-faq" class="form-faq">
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
						</div>*} 
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