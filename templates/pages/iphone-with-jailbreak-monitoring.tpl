{include file='../includes/main/main-header.tpl'
    robots="yes" 
    title="Complete iPhone remote tracking for family | Pumpic"
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
            imgUrl = "header_banners/header_mobile.png"
            imgAlt = "Apple iOS Mobile Monitoring App"
            imgAlign = "right"
            imgVerticalAlign = "bottom"
            textAlign = "right"
            title = "Apple iOS Mobile  <br>Monitoring App"
            description = "Enjoy multitask tracking on <b>Jailbroken devices</b>. 
                            <br>Control cell phone use. Follow location and online activity."
            os_versions = "os_v2"                
            promoBuyBlock = "no"
            iCloudSolution = 'yes'
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
                                Soon after submitting the payment, you will receive a letter with further installation guidelines. 
                            </p>
                        </div>
                        <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <h3 class="weight-normal"><i class="icons icon-install"></i>Install</h3>
                            <p>
                                Follow the guidelines from the email to complete the <b>installation</b>. 
                            </p>
                            <p>
                                It will take you no longer than 5 minutes. Note that <b>physical access to the target device is required</b>.
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
                                                
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> SMS <span>View sent and received messages. Block senders and bad-word SMS.</span>
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
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-cancel"></i> Videos <span>View shot and downloaded videos, including deleted ones.</span></li>
                                                
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-cancel"></i> Geo-fences <span>Set specified zones on the map and receive alerts, when they are left or entered.</span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-cancel"></i> Facebook IM <span>Follow group and personal Messenger chats.</span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-cancel"></i> Skype <span>Monitor personal, group messages and calls. </span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-cancel"></i> Viber <span>View personal messages and group chats.</span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-cancel"></i> WhatsApp <span>Follow personal messages and group chats.</span></li>
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
                                                
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> SMS <span>View sent and received messages. Block senders and bad-word SMS.</span>
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
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Videos <span>View shot and downloaded videos, including deleted ones.</span></li>
                                                
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Geo-fences <span>Set specified zones on the map and receive alerts, when they are left or entered.</span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Facebook IM <span>Follow group and personal Messenger chats.</span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Skype <span>Monitor personal, group messages and calls. </span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Viber <span>View personal messages and group chats.</span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> WhatsApp <span>Follow personal messages and group chats.</span></li>
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
                                var symbols = {
                                    usd: '$',
                                    eur: '€',
                                    gbp: '£'
                                };
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
        {include file='../includes/main/main-testimonials.tpl'
                title = "Trusted by Over 10 000 Customers Worldwide"
                sliders = "false"
                blockBg="light"} 
        
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