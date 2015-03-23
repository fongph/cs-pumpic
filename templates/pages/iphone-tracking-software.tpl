{include file='../includes/main/main-header.tpl'
    robots="yes" 
    title="Easy iPhone remote monitoring for family | Pumpic"
    description="Keep your family safe and secured with Pumpic. Track location. View calls and SMS. Follow online activity."
}    
    
<body>
    <!-- FLY BLOCKS -->
    {include file='../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->
    
    <div class="wrapper iphone-tracking-software">
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
            description = "Enjoy multitask tracking with or without Jailbreak 
                            <br>Control cell phone use. Follow location and online activity"
            os_versions = "os_v2"                
            promoBuyBlock = "no"
        }
        
        <div class="light">
            <div class="container">
                <div class="row">
                        <div class="list-group-box">
                            <div class="list-group">
                                <ul >
                                  <li href="#" class="list-group-item text-center">
                                    <h4 class="list-group-item-heading"><i class="icons ico-jailbreak"></i> Jailbreak Solution </h4>
                                    <small>Requirements:</small>
                                  </li>
                                  <li href="#" class="list-group-item">
                                    <p class="list-group-item-text">
                                        <span class="title"><i class="icon-ok"></i> Jailbreak - <span class="text-success">Required</span></span>
                                        <span>You need to jailbreak the target iOS device before installing the app.</span>
                                    </p>
                                  </li>
                                  <li href="#" class="list-group-item">
                                    <p class="list-group-item-text">
                                        <span class="title"><i class="icon-ok"></i> Physical access - <span class="text-success">Required</span></span>
                                        <span>You need physical access to the target device to install the app on it.</span>
                                    </p>
                                  </li>
                                  <li href="#" class="list-group-item">
                                    <p class="list-group-item-text">
                                        <span class="title"><i class="icon-cancel"></i> iCloud password - <span class="text-danger">Not Required</span></span>
                                        <span>You do not need to know iCloud password of the target iOS device.</span>
                                    </p>
                                  </li>
                                  <li href="#" class="list-group-item">
                                    <a href="http://{$domain}/iphone-with-jailbreak-monitoring.html" class="list-group-item-link">Learn more <i class="icons ico-arrows"></i></a>
                                  </li>
                                </ul>
                                <div class="row-pricing-panel">
                                    <div class="basic_wr">
                                        <div class="basic_h text-uppercase">
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
                                                                <input class="data-price" data-target="#basic-price-per-month" data-cur="usd" data-price-usd="{$_item.price}" data-period="{$_item.period}" name="optionsRadios" id="optionsRadios{$_item.id}1" 
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
                                                <!--     <div class="show_basic_features"><a href="#">Show Basic features</a>
                                                    </div> -->
                                                </form>
                                            </div>
                                        </div>
                                    
                                    
                                    </div>
                                    <div class="premium_wr">
                                        <div class="premium_h text-uppercase">
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
                                                                       data-price-usd="{$_item.price}" data-period="{$_item.period}" name="optionsRadios" id="optionsRadios{$_item.id}2" value="{$_item.id}" 
                                                                       type="radio" {if $_item.period == '3'} checked="checked" {/if} />
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
                                                  <!--   <div class="show_premium_features"><a href="#">Show Premium features</a>
                                                    </div> -->
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="list-group list-group-bg">
                                <ul >
                                  <li href="#" class="list-group-item text-center">
                                    <h4 class="list-group-item-heading"><i class="icons ico-cloud"></i> iCloud Solution </h4>
                                    <small>Requirements:</small>
                                  </li>
                                  <li href="#" class="list-group-item">
                                    <p class="list-group-item-text">
                                        <span class="title"><i class="icon-cancel"></i> Jailbreak - <span class="text-danger">Not Required</span></span>
                                        <span>You do not need to jailbreak the target iOS device before installing the app.</span>
                                    </p>
                                  </li>
                                  <li href="#" class="list-group-item">
                                    <p class="list-group-item-text">
                                        <span class="title"><i class="icon-cancel"></i> Physical access - <span class="text-danger">Not Required</span></span>
                                        <span>You do not need to install the app on the target device.</span>
                                    </p>
                                  </li>
                                  <li href="#" class="list-group-item">
                                    <p class="list-group-item-text">
                                        <span class="title"><i class="icon-ok"></i> iCloud password not - <span class="text-success">Required</span></span>
                                        <span>You need to know iCloud password of the target iOS device. </span>
                                    </p>
                                  </li>
                                  <li href="#" class="list-group-item">
                                    <a href="http://{$domain}/icloud-iphone-without-jailbreak-monitoring.html" class="list-group-item-link">Learn more <i class="icons ico-arrows"></i></a>
                                  </li>
                                </ul>
                                <div class="row-pricing-panel">
                                    <div class="basic_wr pricep border-left w100 icloud-box">
                                        <div class="basic_h">
                                            iCloud Solution
                                        </div>
                                        <div class="priceb">
                                            <div class="dtable">
                                                <div class="dtable-cell">
                                                <div class="dtable-text text-right">
                                                    <strong class='none-uppercase'>iCloud Solution</strong><br>
                                                     <span>iCloud Solution is provided with <br>Premium subscription</span>
                                                </div>
                                                    <div class="wr_pack">
                                                        <img src="images/premium_pack.png">
                                                    </div>
                                                    <div class="wr_price_big">
                                                        <span></span>
                                                        <div class="box-currence">
                                                            <symbol attr-iso="usd">$</symbol>
                                                            <curr id="premium-price-bottom-per-month">16.66 </curr>
                                                        </div><span> / month</span>
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
                                </div>
                            </div>
                            
                        </div>
                </div>
                <div class="row text-center">
                    <div class="refund_10 refund_bg">
                        <div class="wr_refund">
                            <div class="day10">10-DAY <span class="d_green">Refund Policy</span>
                            </div>
                        </div>
                    </div>
                    <div class="table_header table_header-border text-center">
                      <span>
                              Payment methods:
                          </span>

                      <i class="ico-cart-visa">
                          </i>
                      <i class="ico-cart-mcart">
                          </i>
                      <i class="ico-cart-maestro">
                          </i>
                      <i class="ico-cart-aexpress">
                          </i>
                      <i class="ico-cart-descover-new">
                          </i>
                      <i class="ico-cart-paypal-new">
                          </i>
                                                            </div>
                </div>
            </div>
        </div>

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
        $('input[data-target="#basic-price-per-month"], input[data-target="#premium-price-per-month"], input[data-target="#premium-price-bottom-per-month"]').change(function() {

            var currentValue = $(this).attr('data-price-' + $(this).attr('data-cur')) / Number($(this).attr('data-period'));

            // currentValue = roundUsing(Math.round, currentValue, 2);
            currentValue = (Math.floor(currentValue * 100) / 100).toFixed(2);

            $($(this).attr('data-target'))
                .html(currentValue)
                .prev('symbol')
                .html(symbols[$(this).attr('data-cur')] ? symbols[$(this).attr('data-cur')] : '');
        });
        </script>                                                

        
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