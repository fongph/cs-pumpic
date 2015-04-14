{include file='../includes/main/main-header.tpl'
    robots="yes" 
    title="iPhone remote sms, calls and Facebook tracker"
    description="Keep your family safe and secured with Pumpic. Track location. View calls and SMS. Follow online activity."
}    
    
<body>
    <!-- FLY BLOCKS -->
    {include file='../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->
    
    <div class="wrapper iphone-with-jailbreak-monitoring">
        <!-- TOP MENU -->

	{include file='../includes/main/main-top-menu.tpl'
            topmenu_active='home'
            cache_id = "includes_main_main-top-menu"
            nocache
        }
        
        <!-- CONTENT -->
        {include file='../includes/content/info/info-promo.tpl'
            imgUrl = "header_banners/iphone-with-jailbreak-monitoring.png"
            imgAlt = "Apple iOS Mobile Monitoring App"
            imgAlign = "right"
            imgVerticalAlign = "bottom"
            textAlign = "right"
            title = "Mobile Monitoring App <br>for Jailbroken iOS devices"
            description = "Enjoy remote tracking of Apple devices. 
                            <br />Control iPhone use. Follow location and online activity."
            os_versions = "icloud_v2"                
            promoBuyBlock = "no"
            iCloudSolution = 'yes'
            planPackageBuy = "no"
        }
        
        <!-- BLOCK JAILBREAL SOLUTION -->
        <div class="row-white">
            <div class="container">
                <h2 class="list-group-item-heading text-center"><i class="icons ico-jailbreak"></i> Jailbreak Solution</h2>
            </div>
        </div>
        <!-- END -->
        
        <!-- HOW IT WORK -->
        <div class="light">
            <div class="container">
                <div class="col-lg-8 col-lg-offset-2">
                <h2 class="text-center">How It Works</h2>
                    <div class="row text-center">
                        <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <h3 class="weight-normal"><i class="icons icon-buy"></i>  Buy</h3>
                            <p>
                                Choose between available subscriptions: <b>Premium</b> or <b>Basic</b>. 
                            </p>
                            <p>
                                Soon after submitting the payment, you will receive <b>an email</b>. 
                            </p>
                        </div>
                        <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <h3 class="weight-normal"><i class="icons icon-install"></i>Install</h3>
                            <p>
                                Follow the guidelines from the email to complete the <b>installation</b>. 
                            </p>
                            <p>
                                It will take you no longer than 5 minutes. Note that <b>physical access</b> to the target device <b>is required</b>.
                            </p>
                        </div>
                        <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <h3 class="weight-normal"><i class="icons icon-remotely"></i> Start tracking</h3>
                            <p>
                                Enter your <b>Control Panel</b> to monitor the data from the target device. 
                            </p>
                            <p>
                                Use any browser, any computer or mobile gadget to get the access to your Control Panel.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END -->
        
        <!-- BLOCK CHOOSE SUBSCRIPTION PLAN -->
        <div class="no_bg prices-padding padding-reset">
            <div class="container">
                <div class="row">
                    <div class="col-lg-10 col-lg-offset-1">
                        <div class="row">
                            <div class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1">
                                <table class="tb_pricing table-bordered pricing-second">
                                    <caption>
                                        <div class="table_title">
                                            <h2 class="text-success h2-sm"> Choose Subscription Plan </h2>
                                        </div>
                                    </caption>
                                    <thead>
                                        <tr>
                                            <th>
                                            <div class="column-relative">
                                                <div class="table_title">
                                                    <h2 class="h2-sm">Features</h2>
                                                </div>
                                                    <div class="basic_wr row-pricing-panel">
                                                        <div class="basic_h">
                                                            Basic
                                                        </div>
                                                        <div class="priceb border-none-sm">
                                                            <div class="dtable">
                                                                <div class="dtable-cell">
                                                                    <div class="wr_pack">
                                                                        <img src="{$img}/basic_pack.png">
                                                                    </div>
                                                                </div>
                                                                <div class="dtable-cell">
                                                                    <div class="wr_price_big">
                                                                        <span></span>
                                                                        <div class="box-currence">
                                                                            <symbol attr-iso="usd">$</symbol>
                                                                            <curr id="basic-price-per-month">13.33</curr>
                                                                        </div><span> / month</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            
                                                            <div id="list-plans-basic-package" class="box-plans-package">
                                                               <section> 

                                                                <div class="list-plans box-table">
                                                                    <div class="table-rows">
                                                                        <div class="item-plan table-column col-xs-sm-6 col-sm-6 col-md-6 col-lg-6 vertical-aligh-middle">
                                                                            <i class="i-price-plans-big-basic"></i>
                                                                        </div>
                                                                        <div class="item-plan table-column col-xs-sm-6 col-sm-6 col-md-6 col-lg-6">
                                                                            <p>Buy <strong class="text-red">6</strong> or <strong class="text-red">12</strong> month plan 
                                                                               and <strong class="text-red">get 2 plans for free</strong></p>
                                                                        </div>
                                                                    </div>
                                                                </div>  

                                                               </section>        
                                                            </div>        
                                                                    
                                                            <div class="list_price">
                                                                <form name="price_basic" method="POST" action="/buy.html" autocomplete="off">
                                                                    <input id='product_price_basic' type='hidden' name='price[productID]' value='0' class="product_price" />
                                                
                                                                    <ul>
                                                                        {foreach from=$getProducts.basic key=key item=_item}
                                                                        <li class="">
                                                                            <label class="label_radio hover_label_radio r_off">
                                                                                <input class="data-price" data-target="#basic-price-per-month" data-cur="usd" 
                                                                                       data-price-usd="{$_item.price}" data-period="{$_item.period}" name="optionsRadios" id="optionsRadios{$_item.id}1" 
                                                                                       value="{$_item.id}" type="radio" 
                                                                                       {if $_item.period == '3'} checked="checked" {/if} />
                                                                                <span class="sp">
                                                                                    <strong>
                                                                                        {$_item.period}
                                                                                    </strong> months
                                                                                </span>
                                                                                <div class="box-small-package">    
                                                                                {if $_item.period > 3}<span class="small_package i-price-plans-small-basic"></span>{/if} 
                                                                                </div>
                                                                                <span class="sp_price">
                                                                                    <strong>
                                                                                        <div class="box-currence"><symbol attr-iso="usd">$</symbol><curr>{$_item.price}</curr></div>
                                                                                    </strong>
                                                                                </span>
                                                                                    
                                                                            </label>
                                                                        </li>
                                                                        {/foreach}
                                                                    </ul>
                                                                    <button class="btn btn-default" value="true" type="submit" name="price[submit]">Buy Now</button>
                                                                    <!-- <div class="show_basic_features"><a href="#">Show Basic features</a>
                                                                    </div> -->
                                                                </form>
                                                            </div>
                                                        </div>
                                                        <div class="priceb border-none-sm">
                                                        <div class="table_title show_basic_features">
                                                            <h2 class="h2-sm">Features</h2>
                                                        </div>
                                                            <div class="basic_fe reset-list">
                                                                <ul class="list_price-no-link">
                                                
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> SMS <span>{*View sent and received messages. Block senders and bad-word SMS.*}SMS View sent and received messages. Block senders and bad-word SMS. Limit daily amount of outgoing texts.</span>
                                                                    </li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Calls <span>Follow in- and outbound calls. Block callers by phone numbers.</span>
                                                                    </li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Photos <span>View shot and downloaded photos, including deleted ones.</span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Calendar  <span>Follow scheduled events.</span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Contacts <span>View new, existing and deleted contacts.</span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Location <span>Track current location and route history in table format or on the map.</span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Emails <span>Monitor sent and received emails, including deleted ones.</span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Browser <span>Follow visited websites and block those with inappropriate content.</span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Applications <span>View installed applications. Set time limits to prevent excessive use.</span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Bookmarks <span>View preferred (bookmarked) websites. </span></li>
                                                
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Remote Control <span>Block the target device with a password. Reboot or wipe it remotely.</span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Geo-fences <span>Set specified zones on the map and receive alerts, when they are left or entered.</span></li>
                                                                    
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-cancel"></i> Videos <span>View shot and downloaded videos, including deleted ones.</span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-cancel"></i> Facebook IM <span>Follow group and personal Messenger chats.</span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-cancel"></i> Skype <span>Monitor personal, group messages and calls. </span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-cancel"></i> Viber <span>View personal messages and group chats.</span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-cancel"></i> WhatsApp <span>Follow personal messages and group chats.</span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-cancel"></i> Kik <span>Monitor text messages.</span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-cancel"></i> Instagram <span>View uploaded images and posted comments.</span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-cancel"></i> Keylogger <span>Keep track of each button pressed or taped. View passwords, keystrokes and words input.</span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-cancel"></i> Historical Data <span>Monitor the information from the target device prior to the date, when Pumpic was installed.</span></li>
                                                
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        
                                                
                                                        <div class="visible-sm-box">
                                                            <div class="table_title">
                                                                <h2 class="text-success h2-sm">
                                                                                                Additional Benefits
                                                                                            </h2>
                                                            </div>
                                                                <div class="basic_wr padding-none-list-sm">
                                                                    <div class="priceb border-none">
                                                                        <div class="basic_fe basic_fe_mobile_block reset-list">
                                                                            <ul class="list_price-no-link">
                                                            
                                                                                <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Removal Protection <span>The app is protected with password. Thus, no one else but you can remove it.</span></li>
                                                                                <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> SMS Commands  <span>Sent text messages to manipulate the target device remotely, even without Internet connection:</span>
                                                                                <ul class="feature_list">
                                                                                    <li>instant location</li>
                                                                                    <li>wipe phone</li>
                                                                                    <li>block and unblock device</li>
                                                                                </ul>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                            
                                                            
                                                                </div>
                                                                <div class="basic_wr padding-none-list-sm bb-media-sm">
                                                                    <div class="pricep">
                                                                        <div class="basic_fe basic_fe_mobile_block reset-list">
                                                                            <ul class="list_price-no-link">
                                                            
                                                                                <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i>Removal Protection <span>Control Panel can be accessed from any browser and any computer or mobile gadget (smartphones and tablets).</span></li>
                                                                                <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i>SIM-Card Change Alert <span>In case a SIM-card on the target device is changed, you will receive an email notification.</span>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                        </div>
                                                
                                                    </div>
                                                    <div class="premium_wr row-pricing-panel"> 
                                                        <div class="premium_h">
                                                            Premium
                                                        </div>
                                                        <div class="pricep">
                                                            <div class="dtable">
                                                                <div class="dtable-cell">
                                                                    <div class="wr_pack">
                                                                        <img src="{$img}/premium_pack.png">
                                                                    </div>
                                                                </div>
                                                                <div class="dtable-cell">
                                                                    <div class="wr_price_big">
                                                                        <span></span>
                                                                        <div class="box-currence">
                                                                            <symbol attr-iso="usd">$</symbol>
                                                                            <curr id="premium-price-per-month">16.66</curr>
                                                                        </div><span>/ month</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                                    
                                                            <div id="list-plans-premium-package" class="box-plans-package">
                                                               <section> 

                                                                <div class="list-plans box-table">
                                                                    <div class="table-rows">
                                                                        <div class="item-plan table-column col-xs-sm-6 col-sm-6 col-md-6 col-lg-6 vertical-aligh-middle">
                                                                            <i class="i-price-plans-big-premium"></i>
                                                                        </div>
                                                                        <div class="item-plan table-column col-xs-sm-6 col-sm-6 col-md-6 col-lg-6">
                                                                            <p>Buy <strong class="text-red">6</strong> or <strong class="text-red">12</strong> month plan 
                                                                               and <strong class="text-red">get 2 plans for free</strong></p>
                                                                        </div>
                                                                    </div>
                                                                </div>  

                                                               </section>        
                                                            </div>        
                                                                    
                                                            <div class="list_price">
                                                                <form name="price_premium" method="POST" action="/buy.html" autocomplete="off">
                                                                    <input id='product_price_premium' type='hidden' name='price[productID]' value='0' class="product_price" />
                                                
                                                                    <ul>
                                                                        {foreach from=$getProducts.premium key=key item=_item}
                                                                        <li class="">
                                                                            <label class="label_radio hover_label_radio r_off">
                                                                                <input class="data-price" data-target="#premium-price-per-month" data-cur="usd" 
                                                                                       data-price-usd="{$_item.price}" data-period="{$_item.period}" name="optionsRadios" id="optionsRadios{$_item.id}2" 
                                                                                       value="{$_item.id}" type="radio" 
                                                                                       {if $_item.period == '3'} checked="checked" {/if} />
                                                                                <span class="sp">
                                                                                    <strong>
                                                                                        {$_item.period}
                                                                                    </strong> months
                                                                                </span>
                                                                                
                                                                                <div class="box-small-package">    
                                                                                    {if $_item.period > 3}<span class="small_package i-price-plans-small-premium"></span>{/if} 
                                                                                </div>    
                                                                                    
                                                                                <span class="sp_price">
                                                                                    <strong>
                                                                                        <div class="box-currence"><symbol attr-iso="usd">$</symbol><curr>{$_item.price}</curr></div>
                                                                                    </strong>
                                                                                </span>    
                                                                            </label>
                                                                        </li>
                                                                        {/foreach}
                                                                    </ul>
                                                                    <button class="btn btn-default" value="true" type="submit" name="price[submit]">Buy Now</button>
                                                                    <!-- <div class="show_premium_features"><a href="#">Show Premium features</a>
                                                                    </div> -->
                                                                </form>
                                                            </div>
                                                        </div>
                                                        <div class="pricep ">
                                                        <div class="table_title show_basic_features">
                                                            <h2 class="h2-sm">Features</h2>
                                                        </div>
                                                            <div class="premium_fe reset-list">
                                                                <ul class="list_price-no-link">
                                                
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> SMS <span>{*View sent and received messages. Block senders and bad-word SMS.*}SMS View sent and received messages. Block senders and bad-word SMS. Limit daily amount of outgoing texts.</span>
                                                                    </li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Calls <span>Follow in- and outbound calls. Block callers by phone numbers.</span>
                                                                    </li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Photos <span>View shot and downloaded photos, including deleted ones.</span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Calendar  <span>Follow scheduled events.</span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Contacts <span>View new, existing and deleted contacts.</span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Location <span>Track current location and route history in table format or on the map.</span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Emails <span>Monitor sent and received emails, including deleted ones.</span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Browser <span>Follow visited websites and block those with inappropriate content.</span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Applications <span>View installed applications. Set time limits to prevent excessive use.</span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Bookmarks <span>View preferred (bookmarked) websites. </span></li>
                                                
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Remote Control <span>Block the target device with a password. Reboot or wipe it remotely.</span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Geo-fences <span>Set specified zones on the map and receive alerts, when they are left or entered.</span></li>
                                                                    
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Videos <span>View shot and downloaded videos, including deleted ones.</span></li>
                                           
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Facebook IM <span>Follow group and personal Messenger chats.</span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Skype <span>Monitor personal, group messages and calls. </span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Viber <span>View personal messages and group chats.</span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> WhatsApp <span>Follow personal messages and group chats.</span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Kik <span>Monitor text messages.</span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Instagram <span>View uploaded images and posted comments.</span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Keylogger <span>Keep track of each button pressed or taped. View passwords, keystrokes and words input.</span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Historical Data <span>Monitor the information from the target device prior to the date, when Pumpic was installed.</span></li>
                                                
                                                                </ul>
                                                            </div>
                                                        </div>
                                                                    
                                                        <div class="visible-sm-box">
                                                            <div class="table_title">
                                                                <h2 class="text-success h2-sm">
                                                                                                Additional Benefits
                                                                                            </h2>
                                                            </div>
                                                                <div class="premium_wr">
                                                                    <div class="priceb border-none">
                                                                        <div class="premium_fe basic_fe_mobile_block reset-list">
                                                                            <ul class="list_price-no-link">
                                                            
                                                                                <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Removal Protection <span>The app is protected with password. Thus, no one else but you can remove it.</span></li>
                                                                                <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> SMS Commands  <span>Sent text messages to manipulate the target device remotely, even without Internet connection:</span>
                                                                                <ul class="feature_list">
                                                                                    <li>instant location</li>
                                                                                    <li>wipe phone</li>
                                                                                    <li>block and unblock device</li>
                                                                                </ul>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                            
                                                            
                                                                </div>
                                                                <div class="premium_wr bb-media-sm">
                                                                    <div class="pricep">
                                                                        <div class="premium_fe basic_fe_mobile_block reset-list">
                                                                            <ul class="list_price-no-link">
                                                            
                                                                                <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i>Removal Protection <span>Control Panel can be accessed from any browser and any computer or mobile gadget (smartphones and tablets).</span></li>
                                                                                <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i>SIM-Card Change Alert <span>In case a SIM-card on the target device is changed, you will receive an email notification.</span>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                        </div>
                                                    </div>
                                            </div>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th class="hidden-media-box">
                                            <div class="table_title">
                                                <h2 class="text-success h2-sm">Additional Benefits</h2>
                                            </div>
                                                <div class="basic_wr row-pricing-panel">
                                                    <div class="priceb border-none">
                                                        <div class="basic_fe basic_fe_mobile_block reset-list">
                                                            <ul class="list_price-no-link">

                                                                <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Removal Protection <span>The app is protected with password. Thus, no one else but you can remove it.</span></li>
                                                                <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> SMS Commands  <span>Sent text messages to manipulate the target device remotely, even without Internet connection:</span>
                                                                <ul class="feature_list">
                                                                    <li>instant location</li>
                                                                    <li>wipe phone</li>
                                                                    <li>block and unblock device</li>
                                                                </ul>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>


                                                </div>
                                                <div class="basic_wr row-pricing-panel bb-media-sm">
                                                    <div class="pricep">
                                                        <div class="basic_fe basic_fe_mobile_block reset-list">
                                                            <ul class="list_price-no-link">

                                                                <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i>Remote Activity Control <span>Control Panel can be accessed from any browser and any computer or mobile gadget (smartphones and tablets).</span></li>
                                                                <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i>SIM-Card Change Alert <span>In case a SIM-card on the target device is changed, you will receive an email notification.</span>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th class="hidden-media-box">
                                            <div class="table_title">
                                                <h2 class="text-success h2-sm">Choose Subscription Plan</h2>
                                            </div>
                                                <div class="basic_wr row-pricing-panel">
                                                    <div class="basic_h">
                                                        Basic
                                                    </div>
                                                    <div class="priceb">
                                                        <div class="dtable">
                                                            <div class="dtable-cell">
                                                                <div class="wr_pack">
                                                                    <img src="{$img}/basic_pack.png">
                                                                </div>
                                                            </div>
                                                            <div class="dtable-cell">
                                                                <div class="wr_price_big">
                                                                    <span></span>
                                                                    <div class="box-currence">
                                                                        <symbol attr-iso="usd">$</symbol>
                                                                        <curr id="basic-price-bottom-per-month">13.33</curr>
                                                                    </div><span> / month</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                                
                                                        <div id="list-plans-basic-package" class="box-plans-package">
                                                           <section> 

                                                            <div class="list-plans box-table">
                                                                <div class="table-rows">
                                                                    <div class="item-plan table-column col-xs-sm-6 col-sm-6 col-md-6 col-lg-6 vertical-aligh-middle">
                                                                        <i class="i-price-plans-big-basic"></i>
                                                                    </div>
                                                                    <div class="item-plan table-column col-xs-sm-6 col-sm-6 col-md-6 col-lg-6">
                                                                        <p>Buy <strong class="text-red">6</strong> or <strong class="text-red">12</strong> month plan 
                                                                           and <strong class="text-red">get 2 plans for free</strong></p>
                                                                    </div>
                                                                </div>
                                                            </div>  

                                                           </section>        
                                                        </div>        
                                                                
                                                        <div class="list_price">
                                                            <form name="price_basic_bottom" method="POST" action="/buy.html" autocomplete="off">
                                                                <input id='product_price_basic' type='hidden' name='price[productID]' value='0' class="product_price" />

                                                                <ul>
                                                                    {foreach from=$getProducts.basic key=key item=_item}
                                                                    <li class="">
                                                                        <label class="label_radio hover_label_radio r_off">
                                                                            <input class="data-price" data-target="#basic-price-bottom-per-month" data-cur="usd" 
                                                                                   data-price-usd="{$_item.price}" data-period="{$_item.period}" name="optionsRadios" id="optionsRadios{$_item.id}3" 
                                                                                   value="{$_item.id}" type="radio" 
                                                                                   {if $_item.period == '3'} checked="checked" {/if} />
                                                                            <span class="sp">
                                                                                <strong>
                                                                                    {$_item.period}
                                                                                </strong> months
                                                                            </span>
                                                                            
                                                                            <div class="box-small-package">    
                                                                                {if $_item.period > 3}<span class="small_package i-price-plans-small-basic"></span>{/if} 
                                                                            </div>     
                                                                                
                                                                            <span class="sp_price">
                                                                                <strong>
                                                                                    <div class="box-currence"><symbol attr-iso="usd">$</symbol><curr>{$_item.price}</curr></div>
                                                                                </strong>
                                                                            </span>    
                                                                        </label>
                                                                    </li>
                                                                    {/foreach}
                                                                </ul>
                                                                <button class="btn btn-default" value="true" type="submit" name="price[submit]">Buy Now</button>
                                                                <!-- <div class="show_basic_features"><a href="#">Show Basic features</a>
                                                                </div> -->
                                                            </form>
                                                        </div>
                                                    </div>


                                                </div>
                                                <div class="premium_wr row-pricing-panel">
                                                    <div class="premium_h">
                                                        Premium
                                                    </div>
                                                    <div class="pricep">
                                                        <div class="dtable">
                                                            <div class="dtable-cell">
                                                                <div class="wr_pack">
                                                                    <img src="{$img}/premium_pack.png">
                                                                </div>
                                                            </div>
                                                            <div class="dtable-cell">
                                                                <div class="wr_price_big">
                                                                    <span></span>
                                                                    <div class="box-currence">
                                                                        <symbol attr-iso="usd">$</symbol>
                                                                        <curr id="premium-price-bottom-per-month">16.66</curr>
                                                                    </div><span>/ month</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                                
                                                        <div id="list-plans-premium-package" class="box-plans-package">
                                                           <section> 

                                                            <div class="list-plans box-table">
                                                                <div class="table-rows">
                                                                    <div class="item-plan table-column col-xs-sm-6 col-sm-6 col-md-6 col-lg-6 vertical-aligh-middle">
                                                                        <i class="i-price-plans-big-premium"></i>
                                                                    </div>
                                                                    <div class="item-plan table-column col-xs-sm-6 col-sm-6 col-md-6 col-lg-6">
                                                                        <p>Buy <strong class="text-red">6</strong> or <strong class="text-red">12</strong> month plan 
                                                                           and <strong class="text-red">get 2 plans for free</strong></p>
                                                                    </div>
                                                                </div>
                                                            </div>  

                                                           </section>        
                                                        </div>        
                                                                
                                                        <div class="list_price">
                                                            <form name="price_premium_bottom" method="POST" action="/buy.html" autocomplete="off">
                                                                <input id='product_price_premium' type='hidden' name='price[productID]' value='0' class="product_price" />

                                                                <ul>
                                                                    {foreach from=$getProducts.premium key=key item=_item}
                                                                    <li class="">
                                                                        <label class="label_radio hover_label_radio r_off">
                                                                            <input class="data-price" data-target="#premium-price-bottom-per-month" data-cur="usd" 
                                                                                   data-price-usd="{$_item.price}" data-period="{$_item.period}" name="optionsRadios" id="optionsRadios{$_item.id}4" 
                                                                                   value="{$_item.id}" type="radio" {if $_item.period == '3'} checked="checked" {/if} />
                                                                            <span class="sp">
                                                                                <strong>
                                                                                    {$_item.period}
                                                                                </strong> months
                                                                            </span>
                                                                            
                                                                            <div class="box-small-package">    
                                                                                {if $_item.period > 3}<span class="small_package i-price-plans-small-premium"></span>{/if} 
                                                                            </div>    
                                                                                
                                                                            <span class="sp_price">
                                                                                <strong>
                                                                                    <div class="box-currence"><symbol attr-iso="usd">$</symbol><curr>{$_item.price}</curr></div>
                                                                                </strong>
                                                                            </span>   
                                                                        </label>
                                                                    </li>
                                                                    {/foreach}
                                                                </ul>
                                                                <button class="btn btn-default" value="true" type="submit" name="price[submit]">Buy Now</button>
                                                                <!-- <div class="show_premium_features"><a href="#">Show Premium features</a>
                                                                </div> -->
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="refund_10 refund_bg">
                                                    <div class="wr_refund text-transform-none">
                                                        <div class="day10">10-DAY <span class="d_green">Refund Policy</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th>
                                                <div class="table_header text-center">
                                                  <span class='none-uppercase'>Payment methods:</span>

                                                  <i class="ico-cart-visa"></i>
                                                  <i class="ico-cart-mcart"></i>
                                                  <i class="ico-cart-maestro"></i>
                                                  <i class="ico-cart-aexpress"></i>
                                                  <i class="ico-cart-descover-new"></i>
                                                  <i class="ico-cart-paypal-new"></i>
                                                </div>
                                            </th>
                                        </tr>
                                    </thead>
                                </table>

                                <script type="text/javascript">
                                function roundUsing(func, number, prec) {
                                    var tempnumber = number * Math.pow(10, prec);
                                    tempnumber = func(tempnumber);
                                    return tempnumber / Math.pow(10, prec);
                                }
                                var symbols = { usd: '$', eur: '€', gbp: '£', cad: '$', aud: '$' };
                                $('input[data-target="#basic-price-per-month"], input[data-target="#premium-price-per-month"], input[data-target="#basic-price-bottom-per-month"], input[data-target="#premium-price-bottom-per-month"]').change(function() {

                                    var currentValue = $(this).attr('data-price-' + $(this).attr('data-cur')) / Number($(this).attr('data-period'));

                                    // currentValue = roundUsing(Math.round, currentValue, 2);
                                    currentValue = (Math.floor(currentValue * 100) / 100).toFixed(2);
                                    
                                    $($(this).attr('data-target'))
                                        .html(currentValue)
                                        .prev('symbol')
                                        .html(symbols[$(this).attr('data-cur')] ? symbols[$(this).attr('data-cur')] : '');
                                });
                                </script>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- block upgrade include-->
        </div>
        <!-- END -->
        {* include file='../includes/main/main-testimonials.tpl'
                title = "Trusted by Over 10 000 Customers Worldwide"
                sliders = "false"
                blockBg="light" *}
                
        {* BLOCK TESTIMONIALS HTML (sliders) *}    
        <div class="light">
            <div class="container">
                <h2 class="text-center testimonial-title">Trusted by Over 10 000 Customers Worldwide:</h2>
                <div class="row">

                    <div class="bxSliders">

                        <!-- SLIDE #1 -->
                        <div class="slide">
                            <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <img src="{$img}/testimonials/testimonials_new_25.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>Mike P. (Denver, CO)</h4>
                                            <p>“I didn’t like that my son played games on his iPad all the time. He didn’t want to do his homework, nor to clean his room. All he did was taping on the screen of his tablet. So, I decided to limit his “addiction” somehow. I didn’t want to take away the device, so I searched online and found Pumpic. After I had installed the app, I realized it was what I needed. For now, I can easily set limits on his gaming, Internet use and chatting. I don’t let him play, until his work is done.”</p>
                                    </div>
                            </div>
                            <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <img src="{$img}/testimonials/testimonials_new_26.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>Peter G. (Richmond, VA)</h4>
                                            <p>“I heard about Pumpic from my neighbors, who used it as parental controls to look after kids when at work, and to protect their own cell phones, in case they are lost or stolen. I also wanted to try it, but I didn’t want to jailbreak iPhones I’d bought for my children, my wife and me. When they told me it was available without jailbreak, I sing up and ordered the app with iCloud feature for all my family the very same day. I’m glad I can see my kids are protected now, I can monitor them online and prevent from dangers. And I’m also sure that my wife is safe, as well as she knows I’m ok too.”</p>
                                    </div>
                            </div>
                            <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <img src="{$img}/testimonials/testimonials_new_27.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>Sandra O. (Nashville, TN)</h4>
                                            <p>“Pumpic has reasonably simplified my life. I didn’t know where to find enough time to look after my three sons, and at the same time work full time. I saw Pumpic ad in the Internet and decided to give it a try. I asked my older son to jailbreak his own iPhone and tablets of my younger kids. Then I installed the app on their devices. I can finally calm down and be sure that my children are safe, even when I’m not at home. Thanks Pumpic for helping parents like me.”</p>
                                    </div>
                            </div>
                        </div> <!-- .slide-->
                        <!-- END SLIDER #1 -->
                        <!-- SLIDE #2 -->
                        <div class="slide">
                            <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <img src="{$img}/testimonials/testimonials_new_1.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>Amanda T. (St. Louis, MO)</h4>
                                            <p>“My daughter has recently become inseparable friends with her iPod Touch. She doesn’t want to do anything but listen to music, chat with her friends via Skype or simply scroll her Facebook feed. My husband decided to take away her device, but I said it was not the best idea. We both agreed that a parental control app would be a solution, and decided to try Pumpic. It is amazing! In addition to various device limits, it lets us track her location, Internet usage and block inappropriate content. It is a real helping hand for parents.”</p>
                                    </div>
                            </div>
                            <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <img src="{$img}/testimonials/testimonials_new_2.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>Monica A. (Tampa, FL)</h4>
                                            <p>“My husband and I have two teenage daughters. We long ago realized that we should have a tool to keep an eye on their online life and phone activities. But we couldn’t find a universal app to monitor our older daughter’s iPhone and Android device we bought for our little one. A friend of ours recommended trying Pumpic. He was using it for two or three months on his own, and was very satisfied with results. My husband bought two subscriptions for a year at once. I couldn’t believe it would work so good. The app allows us to see who calls them and write messages, where they go online and track their location in real time. It’s a must-have solution for parents in the modern world I think.”</p>
                                    </div>
                            </div>
                            <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <img src="{$img}/testimonials/testimonials_new_3.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>Jason G. (Los Angeles, CA)</h4>
                                            <p>“I’ve made my son a gift, bought him a brand new iPhone for all that great job he did at school. The first thing I thought about after the purchase was how to secure my kid. I didn’t want him to spend much time chatting and gaming like most kids do today. I also wanted to make sure I’ll find his iPhone, if my son loses it or it is stolen. My friends recommended me Pumpic and I’m even more than satisfied with the app. It keeps my son and his device protected.”</p>
                                    </div>
                            </div>
                        </div> <!-- .slide-->
                        <!-- END SLIDER #2-->

                    </div> <!-- .bxSliders -->

                </div>
            </div>
        </div>        
        
        <!-- RECOMMENDED -->
        {*
            Template: RECOMMENDED
        *}    
        {include file='../includes/main/main-recommended.tpl'}
        
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