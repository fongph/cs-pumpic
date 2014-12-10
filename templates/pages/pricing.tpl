{*Order out="getProducts"*}
{*formOrder post=$smarty.post*}

{strip}
{include file='../includes/wrap-title-header.tpl'}

	<title>Pumpic Prices and Subscription Plans</title>
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
							<h2>PRICING & PLANS</h2>
							<div class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1">
                                                            <form name="price_basic" method="POST" action="/pricing.html">
                                                                <input id='product_price_basic' type='hidden' name='price[productID]' value='0' />
								<table class="table table-bordered">
									<caption>
										<div class="table_header">
											<!-- Block choose currency include -->
											<div class="pull-right">
												<span>Payment methods:</span>
                                                                                                
                                                                                                <i class="ico-cart-visa"></i>
                                                                                                <i class="ico-cart-mcart"></i>
                                                                                                <i class="ico-cart-aexpress"></i>
                                                                                                <i class="ico-cart-descover-new"></i>
                                                                                                <i class="ico-cart-paypal-new"></i>
                                                                                                
												{*<a href="#">
													<i class="ico-cart-visa"></i>
												</a>
												<a href="#">
													<i class="ico-cart-mcart"></i>
												</a>
												<a href="#">
													<i class="ico-cart-maestro"></i>
												</a>
												<a href="#">
													<i class="ico-cart-aexpress"></i>
												</a>
												<a href="#">
													<i class="ico-cart-paypal"></i>
												</a>
												<a href="#">
													<i class="ico-cart-bankwire"></i>
												</a>
												<a href="#">
													<i class="ico-cart-descover"></i>
												</a>
												<a href="#">
													<i class="ico-cart-cad"></i>
												</a>*}
											</div>
										</div>
										<div class="table_title">
											<h3>Free with every plan:</h3>
											<span><i class="icon-ok"></i>Remote control</span>
											<span><i class="icon-ok"></i>Software updates</span>
											<span><i class="icon-ok"></i>Remote Device Lock</span>
											<span><i class="icon-ok"></i>Instant location </span>
											<span><i class="icon-ok"></i>SIM card change alert</span>
										</div>
									</caption>
									<thead>
										<tr>
											<th>FEATURES:</th>
											<th>
												<div class="lg_text_table"><i class="icon-android"></i><span>Android</span></div>
												<div class="sm_text_table"><span>(2.2 - 5.0)</span></div>
											</th>
											<th>
												<div class="lg_text_table"><i class="icon-apple"></i><span>iOS</span></div>
												<div class="sm_text_table"><span>(6.0 - 8.1.1)<br />jailbreak needed</span></div>
											</th>
											<th>
												<div class="lg_text_table"><i class="icon-blackberry"></i><span class="hidden-xs">BlackBerry</span><span class="visible-xs">BB</span></div>
												<div class="sm_text_table"><span>(1.0 - 7.1)</span></div>
											</th>
										</tr>
									</thead>
									<tfoot>
										<tr>
											<td colspan="4">
                                                                                            {if $getProducts.basic}
                                                                                            
                                                                                                
												<div class="label_inline">
													<h4>Basic</h4>
                                                                                                        
                                                                                                        {foreach from=$getProducts.basic key=key item=_item}
                                                                                                                   
													<label class="label_radio">
														<input type="radio" 
                                                                                                                       name="optionsRadios" 
                                                                                                                       id="optionsRadios{$_item.id}" 
                                                                                                                       value="{$_item.id}" 
                                                                                                                       {if $_item.period == '12'} checked {/if}
                                                                                                                       >
														<span><strong>{$_item.period}</strong> month</span>
														<span>${$_item.price}</span>
													</label>
                                                                                                        {/foreach}
                                                                                                                    
                                                                                                                    
													{*<label class="label_radio">
														<input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
														<span><strong>6</strong> month</span>
														<span>$69.96</span>
													</label>
													<label class="label_radio">
														<input type="radio" name="optionsRadios" id="optionsRadios3" value="option3">
														<span><strong>12</strong> month</span>
														<span>$139.92</span>
													</label>*}
												</div>
												<div class="select_row">
													<h4>Basic</h4>
													<select class="select_inverse">
                                                                                                            
                                                                                                                {foreach from=$getProducts.basic key=key item=_item}
                                                                                                                    <option value="{$_item.id}" {if $_item.period == '12'}selected{/if}>{$_item.period} month ${$_item.price}</option>
                                                                                                                {/foreach}    
                                                                                                                
                                                                                                            
														{*<option value="">3 month $34.98</option>
														<option value="">6 month $69.96</option>
														<option value="">12 month $139.92</option>*}
													</select>
												</div>
												<div class="_limits">
													<!-- Block block-limits-pricing only for premium include -->
												</div>
												<div class="text-center">
													<button name='price[submit]' 
                                                                                                                type='submit' 
                                                                                                                value='true'
                                                                                                                class="btn btn-default">Buy Basic</button>
												</div>
                                                                                                  
                                                                                             
                                                                                            {/if}             
											</td>
										</tr>
									</tfoot>
									<tbody>
										<tr>
											<td>Calls history</td>
											<td><b>700</b> calls<br />monthly
											</td>
											<td><b>700</b> calls<br />monthly
											</td>
											<td><b>700</b> calls<br />monthly
											</td>
										</tr>
										<tr>
											<td>SMS history</td>
											<td><b>300</b> SMS<br />monthly
											</td>
											<td><b>300</b> SMS<br />monthly
											</td>
											<td><b>300</b> SMS<br />monthly
											</td>
										</tr>
										<tr>
											<td>SMS blocking</td>
											<td><i class="icon-ok"></i>
												<br />(except 4.4)</td>
											<td><i class="icon-ok"></i>
											</td>
											<td><i class="icon-cancel"></i>
											</td>
										</tr>
										<tr>
											<td>Location history</td>
											<td><i class="icon-ok"></i>
											</td>
											<td><i class="icon-ok"></i>
											</td>
											<td><i class="icon-ok"></i>
											</td>
										</tr>
										<tr>
											<td>Contacts</td>
											<td><i class="icon-ok"></i>
											</td>
											<td><i class="icon-ok"></i>
											</td>
											<td><i class="icon-cancel"></i>
											</td>
										</tr>
										<tr>
											<td>Calendar</td>
											<td><i class="icon-ok"></i>
											</td>
											<td><i class="icon-ok"></i>
											</td>
											<td><i class="icon-cancel"></i>
											</td>
										</tr>
										<tr>
											<td>Browsing history</td>
											<td><i class="icon-ok"></i>
											</td>
											<td><i class="icon-ok"></i>
											</td>
											<td><i class="icon-cancel"></i>
											</td>
										</tr>
										<tr>
											<td>Bookmarks</td>
											<td><i class="icon-ok"></i>
											</td>
											<td><i class="icon-ok"></i>
											</td>
											<td><i class="icon-cancel"></i>
											</td>
										</tr>
										<tr>
											<td>Photos</td>
											<td><i class="icon-ok"></i>
											</td>
											<td><i class="icon-ok"></i>
											</td>
											<td><i class="icon-cancel"></i>
											</td>
										</tr>
										<tr>
											<td>Emails</td>
											<td><i class="icon-ok"></i>
												<br />(ROOT for all)</td>
											<td><i class="icon-ok"></i>
											</td>
											<td><i class="icon-cancel"></i>
											</td>
										</tr>
										<tr>
											<td>Applications</td>
											<td><i class="icon-ok"></i>
											</td>
											<td><i class="icon-ok"></i>
											</td>
											<td><i class="icon-cancel"></i>
											</td>
										</tr>
										<tr>
											<td>Websites & Apps blocking</td>
											<td><i class="icon-ok"></i>
											</td>
											<td><i class="icon-ok"></i>
											</td>
											<td><i class="icon-cancel"></i>
											</td>
										</tr>
									</tbody>
								</table>
                                                                                        
                                                                </form>                         
                                                                <form name="price_premium" method="POST" action="/pricing.html"> 
                                                                    
                                                                <input id='product_price_premium' type='hidden' name='price[productID]' value='' />    
                                                                    
								<table class="table table-bordered">
									<tfoot>
										<tr>
											<td colspan="4">
												<div class="label_inline">
													<h4>premium</h4>
                                                                                                        
                                                                                                        {foreach from=$getProducts.premium key=key item=_item}
                                                                                                                   
													<label class="label_radio">
														<input type="radio" 
                                                                                                                       name="optionsRadios2" 
                                                                                                                       id="optionsRadios{$_item.id}" 
                                                                                                                       value="{$_item.id}"
                                                                                                                       {if $_item.period == '12'} checked {/if}
                                                                                                                       >
														<span><strong>{$_item.period}</strong> month</span>
														<span>${$_item.price}</span>
													</label>
                                                                                                        {/foreach}
                                                                                                        
													{*<label class="label_radio">
														<input type="radio" name="optionsRadios2" id="optionsRadios4" value="option3" checked>
														<span><strong>3</strong> month</span>
														<span>$99.99</span>
													</label>
													<label class="label_radio">
														<input type="radio" name="optionsRadios2" id="optionsRadios5" value="option4">
														<span><strong>6</strong> month</span>
														<span>$199.98</span>
													</label>
													<label class="label_radio">
														<input type="radio" name="optionsRadios2" id="optionsRadios6" value="option5">
														<span><strong>12</strong> month</span>
														<span>$399.96</span>
													</label>*}
												</div>
												<div class="select_row">
													<h4>premium</h4>
													<select class="select_inverse">
                                                                                                                {if $getProducts.premium}
                                                                                                                    {foreach from=$getProducts.premium key=key item=_item}
                                                                                                                        <option value="{$_item.id}" {if $_item.period == '12'} selected {/if}>{$_item.period} month ${$_item.price}</option>
                                                                                                                    {/foreach}    
                                                                                                                {/if} 
                                                                                                            
														{*<option value="">3 month $99.99</option>
														<option value="">6 month $199.98</option>
														<option value="">12 month $399.96</option>*}
													</select>
												</div>
												<div class="_limits">
													<!-- Block block-limits-pricing only for premium include -->
												</div>
												<div class="text-center">
													<button class="btn btn-default">Buy Premium</button>
												</div>
											</td>
										</tr>
									</tfoot>
									<tbody>
										<tr>
											<td>Calls history</td>
											<td><b>Unlimited</b>
											</td>
											<td><b>Unlimited</b>
											</td>
											<td><b>Unlimited</b>
											</td>
										</tr>
										<tr>
											<td>SMS history</td>
											<td><b>Unlimited</b>
											</td>
											<td><b>Unlimited</b>
											</td>
											<td><b>Unlimited</b>
											</td>
										</tr>
										<tr>
											<td>Viber/WhatsApp/Skype</td>
											<td><i class="icon-ok"></i><br />(ROOT for all)
											</td>
											<td><i class="icon-ok"></i>
											</td>
											<td><i class="icon-cancel"></i>
											</td>
										</tr>
										<tr>
											<td>View user Videos</td>
											<td><i class="icon-ok"></i>
											</td>
											<td><i class="icon-ok"></i>
											</td>
											<td><i class="icon-cancel"></i>
											</td>
										</tr>
										<tr>
											<td>Facebook Messages</td>
											<td><i class="icon-ok"></i><br />(ROOT for all)
											</td>
											<td><i class="icon-ok"></i>
											</td>
											<td><i class="icon-cancel"></i>
											</td>
										</tr>
										<tr>
											<td>Historical data</td>
											<td><i class="icon-ok"></i>
											</td>
											<td><i class="icon-ok"></i>
											</td>
											<td><i class="icon-cancel"></i>
											</td>
										</tr>
										<tr>
											<td>SMS commands</td>
											<td><i class="icon-ok"></i><br />(ROOT for all)
											</td>
											<td><i class="icon-ok"></i>
											</td>
											<td><i class="icon-cancel"></i>
											</td>
										</tr>
										<tr>
											<td>Keylogger</td>
											<td><i class="icon-ok"></i>
											</td>
											<td><i class="icon-ok"></i>
											</td>
											<td><i class="icon-cancel"></i>
											</td>
										</tr>
									</tbody>
								</table>
                                                                </form>                                        
								<div class="link_circle_italic">
									<div class="style-links"><span class="circle_ico"><i class="icon-attention"></i></span>you need to have physical access to the phone to install the application</div>
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
	{include file='../includes/analytics-footer.tpl'}
</body>
</html>
{/strip}		