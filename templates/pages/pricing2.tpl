{*Order out="getProducts"*}
{*formOrder post=$smarty.post*}

{strip}
{include file='../includes/wrap-title-header.tpl'}

<title>
    Pumpic Prices and Subscription Plans
</title>
<meta name="description" content="Pumpic offers high-quality Cell Phone Tracking Software for a good price. Find out more about a price range and subscription plan types to choose the one suitable for your monitoring needs." />

{include file='../includes/wrap-title-footer.tpl'}
<body>
    {include file='../includes/button-help.tpl'}
    {include file='../includes/button-goup.tpl'}
    <div class="wrapper">
        {include file='../includes/topmenu-logo-login.tpl' topmenu_active='pricing'}
        <div class="no_bg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-10 col-lg-offset-1">
                        <div class="row">
                            <h2>
                                PRICING & PLANS
                            </h2>
                            <div class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1">
                                    <table class="tb_pricing table-bordered pricing-second">
                                        <caption>
                                            <div class="table_header">
                                                {*
                                                <div class="pull-left">
                                                    <div class="box-currancies">
                                                    </div>
                                                </div>*}

                                                <!-- Block choose currency include -->
                                                <div class="pull-right">
                                                    <span>
                                                        Payment methods:
                                                    </span>

                                                    <i class="ico-cart-visa">
                                                    </i>
                                                    <i class="ico-cart-mcart">
                                                    </i>
                                                    <i class="ico-cart-aexpress">
                                                    </i>
                                                    <i class="ico-cart-descover-new">
                                                    </i>
                                                    <i class="ico-cart-paypal-new">
                                                    </i>

                                                    {*
                                                    <a href="#">
                                                        <i class="ico-cart-visa">
                                                        </i>
                                                    </a>
                                                    <a href="#">
                                                        <i class="ico-cart-mcart">
                                                        </i>
                                                    </a>
                                                    <a href="#">
                                                        <i class="ico-cart-maestro">
                                                        </i>
                                                    </a>
                                                    <a href="#">
                                                        <i class="ico-cart-aexpress">
                                                        </i>
                                                    </a>
                                                    <a href="#">
                                                        <i class="ico-cart-paypal">
                                                        </i>
                                                    </a>
                                                    <a href="#">
                                                        <i class="ico-cart-bankwire">
                                                        </i>
                                                    </a>
                                                    <a href="#">
                                                        <i class="ico-cart-descover">
                                                        </i>
                                                    </a>
                                                    <a href="#">
                                                        <i class="ico-cart-cad">
                                                        </i>
                                                    </a>*}
                                                </div>
                                            </div>
                                            <div class="table_title">
                                                <h3>
                                                    Free with every plan:
                                                </h3>
                                                <span>
                                                    <i class="icon-ok">
                                                    </i>Remote control
                                                </span>
                                                <span>
                                                    <i class="icon-ok">
                                                    </i>Software updates
                                                </span>
                                                <span>
                                                    <i class="icon-ok">
                                                    </i>Remote Device Lock
                                                </span>
                                                <span>
                                                    <i class="icon-ok">
                                                    </i>Instant location
                                                </span>
                                                <span>
                                                    <i class="icon-ok">
                                                    </i>SIM card change alert
                                                </span>
                                            </div>
                                        <div class="refund_10"><div class="wr_refund"><div class="day10">10-DAY <span class="d_green">Refund Policy</span></div></div></div>
                                        <div class="support_os"><div class="wr_support_os"><i class="icon-android d_green"></i> Android (2.0 - 5.0) <i class="icon-apple d_green"></i> IOS (6.0 - 8.1.2) jailbreak needed </div></div>
                                        </caption>
                                        <thead>
                                            <tr>
                                                <th>
                                                    <div class="basic_wr">
                                                        <div class="basic_h">
                                                            Basic
                                                        </div>
                                                        <div class="priceb">
                                                            <div class="wr_pack">
                                                                <img src="{$img}/basic_pack.png">
                                                            </div>
                                                            <div class="wr_price_big">
                                                                <span></span>$11.66<span> / month</span>
                                                            </div>
                                                            <div class="list_price">
                                                            <form name="price_basic" method="POST" action="/buy.html">
                                                                <input id='product_price_basic' type='hidden' name='price[productID]' value='0' class="product_price" />
                                                                <ul>
                                                                    {foreach from=$getProducts.basic key=key item=_item}
                                                                    <li class= "">
                                                                        <label class="label_radio hover_label_radio r_off"><input name="optionsRadios" id="optionsRadios{$_item.id}1"
                                                                        value="{$_item.id}" type="radio" 
                                                                        {if $_item.period == '12'} checked="checked" {/if}
                                                                        />
                                                                        <span class="sp">
                                                                            <strong>
                                                                                {$_item.period}
                                                                            </strong> month
                                                                        </span>
                                                                        <span class="sp_price">
                                                                            <strong>
                                                                                ${$_item.price}
                                                                            </strong>
                                                                        </span>
                                                                        </label>
                                                                    </li>
                                                                    {/foreach}
                                                                </ul>
                                                                <button class="btn btn-default" value="true" type="submit" name="price[submit]">Buy Basic</button>
                                                                <div class="show_basic_features"><a href="#">Show Basic features</a></div>
                                                                </form>
                                                            </div>
                                                            <div class="basic_fe">
                                                            <ul>
                                                                <li data-toggle="tooltip" data-placement="top" title="View detailed data on incoming/outgoing calls: name, phone number, time and duration"><i class="icon-ok"></i> Calls history <span>(700 calls monthly)</span></li>
                                                                <li data-toggle="tooltip" data-placement="top" title="View text message content with detailed data including name, phone number and time"><i class="icon-ok"></i> SMS history <span>(300 SMS monthly)</span></li>
                                                                <li data-toggle="tooltip" data-placement="top" title="Block SMS from specific senders. Not available for Android 4.4 and newer versions"><i class="icon-ok"></i> SMS blocking </li>
                                                                <li data-toggle="tooltip" data-placement="top" title="Track current location as well as the entire route history of your children"><i class="icon-ok"></i> Location history</li> 
                                                                <li data-toggle="tooltip" data-placement="top" title="View your kid’s contact list including names, addresses, numbers and emails"><i class="icon-ok"></i> Contacts</li>
                                                                <li data-toggle="tooltip" data-placement="top" title="Monitor scheduled dates and events. Follow your kid’s calendar plans"><i class="icon-ok"></i> Calendar</li>
                                                                <li data-toggle="tooltip" data-placement="top" title="View all websites your kid visits. On iOS devices available for Safari browser only"><i class="icon-ok"></i> Browsing history</li>
                                                                <li data-toggle="tooltip" data-placement="top" title="View all websites that your child visited and bookmarked as preferred ones"><i class="icon-ok"></i> Bookmarks</li> 
                                                                <li data-toggle="tooltip" data-placement="top" title="View all photos stored on your kid’s device"><i class="icon-ok"></i> Photos</li>
                                                                <li data-toggle="tooltip" data-placement="top" title="View all emails and detailed contact data. Root is required for Android devices"><i class="icon-ok"></i> Emails</li>
                                                                <li data-toggle="tooltip" data-placement="top" title="Monitor all applications (games, services etc.) downloaded on your kid’s device"><i class="icon-ok"></i> Applications</li>
                                                                <li data-toggle="tooltip" data-placement="top" title="Block distracting applications and 18+ websites"><i class="icon-ok"></i> Websites & Apps blocking</li>
                                                                 
                                                                <li data-toggle="tooltip" data-placement="top" title="Track conversations via Skype, WhatsApp, Viber. Root is required for Android"><i class="icon-cancel"></i> Viber/WhatsApp/Skype</li>
                                                                <li data-toggle="tooltip" data-placement="top" title="View all user videos stored on your child’s device"><i class="icon-cancel"></i> View user Videos</li>
                                                                <li data-toggle="tooltip" data-placement="top" title="Monitor your kid’s chats on Facebook. Root is required for Android devices"><i class="icon-cancel"></i> Facebook Messages</li>
                                                                <li data-toggle="tooltip" data-placement="top" title="View all the data ever stored on your kid’s device"><i class="icon-cancel"></i> Historical data</li> 
                                                                <li data-toggle="tooltip" data-placement="top" title="Control devices remotely. Not supported: on Android 4.4+; “Wipe” function on iOS 8+."><i class="icon-cancel"></i> SMS commands</li>
                                                                <li data-toggle="tooltip" data-placement="top" title="Keep track of each button your kid presses on his or her device"><i class="icon-cancel"></i> Keylogger</li>
                                                                                                                              
                                                                                                                     
                                                            </ul>
                                                            </div>
                                                        <div class="basic_h" id="foot_h1">
                                                            Basic
                                                        </div>
                                                            <div class="list_price" id="foot_h2">
                                                            <div class="space_line">&nbsp;</div>
                                                            <form name="price_basic_bottom" method="POST" action="/buy.html">
                                                                <input id='product_price_basic' type='hidden' name='price[productID]' value='0' class="product_price" />
                                                                <ul>
                                                                    {foreach from=$getProducts.basic key=key item=_item}
                                                                    <li class= "">
                                                                        <label class="label_radio hover_label_radio r_off"><input name="optionsRadios" id="optionsRadios{$_item.id}2"
                                                                        value="{$_item.id}" type="radio" 
                                                                        {if $_item.period == '12'} checked="checked" {/if}
                                                                        />
                                                                        <span class="sp">
                                                                            <strong>
                                                                                {$_item.period}
                                                                            </strong> month
                                                                        </span>
                                                                        <span class="sp_price">
                                                                            <strong>
                                                                                ${$_item.price}
                                                                            </strong>
                                                                        </span>
                                                                        </label>
                                                                    </li>
                                                                    {/foreach}
                                                                </ul>
                                                                <button class="btn btn-default" value="true" type="submit" name="price[submit]">Buy Basic</button>
                                                                </form>
                                                            <div class="space_line">&nbsp;</div> 
                                                            </div>                                                        
                                                        </div>

                                                        
                                                    </div>
                                                    <div class="premium_wr">
                                                        <div class="premium_h">
                                                            Premium
                                                        </div>
                                                        <div class="pricep">
                                                        <div class="wr_pack">
                                                                <img src="{$img}/premium_pack.png">
                                                            </div>
                                                            <div class="wr_price_big">
                                                                <span></span>$33.99<span>/ month</span>
                                                            </div>
                                                            <div class="list_price">
                                                            <form name="price_premium" method="POST" action="/buy.html">
                                                                <input id='product_price_premium' type='hidden' name='price[productID]' value='0' class="product_price"/>
                                                                <ul>
                                                                    {foreach from=$getProducts.premium key=key item=_item}
                                                                    <li class= "">
                                                                        <label class="label_radio hover_label_radio r_off"><input name="optionsRadios" id="optionsRadios{$_item.id}3"
                                                                        value="{$_item.id}" type="radio" 
                                                                        {if $_item.period == '12'} checked="checked" {/if}
                                                                        />
                                                                        <span class="sp">
                                                                            <strong>
                                                                                {$_item.period}
                                                                            </strong> month
                                                                        </span>
                                                                        <span class="sp_price">
                                                                            <strong>
                                                                                ${$_item.price}
                                                                            </strong>
                                                                        </span>
                                                                        </label>
                                                                    </li>
                                                                    {/foreach}
                                                                </ul>
                                                                <button class="btn btn-default" value="true" type="submit" name="price[submit]">Buy Premium</button>
                                                                <div class="show_premium_features"><a href="#">Show Premium features</a></div>
                                                                </form>
                                                            </div>
                                                           <div class="premium_fe">
                                                            <ul>
                                                                <li data-toggle="tooltip" data-placement="top" title="View detailed data on incoming/outgoing calls: name, phone number, time and duration"><i class="icon-ok"></i> Calls history <span>(Unlimited)</span></li>
                                                                <li data-toggle="tooltip" data-placement="top" title="View text message content with detailed data including name, phone number and time"><i class="icon-ok"></i> SMS history <span>(Unlimited)</span></li>
                                                                <li data-toggle="tooltip" data-placement="top" title="Block SMS from specific senders. Not available for Android 4.4 and newer versions"><i class="icon-ok"></i> SMS blocking </li>
                                                                <li data-toggle="tooltip" data-placement="top" title="Track current location as well as the entire route history of your children"><i class="icon-ok"></i> Location history</li> 
                                                                <li data-toggle="tooltip" data-placement="top" title="View your kid’s contact list including names, addresses, numbers and emails"><i class="icon-ok"></i> Contacts</li>
                                                                <li data-toggle="tooltip" data-placement="top" title="Monitor scheduled dates and events. Follow your kid’s calendar plans"><i class="icon-ok"></i> Calendar</li>
                                                                <li data-toggle="tooltip" data-placement="top" title="View all websites your kid visits. On iOS devices available for Safari browser only"><i class="icon-ok"></i> Browsing history</li>
                                                                <li data-toggle="tooltip" data-placement="top" title="View all websites that your child visited and bookmarked as preferred ones"><i class="icon-ok"></i> Bookmarks</li> 
                                                                <li data-toggle="tooltip" data-placement="top" title="View all photos stored on your kid’s device"><i class="icon-ok"></i> Photos</li>
                                                                <li data-toggle="tooltip" data-placement="top" title="View all emails and detailed contact data. Root is required for Android devices"><i class="icon-ok"></i> Emails</li>
                                                                <li data-toggle="tooltip" data-placement="top" title="Monitor all applications (games, services etc.) downloaded on your kid’s device"><i class="icon-ok"></i> Applications</li>
                                                                <li data-toggle="tooltip" data-placement="top" title="Block distracting applications and 18+ websites"><i class="icon-ok"></i> Websites & Apps blocking</li>
                                                                 
                                                                <li data-toggle="tooltip" data-placement="top" title="Track conversations via Skype, WhatsApp, Viber. Root is required for Android"><i class="icon-ok"></i> Viber/WhatsApp/Skype</li>
                                                                <li data-toggle="tooltip" data-placement="top" title="View all user videos stored on your child’s device"><i class="icon-ok"></i> View user Videos</li>
                                                                <li data-toggle="tooltip" data-placement="top" title="Monitor your kid’s chats on Facebook. Root is required for Android devices"><i class="icon-ok"></i> Facebook Messages</li>
                                                                <li data-toggle="tooltip" data-placement="top" title="View all the data ever stored on your kid’s device"><i class="icon-ok"></i> Historical data</li> 
                                                                <li data-toggle="tooltip" data-placement="top" title="Control devices remotely. Not supported: on Android 4.4+; “Wipe” function on iOS 8+."><i class="icon-ok"></i> SMS commands</li>
                                                                <li data-toggle="tooltip" data-placement="top" title="Keep track of each button your kid presses on his or her device"><i class="icon-ok"></i> Keylogger</li>
                                                            </ul>
                                                            </div>
                                                        <div class="premium_h" id="foot_h3">
                                                            Premium
                                                        </div>
                                                        <div class="list_price" id="foot_h4">
                                                        <div class="space_line">&nbsp;</div> 
                                                            <form name="price_premium_bottom" method="POST" action="/buy.html">
                                                                <input id='product_price_premium' type='hidden' name='price[productID]' value='0' class="product_price" />
                                                                <ul>
                                                                    {foreach from=$getProducts.premium key=key item=_item}
                                                                    <li class= "">
                                                                        <label class="label_radio hover_label_radio r_off"><input name="optionsRadios" id="optionsRadios{$_item.id}4"
                                                                        value="{$_item.id}" type="radio" 
                                                                        {if $_item.period == '12'} checked="checked" {/if}
                                                                        />
                                                                        <span class="sp">
                                                                            <strong>
                                                                                {$_item.period}
                                                                            </strong> month
                                                                        </span>
                                                                        <span class="sp_price">
                                                                            <strong>
                                                                                ${$_item.price}
                                                                            </strong>
                                                                        </span>
                                                                        </label>
                                                                    </li>
                                                                    {/foreach}
                                                                </ul>
                                                                <button class="btn btn-default" value="true" type="submit" name="price[submit]">Buy Premium</button>
                                                                </form>
                                                                <div class="space_line">&nbsp;</div> 
                                                            </div>
                                                        </div>
                                                    </div>
                                                </th>
                                            </tr>
                                        </thead>
                                    </table>

                               
                                <div class="space_line">&nbsp;</div>
                                <div class="link_circle_italic2">
                                    <div class="style-links2">
                                        <span class="circle_ico2"></span>You need to have physical access to your kid’s device to install the application.
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- block upgrade include-->
        </div>
        {include file='../includes/footer.tpl'}
    </div>
    <script type="text/javascript">
    {literal}
    $(document).ready(function(){
        $('form').submit(function(){
            ga('linker:decorate', this);
        });
        $('[data-toggle="tooltip"]').tooltip({
            placement:'top'
            
        });
        //$('[data-toggle="tooltip"]').tooltip('show');//for debug
        
    });
    {/literal}
    </script>
    {include file='../includes/analytics-footer.tpl'}
    
</body>
</html>
{/strip}