<?php /* Smarty version Smarty-3.1.21-dev, created on 2017-11-24 13:14:09
         compiled from "/code/templates/includes/store/store-mobile.tpl" */ ?>
<?php /*%%SmartyHeaderCode:18875994665a181b210523e1-10179063%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '098c1af4c2d386e0f9196a795faf59dfffdb7f20' => 
    array (
      0 => '/code/templates/includes/store/store-mobile.tpl',
      1 => 1511394796,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '18875994665a181b210523e1-10179063',
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
    'defaultAndriodBasicPath' => 0,
    'defaultAndroidPremiumPrice' => 0,
    'getDefaultAndroidPremium' => 0,
    'defaultAndroidPremiumPath' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_5a181b21186e57_54970295',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5a181b21186e57_54970295')) {function content_5a181b21186e57_54970295($_smarty_tpl) {?>
<div class="basic_wr">
    <div class="basic_h">
        Basic
    </div>
    <div class="priceb" style="border-bottom: 1px solid #e8e8e8; border-right: none; padding-top: 0;">
        <div class="wrapper_pack clearfix">
            <div class="wr_pack_basic android_basic_pack _single-pack-android-basic"></div>
            
            <div class="wr_price_big color_red">
                <span></span><div class="box-currence color_red"><div class="symbol" attr-iso="usd">$</div><div class="curr andr-basic-price-per-month"><?php echo $_smarty_tpl->tpl_vars['defaultAndriodBasicPrice']->value;?>
</div></div><span> / month</span>
            </div>
        </div>
        <div class="show_basic_features _android-f"><div class="show-f _android-f" style="display: none;">Show Basic features <i class="fa fa-chevron-down"></i></div><div class="hide-f _android-f">Hide Basic features  <i class="fa fa-chevron-up"></i></div></div>
        <div class="basic_wr">
            <div class="priceb" style="padding: 0; border-right: none;">
                <div class="basic_fe _android-f" style="margin-top: 0;">
                    <ul class="android-list-f">
                            <li data-toggle="tooltip" data-placement="top" title="View detailed data on incoming/outgoing calls: name, phone number, time and duration."><i class="icon-ok"></i> Calls history <span>(<b>700</b> calls monthly)</span>
                            </li>
                            <li data-toggle="tooltip" data-placement="top" title="View text content sent or received via SMS, MMS.</div>"><i class="icon-ok"></i> Text message history <span>(<b>300</b> SMS monthly)</span></li>
                            <li data-toggle="tooltip" data-placement="top" title="Block calls from specific numbers."><i class="icon-ok"></i> Calls blocking </li>
                            <li data-toggle="tooltip" data-placement="top" title="Block SMS from specific senders and/or containing specific keywords.</div><div class='br'><strong>Up to Android 4.4.4</strong></div>"><i class="icon-ok"></i> SMS blocking</li>
                            <li data-toggle="tooltip" data-placement="top" title="Set a number of SMS a user can send daily. <div class='br'><strong>Pumpic keyboard activation required</strong></div>"><i class="icon-ok"></i> SMS limiting <i class="icon-info-circled"></i></li>
                            <li data-toggle="tooltip" data-placement="top" title="Track current location as well as the entire route history. Map view available."><i class="icon-ok"></i> Location history</li>
                            <li data-toggle="tooltip" data-placement="top" title="Set specific zones and receive alerts once the target device leaves them or enters."><i class="icon-ok"></i> Geo-fences</li>
                            <li data-toggle="tooltip" data-placement="top" title="View contact list including names, addresses, numbers and emails."><i class="icon-ok"></i> Contacts</li>
                            <li data-toggle="tooltip" data-placement="top" title="Monitor scheduled dates and events."><i class="icon-ok"></i> Calendar</li>
                            <li data-toggle="tooltip" data-placement="top" title="View all visited websites.<br><b>Root required starting from Android 6.0</b>"><i class="icon-ok"></i> Browsing history</li>
                            <li data-toggle="tooltip" data-placement="top" title="Block specific websites on a target device.<br><b>Root required starting from Android 6.0</b>"><i class="icon-ok"></i> Websites blocking</li>

                            <li data-toggle="tooltip" data-placement="top" title="View all websites visited and bookmarked as preferred ones.<br><b>Root required starting from Android 6.0</b>"><i class="icon-ok"></i> Bookmarks</li>
                            <li data-toggle="tooltip" data-placement="top" title="View all photos stored on a device."><i class="icon-ok"></i> Photos</li>

                            <li data-toggle="tooltip" data-placement="top" title="Monitor, block or set time limits on all applications (games, services etc.) downloaded on a device."><i class="icon-ok"></i> Applications Management</li>
                            <li data-toggle="tooltip" data-placement="top" title="View all videos stored on a device."><i class="icon-cancel"></i> Videos</li>

                            <li data-toggle="tooltip" data-placement="top" title="View all the previous data ever stored on a device."><i class="icon-cancel"></i> Historical data</li>
                            <li data-toggle="tooltip" data-placement="top" title="Control devices remotely.<div class='br'><strong>Up to Android 4.4.4</strong></div>"><i class="icon-cancel"></i> SMS commands
                            </li>
                            <li data-toggle="tooltip" data-placement="top" title="View every keystroke typed on a target device.<br><b>Pumpic keyboard activation required</b>"><i class="icon-cancel"></i> Keylogger <i class="icon-info-circled"></i></li>
                            <p class="root_text">Root required:</p>
                            <li data-toggle="tooltip" data-placement="top" title="View all emails and detailed contact data. </div>"><i class="icon-ok"></i> Emails</li>
                            <li data-toggle="tooltip" data-placement="top" title="Track chats and calls on Skype.</div>"><i class="icon-cancel"></i> Skype </li>
                            <li data-toggle="tooltip" data-placement="top" title="Track chats and calls on WhatsApp.</div>"><i class="icon-cancel"></i> WhatsApp </li>
                            <li data-toggle="tooltip" data-placement="top" title="Track chats and calls on Viber. </div>"><i class="icon-cancel"></i> Viber</li>
                            <li data-toggle="tooltip" data-placement="top" title="Track conversations via Kik.</div>"><i class="icon-cancel"></i> Kik</li>
                            <li data-toggle="tooltip" data-placement="top" title="Monitor posted images and comments on Instagram. </div>"><i class="icon-cancel"></i> Instagram</li>
                            <li data-toggle="tooltip" data-placement="top" title="Limited monitoring of chat messages. </div>"><i class="icon-cancel"></i> Snapchat</li>
                            <li data-toggle="tooltip" data-placement="top" title="Track chats and calls on Facebook. </div>"><i class="icon-cancel"></i> Facebook</li>
                    </ul>
                    <div class="table_title free-label">
                        <h3 class="free-label__headname">FREE:</h3>
                        <span class="free-label__item"><i class="icon-ok"></i>Remote control panel</span>
                        <span class="free-label__item"><i class="icon-ok"></i>Software updates</span>
                        <span class="free-label__item"><i class="icon-ok"></i>Remove device lock</span>
                        <span class="free-label__item"><i class="icon-ok"></i>Sim card change alert</span>
                    </div>

                    <div class="show_basic_features _android-f"><div class="show-f _android-f" style="display: none;">Show Basic features <i class="fa fa-chevron-down"></i></div><div class="hide-f _android-f" style="border-top: none;">Hide Basic features  <i class="fa fa-chevron-up"></i></div></div>

                </div>
            </div>
        </div>

        <div class="list_price">
            <form name="price_basic" method="POST" onsubmit="return false;"  class="buy-form-with-offer" autocomplete="off">

                <input id='product_price_basic' type='hidden' name='price[productID]' value="<?php echo $_smarty_tpl->tpl_vars['defaultAndriodBasic']->value;?>
" class="product_price" />
                <ul class="price_list">
                    <?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_smarty_tpl->tpl_vars['key'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['getProducts']->value['androidBasic']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
 $_smarty_tpl->tpl_vars['item']->total= $_smarty_tpl->_count($_from);
 $_smarty_tpl->tpl_vars['item']->iteration=0;
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
 $_smarty_tpl->tpl_vars['key']->value = $_smarty_tpl->tpl_vars['item']->key;
 $_smarty_tpl->tpl_vars['item']->iteration++;
 $_smarty_tpl->tpl_vars['item']->last = $_smarty_tpl->tpl_vars['item']->iteration === $_smarty_tpl->tpl_vars['item']->total;
 $_smarty_tpl->tpl_vars['smarty']->value['foreach']['products']['last'] = $_smarty_tpl->tpl_vars['item']->last;
?>
                        <li class="android_list">
                            <label class="price_label label_radio hover_label_radio <?php if ($_smarty_tpl->tpl_vars['item']->value['period']=='6') {?>r_on<?php } else { ?>r_off<?php }?>">
                                <div class="price_list__old"> $<?php echo $_smarty_tpl->tpl_vars['item']->value['price'];?>
</div>

                                <input class="data-price" data-target=".andr-basic-price-per-month" data-cur="usd" data-price-usd="<?php echo $_smarty_tpl->tpl_vars['item']->value['discount'];?>
" data-offer-price-usd="<?php echo $_smarty_tpl->tpl_vars['getProducts']->value['androidBasicDouble'][$_smarty_tpl->tpl_vars['key']->value]['discount'];?>
" data-period="<?php echo $_smarty_tpl->tpl_vars['item']->value['period'];?>
" data-product="<?php echo $_smarty_tpl->tpl_vars['item']->value['path'];?>
" data-offer-product="<?php echo $_smarty_tpl->tpl_vars['getProducts']->value['androidBasicDouble'][$_smarty_tpl->tpl_vars['key']->value]['id'];?>
" data-group="android-basic"  name="optionsRadios" id="optionsRadios<?php echo $_smarty_tpl->tpl_vars['item']->value['id'];?>
1" value="<?php echo $_smarty_tpl->tpl_vars['item']->value['id'];?>
" type="radio" <?php if ($_smarty_tpl->getVariable('smarty')->value['foreach']['products']['last']) {?>checked="checked"<?php }?> />
                                <span class="sp">
                                                                            <strong><?php echo $_smarty_tpl->tpl_vars['item']->value['period'];?>
</strong> <?php if ($_smarty_tpl->tpl_vars['item']->value['period']==1) {?>month<?php } else { ?>months<?php }?>
                                                                        </span>

                                <div class="box-small-package price_pack">
                                    <div class="offer_old_price"><div class="box-currence strike__currence"><div class="symbol" attr-iso="usd">$</div><div class="curr"><?php echo $_smarty_tpl->tpl_vars['item']->value['discount']*sprintf("%.2f",2);?>
</div></div></div>
                                </div>

                                <div class="package_price">
                                    <strong>
                                        <div class="box-currence color_red"><div class="symbol" attr-iso="usd">$</div><div class="curr"><?php echo $_smarty_tpl->tpl_vars['item']->value['discount'];?>
</div></div>
                                    </strong>
                                </div>
                                <div class="package_offer_price">
                                    <strong>
                                        <div class="box-currence color_red"><div class="symbol" attr-iso="usd">$</div><div class="curr"><?php echo $_smarty_tpl->tpl_vars['getProducts']->value['androidBasicDouble'][$_smarty_tpl->tpl_vars['key']->value]['discount'];?>
</div></div>
                                    </strong>
                                </div>
                            </label>
                        </li>
                    <?php } ?>
                </ul>
                <button class="btn btn-default ga-action-click"
                        ga-action ="click"
                        ga-category="store"
                        ga-label="buy basic"
                        value="true" type="submit" name="price[submit]"
                        data-fsc-item-path-value="<?php echo $_smarty_tpl->tpl_vars['defaultAndriodBasicPath']->value;?>
" onclick="buyOnClick(this);" data-fsc-action="Add,Checkout">Buy Basic</button>
            </form>
        </div>
    </div>
</div>
<div class="premium_wr">
    <div class="premium_h" id="prem-header">
        Premium
    </div>
    <div class="pricep" style="padding: 0;">
        <div class="wrapper_pack clearfix">
            <div class="wr_pack_premium android_prem_pack _single-pack-android-prem"></div>
            <div class="wr_pack_double_premium android_prem_pack2 _double-pack-android-prem"></div>
            <div class="wr_price_big color_red">
                <span></span><div class="box-currence color_red"><div class="symbol" attr-iso="usd">$</div><div class="curr andr-premium-price-per-month"><?php echo $_smarty_tpl->tpl_vars['defaultAndroidPremiumPrice']->value;?>
</div></div><span>/ month</span>
            </div>
        </div>
        <div class="show_premium_features _android-f"><div class="show-f _android-f" style="display: none;">Show Premium features <i class="fa fa-chevron-down"></i></div><div class="hide-f _android-f"">Hide Premium features  <i class="fa fa-chevron-up"></i></div></div>

        <div class="premium_wr">
            <div class="pricep" style="margin-top: 0px; padding: 0;">
                <div class="premium_fe _android-f" style="margin-top: 0;">
                    <ul class="android-list-f">
                            <li data-toggle="tooltip" data-placement="top" title="View detailed data on incoming/outgoing calls: name, phone number, time and duration."><i class="icon-ok"></i> Calls history <span>(unlimited)</span>
                            </li>
                            <li data-toggle="tooltip" data-placement="top" title="View text content sent or received via SMS, MMS.</div>"><i class="icon-ok"></i> Text message history <span>(unlimited)</span></li>
                            <li data-toggle="tooltip" data-placement="top" title="Block calls from specific numbers."><i class="icon-ok"></i> Calls blocking </li>
                            <li data-toggle="tooltip" data-placement="top" title="Block SMS from specific senders and/or containing specific keywords.</div><div class='br'><strong>Up to Android 4.4.4</strong></div>"><i class="icon-ok"></i> SMS blocking</li>
                            <li data-toggle="tooltip" data-placement="top" title="Set a number of SMS a user can send daily. <div class='br'><strong>Pumpic keyboard activation required</strong></div>"><i class="icon-ok"></i> SMS limiting <i class="icon-info-circled"></i></li>
                            <li data-toggle="tooltip" data-placement="top" title="Track current location as well as the entire route history. Map view available."><i class="icon-ok"></i> Location history</li>
                            <li data-toggle="tooltip" data-placement="top" title="Set specific zones and receive alerts once the target device leaves them or enters."><i class="icon-ok"></i> Geo-fences</li>
                            <li data-toggle="tooltip" data-placement="top" title="View contact list including names, addresses, numbers and emails."><i class="icon-ok"></i> Contacts</li>
                            <li data-toggle="tooltip" data-placement="top" title="Monitor scheduled dates and events."><i class="icon-ok"></i> Calendar</li>
                            <li data-toggle="tooltip" data-placement="top" title="View all visited websites.<br><b>Root required starting from Android 6.0</b>"><i class="icon-ok"></i> Browsing history</li>
                            <li data-toggle="tooltip" data-placement="top" title="Block specific websites on a target device.<br><b>Root required starting from Android 6.0</b>"><i class="icon-ok"></i> Websites blocking</li>

                            <li data-toggle="tooltip" data-placement="top" title="View all websites visited and bookmarked as preferred ones.<br><b>Root required starting from Android 6.0</b>"><i class="icon-ok"></i> Bookmarks</li>
                            <li data-toggle="tooltip" data-placement="top" title="View all photos stored on a device."><i class="icon-ok"></i> Photos</li>

                            <li data-toggle="tooltip" data-placement="top" title="Monitor, block or set time limits on all applications (games, services etc.) downloaded on a device."><i class="icon-ok"></i> Applications Management</li>
                            <li data-toggle="tooltip" data-placement="top" title="View all videos stored on a device."><i class="icon-ok"></i> Videos</li>

                            <li data-toggle="tooltip" data-placement="top" title="View all the previous data ever stored on a device."><i class="icon-ok"></i> Historical data</li>
                            <li data-toggle="tooltip" data-placement="top" title="Control devices remotely.<div class='br'><strong>Up to Android 4.4.4</strong></div>"><i class="icon-ok"></i> SMS commands
                            </li>
                            <li data-toggle="tooltip" data-placement="top" title="View every keystroke typed on a target device.<br><b>Pumpic keyboard activation required</b>"><i class="icon-ok"></i> Keylogger <i class="icon-info-circled"></i></li>
                            <p class="root_text">Root required:</p>
                            <li data-toggle="tooltip" data-placement="top" title="View all emails and detailed contact data. </div>"><i class="icon-ok"></i> Emails</li>
                            <li data-toggle="tooltip" data-placement="top" title="Track chats and calls on Skype.</div>"><i class="icon-ok"></i> Skype </li>
                            <li data-toggle="tooltip" data-placement="top" title="Track chats and calls on WhatsApp.</div>"><i class="icon-ok"></i> WhatsApp </li>
                            <li data-toggle="tooltip" data-placement="top" title="Track chats and calls on Viber. </div>"><i class="icon-ok"></i> Viber</li>
                            <li data-toggle="tooltip" data-placement="top" title="Track conversations via Kik.</div>"><i class="icon-ok"></i> Kik</li>
                            <li data-toggle="tooltip" data-placement="top" title="Monitor posted images and comments on Instagram. </div>"><i class="icon-ok"></i> Instagram</li>
                            <li data-toggle="tooltip" data-placement="top" title="Limited monitoring of chat messages. </div>"><i class="icon-ok"></i> Snapchat</li>
                            <li data-toggle="tooltip" data-placement="top" title="Track chats and calls on Facebook. </div>"><i class="icon-ok"></i> Facebook</li>
                    </ul>
                    <div class="table_title free-label">
                        <h3 class="free-label__headname">FREE:</h3>
                        <span class="free-label__item"><i class="icon-ok"></i>Remote control panel</span>
                        <span class="free-label__item"><i class="icon-ok"></i>Software updates</span>
                        <span class="free-label__item"><i class="icon-ok"></i>Remove device lock</span>
                        <span class="free-label__item"><i class="icon-ok"></i>Sim card change alert</span>
                    </div>
                    <div class="show_premium_features _android-f"><div class="show-f _android-f" style="display: none;">Show Premium features <i class="fa fa-chevron-down"></i></div><div class="hide-f _android-f" style="border-top: none;">Hide Premium features  <i class="fa fa-chevron-up"></i></div></div>

                </div>
            </div>
        </div>

        <div class="list_price">
            <form name="price_premium" method="POST" onsubmit="return false;"  class="buy-form-with-offer" autocomplete="off">
                <input id='product_price_premium' type='hidden' name='price[productID]' value='<?php if (isset($_smarty_tpl->tpl_vars['getDefaultAndroidPremium']->value)) {
echo $_smarty_tpl->tpl_vars['getDefaultAndroidPremium']->value;
} else { ?>0<?php }?>' class="product_price"/>

                <ul>
                    <?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_smarty_tpl->tpl_vars['key'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['getProducts']->value['androidPremium']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
 $_smarty_tpl->tpl_vars['item']->total= $_smarty_tpl->_count($_from);
 $_smarty_tpl->tpl_vars['item']->iteration=0;
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
 $_smarty_tpl->tpl_vars['key']->value = $_smarty_tpl->tpl_vars['item']->key;
 $_smarty_tpl->tpl_vars['item']->iteration++;
 $_smarty_tpl->tpl_vars['item']->last = $_smarty_tpl->tpl_vars['item']->iteration === $_smarty_tpl->tpl_vars['item']->total;
 $_smarty_tpl->tpl_vars['smarty']->value['foreach']['products']['last'] = $_smarty_tpl->tpl_vars['item']->last;
?>
                        <li>
                            <label class="label_radio hover_label_radio <?php if ($_smarty_tpl->tpl_vars['item']->value['period']=='6') {?>r_on<?php } else { ?>r_off<?php }?>">
                                <div class="price_list__old"> $<?php echo $_smarty_tpl->tpl_vars['item']->value['price'];?>
</div>

                                <input class="data-price" data-target=".andr-premium-price-per-month" data-cur="usd" data-price-usd="<?php echo $_smarty_tpl->tpl_vars['item']->value['price'];?>
" data-offer-price-usd="<?php echo $_smarty_tpl->tpl_vars['getProducts']->value['androidPremiumDouble'][$_smarty_tpl->tpl_vars['key']->value]['price'];?>
" data-period="<?php echo $_smarty_tpl->tpl_vars['item']->value['period'];?>
" data-product="<?php echo $_smarty_tpl->tpl_vars['item']->value['path'];?>
" data-offer-product="<?php echo $_smarty_tpl->tpl_vars['getProducts']->value['androidPremiumDouble'][$_smarty_tpl->tpl_vars['key']->value]['id'];?>
" data-group="android-prem"  name="optionsRadios" id="optionsRadios<?php echo $_smarty_tpl->tpl_vars['item']->value['id'];?>
1" value="<?php echo $_smarty_tpl->tpl_vars['item']->value['id'];?>
" type="radio" <?php if ($_smarty_tpl->getVariable('smarty')->value['foreach']['products']['last']) {?>checked="checked"<?php }?> />
                                <span class="sp">
                                                                            <strong><?php echo $_smarty_tpl->tpl_vars['item']->value['period'];?>
</strong> <?php if ($_smarty_tpl->tpl_vars['item']->value['period']==1) {?>month<?php } else { ?>months<?php }?>
                                                                        </span>

                                <div class="box-small-package price_pack">
                                    <div class="offer_old_price"><div class="box-currence strike__currence"><div class="symbol" attr-iso="usd">$</div><div class="curr"><?php echo $_smarty_tpl->tpl_vars['item']->value['price']*sprintf("%.2f",2);?>
</div></div></div>
                                </div>

                                <div class="package_price">
                                    <strong>
                                        <div class="box-currence color_red"><div class="symbol" attr-iso="usd">$</div><div class="curr"><?php echo $_smarty_tpl->tpl_vars['item']->value['price'];?>
</div></div>
                                    </strong>
                                </div>
                                <div class="package_offer_price">
                                    <strong>
                                        <div class="box-currence color_red"><div class="symbol" attr-iso="usd">$</div><div class="curr"><?php echo $_smarty_tpl->tpl_vars['getProducts']->value['androidPremiumDouble'][$_smarty_tpl->tpl_vars['key']->value]['price'];?>
</div></div>
                                    </strong>
                                </div>
                            </label>
                        </li>
                    <?php } ?>
                </ul>
                <button class="btn btn-default ga-action-click"
                        ga-action ="click"
                        ga-category="store"
                        ga-label="buy premium"
                        value="true" type="submit" name="price[submit]"
                        data-fsc-item-path-value="<?php echo $_smarty_tpl->tpl_vars['defaultAndroidPremiumPath']->value;?>
" onclick="buyOnClick(this);" data-fsc-action="Add,Checkout"
                >Buy Premium</button>
            </form>
        </div>
    </div>
</div>
<div class="clearfix">
</div>
<?php }} ?>
