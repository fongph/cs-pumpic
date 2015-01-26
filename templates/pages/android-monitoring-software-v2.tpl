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
                // google analytics
                gaStoreCat (text): категория аналитики на ссылку "Store"
                gaAction (text): действие для всех кнопок.
                gaLabel (text): короткое описание для всех кнопок.
        *}
	{include file='../includes/main/main-top-menu.tpl' 
                topmenu_active='home'

                gaStoreCat = "store"
                gaAction = "link click"
                gaLabel = "header"
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
            
        *}
        {include file='../includes/content/info/info-promo.tpl'
            imgUrl = "landing_mobile/bg_header_android.png"
            imgAlt = "Landing Mobile"
            imgAlign = "right"
            textAlign = "right"
            title = "Android Parental Control App"
            description = "Pumpic takes care of your children safety.        
                           <br />Track your kids’ Android device remotely."
        }
        
        {*
            Template: PLANS
            Переменные:
                Block Basic/Premium
                // google analytics
                gaBasicCat (text): категория аналитики на кнопку "Buy Basic"
                gaPremiumCat (text): категория аналитики на кнопку "Buy Pumpic"
                gaStoreLinkCat (text): категория аналитики на ссылку "Store"
                gaDemoLinkCat (text): категория аналитики на ссылку "View demo"
                
                gaAction (text): действие для всех кнопок.
                gaLabel (text): короткое описание для всех кнопок. 
        *}
        {include file='../includes/content/plans.tpl'
                gaBasicCat = "buy basic"
                gaPremiumCat = "buy premium"
                gaStoreLinkCat = "store link"
                gaDemoLinkCat = "demo link"
    
                gaAction = "click"
                gaLabel = "prices"
        }

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
                // google analytics
                gaStoreLinkCat (text): категория аналитики на ссылку "Visit Store"
                gaDemoLinkCat (text): категория аналитики на ссылку "View demo"
                gaAction (text): действие для всех кнопок.
                gaLabel (text): короткое описание для всех кнопок. 
        *}
        {include file='../includes/content/ipad.tpl' 
                blockBg="dark"
                imgUrl = "icons/ipad_android.png"
                imgAlt = "Android"
                title = "Easy-to-Use Control Panel"
                description = "Try Control Panel demo to see Pumpic for Android in use.
                               <br />Buy Pumpic to keep your kids safe and secured right now."

                gaStoreLinkCat ="store link"
                gaDemoLinkCat = "demo link"
                gaAction = "click"
                gaLabel = "body"
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
                 // google analytics
                gaBuyPumpicCat (text): категория аналитики на кнопку "Buy Pumpic"
                gaAction (text): действие для всех кнопок.
                gaLabel (text): короткое описание для всех кнопок. 
        *}
        {include file='../includes/content/banner-promo.tpl'
                title = "Keep your <span>family safe</span>"

                gaBuyPumpicCat = "buy pumpic"
                gaAction = "click"
                gaLabel = "banner"
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