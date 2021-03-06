{strip}

    {include file='../includes/main/main-header.tpl'
    title="Frequently Asked Questions | Pumpic Help & Support"
    description="Pumpic is an easy-to-use cell phone tracking app. Get through FAQ section to find answers to all questions. Contact our Support Team if you need any help."
    }

    <body>
    <!-- BLOCK GTM -->
    {include file='../includes/main/main-after-body.tpl'}
    <!-- END BLOCK GTM -->

    <!-- FLY BLOCKS -->
    {include file='../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->

    <div id="tmp-faq" class="wrapper">
        {include file='../includes/main/main-top-menu.tpl'
        topmenu_active='faq'
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
        <divv class="very_easy">
            <div class="container">
                <div class="row">
                    <div class="col-lg-10 col-lg-offset-1">
                        <!-- ContactUs -->
                        <div class="row text-center">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <h2>Contact Info</h2>
                                <p class="text-justify">Feel free to visit our FAQ section below if you have basic questions about Pumpic installation, compatibility, billing process or technical issues.</p>
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
                                                <div>
                                                    <i class="plus"></i>
                                                    <a id="what-is-pumpic-app" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse1">What is Pumpic?</a>
                                                    <div id="collapse1" class="collapse">
                                                        <div>
                                                            <p>Pumpic is a feature-rich parental control application designed to monitor your kids’ smartphone and tablet activities such as text messages, phone calls, GPS location, web browsing history, contacts, calendar scheduled events, social media etc.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div>                                                                                                <i class="plus"></i>
                                                    <a id="what-is-pumpic-app" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse2">Is it legal to use Pumpic?</a>
                                                    <div id="collapse2" class="collapse">
                                                        <div>
                                                            <p>It is legal to install and use Pumpic only on devices you own personally or that belong to your underage children. Pumpic does not condone the use of its software for any illegal purposes including but not limited to tracking people’s cell phones without their notice or permission.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div>                                                                                                <i class="plus"></i>
                                                    <a id="what-is-pumpic-app" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse3">Is Pumpic parental monitoring stealth? Can the app be detected on the target device?</a>
                                                    <div id="collapse3" class="collapse">
                                                        <div>
                                                            <p>Pumpic Android solution needs to be installed on the target device and has visible applications, which means that its icon can be detected on the screen of the target device and viewed by a user. In addition, there are alerts, notifications, and badges that trace the operation of the app.</p>
                                                            <p>In turn, with the <a class="text-link a-default" href="/icloud-iphone-without-jailbreak-monitoring.html">iCloud solution</a> for iOS device monitoring, you will not need to install the app on the target device.</p>

                                                            <div class="box-faq-images">
                                                                {*<div class="faq-img">*}
                                                                    {*<img src="{$img}/faq/visible-ios.png" *}{*width="270px" height="479px"*}{* />*}
                                                                    {*<p><i>The app is visible on the screen of jailbroken iOS devices</i></p>*}
                                                                {*</div>*}
                                                                <div class="faq-img">
                                                                    <img src="{$img}/faq/arrow_right-form.png" {*width="270px" height="480px"*} />
                                                                    <p><i>The app is visible on the screen of Android devices</i></p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>

                                            <!-- #start -->
                                            <li>
                                                <div>                                                                                                <i class="plus"></i>
                                                    <a id="start" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse4">Where to start?</a>
                                                    <div id="collapse4" class="collapse">
                                                        <div>
                                                            <p>First, register your account on the website. Choose the most optimal Pumpic subscription plan that suits your needs and budget. Log in to proceed with the payment and further installation.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div>                                                                                                <i class="plus"></i>
                                                    <a id="start" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse5">Where can I check the captured data?</a>
                                                    <div id="collapse5" class="collapse">
                                                        <div>
                                                            <p>Soon after Pumpic is installed on the target device and connected to our server, all the captured data will be uploaded to the Control Panel automatically. You can access your Control Panel in any browser on any device.</p>
                                                            <p>You can also check the captured data by using Pumpic Control Panel Mobile App. It is a separate free mobile application for the Control Panel. The app is available both for iOS and Android smartphones and it is limited to the following features: Call Logs, Text Messages, Location, Browser History, Contacts, Remote Device Reboot, Remote App Reboot, and Remote Device Lock.</p>
                                                            <p>Check detailed <a class="text-link a-default" target="_blank" href="/mobile-monitoring-control-panel-comparison.html">features comparison here</a>. </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div>                                                                                                <i class="plus"></i>
                                                    <a id="start" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse6">Do I need to jailbreak/root the target device to install Pumpic?</a>
                                                    <div id="collapse6" class="collapse">
                                                        <div>
                                                          <p><strong>iOS:</strong> The app is meant to monitor devices without jailbreak. Please note that monitoring of jailbreak-free iOS devices (iCloud monitoring) is currently limited to the following features: Text Messages (SMS, MMS, and iMessages), Calls, Browsing History, Bookmarks (up to iOS 8.4.1), Location, Calendar, Contacts, Photos, Notes (up to iOS 8.4.1), Skype (up to iOS 8.4.1), Kik, and WhatsApp.</p>
                                                          <p><b>Android:</b> The target device requires rooting to get access to the following features: Email, Instant Messеngers, and Social Networks monitoring. The majority of other features is available even without the root.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div>                                                                                                <i class="plus"></i>
                                                    <a id="start" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse7">Is physical access required or can I install the app remotely?</a>
                                                    <div id="collapse7" class="collapse">
                                                        <div>
                                                          <p>iOS:</p>
                                                          <p>iCloud solution setup may require physical access in case you need to check iCloud or backup settings and perform a backup manually.</p>
                                                          <p>Android:</p>
                                                          <p>Physical access is required to install the app on the target Android device whether you are rooting it or not.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>

                                            <!-- #install -->
                                            <li>
                                                <div>                                                                                                <i class="plus"></i>
                                                    <a id="install" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse8">How to install Pumpic?</a>
                                                    <div id="collapse8" class="collapse">
                                                        <div>
                                                            <p>Pumpic installation is very easy and stress-free. It will take you no longer than 5 minutes. Once you have made a purchase, follow the guidelines pointed in a subscription email to complete the setup. Note that physical access to the target device is required to install Android solution and might be needed to adjust settings or perform a backup manually while setting up iCloud monitoring on iOS devices. If you run into difficulties, feel free to contact our Customer Support Team for help.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div>                                                                                                <i class="plus"></i>
                                                    <a id="install" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse9">How to uninstall Pumpic?</a>
                                                    <div id="collapse9" class="collapse">
                                                        <div>
                                                          <p><b>Stop iCloud monitoring on iOS:</b></p>
                                                          <p>You do not need to uninstall anything as you don't install the app on the Apple device. To stop iCloud monitoring, you should unassign the target device via the Control Panel:</p>
                                                          <p>Go to Control Panel > Device Settings > Press “Unassign Device” button.</p>
                                                          <p>Please, note that this action cannot be undone. Your subscription will be deactivated, and you will not be able to use it any longer with any other device. All the data will be deleted from Control Panel immediately.</p>
                                                          <p><b>Uninstall the app on Android:</b></p>
                                                          <p>Go to Phone > Settings > Security > Device administrators > Uncheck the box next to the app > Get back to settings > Apps > com.pumpic > Uninstall.</p>
                                                          <b>Uninstall within the app:</b>
                                                          <p>Run Pumpic App > Enter your Secret Key to proceed to Settings > Tap button “Delete”. </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div>                                                                                                <i class="plus"></i>
                                                    <a id="install" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse10">Can I install or uninstall the application remotely?</a>
                                                    <div id="collapse10" class="collapse">
                                                        <div>
                                                            <p>Both installation and removal of Pumpic Android app are performed manually. Please, make sure you have physical access to the target device before purchasing a subscription.</p>
                                                            <p>If you use iCloud solution, you do not need to install the app on the target device at all. Hence, you do not need physical access to the target device as all the data is monitored through iCloud backup.</p>
                                                            <p>In this case, you will need to know iCloud login and password of the target device to connect it to your Control Panel. If you wish to stop iCloud monitoring, you can do it via Control Panel too by unassigning the target device in the Settings.</p>
                                                            <p>Note that "Unassign Device" action cannot be undone. Your subscription will be deactivated, and you will not be able to use it any longer with any other device. All the data will be deleted from Control Panel immediately.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div>                                                                                                <i class="plus"></i>
                                                    <a id="install" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse11">How to update Pumpic?</a>
                                                    <div id="collapse11" class="collapse">
                                                        <div>
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
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div>                                                                                                <i class="plus"></i>
                                                    <a id="install" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse12">How often is the information updated?</a>
                                                    <div id="collapse12" class="collapse">
                                                        <div>
                                                            <p>The information update frequency depends on each particular feature and monitoring solution you use. The information update frequency depends on each particular feature. At average, information is updated at least every 20 minutes.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div>                                                                                                <i class="plus"></i>
                                                    <a id="install" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse13">Is it possible to add more devices to my Control Panel or will I have to set up an account for each new device?</a>
                                                    <div id="collapse13" class="collapse">
                                                        <div>
                                                            <p>Our Control Panel is very flexible and allows adding as many devices as you wish. However, please note that only one device can be assigned to a specific Pumpic subscription.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div>                                                                                                <i class="plus"></i>
                                                    <a id="install" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse14">Can I switch my subscription plan to another device?</a>
                                                    <div id="collapse14" class="collapse">
                                                        <div>
                                                            <p>Unfortunately, it is not allowed. Only the device you purchased the subscription plan for can run the app.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div>                                                                                                <i class="plus"></i>
                                                    <a id="install" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse16">Is there any daily limit? How to find out if I have reached the limit on my plan?</a>
                                                    <div id="collapse16" class="collapse">
                                                        <div>
                                                            <p>Pumpic has no particular daily limits. There only are limits coming with Android Basic subscription plan, which allow you to monitor up to 700 calls and 300 SMS per month. However, you can reach these limits much earlier than a month.</p>
                                                            <p>If you notice that the data in your Control Panel has stopped updating, that might be a sign that you have reached a limit. Contact our Customer Support Team to make sure. In this case, you can either buy the same Android Basic subscription, upgrade to Premium or additionally order unlimited calls or SMS within your Android Basic subscription plan.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>

                                            <!-- #compatibility -->
                                            <li>
                                                <div>                                                                                                <i class="plus"></i>
                                                    <a id="compatibility" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse17">What devices support Pumpic?</a>
                                                    <div id="collapse17" class="collapse">
                                                        <div>
                                                            <p>Pumpic is supported by the majority of smartphones and tablets. Please, note that Pumpic will work properly only with devices that have an implanted active SIM card. To make sure your particular device model is compatible with the application, please visit our <a class="text-link a-default" target="_blank" href="/compatibility/">Compatibility</a> page or contact our Customer Support Team.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div>                                                                                                <i class="plus"></i>
                                                    <a id="compatibility" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse40">How do I figure out my mobile device’s operating system version (OS)? </a>
                                                    <div id="collapse40" class="collapse">
                                                        <div>
                                                            <p>Commonly, the information about your device’s operating system is located in “About” section of “Settings” menu. Below you will find the detailed route for iOS and Android devices.</p>
                                                            <p style="font-weight:bold;">Apple iOS</p>
                                                            <p>Settings &raquo; General &raquo; About &raquo; Version.<br>For example, "Version - 9.3.4 (13G35)"</p>
                                                            <p style="font-weight:bold;">Android</p>
                                                            <p>Settings &raquo; scroll down to the very bottom &raquo; About phone &raquo; Android version.<br>For example, “Android version: 5.1”
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div>                                                                                                <i class="plus"></i>
                                                    <a id="compatibility" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse21">How to root Android?</a>
                                                    <div id="collapse21" class="collapse">
                                                        <div>
                                                            <p>During the installation you will be provided with links to off-site sources, where you will find instructions on how to root Android devices. Pumpic is not connected with such sources. Feel free to find relevant information on Android rooting online on your own as well.</p>
                                                            <p>Note that Android devices do not necessarily require rooting to run Pumpic. However, you should root the target device to get full access to all Pumpic features.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div>                                                                                                <i class="plus"></i>
                                                    <a id="compatibility" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse22">Does Android rooting void a warranty?</a>
                                                    <div id="collapse22" class="collapse">
                                                        <div>
                                                            <p>Take notice that rooting of Android may void your warranty. The decision to root your Android or not should be done at your own risk.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div>                                                                                                <i class="plus"></i>
                                                    <a id="compatibility" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse23">How to cancel my Pumpic subscription and/or delete my account?</a>
                                                    <div id="collapse23" class="collapse">
                                                        <div>
                                                            <p>To cancel your Pumpic subscription and/or delete your account please contact our Customer Support Team.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div>                                                                                                <i class="plus"></i>
                                                    <a id="compatibility" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse24">Is the app attached to a mobile phone operator, a SIM card, or the target device itself?</a>
                                                    <div id="collapse24" class="collapse">
                                                        <div>
                                                            <p>The app is attached to the target device itself. It will continue working, even if you change a carrier or switch your SIM card.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div>                                                                                                <i class="plus"></i>
                                                    <a id="compatibility" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse25">Does the app require Internet connection to function at full efficiency?</a>
                                                    <div id="collapse25" class="collapse">
                                                        <div>
                                                            <p>The app itself does not require Internet connection for monitoring. However, to transfer the collected data to your Control Panel, the target device needs to have Internet connection. Usually EDGE/3G is enough. However, to transfer multimedia files you will need Wi-Fi connection.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>

                                            <!-- #billing -->
                                            <li>
                                                <div>                                                                                                <i class="plus"></i>
                                                    <a id="billing" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse27">What payment methods are available?</a>
                                                    <div id="collapse27" class="collapse">
                                                        <div>
                                                            <p>There are multiple payment methods available for the convenience of our customers. They include:</p>
                                                            <ul class='list-items'>
                                                                <li>Visa/MasterCard</li>
                                                                <li>PayPal</li>
                                                                <li>American Express</li>
                                                                <li>Discover/Novus</li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div>                                                                                                <i class="plus"></i>
                                                    <a id="billing" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse28">Is it possible to get a refund?</a>
                                                    <div id="collapse28" class="collapse">
                                                        <div>
                                                            <p>Pumpic users can request a refund, if their reasons for doing so comply with our <a class="text-link a-default" target="_blank" href="/policy.html#refund-policy">Refund Policy</a>. You can email your refund request to our Customer Support Team and explain in details why, in your opinion, you qualify for a refund. Our Customer Care will get back to you in the shortest time possible.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div>                                                                                                <i class="plus"></i>
                                                    <a id="billing" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse29">How to disable an automatic billing option?</a>
                                                    <div id="collapse29" class="collapse">
                                                        <div>
                                                            <p>An automatic billing option can be deactivated at your request. Use our online chat, place a ticket via our contact form or simply send an email to our Customer Support Team, and we will do it for you.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>

                                            {*<li>
                                                <div>                                                                                                <i class="plus"></i>
    <a id="billing" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse30">How much does it cost to upgrade my plan?</a>
    <div id="collapse30" class="collapse">
                                                        <div>
        <p>If you decide to upgrade your subscription plan, you will need to pay the difference in the price of your current subscription and the subscription you want to upgrade to. Please note that you will need to get in touch with our Customer Support Team to have your price recalculated and get step-by-step assistance with upgrading your plan. Once the payment is successfully done, your account will be upgraded within 5 minutes.</p>
        </div>
                                                    </div>
                                                </div>
</li>*}

                                            <li>
                                                <div>                                                                                                <i class="plus"></i>
                                                    <a id="billing" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse31">What will I see in my bank statement?</a>
                                                    <div id="collapse31" class="collapse">
                                                        <div>
                                                            <p>In your bank statement, you will see FS *pumpic.com.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>

                                            <li>
                                                <div>                                                                                                <i class="plus"></i>
                                                    <a id="billing" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse32">What happens after a purchase?</a>
                                                    <div id="collapse32" class="collapse">
                                                        <div>
                                                            <p>Please check your email after submitting your payment. Consider that sometimes automatically generated emails may be classified as Spam, so please check Spam box as well. You will receive a payment confirmation message from a billing company, and one more email from us with both a link to your Control Panel and login credentials.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>

                                            <!-- #other -->
                                            <li>
                                                <div>                                                                                                <i class="plus"></i>
                                                    <a id="other" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse33">How to block incoming calls?</a>
                                                    <div id="collapse33" class="collapse">
                                                        <div>
                                                            <p>To block incoming calls from a specific phone number, add this number to a Block list under a Settings tab. Pumpic will automatically block attempts to reach the target cell phone user and a caller will hear only busy tones.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            {*<li>
                                                <div>                                                                                                <i class="plus"></i>
    <a id="other" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse34">How to start tracking BBM?</a>
    <div id="collapse34" class="collapse">
                                                        <div>
        <p>Open up BBM on the target phone. Tap on the icon with the BlackBerry symbol. Choose “Options”. Find the “Save Chat History” option and choose “Device”. Click “Agree” once it asks about saving the settings and save the changes.</p>
                                                        </div>
                                                     </div>
                                                </div>
</li>*}
                                            <li>
                                                <div>                                                                                                <i class="plus"></i>
                                                    <a id="other" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse35">Where can I view the information on the target user’s SMS and call logs?</a>
                                                    <div id="collapse35" class="collapse">
                                                        <div>
                                                            <p>All the data from the target device including SMS and call logs, is located in your Control Panel under corresponding tabs. Navigate through your Control Panel searching for the required information.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div>                                                                                                <i class="plus"></i>
                                                    <a id="other" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse36">How can I delete information from my Control Panel?</a>
                                                    <div id="collapse36" class="collapse">
                                                        <div>
                                                            <p>Go to “Device Settings” section of your Control Panel and choose “Unassign Device” on the right corner below.  </p>
                                                            <p>Note that this action cannot be undone. Your subscription will be deactivated, and you will not be able to use it any longer with any other device. All the data will be deleted from Control Panel immediately.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            {* <li>
                                                <div>                                                                                                <i class="plus"></i>
                                                    <a id="other" href="javascript:void(0)" data-toggle="collapse" data-target="#collapse37">Do you have a smartphone app for your Control Panel?</a>
                                                    <div id="collapse37" class="collapse">
                                                        <div>
                                                            <p>Yes, there is a separate free mobile application for the Control Panel of Pumpic Mobile Monitoring. It is available both for iOS and Android smartphones and limited to the following features: Call Logs, Text Messages, Location, Browser History, Contacts, Remote Device Reboot, Remote App Reboot, and Remote Device Lock. However, you can still access a full version of your Control Panel by using any browser at cp.pumpic.com.</p>
                                                            <p>To use Pumpic Control Panel Mobile App, you must have your Pumpic account connected to the target device. Internet connection is also required for updates of the monitored information.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li> *}
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
