<?php /* Smarty version Smarty-3.1.21-dev, created on 2016-10-06 08:22:09
         compiled from "/code/templates/includes/store/store-desktop.tpl" */ ?>
<?php /*%%SmartyHeaderCode:158322102657f609b19c3445-35282732%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '7bf318e41a853fada180660988da9fc5ee28801c' => 
    array (
      0 => '/code/templates/includes/store/store-desktop.tpl',
      1 => 1475679555,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '158322102657f609b19c3445-35282732',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'defaultAndriodBasicPrice' => 0,
    'defaultAndriodBasic' => 0,
    'getProducts' => 0,
    'item' => 0,
    'key' => 0,
    'defaultAndroidPremiumPrice' => 0,
    'getDefaultAndroidPremium' => 0,
    'defaultAndroidBasicProduct' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_57f609b1c094c6_50133785',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57f609b1c094c6_50133785')) {function content_57f609b1c094c6_50133785($_smarty_tpl) {?>    <div class="save__2plan">
        <div class="save__text">
            <input type="checkbox" data-group="basic" name="android-40off" data-checkboxes="android-40off-main">
            <span>Save 40%</span> on the 2nd plan. <div class="limited-time">Limited time offer!</div>
        </div>
    </div>
    <div class="basic_wr">
        <div class="basic_h">
            Basic
        </div>
        <div class="priceb">
            <div class="wrapper_pack clearfix">
                <div class="wr_pack_basic android_basic_pack"></div>
                <div class="wr_pack_double_basic android_basic_pack2"></div>
                <div class="wr_price_big">
                    <span></span><div class="box-currence"><div class="symbol" attr-iso="usd">$</div><div class="curr andr-basic-price-per-month"><?php echo $_smarty_tpl->tpl_vars['defaultAndriodBasicPrice']->value;?>
</div></div><span> / month</span>
                </div>
            </div>
            <div class="list_price">
                <form name="price_basic" method="POST" action="/buy.html" class="buy-form-with-offer" autocomplete="off">

                    <input id='product_price_basic' type='hidden' name='price[productID]' value="<?php echo $_smarty_tpl->tpl_vars['defaultAndriodBasic']->value;?>
" class="product_price" />
                    <ul>
                        <?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_smarty_tpl->tpl_vars['key'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['getProducts']->value['androidBasic']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
 $_smarty_tpl->tpl_vars['key']->value = $_smarty_tpl->tpl_vars['item']->key;
?>
                            <li>
                                <label class="label_radio hover_label_radio <?php if ($_smarty_tpl->tpl_vars['item']->value['period']=='12') {?>r_on<?php } else { ?>r_off<?php }?>">
                                    <input class="data-price" data-target=".andr-basic-price-per-month" data-cur="usd" data-price-usd="<?php echo $_smarty_tpl->tpl_vars['item']->value['price'];?>
" data-offer-price-usd="<?php echo $_smarty_tpl->tpl_vars['getProducts']->value['androidBasicDouble'][$_smarty_tpl->tpl_vars['key']->value]['price'];?>
" data-period="<?php echo $_smarty_tpl->tpl_vars['item']->value['period'];?>
" data-product="<?php echo $_smarty_tpl->tpl_vars['item']->value['id'];?>
" data-offer-product="<?php echo $_smarty_tpl->tpl_vars['getProducts']->value['androidBasicDouble'][$_smarty_tpl->tpl_vars['key']->value]['id'];?>
" data-group="basic"  name="optionsRadios" id="optionsRadios<?php echo $_smarty_tpl->tpl_vars['item']->value['id'];?>
1" value="<?php echo $_smarty_tpl->tpl_vars['item']->value['id'];?>
" type="radio"<?php if ($_smarty_tpl->tpl_vars['item']->value['period']=='12') {?> checked="checked"<?php }?> />
                                    <span class="sp">
                                                                            <strong><?php echo $_smarty_tpl->tpl_vars['item']->value['period'];?>
</strong> <?php if ($_smarty_tpl->tpl_vars['item']->value['period']==1) {?>month<?php } else { ?>months<?php }?>
                                                                        </span>

                                    <div class="box-small-package">
                                        <div class="offer_old_price"><div class="box-currence strike__currence"><div class="symbol" attr-iso="usd">$</div><div class="curr"><?php echo $_smarty_tpl->tpl_vars['item']->value['price']*sprintf("%.2f",2);?>
</div></div></div>
                                    </div>

                                    <div class="package_price">
                                        <strong>
                                            <div class="box-currence"><div class="symbol" attr-iso="usd">$</div><div class="curr"><?php echo $_smarty_tpl->tpl_vars['item']->value['price'];?>
</div></div>
                                        </strong>
                                    </div>
                                    <div class="package_offer_price">
                                        <strong>
                                            <div class="box-currence"><div class="symbol" attr-iso="usd">$</div><div class="curr"><?php echo $_smarty_tpl->tpl_vars['getProducts']->value['androidBasicDouble'][$_smarty_tpl->tpl_vars['key']->value]['price'];?>
</div></div>
                                        </strong>
                                    </div>
                                </label>
                            </li>
                        <?php } ?>
                    </ul>
                    <input type="checkbox" data-group="basic" name="android-40off" class="hidden">
                    <button class="btn btn-default ga-action-click"
                            ga-action ="click"
                            ga-category="store"
                            ga-label="buy basic"
                            value="true" type="submit" name="price[submit]">Buy Basic</button>
                    <div class="show_basic_features"><a href="#">Show Basic features</a></div>
                </form>
            </div>
        </div>
    </div>
    <div class="premium_wr">
        <div class="premium_h">
            Premium
        </div>
        <div class="pricep">
            <div class="wrapper_pack clearfix">
                <div class="wr_pack_premium android_prem_pack"></div>
                <div class="wr_pack_double_premium android_prem_pack2"></div>
                <div class="wr_price_big">
                    <span></span><div class="box-currence"><div class="symbol" attr-iso="usd">$</div><div class="curr andr-premium-price-per-month"><?php echo $_smarty_tpl->tpl_vars['defaultAndroidPremiumPrice']->value;?>
</div></div><span>/ month</span>
                </div>
            </div>
            <div class="list_price">
                <form name="price_premium" method="POST" action="/buy.html" class="buy-form-with-offer" autocomplete="off">
                    <input id='product_price_premium' type='hidden' name='price[productID]' value='<?php if (isset($_smarty_tpl->tpl_vars['getDefaultAndroidPremium']->value)) {
echo $_smarty_tpl->tpl_vars['getDefaultAndroidPremium']->value;
} else { ?>0<?php }?>' class="product_price"/>

                    <ul>
                        <?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_smarty_tpl->tpl_vars['key'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['getProducts']->value['androidPremium']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
 $_smarty_tpl->tpl_vars['key']->value = $_smarty_tpl->tpl_vars['item']->key;
?>
                            <li>
                                <label class="label_radio hover_label_radio <?php if ($_smarty_tpl->tpl_vars['item']->value['period']=='12') {?>r_on<?php } else { ?>r_off<?php }?>">
                                    <input class="data-price" data-target=".andr-premium-price-per-month" data-cur="usd" data-price-usd="<?php echo $_smarty_tpl->tpl_vars['item']->value['price'];?>
" data-offer-price-usd="<?php echo $_smarty_tpl->tpl_vars['getProducts']->value['androidPremiumDouble'][$_smarty_tpl->tpl_vars['key']->value]['price'];?>
" data-period="<?php echo $_smarty_tpl->tpl_vars['item']->value['period'];?>
" data-product="<?php echo $_smarty_tpl->tpl_vars['item']->value['id'];?>
" data-offer-product="<?php echo $_smarty_tpl->tpl_vars['getProducts']->value['androidPremiumDouble'][$_smarty_tpl->tpl_vars['key']->value]['id'];?>
" data-group="premium"  name="optionsRadios" id="optionsRadios<?php echo $_smarty_tpl->tpl_vars['item']->value['id'];?>
1" value="<?php echo $_smarty_tpl->tpl_vars['item']->value['id'];?>
" type="radio"<?php if ($_smarty_tpl->tpl_vars['item']->value['period']=='12') {?> checked="checked"<?php }?> />
                                    <span class="sp">
                                                                            <strong><?php echo $_smarty_tpl->tpl_vars['item']->value['period'];?>
</strong> <?php if ($_smarty_tpl->tpl_vars['item']->value['period']==1) {?>month<?php } else { ?>months<?php }?>
                                                                        </span>

                                    <div class="box-small-package">
                                        <div class="offer_old_price"><div class="box-currence strike__currence"><div class="symbol" attr-iso="usd">$</div><div class="curr"><?php echo $_smarty_tpl->tpl_vars['item']->value['price']*sprintf("%.2f",2);?>
</div></div></div>
                                    </div>

                                    <div class="package_price">
                                        <strong>
                                            <div class="box-currence"><div class="symbol" attr-iso="usd">$</div><div class="curr"><?php echo $_smarty_tpl->tpl_vars['item']->value['price'];?>
</div></div>
                                        </strong>
                                    </div>
                                    <div class="package_offer_price">
                                        <strong>
                                            <div class="box-currence"><div class="symbol" attr-iso="usd">$</div><div class="curr"><?php echo $_smarty_tpl->tpl_vars['getProducts']->value['androidPremiumDouble'][$_smarty_tpl->tpl_vars['key']->value]['price'];?>
</div></div>
                                        </strong>
                                    </div>
                                </label>
                            </li>
                        <?php } ?>
                    </ul>
                    <input type="checkbox" data-group="premium" name="android-40off" class="hidden">

                    <button class="btn btn-default ga-action-click"
                            ga-action ="click"
                            ga-category="store"
                            ga-label="buy premium"
                            value="true" type="submit" name="price[submit]">Buy Premium</button>
                    <div class="show_premium_features"><a href="#">Show Premium features</a></div>
                </form>
            </div>
        </div>
    </div>

    <div class="premium_h clearfix" id="android-features-h" style="text-transform: none;">
        Android monitoring features
    </div>
    <div class="clearfix">
        <div class="basic_wr">
            <div class="priceb" style="margin-top: 0px;padding: 25px 0 5px;">
                <div class="basic_fe" style="margin-top: 0;">
                    <ul>
                        <li data-toggle="tooltip" data-placement="top" title="View detailed data on incoming/outgoing calls: name, phone number, time and duration."><i class="icon-ok"></i> Calls history <span>(<b>700</b> calls monthly)</span>
                        </li>
                        <li data-toggle="tooltip" data-placement="top" title="View text content sent or received via SMS, MMS, and iMessages.</div>"><i class="icon-ok"></i> Text message history <span>(<b>300</b> SMS monthly)</span></li>
                        <li data-toggle="tooltip" data-placement="top" title="Block calls from specific numbers."><i class="icon-ok"></i> Calls blocking </li>
                        <li data-toggle="tooltip" data-placement="top" title="Set a number of SMS a user can send daily. <div class='br'><strong>Activated Keylogger Needed</strong></div>"><i class="icon-ok"></i> SMS limiting <i class="icon-info-circled"></i></li>
                        <li data-toggle="tooltip" data-placement="top" title="Track current location as well as the entire route history. Map view available."><i class="icon-ok"></i> Location history</li>
                        <li data-toggle="tooltip" data-placement="top" title="Set specific zones and receive alerts once the target device leaves them or enters."><i class="icon-ok"></i> Geo-fences</li>
                        <li data-toggle="tooltip" data-placement="top" title="View contact list including names, addresses, numbers and emails."><i class="icon-ok"></i> Contacts</li>
                        <li data-toggle="tooltip" data-placement="top" title="Monitor scheduled dates and events."><i class="icon-ok"></i> Calendar</li>
                        <li data-toggle="tooltip" data-placement="top" title="Block specific websites on a target device."><i class="icon-ok"></i> Websites blocking</li>

                        <li data-toggle="tooltip" data-placement="top" title="View all websites visited and bookmarked as preferred ones."><i class="icon-ok"></i> Bookmarks</li>
                        <li data-toggle="tooltip" data-placement="top" title="View all photos stored on a device."><i class="icon-ok"></i> Photos</li>

                        <li data-toggle="tooltip" data-placement="top" title="Monitor, block or set time limits on all applications (games, services etc.) downloaded on a device."><i class="icon-ok"></i> Applications Management</li>
                        <li data-toggle="tooltip" data-placement="top" title="View all videos stored on a device."><i class="icon-cancel"></i> Videos</li>

                        <li data-toggle="tooltip" data-placement="top" title="View all the previouse data ever stored on a device."><i class="icon-cancel"></i> Historical data</li>
                        <li data-toggle="tooltip" data-placement="top" title="Control devices remotely.<div class='br'><strong>Not supported: Android 5.0 and higher.</strong></div>"><i class="icon-cancel"></i> SMS commands
                        </li>
                        <li data-toggle="tooltip" data-placement="top" title="View every keystroke typed on a target device."><i class="icon-cancel"></i> Keylogger <i class="icon-info-circled"></i></li>
                        <p class="root_text">Root required:</p>
                        <li data-toggle="tooltip" data-placement="top" title="Block SMS from specific senders and/or containing specific keywords.</div><div class='br'><strong>Not available for Android 5.0 and newer versions.</strong></div>"><i class="icon-ok"></i> SMS blocking <i class="icon-info-circled"></i></li>
                        <li data-toggle="tooltip" data-placement="top" title="View all visited websites."><i class="icon-ok"></i> Browsing history</li>
                        <li data-toggle="tooltip" data-placement="top" title="View all emails and detailed contact data. </div>"><i class="icon-ok"></i> Emails</li>
                        <li data-toggle="tooltip" data-placement="top" title="Track chats and calls on Skype.</div>"><i class="icon-cancel"></i> Skype </li>
                        <li data-toggle="tooltip" data-placement="top" title="Track chats and calls on WhatsApp.</div>"><i class="icon-cancel"></i> WhatsApp </li>
                        <li data-toggle="tooltip" data-placement="top" title="Track chats and calls on Viber. </div>"><i class="icon-cancel"></i> Viber</li>
                        <li data-toggle="tooltip" data-placement="top" title="Track conversations via Kik.</div>"><i class="icon-cancel"></i> Kik</li>
                        <li data-toggle="tooltip" data-placement="top" title="Monitor posted images and comments on Instagram. </div>"><i class="icon-cancel"></i> Instagram</li>
                        <li data-toggle="tooltip" data-placement="top" title="Limited monitoring of chat messages. </div>"><i class="icon-cancel"></i> Snapchat</li>
                        <li data-toggle="tooltip" data-placement="top" title="Track chats and calls on Facebook. </div>"><i class="icon-cancel"></i> Facebook</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="premium_wr">
            <div class="pricep" style="margin-top: 0px; padding: 25px 0 5px;">
                <div class="premium_fe" style="margin-top: 0;">
                    <ul>
                        <li data-toggle="tooltip" data-placement="top" title="View detailed data on incoming/outgoing calls: name, phone number, time and duration."><i class="icon-ok"></i> Calls history <span>(unlimited)</span>
                        </li>
                        <li data-toggle="tooltip" data-placement="top" title="View text content sent or received via SMS, MMS, and iMessages.</div>"><i class="icon-ok"></i> Text message history <span>(unlimited)</span></li>
                        <li data-toggle="tooltip" data-placement="top" title="Block calls from specific numbers."><i class="icon-ok"></i> Calls blocking </li>
                        <li data-toggle="tooltip" data-placement="top" title="Set a number of SMS a user can send daily. <div class='br'><strong>Activated Keylogger Needed</strong></div>"><i class="icon-ok"></i> SMS limiting <i class="icon-info-circled"></i></li>
                        <li data-toggle="tooltip" data-placement="top" title="Track current location as well as the entire route history. Map view available."><i class="icon-ok"></i> Location history</li>
                        <li data-toggle="tooltip" data-placement="top" title="Set specific zones and receive alerts once the target device leaves them or enters."><i class="icon-ok"></i> Geo-fences</li>
                        <li data-toggle="tooltip" data-placement="top" title="View contact list including names, addresses, numbers and emails."><i class="icon-ok"></i> Contacts</li>
                        <li data-toggle="tooltip" data-placement="top" title="Monitor scheduled dates and events."><i class="icon-ok"></i> Calendar</li>
                        <li data-toggle="tooltip" data-placement="top" title="Block specific websites on a target device."><i class="icon-ok"></i> Websites blocking</li>

                        <li data-toggle="tooltip" data-placement="top" title="View all websites visited and bookmarked as preferred ones."><i class="icon-ok"></i> Bookmarks</li>
                        <li data-toggle="tooltip" data-placement="top" title="View all photos stored on a device."><i class="icon-ok"></i> Photos</li>

                        <li data-toggle="tooltip" data-placement="top" title="Monitor, block or set time limits on all applications (games, services etc.) downloaded on a device."><i class="icon-ok"></i> Applications Management</li>
                        <li data-toggle="tooltip" data-placement="top" title="View all videos stored on a device."><i class="icon-ok"></i> Videos</li>

                        <li data-toggle="tooltip" data-placement="top" title="View all the previouse data ever stored on a device."><i class="icon-ok"></i> Historical data</li>
                        <li data-toggle="tooltip" data-placement="top" title="Control devices remotely.<div class='br'><strong>Not supported: Android 5.0 and higher.</strong></div>"><i class="icon-ok"></i> SMS commands
                        </li>
                        <li data-toggle="tooltip" data-placement="top" title="View every keystroke typed on a target device."><i class="icon-ok"></i> Keylogger <i class="icon-info-circled"></i></li>
                        <p class="root_text" id="root-h">Root required:</p>
                        <li data-toggle="tooltip" data-placement="top" title="Block SMS from specific senders and/or containing specific keywords.</div><div class='br'><strong>Not available for Android 5.0 and newer versions.</strong></div>"><i class="icon-ok"></i> SMS blocking <i class="icon-info-circled"></i></li>
                        <li data-toggle="tooltip" data-placement="top" title="View all visited websites."><i class="icon-ok"></i> Browsing history</li>
                        <li data-toggle="tooltip" data-placement="top" title="View all emails and detailed contact data. </div>"><i class="icon-ok"></i> Emails</li>
                        <li data-toggle="tooltip" data-placement="top" title="Track chats and calls on Skype.</div>"><i class="icon-ok"></i> Skype </li>
                        <li data-toggle="tooltip" data-placement="top" title="Track chats and calls on WhatsApp.</div>"><i class="icon-ok"></i> WhatsApp </li>
                        <li data-toggle="tooltip" data-placement="top" title="Track chats and calls on Viber. </div>"><i class="icon-ok"></i> Viber</li>
                        <li data-toggle="tooltip" data-placement="top" title="Track conversations via Kik.</div>"><i class="icon-ok"></i> Kik</li>
                        <li data-toggle="tooltip" data-placement="top" title="Monitor posted images and comments on Instagram. </div>"><i class="icon-ok"></i> Instagram</li>
                        <li data-toggle="tooltip" data-placement="top" title="Limited monitoring of chat messages. </div>"><i class="icon-ok"></i> Snapchat</li>
                        <li data-toggle="tooltip" data-placement="top" title="Track chats and calls on Facebook. </div>"><i class="icon-ok"></i> Facebook</li>
                    </ul>                                                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="table_title mobile-off free-label">
        <h3 class="free-label__headname">FREE:</h3>
        <span class="free-label__item"><i class="icon-ok"></i>Remote control panel</span>
        <span class="free-label__item"><i class="icon-ok"></i>Software updates</span>
        <span class="free-label__item"><i class="icon-ok"></i>Remove device lock</span>
        <span class="free-label__item"><i class="icon-ok"></i>Sim card change alert</span>
    </div>
    <div class="clearfix" style="position: relative;">
        <div class="save__2plan">
            <div class="save__text">
                <input type="checkbox" data-group="basic" name="android-40off" data-checkboxes="android-40off-main">
                <span>Save 40%</span> on the 2nd plan. <div class="limited-time">Limited time offer!</div>
            </div>
        </div>
        <div class="basic_wr">
            <div class="basic_h" id="foot_h1">
                Basic
            </div>

            <div class="priceb">
                <div class="wrapper_pack clearfix">

                    <div class="wr_pack_basic android_basic_pack"></div>
                    <div class="wr_pack_double_basic android_basic_pack2"></div>
                    <div class="wr_price_big">
                        <span></span><div class="box-currence"><div class="symbol" attr-iso="usd">$</div><div class="curr andr-basic-price-per-month"><?php echo $_smarty_tpl->tpl_vars['defaultAndriodBasicPrice']->value;?>
</div></div><span> / month</span>
                    </div>
                </div>
                <div class="list_price" id="foot_h2">
                    <div class="space_line">&nbsp;</div>
                    <form name="price_basic_bottom" method="POST" action="/buy.html" class="buy-form-with-offer" autocomplete="off">
                        <input id='product_price_basic' type='hidden' name='price[productID]' value="<?php echo $_smarty_tpl->tpl_vars['defaultAndroidBasicProduct']->value;?>
" class="product_price" />

                        <ul>
                            <?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_smarty_tpl->tpl_vars['key'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['getProducts']->value['androidBasic']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
 $_smarty_tpl->tpl_vars['key']->value = $_smarty_tpl->tpl_vars['item']->key;
?>
                                <li>
                                    <label class="label_radio hover_label_radio <?php if ($_smarty_tpl->tpl_vars['item']->value['period']=='12') {?>r_on<?php } else { ?>r_off<?php }?>">
                                        <input class="data-price" data-target=".andr-basic-price-per-month" data-cur="usd" data-price-usd="<?php echo $_smarty_tpl->tpl_vars['item']->value['price'];?>
" data-offer-price-usd="<?php echo $_smarty_tpl->tpl_vars['getProducts']->value['androidBasicDouble'][$_smarty_tpl->tpl_vars['key']->value]['price'];?>
" data-period="<?php echo $_smarty_tpl->tpl_vars['item']->value['period'];?>
" data-product="<?php echo $_smarty_tpl->tpl_vars['item']->value['id'];?>
" data-offer-product="<?php echo $_smarty_tpl->tpl_vars['getProducts']->value['androidBasicDouble'][$_smarty_tpl->tpl_vars['key']->value]['id'];?>
" data-group="basic"  name="optionsRadios" id="optionsRadios<?php echo $_smarty_tpl->tpl_vars['item']->value['id'];?>
2" value="<?php echo $_smarty_tpl->tpl_vars['item']->value['id'];?>
" type="radio"<?php if ($_smarty_tpl->tpl_vars['item']->value['period']=='12') {?> checked="checked"<?php }?> />
                                        <span class="sp">
                                                                            <strong><?php echo $_smarty_tpl->tpl_vars['item']->value['period'];?>
</strong> <?php if ($_smarty_tpl->tpl_vars['item']->value['period']==1) {?>month<?php } else { ?>months<?php }?>
                                                                        </span>

                                        <div class="box-small-package">
                                            <div class="offer_old_price"><div class="box-currence strike__currence"><div class="symbol" attr-iso="usd">$</div><div class="curr"><?php echo $_smarty_tpl->tpl_vars['item']->value['price']*sprintf("%.2f",2);?>
</div></div></div>
                                        </div>

                                        <div class="package_price">
                                            <strong>
                                                <div class="box-currence"><div class="symbol" attr-iso="usd">$</div><div class="curr"><?php echo $_smarty_tpl->tpl_vars['item']->value['price'];?>
</div></div>
                                            </strong>
                                        </div>
                                        <div class="package_offer_price">
                                            <strong>
                                                <div class="box-currence"><div class="symbol" attr-iso="usd">$</div><div class="curr"><?php echo $_smarty_tpl->tpl_vars['getProducts']->value['androidBasicDouble'][$_smarty_tpl->tpl_vars['key']->value]['price'];?>
</div></div>
                                            </strong>
                                        </div>
                                    </label>
                                </li>
                            <?php } ?>
                        </ul>
                        <input type="checkbox" data-group="basic" name="android-40off" class="hidden">
                        <button class="btn btn-default ga-action-click"
                                ga-action ="click"
                                ga-category="store"
                                ga-label="buy basic"
                                value="true" type="submit" name="price[submit]">Buy Basic</button>
                    </form>
                    <div class="space_line">&nbsp;</div>
                </div>
            </div>
        </div>

        <div class="premium_wr">
            <div class="premium_h" id="foot_h3">
                Premium
            </div>
            <div class="pricep">
                <div class="wrapper_pack clearfix">
                    <div class="wr_pack_premium android_prem_pack"></div>
                    <div class="wr_pack_double_premium android_prem_pack2"></div>
                    <div class="wr_price_big">
                        <span></span><div class="box-currence"><div class="symbol" attr-iso="usd">$</div><div class="curr andr-premium-price-per-month"><?php echo $_smarty_tpl->tpl_vars['defaultAndroidPremiumPrice']->value;?>
</div></div><span>/ month</span>
                    </div>
                </div>
                <div class="list_price" id="foot_h4">
                    <div class="space_line">&nbsp;</div>
                    <form name="price_premium_bottom" method="POST" action="/buy.html" class="buy-form-with-offer" autocomplete="off">
                        <input id='product_price_premium' type='hidden' name='price[productID]' value='<?php if (isset($_smarty_tpl->tpl_vars['getDefaultAndroidPremium']->value)) {
echo $_smarty_tpl->tpl_vars['getDefaultAndroidPremium']->value;
} else { ?>0<?php }?>' class="product_price" />

                        <ul>
                            <?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_smarty_tpl->tpl_vars['key'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['getProducts']->value['androidPremium']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
 $_smarty_tpl->tpl_vars['key']->value = $_smarty_tpl->tpl_vars['item']->key;
?>
                                <li>
                                    <label class="label_radio hover_label_radio <?php if ($_smarty_tpl->tpl_vars['item']->value['period']=='12') {?>r_on<?php } else { ?>r_off<?php }?>">
                                        <input class="data-price" data-target=".andr-premium-price-per-month" data-cur="usd" data-price-usd="<?php echo $_smarty_tpl->tpl_vars['item']->value['price'];?>
" data-offer-price-usd="<?php echo $_smarty_tpl->tpl_vars['getProducts']->value['androidPremiumDouble'][$_smarty_tpl->tpl_vars['key']->value]['price'];?>
" data-period="<?php echo $_smarty_tpl->tpl_vars['item']->value['period'];?>
" data-product="<?php echo $_smarty_tpl->tpl_vars['item']->value['id'];?>
" data-offer-product="<?php echo $_smarty_tpl->tpl_vars['getProducts']->value['androidPremiumDouble'][$_smarty_tpl->tpl_vars['key']->value]['id'];?>
" data-group="premium"  name="optionsRadios" id="optionsRadios<?php echo $_smarty_tpl->tpl_vars['item']->value['id'];?>
2" value="<?php echo $_smarty_tpl->tpl_vars['item']->value['id'];?>
" type="radio"<?php if ($_smarty_tpl->tpl_vars['item']->value['period']=='12') {?> checked="checked"<?php }?> />
                                        <span class="sp">
                                                                            <strong><?php echo $_smarty_tpl->tpl_vars['item']->value['period'];?>
</strong> <?php if ($_smarty_tpl->tpl_vars['item']->value['period']==1) {?>month<?php } else { ?>months<?php }?>
                                                                        </span>

                                        <div class="box-small-package">
                                            <div class="offer_old_price"><div class="box-currence strike__currence"><div class="symbol" attr-iso="usd">$</div><div class="curr"><?php echo $_smarty_tpl->tpl_vars['item']->value['price']*sprintf("%.2f",2);?>
</div></div></div>
                                        </div>

                                        <div class="package_price">
                                            <strong>
                                                <div class="box-currence"><div class="symbol" attr-iso="usd">$</div><div class="curr"><?php echo $_smarty_tpl->tpl_vars['item']->value['price'];?>
</div></div>
                                            </strong>
                                        </div>
                                        <div class="package_offer_price">
                                            <strong>
                                                <div class="box-currence"><div class="symbol" attr-iso="usd">$</div><div class="curr"><?php echo $_smarty_tpl->tpl_vars['getProducts']->value['androidPremiumDouble'][$_smarty_tpl->tpl_vars['key']->value]['price'];?>
</div></div>
                                            </strong>
                                        </div>
                                    </label>
                                </li>
                            <?php } ?>
                        </ul>
                        <input type="checkbox" data-group="premium" name="android-40off" class="hidden">
                        <button class="btn btn-default ga-action-click"
                                ga-action ="click"
                                ga-category="store"
                                ga-label="buy premium"
                                value="true" type="submit" name="price[submit]">Buy Premium</button>
                    </form>
                    <div class="space_line">&nbsp;</div>
                </div>
            </div>
        </div>
    </div>
<?php }} ?>
