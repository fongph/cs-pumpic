{*registration out="getOut" post=$smarty.post*}
{strip}
{include file='../includes/main/main-header.tpl'
    robots="no" 
    title="Pumpic.com mobile monitoring software."
    description="Keep your family safe and secured with Pumpic. Track location. View calls and SMS. Follow online activity."
    keywords = "parental control, employee monitoring"
}    

<body>
    <!-- BLOCK GTM -->
    {include file='../includes/main/main-after-body.tpl'}
    <!-- END BLOCK GTM -->
    
    <!-- FLY BLOCKS -->
    {include file='../includes/content/fly/fly_blocks.tpl'
        visibleFlyFeatures = 'no'
    }
    <!-- END FLY BLOCKS-->
    
	<div class="wrapper block-free-trial-form">
	{include file='../includes/main/main-top-menu.tpl' 
            topmenu_active="trial"
            cache_id = "includes_main_main-top-menu"
            nocache}	
        
            <div class="very_easy">
                    <div class="container">
                        
                        {*
                            Template: PHONE
                            Переменные:
                                style (text): стиль блока Phone (blue|black). * - blue 
                        *}
                        {include file='../includes/content/phone/block-phone.tpl'
                                 style="black block"   
                        } 
                        
                         <div class="row">
                            <div class="col-sm-10 col-md-10 col-lg-10 col-lg-offset-1 padding-null">
                                
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
                                                        <li>Follow the instructions and set up Pumpic to track the target device;</li>
                                                        <li>Start monitoring the target device from your Control Panel.</li>
                                                    </ol>
                                                    
                                                    <div class="table-col-3 table-md-col-3 table-sm-col-3" id="table-container">
                                                        <article class="text-center">Features</article>
                                                        <section>
                                                            {include file='../includes/content/table-items/feature-items.tpl'
                                                                notLinks="geo-fences,location-tracking,call-monitoring-software"
                                                            } 
                                                           
                                                            <div class="tab rowspan">
                                                                <span>Avaliable on Apple & Android devices</span>
                                                                <ul>
                                                                    <li>
                                                                        <i class="fa fa-apple"></i>
                                                                        iOS {$ver_icloud_bot} - {$ver_icloud_up} (iCloud)
                                                                    </li>
                                                                    <li> 
                                                                        <i class="fa fa-android"></i>
                                                                        Android {$ver_android_bot} - {$ver_android_up}
                                                                    </li>

                                                                    <li>
                                                                        <i class="fa fa-unlock-alt"></i>
                                                                        iOS {$ver_ios_bot} - {$ver_ios_up} (jailbreak)
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
                    hideFreeTrialBanner = true
                    nocache}
	</div>
	{include file='../includes/main/main-analytics-footer.tpl'}
</body>
</html>
{/strip}	
	