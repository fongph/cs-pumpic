{*closeAccess*}

{*
    Template: hedaer HEADER ( ШАПКА СТРАНИЦЫ )
    Переменные:
        robots (text): сключить или выключить индексацию от роботов ( yes | no ) * - default: yes
        title (text): вносим title - страницы. 
        description (text): вносим meta description ( описание страницы )
*}    
    
{include file='../includes/main/main-header.tpl'
    robots="no" 
    title="Pumpic mobile phone monitoring app for Android"
    description="Pumpic for Android is a new solution for parental control mobile monitoring. Track your children’s smartphone usage, 
                follow incoming and outbound calls, monitor browsing history and text messages, track GPS location and social network 
                activity on Android devices with Pumpic."
}    
    
<body>
    <!-- FLY BUTTON -->
    {include file='../includes/main/main-button-help.tpl'}
    {include file='../includes/main/main-button-goup.tpl'}
    <!-- END FLY BUTTON -->
    
    {* 'block-android' - название вашей страницы латинецей. ОБЯЗАТЕЛЬНОЕ ПОЛЕ *}
    <div class="wrapper block-android">
        <!-- TOP MENU -->
        {*
            Template: MENU ( ГЛАВНОЕ МЕНЮ )
            Переменные:
                topmenu_active (test): alias меню, которое будет подсвечиваться активным. 
        *}
	{include file='../includes/main/main-top-menu.tpl' 
                topmenu_active='home'
        }
        
        <!-- CONTENT -->
        {*
            Template: INFORNATION PROMO ( ОБЯЗАТЕЛЬНОЕ ПОЛЕ )
            Переменные:
                imgUrl(url): ссылка на изображение. ( WxH: 437x325) * - не больше ОБЯЗАТЕЛЬНОЕ ПОЛЕ
                imgAlt (text): короткий текст для изображения.
                imgAlign (text): позиция изображения относительно текста. (left|center|right) *default: center
                textAlign (text): позиция текста. ( left|center|right ) *default: right
                title (text): название блока.
                description (text): описание баннера.
                listText (text): список параметров.
            
        *}
        {include file='../includes/content/info/info-promo.tpl'
            imgUrl = "landing_mobile/bg_header_android.png"
            imgAlt = "Landing Mobile"
            imgAlign = "right"
            textAlign = "right"
            title = "Android Parental Control App"
            description = "Pumpic takes care of your children safety.        
                           <br />Track your kids’ Android device remotely."

            listText = "text1|text2"               
        }
        
        {*
            Template: PLANS
            Переменные:
                Block Basic/Premium
        *}
        {include file='../includes/content/plans.tpl'}

        {*
            Template: SECURES
            Переменные:
                blockBg (text): Стиль блока ( dark / light ) *default: dark
        *}
        {include file='../includes/content/secures.tpl' 
                blockBg="light"
        }

        {*
            Template: iPad
            Переменные:
                blockBg (text): Стиль блока ( dark / light ) *default: dark
                imgUrl (url): путь к изображению. (WxH: 404x295) * - не больше ОБЯЗАТЕЛЬНОЕ ПОЛЕ
                imgAlt (text): описание для изображения.
                title (text): название блока.
                description (text): описание блока.
        *}
        {include file='../includes/content/ipad.tpl' 
                blockBg="dark"
                imgUrl = "icons/ipad_android.png"
                imgAlt = "Android"
                title = "Easy-to-Use Control Panel"
                description = "Try Control Panel demo to see Pumpic for Android in use.
                               <br />Buy Pumpic to keep your kids safe and secured right now."
        }

        {*
            Template: WHY PUMPIC
            Переменные:
                blockBg (text): Стиль блока ( dark / light ) *default: dark
        *}
        {include file='../includes/content/why-pumpic.tpl' 
                blockBg="light"
        }

        {*
            Template: VIDEO PUMPIC
            Переменные:
                blockBg (text): Стиль блока ( dark / light ) *default: dark
        *}
        {include file='../includes/content/video-pumpic.tpl' 
                blockBg="light"
        }

        {*
            Template: HOW PUMPIC
            Переменные:
                blockBg (text): Стиль блока ( dark / light ) *default: dark
        *}
        {include file='../includes/content/how-pumpic.tpl' 
                blockBg="dark"
        }                    


        {*
            Template: TESTIMONIALS
            Переменные:
                blockBg (text): Стиль блока ( dark / light ) *default: dark
        *}
        {include file='../includes/main/main-testimonials.tpl' 
                blockBg="light"
        } 


        {*
            Template: BANNER PROMO
            Переменные:
                title (text): промо текст.
        *}
        {include file='../includes/content/banner-promo.tpl'
                title = "Keep your <span>family safe</span>"
        }
        <!-- END CONTENT -->    
           
        
        
        <!-- FOOTER -->
        {*
            Template: FOOTER
        *}
        {include file='../includes/main/main-footer.tpl'}
                
    </div>
    {*
        Template: ANALYTICS
    *}        
    {include file='../includes/main/main-analytics-footer.tpl'}
</body>
</html>