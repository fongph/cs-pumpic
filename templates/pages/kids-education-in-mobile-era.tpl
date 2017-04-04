<style>


    .box_category > ul > li > div{
        padding-left: 0 !important;
    }

    .share-link{
        color:#16a89e !important;
        font-size: 13.5px !important;
        float: left;
        padding-top: 10px !important;
        margin-bottom: 10px !important;
    }

    .share_list-infographic{
        float: right;
    }


    .text-commandments{
        padding: 0 100px;
    }
    @media (max-width: 992px){
        .text-commandments{
            padding: 0;
        }
        .share_list-infographic{
            float: none;
        }
        .short img {
            margin: 0 auto !important;
        }
    }



/*

 ¯\_(ツ)_/¯


*/
</style>
{include file='../includes/main/main-header.tpl'

    title="Smartphones and Tablets in Kids' Education | Pumpic"
    description="The Internet and handheld devices revolutionized kids’ learning experience. Today, mobile education is a reality that helps caring parents raise a genius."
    metaTags="true"
    
    ogTitle="Smartphones and Tablets in Kids' Education | Pumpic"
    ogDesc="The Internet and handheld devices revolutionized kids’ learning experience. Today, mobile education is a reality that helps caring parents raise a genius."
    ogImg="images/infographic/kids-education-in-mobile-era/infographic.png"
}

<body>
    <!-- BLOCK GTM -->
    {include file='../includes/main/main-after-body.tpl'}
    <!-- END BLOCK GTM -->

    <!-- FLY BLOCKS -->
    {include file='../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->

    <div class="wrapper">
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
            title="How to Use Smartphones & Tablets to Boost Your Kid’s Education"
           blockBg='dark'}
                 {* свой HTML код *}

        <div class="text-commandments">
          <p class="text-justify">The Internet and Mobile revolutionized education. From Education 1.0 in the XXth century and over Education 2.0 on the edge of millenniums, today we enter the era of Education 3.0. Kids and teenagers are the ones who have the first-hand experience of how everything is changing. Only yesterday they were forced to leave their hi-tech gadgets at the classroom door, and today schools provide them with smartphones and tablets as well as introduce programs of online learning for kids for a broad range of subjects.
          </p>
          <p class="text-justify">
              Moreover, with easily available mobile devices and countless educational websites and apps, education becomes something modern children walk around with in our pocket. Parents should take advantage of the opportunities that Education 3.0 provides for their kids&rsquo; good. Check our infographic to find out 10 best ways to use smartphones and tablets for educational purposes in schools and at home. Also, don&rsquo;t miss out the list of the finest learning apps and web resources that will help you to raise a real genius.
          </p>
            </div>

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

                        imgUrl = 'infographic/how-to-manage-kids-screen-time.png'
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

                            <div class="col-md-8 col-md-offset-2">
                                <ul class="share_list share_list-infographic">
                                    <li><a class="share-facebook" href="#" data-location="https://www.facebook.com/sharer/sharer.php?u="></a></li>
                                    <li><a class="share-google" href="#" data-location="https://plus.google.com/share?url="></a></li>
                                    <li><a class="share-digg" href="#" data-location="https://digg.com/submit?url="></a></li>
                                    <li><a class="share-twitter" href="#" data-location="https://twitter.com/share?url="></a></li>
                                    <li><a class="share-reddit" href="#" data-location="//www.reddit.com/submit?url="></a></li>
                                    <li><a class="share-pinterest" href="#" data-location="https://pinterest.com/pin/create/link/?url=" data-media="{$schema}{$domain}/images/infographic/kids-education-in-mobile-era/infographic.png"></a></li>
                                </ul>


                                <a href="/infographics/" class="share-link"><img src="/images/icon-left.png">  Back to Pumpic Mobile Infographics</a>
                            </div>

                            <div class="clearfix"></div>
                            <img src='/images/infographic/kids-education-in-mobile-era/infographic.png'
                                 width='540'
                                 alt='How to Use Smartphones & Tablets to Boost Your Kid’s Education'
                                 id='the_img_link'>
                            {*<a href='{$schema}{$domain}/child-online-mobile-security.html' id='the_img_link'>
                                <p>
                                Mobile Phone Security Measures [Infographic] by the team at <a href='{$schema}{$domain}/child-online-mobile-security.html'
                                                                                               id='the_img_link'>Pumpic</a>
                                </p>
                            </a>*}
                        </div>
                        <br /><br />
                        <ul class="share_list" style="max-width: 700px;">
                            <li><a class="share-facebook" href="#" data-location="https://www.facebook.com/sharer/sharer.php?u="></a></li>
                            <li><a class="share-google" href="#" data-location="https://plus.google.com/share?url="></a></li>
                            <li><a class="share-digg" href="#" data-location="https://digg.com/submit?url="></a></li>
                            <li><a class="share-twitter" href="#" data-location="https://twitter.com/share?url="></a></li>
                            <li><a class="share-reddit" href="#" data-location="//www.reddit.com/submit?url="></a></li>
                            <li><a class="share-pinterest" href="#" data-location="https://mpinterest.com/pin/create/link/?url=" data-media="{$schema}{$domain}/images/infographic/kids-education-in-mobile-era/infographic.png"></a></li>
                        </ul>
                        <div class="text-center">
                            <p><strong>Add this infographic to your website by copying and pasting the following embed code:</strong></p>
                            <textarea class="copy-this" style="margin: 0px; height: 200px; overflow-y: scroll;" readonly="readonly"><img src="{$schema}{$domain}/images/infographic/kids-education-in-mobile-era/infographic.png" width="720" height="4956" alt="How to Use Smartphones & Tablets to Boost Your Kid’s Education" />
<p><a href="/kids-education-in-mobile-era.html">How to Use Smartphones & Tablets to Boost Your Kid’s Education [Infographic] by the team at Pumpic.</a></p></textarea>

                            <div class="actions clearfix">
                                <div class="col-mob-12 col-xs-6 col-sm-6 col-md-6 col-lg-6 padding-null">
                                <a href="https://creativecommons.org/licenses/by-nc-nd/4.0/" target="_blank" rel="nofollow" title="Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License" class="copyright"></a>
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
                            {include file="../includes/content/kids-education-in-mobile-era.tpl"}
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
