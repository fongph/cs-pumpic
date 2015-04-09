{closeAccess}
{include file='../includes/main/main-header.tpl'
    robots="yes" 
    title="Mobile Phone Security Measures"
    description="How to protect children from online predators, cyberbullies, 18+ content, and identity theft. Pumpic gathered essential information on mobile phone safety practice. Learn more to keep kids safe."
}    
    
<body>
    <!-- FLY BLOCKS -->
    {include file='../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->
    
    <div class="wrapper child-online-mobile-security">
        <!-- TOP MENU -->

	{include file='../includes/main/main-top-menu.tpl'
            topmenu_active='home'
            cache_id = "includes_main_main-top-menu"
            nocache
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
                <p>Nowadays children are inseparable from their smartphones and tablets. These gadgets may be useful, and at the 
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
                
                <div class="text-center">
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
                <div class="text-center">
                    <p><strong>Add this infographic to your website by copying and pasting the following embed code:</strong></p>
                    <textarea style='margin:0px; width:650px; height:200px;'>
                        <img src='http://pumpic.com/images/infographic/v2.png' 
                            width='540' 
                            alt='Mobile Phone Security Measures' 
                            id='the_img_link'>
                    <a href='http://pumpic.com/child-online-mobile-security.html' id='the_img_link'>
                    <p>
                        Mobile Phone Security Measures [Infographic] by the team at <a href='http://pumpic.com/child-online-mobile-security.html' 
                                                                                       id='the_img_link'>Pumpic</a></p>
                    </a>
                    </textarea>
                </div>

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