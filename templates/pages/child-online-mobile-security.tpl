{include file='../includes/main/main-header.tpl'
    robots="yes" 
    title="Mobile Phone Security Measures"
    description="How to protect children from online predators, cyberbullies, 18+ content, and identity theft. Pumpic gathered essential information on mobile phone safety practice. Learn more to keep kids safe."
    metaTags="true"
}    
    
<body>
    <!-- BLOCK GTM -->
    {include file='../includes/main/main-after-body.tpl'}
    <!-- END BLOCK GTM -->
    
    <!-- FLY BLOCKS -->
    {include file='../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->
    
    <div class="wrapper child-online-mobile-security">
        <!-- TOP MENU -->

	{include file='../includes/main/main-top-menu.tpl'
            topmenu_active='home'
            show_control_panel_link="1"
            cache_id = "includes_main_main-top-menu"
            nocache
        }
        

        
        {*
            Template: PHONE
            Переменные:
                style (text): стиль блока Phone (blue|black). * - blue 
        *}
        {include file='../includes/content/phone/block-phone.tpl'
                 style="black"   
        }
        
        <!-- CONTENT -->
        {* include file='../includes/content/info/info-promo.tpl'
            imgUrl = "header_banners/bg_famaly_427x254.png"
            imgAlt = "Landing Mobile"
            imgAlign = "left bottom"
            imgVerticalAlign = "bottom"
            textAlign = "left"
            title = "Cell Phone <br />Monitoring Control App"
            description = "Keep your family safe and secured with Pumpic. <br />
                           Track location. View calls and SMS. Follow online activity."
            promoBuyBlock = "yes"
        *}
        
        {* Template: BLOCK CONTENT
             title (text): название блока
             blockBg (text): Стиль блока ( dark / light ) *default: dark
        *}
        {Content 
            title="How to Protect Children on Smartphones and Tablets"
           blockBg='dark'}
                 {* свой HTML код *}               
                <p class="text-justify">Nowadays children are inseparable from their smartphones and tablets. These gadgets may be useful, and at the
                    same time bear hidden dangers like attacks of online predators, threats of cyberbullies, 18+ content, and identity 
                    theft. However, not many adults know of security measures it is necessary to consider here. Pumpic is designed 
                    to take care of children. Our team did a great job and gathered essential information on mobile phone safety 
                    practice. Have a look at infographics below and find out how to protect your kids on smartphones and tablets.</p>

                {* Template: BLOCK IMAGE
                    blockAlign (text): позиция блока с изображением. (left|center|right) *default: center

                    imgUrl (text): путь к изображению. *ОБЯЗАТЕЛЬНОЕ ПОЛЕ 
                    imgAlt (text): подпись к изображению.
                    // размер изображения
                    imgWidth (text): ширина изображения *ОБЯЗАТЕЛЬНОЕ ПОЛЕ
                    imgHeight (text): высота изображения *ОБЯЗАТЕЛЬНОЕ ПОЛЕ
                    // Подпись к изображению
                    captionText (text): подпись к изображению
                *}
                {*include file='../includes/content/block/image.tpl'
                        blockAlign = 'center'

                        imgUrl = 'infographic/v2.png'
                        imgAlt = 'Alt Test image 1'                
                        imgWidth = '537'
                        imgHeight = '312'

                        captionText = 'Caption test image 1'
                *}
                <ul class="list_category" save-state>
                    <li>
                        <a data-toggled="off" href="#infographic">View Infographic</a>
                    </li>
                    <li>
                        <a data-toggled="off" href="#read-article">Read Article</a>
                    </li>
                </ul>

        <div class="row">
            <div class="box_category box_category-bg">
                <ul class="no-left-padding">
                    <li style="display: list-item;">
                        <div id="infographic" class="text-center">
                            <ul class="share_list">
                                <li><a class="share-facebook" href="#" data-location="http://www.facebook.com/sharer/sharer.php?u="></a></li>
                                <li><a class="share-google" href="#" data-location="https://plus.google.com/share?url="></a></li>
                                <li><a class="share-digg" href="#" data-location="http://digg.com/submit?url="></a></li>
                                <li><a class="share-twitter" href="#" data-location="https://twitter.com/share?url="></a></li>
                                <li><a class="share-reddit" href="#" data-location="//www.reddit.com/submit?url="></a></li>
                                <li><a class="share-pinterest" href="#" data-location="http://pinterest.com/pin/create/link/?url=" data-media="http://pumpic.com/images/socials/social-icon.jpg"></a></li>
                            </ul>
                            <img src='http://pumpic.com/images/infographic/v2.png'
                                 width='540'
                                 alt='Mobile Phone Security Measures'
                                 id='the_img_link'>
                            {*<a href='http://pumpic.com/child-online-mobile-security.html' id='the_img_link'>
                                <p>
                                Mobile Phone Security Measures [Infographic] by the team at <a href='http://pumpic.com/child-online-mobile-security.html'
                                                                                               id='the_img_link'>Pumpic</a>
                                </p>
                            </a>*}
                        </div>
                        <br /><br />
                        <ul class="share_list" style="max-width: 700px;">
                            <li><a class="share-facebook" href="#" data-location="http://www.facebook.com/sharer/sharer.php?u="></a></li>
                            <li><a class="share-google" href="#" data-location="https://plus.google.com/share?url="></a></li>
                            <li><a class="share-digg" href="#" data-location="http://digg.com/submit?url="></a></li>
                            <li><a class="share-twitter" href="#" data-location="https://twitter.com/share?url="></a></li>
                            <li><a class="share-reddit" href="#" data-location="//www.reddit.com/submit?url="></a></li>
                            <li><a class="share-pinterest" href="#" data-location="http://pinterest.com/pin/create/link/?url=" data-media="http://pumpic.com/images/socials/social-icon.jpg"></a></li>
                        </ul>
                        <div class="text-center">
                            <p><strong>Add this infographic to your website by copying and pasting the following embed code:</strong></p>
                            <textarea class="copy-this" style="margin: 0px; height: 200px; overflow-y: scroll;" readonly="readonly"><img src="http://pumpic.com/images/infographic/v2.png" width="720" height="6977" alt="How to Keep Your Kids Safe on a Smartphone" />
<p><a href="http://pumpic.com/child-online-mobile-security.html">How to Keep Your Kids Safe on a Smartphone [Infographic] by the team at Pumpic.</a></p></textarea>
                            
                            <div class="actions clearfix">
                                <div class="col-mob-12 col-xs-6 col-sm-6 col-md-6 col-lg-6 padding-null">
                                <a href="http://creativecommons.org/licenses/by-nc-nd/4.0/" target="_blank" rel="nofollow" title="Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License" class="copyright"></a>
                                </div>
                                <div class="col-mob-12 col-xs-6 col-sm-6 col-md-6 col-lg-6 padding-null">
                                <div class="copy-to-clipboard">Copy to clipboard</div>
                                <div class="copy-done">Copied to clipboard!</div>
                                </div>
                            </div>
                            
                        </div>
                    </li>
                    <li style="display: none">
                        <div id="read-article">
                            {include file="../includes/content/child-online-mobile-security-article.tpl"}
                        </div>
                    </li>
                </ul>
            </div>
        </div>
                        
             <ul class="list_category l-c-mobile" save-state>
                <li>
                    <a data-toggled="off" href="#infographic">View Infographic</a>
                </li>
                <li>
                    <a data-toggled="off" href="#read-article">Read Article</a>
                </li>
            </ul>           

        {EndContent}

        
        <!-- END CONTENT -->    
           
        <!-- RECOMMENDED -->
        {*
            Template: RECOMMENDED
        *}    
        {include file='../includes/main/main-recommended.tpl'
                 blockBg='light'
        }
        
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