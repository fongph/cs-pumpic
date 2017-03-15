{include file='../includes/main/main-header.tpl'

    title="Aging Parent Protection App"
    description="Pumpic helps you take care of your elderly parents. Monitor calls and text messages. Track locations and geo-fences. Prevent dangers remotely."
}

<body>
    <!-- BLOCK GTM -->
    {include file='../includes/main/main-after-body.tpl'}
    <!-- END BLOCK GTM -->

    <!-- FLY BLOCKS -->
    {include file='../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->

    <div class="wrapper {*box-bottom-images*} prevent-online-dangers protect-your-little-kids">
        <!-- TOP MENU -->
 	{include file='../includes/main/main-top-menu.tpl'
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
            fz="28"
            collg = "7"
            imgUrl = "header_banners/hd_aging_parent_protection_app.png"
            maxWidth = "469"
            imgAlt = "Smartphone monitoring"
            imgAlign = "right"
            imgVerticalAlign = "bottom"
            textAlign = "right"
            title = "Take Care of Your Elderly Parents<br />Secure Their Safety on Mobile Phones"
            description = "Block unidentified calls and messages,<br />Track locations, set geo-fences, view alerts.<br />A peace of mind for you and your aging parents."
            promoBuyBlock = "no"
            planPackageBuy = "yes"
            block_video = "no"
            Apple = "yes"
            Icloud = "yes"
            Android = "yes"
        }

        {include file='../includes/content/plans.tpl' }

        {* Template: FLY BUTTONS
        *}
        {include file='../includes/content/fly/box-buttons.tpl'
            buttonBuyNow = 'yes'
            buttonViewDemo = 'no'
            buttonFreeTrial = 'yes'
        }

         {include file='../includes/content/aging_parent_protection_app/teenagers.tpl'
                    blockBg="light"
        }

        {include file='../includes/content/aging_parent_protection_app/secures.tpl'
            blockBg="dark"
        }

        {include file='../includes/content/features-table.tpl'
        blockBg="light"
        title = "Useful Features for Careful Parents and Children"
        description="Pumpic is unique mobile monitoring and an accurate GPS tracker for old people. The app comprises many useful features that allow taking care of your elderly parents remotely. It will help you protect your aging parents and ensure their welfare. Pumpic is available for Android and iOS smartphones and tablets, and includes the jailbreak-free iCloud monitoring solution."
        }

        {*include file='../includes/content/ipad.tpl'
                    blockBg="dark"
                    imgUrl = "parental_control/ipad.png"
                    imgAlt = "remote control"
                    title = "Easy-to-Use Control Panel"
        *}

        {* description = "Right after installing Pumpic, all the data from the target device will be sent to your Control Panel. It can be accessed from any browser and any gadget, including PCs, mobile phones and tablets. In Control Panel, you can not only view the information, but also set restrictions, block, and limit some of activities."
         *}

        {include file='../includes/content/how-get-pumpic.tpl'
             blockBg="dark"
        }

        <!-- BLOCK CHOOSE SUBSCRIPTION PLAN -->
        {*<div id='choose-subscription-plan' class="light prices-padding *}{*padding-reset*}{*">*}
            {*<div class="container">*}
                {*<h2 class="text-center">Choose Subscription Plan</h2>*}
                {*<div class="row">*}
                    {*<div class="col-lg-10 col-lg-offset-1">*}
                        {*<div class="row">*}
                            {*<div class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1">*}

                                {*<table class="tb_pricing table-bordered pricing-second">*}
                                    {*<thead>*}
                                        {*<tr>*}
                                            {*<th class="*}{*hidden-media-box*}{*">*}

                                                {*<div class="basic_wr row-pricing-panel">*}
                                                    {*<div class="basic_h">*}
                                                        {*Basic*}
                                                    {*</div>*}
                                                    {*<div class="priceb">*}
                                                        {*<div class="dtable">*}
                                                            {*<div class="dtable-cell">*}
                                                                {*<div class="wr_pack_basic"></div>*}
                                                                {*<div class="wr_pack_double_basic"></div>*}
                                                            {*</div>*}
                                                            {*<div class="dtable-cell">*}
                                                                {*<div class="wr_price_big">*}
                                                                    {*<span></span>*}
                                                                    {*<div class="box-currence">*}
                                                                        {*<div class="symbol" attr-iso="usd">$</div>*}
                                                                        {*<div class="curr" id="basic-price-per-month">5.33*}{*11.33*}{*</div>*}
                                                                    {*</div><span> / month</span>*}
                                                                {*</div>*}
                                                            {*</div>*}
                                                        {*</div>*}

                                                        {*<div class="list_price">*}
                                                            {*<form name="price_basic" method="POST" action="/buy.html" class="buy-form-with-offer" autocomplete="off">*}
                                                                {*<input id='product_price_basic' type='hidden' name='price[productID]' value='0' class="product_price" />*}

                                                                {*<ul>*}
                                                                    {*{foreach from=$getProducts.basic key=key item=item}*}
                                                                        {*<li>*}
                                                                            {*<label class="label_radio hover_label_radio {if $item.period == '12'}r_on{else}r_off{/if}">*}
                                                                                {*<input class="data-price" data-target="#basic-price-per-month" data-cur="usd" data-price-usd="{$item.price}" data-offer-price-usd="{$getProducts.basicDouble[$key].price}" data-period="{$item.period}" data-product="{$item.id}" data-offer-product="{$getProducts.basicDouble[$key].id}" data-group="basic"  name="optionsRadios" id="optionsRadios{$item.id}1" value="{$item.id}" type="radio"{if $item.period == '12'} checked="checked"{/if} />*}
                                                                                {*<span class="sp">*}
                                                                                    {*<strong>{$item.period}</strong> {if $item.period == 1}month{else}months{/if}*}
                                                                                {*</span>*}

                                                                                {*<div class="box-small-package">*}
                                                                                    {*<div class="offer_old_price"><div class="box-currence strike__currence"><div class="symbol" attr-iso="usd">$</div><div class="curr">{$item.price * 2|string_format:"%.2f"}</div></div></div>*}
                                                                                {*</div>*}

                                                                                {*<div class="package_price">*}
                                                                                    {*<strong>*}
                                                                                        {*<div class="box-currence"><div class="symbol" attr-iso="usd">$</div><div class="curr">{$item.price}</div></div>*}
                                                                                    {*</strong>*}
                                                                                {*</div>*}
                                                                                {*<div class="package_offer_price">*}
                                                                                    {*<strong>*}
                                                                                        {*<div class="box-currence"><div class="symbol" attr-iso="usd">$</div><div class="curr">{$getProducts.basicDouble[$key].price}</div></div>*}
                                                                                    {*</strong>*}
                                                                                {*</div>*}
                                                                            {*</label>*}
                                                                        {*</li>*}
                                                                    {*{/foreach}*}
                                                                {*</ul>*}
                                                                {*<div class="double_offer checkbox">*}
                                                                    {*<label>*}
                                                                        {*<input type="checkbox" data-group="basic">*}
                                                                        {*Get the 2nd plan with <span>40% OFF!</span>*}
                                                                    {*</label>*}
                                                                {*</div>*}
                                                                {*<button class="btn btn-default ga-action-submit"*}
                                                                        {*ga-action ="click"*}
                                                                        {*ga-category="iphone-with-jailbreak-monitoring"*}
                                                                        {*ga-label="buy basic"*}
                                                                        {*value="true" type="submit" name="price[submit]">Buy Now</button>*}
                                                                {*<!-- <div class="show_basic_features"><a href="#">Show Basic features</a>*}
                                                                {*</div> -->*}
                                                            {*</form>*}
                                                        {*</div>*}
                                                    {*</div>*}


                                                {*</div>*}
                                                {*<div class="premium_wr row-pricing-panel">*}
                                                    {*<div class="premium_h">*}
                                                        {*Premium*}
                                                    {*</div>*}
                                                    {*<div class="pricep">*}
                                                        {*<div class="dtable">*}
                                                            {*<div class="dtable-cell">*}
                                                                {*<div class="wr_pack_premium"></div>*}
                                                                {*<div class="wr_pack_double_premium"></div>*}
                                                            {*</div>*}
                                                            {*<div class="dtable-cell">*}
                                                                {*<div class="wr_price_big">*}
                                                                    {*<span></span>*}
                                                                    {*<div class="box-currence">*}
                                                                        {*<div class="symbol" attr-iso="usd">$</div>*}
                                                                        {*<div class="curr" id="premium-price-per-month">6.99*}{*14.66*}{*</div>*}
                                                                    {*</div><span>/ month</span>*}
                                                                {*</div>*}
                                                            {*</div>*}
                                                        {*</div>*}

                                                        {*<div class="list_price">*}
                                                            {*<form name="price_premium" method="POST" action="/buy.html" class="buy-form-with-offer" autocomplete="off">*}
                                                                {*<input id='product_price_premium' type='hidden' name='price[productID]' value='0' class="product_price" />*}

                                                                {*<ul>*}
                                                                    {*{foreach from=$getProducts.premium key=key item=item}*}
                                                                        {*<li>*}
                                                                            {*<label class="label_radio hover_label_radio {if $item.period == '12'}r_on{else}r_off{/if}">*}
                                                                                {*<input class="data-price" data-target="#premium-price-per-month" data-cur="usd" data-price-usd="{$item.price}" data-offer-price-usd="{$getProducts.premiumDouble[$key].price}" data-period="{$item.period}" data-product="{$item.id}" data-offer-product="{$getProducts.premiumDouble[$key].id}" data-group="premium"  name="optionsRadios" id="optionsRadios{$item.id}1" value="{$item.id}" type="radio"{if $item.period == '12'} checked="checked"{/if} />*}
                                                                                {*<span class="sp">*}
                                                                                    {*<strong>{$item.period}</strong> {if $item.period == 1}month{else}months{/if}*}
                                                                                {*</span>*}

                                                                                {*<div class="box-small-package">*}
                                                                                    {*<div class="offer_old_price"><div class="box-currence strike__currence"><div class="symbol" attr-iso="usd">$</div><div class="curr">{$item.price * 2|string_format:"%.2f"}</div></div></div>*}
                                                                                {*</div>*}

                                                                                {*<div class="package_price">*}
                                                                                    {*<strong>*}
                                                                                        {*<div class="box-currence"><div class="symbol" attr-iso="usd">$</div><div class="curr">{$item.price}</div></div>*}
                                                                                    {*</strong>*}
                                                                                {*</div>*}
                                                                                {*<div class="package_offer_price">*}
                                                                                    {*<strong>*}
                                                                                        {*<div class="box-currence"><div class="symbol" attr-iso="usd">$</div><div class="curr">{$getProducts.premiumDouble[$key].price}</div></div>*}
                                                                                    {*</strong>*}
                                                                                {*</div>*}
                                                                            {*</label>*}
                                                                        {*</li>*}
                                                                    {*{/foreach}*}
                                                                {*</ul>*}
                                                                {*<div class="double_offer checkbox">*}
                                                                    {*<label>*}
                                                                        {*<input type="checkbox" data-group="premium">*}
                                                                        {*Get the 2nd plan with <span>40% OFF!</span>*}
                                                                    {*</label>*}
                                                                {*</div>*}
                                                                {*<button class="btn btn-default ga-action-submit"*}
                                                                        {*ga-action ="click"*}
                                                                        {*ga-category="iphone-with-jailbreak-monitoring"*}
                                                                        {*ga-label="buy premium"*}
                                                                        {*value="true" type="submit" name="price[submit]">Buy Now</button>*}
                                                                {*<!-- <div class="show_premium_features"><a href="#">Show Premium features</a>*}
                                                                {*</div> -->*}
                                                            {*</form>*}
                                                        {*</div>*}
                                                    {*</div>*}
                                                {*</div>*}
                                            {*</th>*}
                                        {*</tr>*}
                                        {*<tr>*}
                                            {*<th>*}
                                                {*<div class="table_header text-center">*}
                                                  {*<span class='none-uppercase'>Payment methods:</span>*}
                                                  {*<i class="ico-cart-visa"></i>*}
                                                  {*<i class="ico-cart-mcart"></i>*}
                                                  {*<i class="ico-cart-maestro"></i>*}
                                                  {*<i class="ico-cart-aexpress"></i>*}
                                                  {*<i class="ico-cart-descover-new"></i>*}
                                                  {*<i class="ico-cart-paypal-new"></i>*}
                                                {*</div>*}
                                            {*</th>*}
                                        {*</tr>*}
                                    {*</thead>*}
                                {*</table>*}

                                {*<div class="space_line"> </div>*}
                                {*<div class="link_circle_italic2">*}
                                    {*<div class="style-links2">*}
                                        {*<span class="circle_ico2"></span>You need to have physical access to the target device or iCloud password to install the application.*}
                                    {*</div>*}
                                {*</div>*}

                            {*</div>*}
                        {*</div>*}
                    {*</div>*}
                {*</div>*}
            {*</div>*}
            {*<!-- block upgrade include-->*}
        {*</div>*}
        <!-- END -->
{include file='../includes/store/store-template.tpl'}
        <!-- TESTIMONIALS -->
        <div class="light">
            <div class="container">
                <h2 class="text-center testimonial-title">Trusted by Over 10,000 Customers Worldwide:</h2>
                <div class="row">
                    <div class="bxSliders only-pc">
                        <!-- SLIDE #1 -->
                        <div class="slide">
                            <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                <img src="{$img}/testimonials/testimonials_new_47.png" alt="" class="testimonial-photo">
                                <div class="testimonial-text">
                                    <h4>Merion S. – cares of 78-y.o. mother</h4>
                                    <p>“I’ve read a lot and watched many videos about elderly people who went out for a walk and never come back. My mother is 78 and I’m really afraid that something like that might happen to her. I made a research and found out of monitoring applications. They don’t require any additional devices and can be installed on a mobile phone. With Pumpic’s GPS tracker for elderly, I can set special areas and receive messages, when my mom leaves them. Thanks!”</p>
                                </div>
                            </div>
                            <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                <img src="{$img}/testimonials/testimonials_new_48.png" alt="" class="testimonial-photo">
                                <div class="testimonial-text">
                                    <h4>Sam Y. – cares of 69-y.o. father</h4>
                                    <p>“There are too many scammers who cash in on aged people. My father was cheated by one of them. A man called on his cell from an unknown number and said that my father had won a new TV, but that man needed money to deliver the prize. My father transferred him money and was very upset, as he received no feedback. I searched for reliable apps for seniors and came across Pumpic. In addition to calls blocking, it has a huge list of other helpful functions.”</p>
                                </div>
                            </div>
                            <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                <img src="{$img}/testimonials/testimonials_new_49.png" alt="" class="testimonial-photo">
                                <div class="testimonial-text">
                                    <h4>Clara K. – raises 13-y.o. son</h4>
                                    <p>“I use Pumpic for several months to look after my kid remotely from work. The app shows great results and really helps me. I can easily find out who calls my son and prevent him from contacts with strangers. I can also see where he is at each particular period of time and check places he visits during a day. It’s very easy to do as every time my son leaves home, I receive a notification and know at once that he is going to go somewhere. For me the app works better than a babysitter.”</p>
                                </div>
                            </div>
                        </div> <!-- .slide-->

                        <!-- SLIDE #2 -->
                        <div class="slide">
                            <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                <img src="{$img}/testimonials/michael-i-65.png" alt="" class="testimonial-photo">
                                <div class="testimonial-text">
                                    <h4>Michael I. – cares of 65-y.o. mother</h4>
                                    <p>“I’d been looking for iPhone apps for seniors and came across Pumpic. My mom is 65 now and she can’t provide herself with all needed care and help. At the same time, I work all day round, have three children and can’t be with her all the time. Sure, no senior monitoring app can replace physical care and support that old people need. However, I can at least make sure she is fine, know where she exactly is and prevent her from fraud and spam she might face on her iPhone.”</p>
                                </div>
                            </div>
                            <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                <img src="{$img}/testimonials/sasha-a-71.png" alt="" class="testimonial-photo">
                                <div class="testimonial-text">
                                    <h4>Sasha A. – cares of 71-y.o. father</h4>
                                    <p>“I recommend Pumpic as a tried GPS tracker for old people. I use it to take care of my father, who is 71. Pumpic shows me his location and allows following him on the map to not let him get lost. He got lost when going for a walk a few weeks ago. So my husband and I decided to try a remote monitoring app on his cell phone. The app shows great results. It lets us rest assured that we will find my dad anywhere he goes. I thinks it’s the best GPS solution for old people and their relatives.”</p>
                                </div>
                            </div>
                            <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                <img src="{$img}/testimonials/priscilla-m-68.png" alt="" class="testimonial-photo">
                                <div class="testimonial-text">
                                    <h4>Priscilla M. – cares of 68-y.o. mother</h4>
                                    <p>“I found Pumpic among other Android apps for seniors and want to say that it does its work in an amazing way. I just installed it on my mother’s phone and the app showed me everything that’s going on it. I can monitor calls, texts and what is most important, location! It is the best GPS app for senior citizens. I can see where my mom is on the screen of my own smartphone. I have no worries if she goes anywhere alone any longer. I set geo-fences and get notified if she leaves her house. Reading text messages allows me to prevent her from getting on the hook of scammers who always try to hurt old people and fraudulently take their money away.”</p>
                                </div>
                            </div>
                        </div> <!-- .slide-->
                        <!-- END -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- END -->

        {*include file='../includes/content/how-get-pumpic.tpl'
             blockBg="light"
        *}

        {* include file='../includes/testimonials.tpl'
            blockBg="dark"
        *}



        {*include file='../includes/content/why-pumpic.tpl'
            blockBg="light"
        *}


        {*include file='../includes/main/main-footer-promo-v2.tpl'
            sloganFirst="Prevent Troubles Remotely"
            sloganSecond="Secure Kids’ Happiness"
            bannerImg="image_banners_2.png"
        *}
        {*{include file='../includes/content/banners/banner-promo-trial.tpl'}*}

        {*include file='../includes/content/banners/index.tpl'*}
        <!-- END CONTENT -->

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

        {include file='../includes/main/main-quick-link.tpl'
        blockBg="light"
        }

        {include file='../includes/main/main-footer.tpl'}

    </div>
    {include file='../includes/main/main-analytics-footer.tpl'}

    <script src="/javascripts/store-init.js"></script>

    <style>

        .basic_wr .priceb, .premium_wr .pricep{
            margin-top: 0;
        }
    </style>

</body>
</html>
