{include file='../includes/main/main-header.tpl'
    showRand="true"
    title="iPhone remote sms, calls and Facebook tracker"
    description="Advanced mobile monitoring app for iOS. Compatible with iPhones, iPads and iPods Touch. Discover more than 22 monitoring features in one app."
}    
    
<body>
<style>
    .table_header .list-currencies>a {
        margin-left: 0;
        line-height: 0.7;
    }
</style>
    <!-- BLOCK GTM -->
    {include file='../includes/main/main-after-body.tpl'}
    <!-- END BLOCK GTM -->
    
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
        

        
        {*
            Template: PHONE
            Переменные:
                style (text): стиль блока Phone (blue|black). * - blue 
        *}
        {include file='../includes/content/phone/block-phone.tpl'
                 style="blue"   
        }
        
        <!-- CONTENT -->
        {include file='../includes/content/info/info-promo.tpl'
            imgUrl = "header_banners/iphone-with-jailbreak-monitoring.png"
            imgAlt = "Apple iOS Mobile Monitoring App"
            imgAlign = "right"
            imgVerticalAlign = "bottom"
            textAlign = "right"
            title = "Mobile Monitoring App<br>for Jailbroken iOS devices"
            description = "Enjoy remote tracking of Apple devices.<br />Control iPhone use. Follow location and online activity."
            promoBuyBlock = "no"
            planPackageBuy = "yes"
            planPackageBuyUrl = '#choose-subscription-plan'
            planPackageBuyType = 'link'
            planPackageBuyClass = 'go_block_scroll'
            TouchPad = 'yes'
            Android = 'no'
            Apple = 'yes'
            Icloud = 'no'
            InfoBlock = 'no'
            block_video = "yes"
            block_video_src = "https://www.youtube.com/embed/Atg0CbaytAY"
        }
        <style>
            .features-center li{
                max-width: 400px;
                margin: 0 auto;
            }
            .basic_h {
                text-transform: none;
            }
            @media (max-width: 540px) {
                .basic_wr .priceb {
                    padding-top: 0;
                }
            }
        </style>
        {*
            iCloudSolution = 'yes'
            iCloudSolutionUrl = '/icloud-iphone-without-jailbreak-monitoring.html#icloud-solution'
            iCloudSolutionButtonClass = 'btn-default'
            planPackageBuy = "no"
        *}
        <!-- BLOCK JAILBREAL SOLUTION -->
        <div class="row-white">
            <div class="container">
                <h2 class="list-group-item-heading text-center"><i class="fa fa-unlock-alt" style="margin-right: 5px;"></i>  Jailbreak Solution</h2>
            </div>
        </div>
        <!-- END -->
        
        <!-- HOW IT WORK -->
        <div class="b-how-it-work light">
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
                                It will take you no longer than 5 minutes. Note that <b>jailbreak</b> and <b>physical access</b> to the target device are required.
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
        <div id='choose-subscription-plan' class="no_bg prices-padding {*padding-reset*}">
            <div class="container">
                <div class="row">
                    <div class="col-lg-10 col-lg-offset-1">
                        <div class="row">
                            <div class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1">
                                <table class="tb_pricing table-bordered pricing-second">
                                    <thead>
                                        <tr>
                                            <th>
                                            <div class="column-relative">
                                                <div class="table_title table_title_v2 border-top-bottom">
                                                    <h2 class="h2-sm">Features</h2>
                                                </div>
                                                    <div class="basic_wr w100 row-pricing-panel">
                                                        <div class="basic_h">
                                                            Jailbreak solution
                                                        </div>
                                                        <div class="priceb border-none-sm" style="border-right: none;">
                                                            <div class="dtable">
                                                                <div class="dtable-cell">
                                                                    <div class="wr_pack_basic wr_icloud_jb _single-pack-jailbreak"></div>
                                                                    <div class="wr_pack_double_basic wr_icloud_jb-double _double-pack-jailbreak"></div>
                                                                </div>
                                                                <div class="dtable-cell">
                                                                    <div class="wr_price_big">
                                                                        <span></span>
                                                                        <div class="box-currence">
                                                                            <div class="symbol" attr-iso="usd">$</div>
                                                                            <div class="curr jailbreak-price-per-month">11.65</div>
                                                                        </div><span> / month</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            
                                                            <div class="list_price">
                                                                <form name="price_basic" method="POST" action="#" class="buy-form-with-offer" autocomplete="off">
                                                                    <input id='product_price_basic' type='hidden' name='price[productID]' value='{if isset($getDefaultiosJailbreak)}{$getDefaultiosJailbreak}{else}0{/if}' class="product_price" />
                                                
                                                                    <ul>
                                                                    {foreach from=$getProducts.iosJailbreak key=key item=item}
                                                                        <li>
                                                                            <label class="label_radio hover_label_radio {if $item.period == '1'}r_on{else}r_off{/if}">
                                                                                <input class="data-price" data-target=".jailbreak-price-per-month" data-cur="usd" data-price-usd="{$item.price}" data-offer-price-usd="{$getProducts.iosJailbreakDouble[$key].price}" data-period="{$item.period}" data-product="{$item.id}" data-offer-product="{$getProducts.iosJailbreakDouble[$key].id}" data-group="jailbreak"  name="optionsRadios" id="optionsRadios{$item.id}1" value="{$item.id}" type="radio"{if $item.period == '1'} checked="checked"{/if} />
                                                                                <span class="sp">
                                                                                    <strong>{$item.period}</strong> {if $item.period == 1}month{else}months{/if}
                                                                                </span>

                                                                                <div class="box-small-package">
                                                                                    <div class="offer_old_price"><div class="box-currence strike__currence"><div class="symbol" attr-iso="usd">$</div><div class="curr">{$item.price * 2|string_format:"%.2f"}</div></div></div>
                                                                                </div>

                                                                                <div class="package_price">
                                                                                    <strong>
                                                                                        <div class="box-currence"><div class="symbol" attr-iso="usd">$</div><div class="curr">{$item.price}</div></div>
                                                                                    </strong>
                                                                                </div>
                                                                                <div class="package_offer_price">
                                                                                    <strong>
                                                                                        <div class="box-currence"><div class="symbol" attr-iso="usd">$</div><div class="curr">{$getProducts.iosJailbreakDouble[$key].price}</div></div>
                                                                                    </strong>
                                                                                </div>
                                                                            </label>
                                                                        </li>
                                                                    {/foreach}
                                                                    </ul>
                                                                    <button class="btn btn-default disabled ga-action-submit"
                                                                            ga-action ="click"
                                                                            ga-category="iphone-with-jailbreak-monitoring"
                                                                            ga-label="buy jailbreak"
                                                                            value="true" type="submit" name="price[submit]">DISCONTINUED</button>
                                                                    <!-- <div class="show_basic_features"><a href="#">Show Basic features</a>
                                                                    </div> -->
                                                                </form>
                                                            </div>
                                                        </div>
                                                        <div class="priceb border-none-sm" style="border-right: none;">
                                                        <div class="table_title table_title_v2 show_basic_features border-top-bottom">
                                                            <h2 class="h2-sm">Features</h2>
                                                        </div>
                                                            <div class="basic_fe reset-list">
                                                                <ul class="list_price-no-link features-center" style="border-right: none;">
                                                
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Text Messages <span>View text content sent or received via SMS, MMS, and iMessages.{*SMS View sent and received messages. Block senders and bad-word SMS. Limit daily amount of outgoing texts.*}</span>
                                                                    </li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Calls <span>Follow in- and outbound calls. Block callers by phone numbers.</span>
                                                                    </li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Photos <span>View shot and downloaded photos, including deleted ones.</span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Calendar  <span>Follow scheduled events.</span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Notes  <span>Track Notes on the target iOS device.</span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Contacts <span>View new, existing and deleted contacts.</span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Location <span>Track current location and route history in table format or on the map.</span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Emails <span>Monitor sent and received emails, including deleted ones.</span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Browser <span>Follow visited websites and block those with inappropriate content.</span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Applications <span>View installed applications. Set time limits to prevent excessive use.</span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Bookmarks <span>View preferred (bookmarked) websites.</span></li>
                                                
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Remote Control <span>Block the target device with a password. Reboot or wipe it remotely.</span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Geo-fences <span>Set specified zones on the map and receive alerts, when they are left or entered.</span></li>
                                                                    
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Videos <span>View shot and downloaded videos, including deleted ones.</span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Facebook IM <span>Follow group, personal Messenger chats, and calls.</span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Skype <span>Monitor personal, group messages and calls. </span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Viber <span>View personal messages and group chats.</span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> WhatsApp <span>Follow personal messages, group chats, and calls.</span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Kik <span>Monitor text messages.</span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Instagram <span>View uploaded images and posted comments.</span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Snapchat <span>Monitor photos, videos, and comments.</span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Keylogger <span>Keep track of each button pressed or taped. View passwords, keystrokes and words input.</span></li>
                                                                    <li data-toggle="tooltip" data-placement="top" title=""><i class="icon-ok"></i> Historical Data <span>Monitor the information from the target device prior to the date, when Pumpic was installed.</span></li>
                                                
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        
                                                
                                                        <div class="visible-sm-box">
                                                            <div class="table_title border-top-bottom">
                                                                <h2 class="text-success h2-sm">
                                                                    Additional Benefits
                                                                </h2>
                                                            </div>
                                                                <div class="basic_wr padding-none-list-sm">
                                                                    <div class="priceb border-none">
                                                                        <div class="basic_fe basic_fe_mobile_block reset-list">
                                                                            <ul class="list_price-no-link features-center">
                                                            
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
                                                                            <ul class="list_price-no-link features-center">
                                                            
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
                                            <div class="table_title border-top-bottom">
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
                                                <div class="basic_wr row-pricing-panel w100">
                                                    <div class="basic_h">
                                                        Jailbreak solution
                                                    </div>
                                                    <div class="priceb" style="border-right: none;">
                                                        <div class="dtable">
                                                            <div class="dtable-cell">
                                                                <div class="wr_pack_basic wr_icloud_jb _single-pack-jailbreak"></div>
                                                                <div class="wr_pack_double_basic wr_icloud_jb-double _double-pack-jailbreak"></div>
                                                            </div>
                                                            <div class="dtable-cell">
                                                                <div class="wr_price_big">
                                                                    <span></span>
                                                                    <div class="box-currence">
                                                                        <div class="symbol" attr-iso="usd">$</div>
                                                                        <div class="curr jailbreak-price-per-month">{$getDefaultiosJailbreak}</div>
                                                                    </div><span> / month</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                                
                                                        <div class="list_price">
                                                            <form name="price_basic_bottom" method="POST" action="#" class="buy-form-with-offer" autocomplete="off">
                                                                <input id='product_price_basic' type='hidden' name='price[productID]' value='{if isset($getDefaultBasic)}{$getDefaultBasic}{else}0{/if}' class="product_price" />

                                                                <ul>
                                                                {foreach from=$getProducts.iosJailbreak key=key item=item}
                                                                    <li>
                                                                        <label class="label_radio hover_label_radio {if $item.period == '1'}r_on{else}r_off{/if}">
                                                                            <input class="data-price" data-target=".jailbreak-price-per-month" data-cur="usd" data-price-usd="{$item.price}" data-offer-price-usd="{$getProducts.iosJailbreakDouble[$key].price}" data-period="{$item.period}" data-product="{$item.id}" data-offer-product="{$getProducts.iosJailbreakDouble[$key].id}" data-group="jailbreak"  name="optionsRadios" id="optionsRadios{$item.id}1" value="{$item.id}" type="radio"{if $item.period == '1'} checked="checked"{/if} />
                                                                            <span class="sp">
                                                                                <strong>{$item.period}</strong> {if $item.period == 1}month{else}months{/if}
                                                                            </span>

                                                                            <div class="box-small-package">
                                                                                <div class="offer_old_price"><div class="box-currence strike__currence"><div class="symbol" attr-iso="usd">$</div><div class="curr">{$item.price * 2|string_format:"%.2f"}</div></div></div>
                                                                            </div>

                                                                            <div class="package_price">
                                                                                <strong>
                                                                                    <div class="box-currence"><div class="symbol" attr-iso="usd">$</div><div class="curr">{$item.price}</div></div>
                                                                                </strong>
                                                                            </div>
                                                                            <div class="package_offer_price">
                                                                                <strong>
                                                                                    <div class="box-currence"><div class="symbol" attr-iso="usd">$</div><div class="curr">{$getProducts.iosJailbreakDouble[$key].price}</div></div>
                                                                                </strong>
                                                                            </div>
                                                                        </label>
                                                                    </li>
                                                                {/foreach}
                                                                </ul>
                                                                <button class="btn btn-default disabled ga-action-submit"
                                                                        ga-action ="click"
                                                                        ga-category="iphone-with-jailbreak-monitoring"
                                                                        ga-label="buy jailbreak"
                                                                        value="true" type="submit" name="price[submit]">DISCONTINUED</button>
                                                                <!-- <div class="show_basic_features"><a href="#">Show Basic features</a>
                                                                </div> -->
                                                            </form>
                                                        </div>
                                                    </div>


                                                </div>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th>
                                                <div class="table_header text-center">
                                                    <div class="pull-left">
                                                        <div class="list-currencies clearfix">
                                                            <span>Currency:</span>
                                                            <a class="store-link-currancy-flag active">
                                                                <i class="ico-flag-usd"></i><span>USD</span>
                                                            </a>
                                                            <a class="store-link-currancy-flag active">
                                                                <i class="ico-flag-gbp"></i><span>GBP</span>
                                                            </a>
                                                            <a class="store-link-currancy-flag active">
                                                                <i class="ico-flag-eur"></i><span>EUR</span>
                                                            </a>
                                                            <a class="store-link-currancy-flag active">
                                                                <i class="ico-flag-cad"></i><span>CAD</span>
                                                            </a>
                                                            <a class="store-link-currancy-flag active">
                                                                <i class="ico-flag-aud"></i><span>AUD</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                  <div class="pull-right" style="margin-top: 3px;">
                                                  <span class='none-uppercase'>Payment methods:</span>

                                                  <i class="ico-cart-visa"></i>
                                                  <i class="ico-cart-mcart"></i>
                                                  <i class="ico-cart-maestro"></i>
                                                  <i class="ico-cart-aexpress"></i>
                                                  <i class="ico-cart-descover-new"></i>
                                                  <i class="ico-cart-paypal-new"></i>
                                                </div>
                                                </div>
                                            </th>
                                        </tr>
                                    </thead>
                                </table>

                                <div class="space_line"> </div>
                                <div class="link_circle_italic2">
                                    <div class="style-links2">
                                        <span class="circle_ico2"></span><b>Jailbreak</b> and <b>physical access</b> to the target device are required for iOS monitoring. Meanwhile it is not necessary for <a class='a-default' href='/icloud-iphone-without-jailbreak-monitoring.html'>monitoring iCloud</a>.
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- block upgrade include-->
        </div>
        <!-- END -->
        {* include file='../includes/testimonials.tpl'
                title = "Trusted by Over 10,000 Customers Worldwide"
                sliders = "false"
                blockBg="light" *}
                
        {* BLOCK TESTIMONIALS HTML (sliders) *}    
        <div class="light">
            <div class="container">
                <h2 class="text-center testimonial-title">Trusted by Over 10,000 Customers Worldwide:</h2>
                <div class="row">

                    <div class="bxSliders only-pc">
                        <!-- SLIDE #1 -->
                        <div class="slide">
                            <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <img src="{$img}/testimonials/jeff-b.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>Jeff B. – father of two</h4>
                                            <p>“Our elder daughter got her first smartphone three years ago, and the younger son got his one last year. My wife and I set limits on their use of the Internet but yet we wanted to be aware of what sites our kids are viewing and to whom they talk. My sister recommended using Pumpic as it appeared to be very helpful with her own children. She was right – this app is easy to install and use. For extended monitoring, it may require jailbreaking iPhone, but it’s restorable anyway.”</p>
                                    </div>
                            </div>
                            <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <img src="{$img}/testimonials/ava-t.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>Ava T. – mother of 16-year-old daughter</h4>
                                            <p>“My daughter is a real chatterbox, and I was afraid that sooner or later she would share too personal information about herself or our family on the social media or in conversations with her friends. Once she had a problem because of gossips and then I’ve installed Pumpic to see what she was talking about with her friends. Because of this, she thinks twice before sending a message to someone, and I regularly check her texting and explain to her how the information she shares can influence her in future.”</p>
                                    </div>
                            </div>
                            <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <img src="{$img}/testimonials/ben-h.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>Ben H. – father of 11-year-old son</h4>
                                            <p>“Pumpic is my right hand today. Although my son is 11 years old and it seems that it is too early for teen problems, I already use monitoring app as he spends too much time with his smartphone playing games and trying to download more and more new apps (Applications Control was the first tool I have mastered). My kid knows that I have a possibility to check everything that he does online and where he goes, and it is clear that after Pumpic installation his habits have improved.”</p>
                                    </div>
                            </div>
                        </div> <!-- .slide-->

                        <!-- SLIDE #2 -->
                        <div class="slide">
                            <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <img src="{$img}/testimonials/flora-l.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>Flora L. – mother of twins</h4>
                                            <p>“I’m a single mom of twins. My working schedule is quite tensing, and often I can’t give my kids as much of my time as I wish to. Installing a parental control app appeared to be a necessity. Choosing out of a long list of software, I fixed on Pumpic and never regretted it. The information about any activities of my kids updates within some moments and location tracking is very accurate. Moreover, I’ve set geofences and if my children would go further than their usual way from school to home I would know just at once.”</p>
                                    </div>
                            </div>
                            <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <img src="{$img}/testimonials/anna-h.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>Anna H. – mother of 14-year-old daughter</h4>
                                            <p>“My daughter is what you call “a popular girl” at school. She is active, cheerful and has many friends. And though I know she is a mature and reasonable teen I still prefer to monitor her contacts using this great app. My daughter and I are best friends, but girls happen not to tell some things to their parents, especially about boys...”</p>											
                                    </div>
                            </div>
                            <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <img src="{$img}/testimonials/logan-k.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>Logan K. – father of 11-year-old son</h4>
                                            <p>“I do not allow my son to create a Facebook account as I do not think that he is ready for that online reality. But my son has broken a ban and created a page with fake age information. The installation of Pumpic revealed that. On the one hand, I was disappointed with such disobedience; on the other, slightly proud for all precautions son have taken to hide this activity from us. But Pumpic with the social media monitoring feature brought him out into the open.”</p>
                                    </div>
                            </div>
                        </div> <!-- .slide-->
                    </div>
                    <div class="bxSliderMobile"></div>                

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

    <style>
        .basic_wr .priceb, .premium_wr .pricep{
            margin-top: 0;
        }

        @media (max-width: 700px) {
            .basic_wr .priceb {
                margin-top: 0px;
                padding-top: 0;
            }
        }
    </style>
</body>
</html>