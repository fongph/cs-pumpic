{*registration out="getOut" post=$smarty.post*}
{strip}
    
{include file='../includes/main/main-header.tpl'
    robots="no" 
    title="Pumpic.com mobile monitoring software."
    description="Keep your family safe and secured with Pumpic. Track location. View calls and SMS. Follow online activity."
    keywords = "parental control, employee monitoring"
}    

<body>
    <!-- FLY BUTTON -->
    {include file='../includes/main/main-button-help.tpl'}
    {include file='../includes/main/main-button-goup.tpl'}
	<div class="wrapper block-free-trial-form">
	{include file='../includes/main/main-top-menu.tpl' 
            topmenu_active="false"
            cache_id = "includes_main_main-top-menu"
            nocache}	
            
            
            <div class="very_easy">
                    <div class="container">

                         <div class="row">
                            <div class="col-sm-10 col-md-10 col-lg-10 col-lg-offset-1">
                                
                                    <!-- form free trial -->
                                    <div class="row block-items">
                                        <div class="col-lg-7 block-item-1">
                                            
                                            <div id="item-form-trial" class='border'>
                                                <div class="header">
                                                    <img class="left" width="130"
                                                         height="118"
                                                         src="{$img}/pumpic-free-trial.png" alt=""/></li>
                                                    <p><b>Pumpic Free Trial</b>
                                                        <br /><span class="color-white">Mobile Monitoring App</span></p>
                                                    
                                                    
                                                </div>
                                                <div class="body clearfix">
                                                    <ol>
                                                        <li>Fill in and submit Contact Information form;</li>
                                                        <li>Find an email with registration details in your inbox;</li>
                                                        <li>Follow the instructions and install Pumpic on the target device;</li>
                                                        <li>Start monitoring the target device from your Control Panel.</li>
                                                    </ol>
                                                    
                                                    <div class="table-col-3 table-md-col-3 table-sm-col-3" id="table-container">
                                                        <article class="text-center">Features</article>
                                                        <section>
                                                            <div class="tab col-item-3 col-md-item-3 col-sm-item-3">
                                                                <ul>
                                                                    <li><i class="i-features-sms"></i> Monitor SMS</li>
                                                                    <li><i class="i-features-cell-history"></i> Monitor Calls History</li>
                                                                    <li><i class="i-features-calendar"></i> View Calendar</li>
                                                                    <li><i class="i-features-contacts"></i> View Contacts</li>
                                                                    <li><i class="i-features-email"></i> View Emails</li>
                                                                    <li><i class="i-features-sms-commands"></i> SMS Commands</li>
                                                                </ul>
                                                            </div>

                                                            <div class="tab col-item-3 col-md-item-3 col-sm-item-3">
                                                                <ul>
                                                                    <li><i class="i-features-videocam"></i> View Videos</li>
                                                                    <li><i class="i-features-photos"></i> View Photos</li>
                                                                    <li><i class="i-features-browser"></i> Control Browser</li>
                                                                    <li><i class="i-features-app"></i> Control Applications</li>
                                                                    <li><i class="i-features-keyloger"></i> Keylogger</li>
                                                                    <li><i class="i-features-block-device"></i> Block device</li>
                                                                </ul>
                                                            </div>

                                                            <div class="tab col-item-3 col-md-item-3 col-sm-item-3">
                                                                <ul>
                                                                    <li><i class="i-features-monitor-viber-whatsapp"></i> Monitor Whatsapp</li>
                                                                    <li><i class="i-features-monitor-skype"></i> Monitor Skype</li>
                                                                    <li><i class="i-features-social"></i> Monitor Facebook IM</li>
                                                                    <li><i class="i-features-monitor-viber-whatsapp"></i> Monitor Viber</li>
                                                                    <li><i class="i-features-location"></i> Location Tracking</li>
                                                                    <li><i class="i-features-online-control-panel"></i> Online Control Panel</li>
                                                                </ul>
                                                            </div>
                                                            
                                                            <div class="tab rowspan">
                                                                <span>Avaliable on Apple & Android devices</span>
                                                                <ul>   
                                                                    <li> 
                                                                        <i class="icon-android"></i>
                                                                        (2.2 - 5.0)
                                                                    </li>
                                                                    <li> 
                                                                        <i class="icon-apple"></i>
                                                                        (6.0 - 8.1.2)
                                                                    </li>
                                                                </ul>    
                                                            </div>
                                                        </section>

                                                    </div>
                                                    
                                                </div>    
                                            </div>
                                            
                                        </div>
                                                    
                                        <div class="col-lg-5 block-item-2 {*col-lg-left-1*}">
                                            <div id="item-form-trial" class="order-free-trial-form no-border model-center">
                                                <div class="header">
                                                    <span class="color-white text-center">Enjoy Your 7-Day Free Trial</span>
                                                </div>
                                                
                                                {include file='../includes/main/form/main-free-trial-registration.tpl'
                                                    cache_id = "includes_main-registration"
                                                    nocache}
                                                
                                            </div> <!-- .order-free-trial-form -->
                                        </div>
                                    </div>
                                    <!-- end -->
                                
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
	