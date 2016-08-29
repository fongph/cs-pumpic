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
    }



/*

 ¯\_(ツ)_/¯


*/
</style>
{include file='../includes/main/main-header.tpl'
    robots="yes"
    title="Kids’ Screen Time Management | Pumpiс"
    description="How much screen time for kids is too much? Find out the answer and check this infographic for 8 screen time recommendations to help parents deal with the issue."
    metaTags="true"
    ogTitle="Kids’ Screen Time Management | Pumpiс"
    ogDesc="How much screen time for kids is too much? Find out the answer and check this infographic for 8 screen time recommendations to help parents deal with the issue."
    ogImg="images/infographic/how-to-manage-kids-screen-prev.jpg"
}

<body>
    <!-- BLOCK GTM -->
    {include file='../includes/main/main-after-body.tpl'}
    <!-- END BLOCK GTM -->

    <!-- FLY BLOCKS -->
    {include file='../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->

    <div class="wrapper how-to-manage-kids-screen-time">
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
            title="8 Must-Follow Tips to Manage Kids’ Screen Time"
           blockBg='dark'}
                 {* свой HTML код *}

        <div class="text-commandments">
          <p class="text-justify">Whether you only consider providing you children with a mobile device, or they already have it, you must think thoroughly about how you’re going to manage kids’ screen time. The thing is that modern-day children may literally spend hours on their smartphones and tablets as these devices become the primary mean of entertainment and communication with friends.
          </p>
          <p class="text-justify">
            At the same time, too much time on the screen can have an adverse impact on kids’ school performance and – what’s even worse – health. Sleep and behavior issues, attention and bearing problems, depression, even obesity – this is not the full list of possible consequences of unlimited screen time. Yet, there are many ways for caring parents to help kids deal with this matter (e.g. apps to limit screen time). Moreover, you can even reverse the situation so that wise use of a smartphone or tablet would benefit children from learning opportunities.
          </p>
          <p class="text-justify">
            Check our infographic to discover 8 screen time recommendations to help parents reduce and moderate the time their kids spend in front of the screen.
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
                                    <li><a class="share-facebook" href="#" data-location="http://www.facebook.com/sharer/sharer.php?u="></a></li>
                                    <li><a class="share-google" href="#" data-location="https://plus.google.com/share?url="></a></li>
                                    <li><a class="share-digg" href="#" data-location="http://digg.com/submit?url="></a></li>
                                    <li><a class="share-twitter" href="#" data-location="https://twitter.com/share?url="></a></li>
                                    <li><a class="share-reddit" href="#" data-location="//www.reddit.com/submit?url="></a></li>
                                    <li><a class="share-pinterest" href="#" data-location="http://pinterest.com/pin/create/link/?url=" data-media="http://{$domain}/images/infographic/how-to-manage-kids-screen-time.png"></a></li>
                                </ul>


                                <a href="/infographics/" class="share-link"><img src="/images/icon-left.png">  Back to Pumpic Mobile Infographics</a>
                            </div>

                            <div class="clearfix"></div>
                            <img src='http://{$domain}/images/infographic/how-to-manage-kids-screen-time.png'
                                 width='540'
                                 alt='8 Must-Follow Tips to Manage Kids'
                                 id='the_img_link'>
                            {*<a href='http://{$domain}/child-online-mobile-security.html' id='the_img_link'>
                                <p>
                                Mobile Phone Security Measures [Infographic] by the team at <a href='http://{$domain}/child-online-mobile-security.html'
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
                            <li><a class="share-pinterest" href="#" data-location="http://pinterest.com/pin/create/link/?url=" data-media="http://{$domain}/images/infographic/how-to-manage-kids-screen-time.png"></a></li>
                        </ul>
                        <div class="text-center">
                            <p><strong>Add this infographic to your website by copying and pasting the following embed code:</strong></p>
                            <textarea class="copy-this" style="margin: 0px; height: 200px; overflow-y: scroll;" readonly="readonly"><img src="http://{$domain}/images/infographic/how-to-manage-kids-screen-time.png" width="720" height="5222" alt="8 Must-Follow Tips to Manage Kids’ Screen Time " />
<p><a href="http://{$domain}/how-to-manage-kids-screen-time.html">8 Must-Follow Tips to Manage Kids’ Screen Time [Infographic] by the team at Pumpic.</a></p></textarea>

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
                            {include file="../includes/content/screen-time-is-too-much-article.tpl"}
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
