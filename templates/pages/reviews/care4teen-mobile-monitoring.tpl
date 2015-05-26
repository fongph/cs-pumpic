{* closeAccess *}

{include file='../../includes/main/main-header.tpl'
    robots="yes" 
    title="Care4Teen parental control software review"
    description="Read editor's reviews, view a features comparison table, and learn more about Care4Teen mobile monitoring solution."
}    
    
<body>
    <!-- FLY BLOCKS -->
    {include file='../../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->
    
    <div class="wrapper {*bg_bottom_images*} block-reviews">
        <!-- TOP MENU -->

	{include file='../../includes/main/main-top-menu.tpl'
            topmenu_active='home'
            cache_id = "includes_main_main-top-menu"
            nocache
        }
        
        {*
            Template: PHONE
            Переменные:
                style (text): стиль блока Phone (blue|black). * - blue 
        *}
        {include file='../../includes/content/phone/block-phone.tpl'
                 style="blue"   
        } 
        
        
        <!-- CONTENT (img: 300x285)-->
        {include file='../../includes/content/info/info-promo.tpl'
            imgUrl = "header_banners/bg-img-phone-star.png"
            imgAlt = "Best parental control apps for Android and iPhone"
            imgAlign = "left bottom"
            imgVerticalAlign = "bottom"
            textAlign = "left"
            title = "Best of Parental Controls <br /> Mobile Monitoring App Reviews"
            description = "Secure your family. Ensure your children’s safety.
                           <br>Track calls, text messages, and location. Follow online activity."
            Review = 'yes'               
            promoBuyBlock = "no"
            planPackageBuy = "no"
            infoBlockMobile = "no"
        }
        
        {include file='../../includes/content/plans.tpl'}

        {* Template: FLY BUTTONS
        *}
        {include file='../../includes/content/fly/box-buttons.tpl'
            buttonBuyNow = 'yes'
            buttonViewDemo = 'no'
            buttonFreeTrial = 'yes'
        }
        
        
        <div class="lighten">
            <div class="container">
                <div class="box-state">
                    <div class="media">
                        <div class="pull-left{*pull-right*}">
                            <h3 class="heading">Care4Teen</h3>
                            <div class="price-span">Free</div>
                            {*<a href="#" class="img-media">
                                <img src="{$img}/boxes/boxes_4_12.png" height="219" width="242" alt="">
                            </a>*}
                            <span class="img-media">
                                <img src="{$img}/boxes/boxes_4_12.png" height="219" width="242" alt="">
                            </span>
                        </div>
                        <div class="media-body">
                            <h4 class="media-heading">Pros </h4>
                            <p>
                                Care4Teen is a free application with certain remote monitoring features that many paid parental control applications have. With its help it is possible to view call logs, incoming and outgoing messages as well as find out the GPS location of the target device.
                            </p>
                            <h4 class="media-heading">Cons </h4>
                            <p>
                                The app doesn’t support monitoring of social networks, emails, IM chats and many other cell phone and online activities. The application has no Support team so no one will answer your questions about the work of the app.
                            </p>
                            <h4 class="media-heading">The Verdict – 2.4/10</h4>
                            <p>
                                The main advantage of this application is a free-of-charge basis. It has some essential features of parental control software; however, security of children is not the thing where you can retrench. It would be better to choose an app with better functionality because Care4Teen has lacks in security.
                            </p>
                            <div class="media-btn">
                                <a href="/reviews/pumpic.html" class="btn btn-sm btn-success">Next Review &rarr;</a>
                            </div>
                        </div>
                    </div>
                    <h3 class="heading">Summary</h3>
                    <p>Care4Teen proposes a possibility to track incoming and outgoing calls and messages, find the GPS location of the target device and set Geo-fences.</p>
					<p>On the other hand, there are no email reviews as well as social media and chat monitoring. Also the app has no anti-theft security features.</p>
                    <div class="box-graph">
                        <img src="{$img}/diagrams/care4teen_new.jpg" height="368" width="690" alt="">
                    </div>
                    <h3 class="heading">Reports & Logs – <span class="heading-rating">2/10</span></h3>
                    <p>The application saves reports with all incoming and outgoing calls and messages. Also every time your child enters a prohibited area you get a notification of Geo-fences.</p>
					<p>However, this app doesn’t monitor multimedia content of the device, browsing history nor social media. As a result, your child can become a victim of online predators.</p>
                    <h3 class="heading">Features  – <span class="heading-rating">3.5/10</span></h3>
                    <p>Care4Teen enables parents to block inappropriate websites and applications. However, as you can’t view browsing history, you have no possibility to check the effectiveness of this feature. Also you won’t be able to block phone numbers so anyone can call your child.</p>
                    <h3 class="heading">Security & Management – <span class="heading-rating">2.5/10</span></h3>
                    <p>The app accommodates remote access to the target device so you can check call history whenever and wherever you want. Unfortunately, all personal information is at risk because the app can’t lock a phone or wipe an SD card remotely. And you won’t get a notification about a Sim card change.</p>
                    <h3 class="heading">Help & Support – <span class="heading-rating">0/10</span></h3>
                    <p>As the application is free of charge, you wouldn’t expect someone to assist you with any questions you have concerning it. You download and install it at your own risk so you can’t count on any help. This is one of the main disadvantages of the app – no one will be responsible, if something goes wrong.</p>
                    <h3 class="heading">Conclusion – <span class="heading-rating">2.4/10</span></h3>
                    <p>This free parental control application has three main options required by thoughtful parents: call monitoring, text message logs, and GPS tracking. However, no one can be sure that the app will work properly and no one will help you in case of troubles with the app. </p>
					<p>Care4Teen has massive gaps in a security field that brought your efforts to secure online and cell phone activities of your children to nought.  </p>
                    <!-- Top parental Control Products -->
                    {include file='../../includes/reviews/list-top-products.tpl'}
                    
                </div>
            </div>
        </div>
        
        <!-- END CONTENT -->    
        {include file='../../includes/content/banners/index.tpl'}
        <!-- END CONTENT -->    
           
        <!-- RECOMMENDED -->
        {*
            Template: RECOMMENDED
        *}    
        {include file='../../includes/main/main-recommended.tpl'}   
        
        <!-- FOOTER -->
        {*
            Template: FOOTER
            Переменные:
                our_products (text): Включить выключить блок OUR PRODUCTS (no|yes). * - yes 
        *}
        {include file='../../includes/main/main-footer.tpl'}
                
    </div>
       
    {include file='../../includes/main/main-analytics-footer.tpl'}
</body>
</html>