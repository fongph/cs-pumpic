{*
    Function: закрывает доступ для всех, кроме нашего IP.
*}
{closeAccess}
{*
    Template: hedaer HEADER ( ШАПКА СТРАНИЦЫ )
    Переменные:
        robots (string): сключить или выключить индексацию от роботов ( yes | no ) * - default: yes
        title (string): вносим title - страницы. 
        description (string): вносим meta description ( описание страницы )
*}
{include file='../includes/main/main-header.tpl'
    robots="yes" 
    title="Title"
    description="Description"
}  

<body>
    <!-- FLY BLOCKS -->
    {*
        Template: FLY BLOCKS ( Добавляет на странице плавающие блоки )
    *}
    {include file='../includes/content/fly/fly_blocks.tpl'}
        <!-- templates fly blocks -->
        {* Template: BLOCK 'FLY_FEATURES v1' *}
        {include file='../includes/content/fly/fly_features.tpl'}
        {* Template: BLOCK 'FLY_FEATURES v2' *}
        {include file='../includes/content/fly/fly_features_v2.tpl'}
        {* Template: BLOCK 'FLY_BUTTONS' *}
        {include file='../includes/content/fly/box-buttons.tpl'}
        {* Template: BLOCK 'FLY_DISCOUNT' *}
        {* include file='../includes/content/fly/fly-box-discount.tpl' *}
        {* Template: BLOCK 'FLY_BUTTON_HELP GO_UP' *}
        {* include file='../includes/main/main-button-help.tpl' *}
        {* Template: BLOCK 'FLY_BUTTON_GROUP' *}
        {* include file='../includes/main/main-button-goup.tpl' *}
        <!-- end templates fly blocks -->
    <!-- END FLY BLOCKS-->
    
    <div class="wrapper {*bg_bottom_images*} block-free-trial">
        <!-- TOP MENU -->
        {*
            Template: MENU ( ГЛАВНОЕ МЕНЮ )
            Переменные:
                topmenu_active (string): alias меню, которое будет подсвечиваться активным. 
                cache_id (string): id - шаблона по которому будет производится кеширование.
                nocache (tag): - говорим смарти не кешировать.
        *}
	{include file='../includes/main/main-top-menu.tpl'
            topmenu_active='home'
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
        <!-- CONTENT -->
        {*
            Template: INFORMATION PROMO ( ОБЯЗАТЕЛЬНОЕ ПОЛЕ ) * - DEFAULT
            Переменные:
                imgUrl(url): ссылка на изображение. ( WxH: 437x325) * - не больше ОБЯЗАТЕЛЬНОЕ ПОЛЕ
                imgAlt (string): короткий текст для изображения.
                imgAlign (string): позиция изображения относительно текста. (left|center|right) *default: center
                imgVerticalAlign (string): позиция изображения относительно высоты. ( bottom|middle ) *default: middle
                textAlign (string): позиция текста. ( left|center|right ) *default: right
                title (string): название блока.
                description (string): описание баннера.
                listText (string): список параметров. * - разделитель "|"
                trial (string): "yes" -  триал баннер. (yes|no)
                promoBuyBlock (string): Включает кнопку PromoBuy (yes|no) *default: переменная не инцелезирована
                planPackageBuy (sting): Включает банер пакетов (yes|no) *default: переменная не инцелезирована
                flagPosition (string): 'left' * - позиция флага относительно тексиа ( описания ). (left|right) default: ''
                flagName (string): 'gb' * - назначение флага. ( au - Австралия | gb - Великобритания | ca - Канада ) default: ''
        *}
        {include file='../includes/content/info/info-promo.tpl'
            imgUrl = "header_banners/bg_famaly_427x254.png"
            imgAlt = "Landing Mobile"
            imgAlign = "left bottom"
            imgVerticalAlign = "bottom"
            textAlign = "left"
            title = "Cell Phone <br />Monitoring Control App"
            description = "Keep your family safe and secured with Pumpic. <br />
                           Track location. View calls and SMS. Follow online activity."
            promoBuyBlock = "no"
            planPackageBuy = "yes"
        }
        {*
            Template: INFORMATION iCLOUD ( SUBMIT RED ) * - iCloud
            Переменные:
                imgUrl(url): ссылка на изображение. ( WxH: 437x325) * - не больше ОБЯЗАТЕЛЬНОЕ ПОЛЕ
                imgAlt (string): короткий текст для изображения.
                imgAlign (string): позиция изображения относительно текста. (left|center|right) *default: center
                imgVerticalAlign (string): позиция изображения относительно высоты. ( bottom|middle ) *default: middle
                textAlign (string): позиция текста. ( left|center|right ) *default: right
                title (string): название блока.
                description (string): описание баннера.
                
                promoBuyBlock (string): Включает/Выключает кнопку PromoBuy (yes|no) *default: переменная не инцелезирована
                planPackageBuy (sting): Включает/Выключает банер пакетов (yes|no) *default: переменная не инцелезирована
                planPackageBuyUrl (sting): url - куда будет вести красная кнопка. 
                planPackageBuyType (sting): тип блока ( link - ссылка|button - кнопка) *-default: button
                planPackageBuyClass (sting): класс блока. ( Добовлять custom - стиль ). *-default: false
                
                iCloudSolution (sting): Включает/Выключает синию кнопку. *-default: no
                
                InfoBlock (sting): Включает/Выключает инфо блок. *-default: no
                TouchPad (sting): Включает/Выключает табы в инфо-блоке. *-default: no 
                Android (sting): Включает/Выключает андройд в инфо-блоке. *-default: no
        *}
        {include file='../includes/content/info/info-promo.tpl'
            imgUrl = "header_banners/icloud-iphone-without-jailbreak-monitoring.png"
            imgAlt = "Apple iOS Mobile Monitoring App"
            imgAlign = "right"
            imgVerticalAlign = "bottom"
            textAlign = "right"
            title = "Apple Monitoring App  <br>iCloud Solution"
            description = "Enjoy multitask tracking without Jailbreak 
                            <br>Control iPhone use. Follow location and online activity"
                         
            promoBuyBlock = "no"
            iCloudSolution = 'no'
            planPackageBuy = "yes"
            planPackageBuyUrl = '#icloud-solution'
            planPackageBuyType = 'link'
            planPackageBuyClass = 'go_block_scroll'

            TouchPad = 'yes'
            Android = 'no'
            InfoBlock = 'no'
        }
        
        {*
            Template: INFORMATION iCLOUD ( SUBMIT BLUE ) * - iCloud
            Переменные:
                imgUrl(url): ссылка на изображение. ( WxH: 437x325) * - не больше ОБЯЗАТЕЛЬНОЕ ПОЛЕ
                imgAlt (string): короткий текст для изображения.
                imgAlign (string): позиция изображения относительно текста. (left|center|right) *default: center
                imgVerticalAlign (string): позиция изображения относительно высоты. ( bottom|middle ) *default: middle
                textAlign (string): позиция текста. ( left|center|right ) *default: right
                title (string): название блока.
                description (string): описание баннера.
                
                listText (string): список параметров. * - разделитель "|"
                
                promoBuyBlock (string): Включает/Выключает кнопку PromoBuy (yes|no) *default: переменная не инцелезирована
                planPackageBuy (sting): Включает/Выключает банер пакетов (yes|no) *default: переменная не инцелезирована
                
                iCloudSolution (sting): Включает/Выключает синию кнопку. *-default: no
                iCloudSolutionButtonClass (string) класс кнопки. default: 'btn-default'
                iCloudSolutionUrl (string): url - куда будет вести красная кнопка.
                iCloudSolutionDescription (string) - описание блока. default: 'Want more monitoring <br />features?'
                iCloudSolutionBTitle (string) - текст кгопки.
                iCloudSolutionIButton (string) - иконка на кнопке. *-default: 'ico-cloud-lock'
                
                InfoBlock (sting): Включает/Выключает инфо блок. *-default: no
                TouchPad (sting): Включает/Выключает табы в инфо-блоке. *-default: no 
                Android (sting): Включает/Выключает андройд в инфо-блоке. *-default: no
                Apple (sting): Включает/Выключает apple в инфо-блоке. *-default: no
        *}
        {include file='../includes/content/info/info-promo.tpl'
            imgUrl = "header_banners/icloud-iphone-without-jailbreak-monitoring.png"
            imgAlt = "Apple iOS Mobile Monitoring App"
            imgAlign = "right"
            imgVerticalAlign = "bottom"
            textAlign = "right"
            title = "Apple Monitoring App  <br>iCloud Solution"
            description = "Enjoy multitask tracking without Jailbreak 
                            <br>Control iPhone use. Follow location and online activity"
                     
            promoBuyBlock = "no"
            iCloudSolution = 'yes'
            planPackageBuy = "no"

            TouchPad = 'no'
            Android = 'no'
            Apple = 'no'
            InfoBlock = 'no'
        }
        
        {*
            Template: INFORMATION BLOCK ( NOT SUBMIT )
            Переменные:
                imgUrl(url): ссылка на изображение. ( WxH: 437x325) * - не больше ОБЯЗАТЕЛЬНОЕ ПОЛЕ
                imgAlt (string): короткий текст для изображения.
                imgAlign (string): позиция изображения относительно текста. (left|center|right) *default: center
                imgVerticalAlign (string): позиция изображения относительно высоты. ( bottom|middle ) *default: middle
                textAlign (string): позиция текста. ( left|center|right ) *default: right
                title (string): название блока.
                description (string): описание баннера.
                
                promoBuyBlock (string): Включает/Выключает кнопку PromoBuy (yes|no) *default: переменная не инцелезирована
                planPackageBuy (sting): Включает/Выключает банер пакетов (yes|no) *default: переменная не инцелезирована
                
                InfoBlock (sting): Включает/Выключает инфо блок. *-default: no
                TouchPad (sting): Включает/Выключает табы в инфо-блоке. *-default: no 
                Android (sting): Включает/Выключает андройд в инфо-блоке. *-default: no
                Apple (sting): Включает/Выключает apple в инфо-блоке. *-default: no
                
        *}
        {include file='../includes/content/info/info-promo.tpl'
            imgUrl = "header_banners/iphone-tracking-software.png"
            imgAlt = "Apple iOS Mobile Monitoring App"
            imgAlign = "right"
            imgVerticalAlign = "bottom"
            textAlign = "right"
            title = "Apple Mobile <br>Monitoring App"
            description = "Enjoy iOS multitask tracking with or without Jailbreak. 
                            <br>Track location. View calls and texts. Follow online activity."
            
            promoBuyBlock = "no"
            planPackageBuy = "no"
            
            TouchPad = 'yes'
            Android = 'no'
            Apple = 'no'
            InfoBlock = 'no'
        }
        
        {*
            Template: INFORMATION BLOCK ( BUTTON TRIAL )
            Переменные:
                imgUrl(url): ссылка на изображение. ( WxH: 437x325) * - не больше ОБЯЗАТЕЛЬНОЕ ПОЛЕ
                imgAlt (string): короткий текст для изображения.
                imgAlign (string): позиция изображения относительно текста. (left|center|right) *default: center
                imgVerticalAlign (string): позиция изображения относительно высоты. ( bottom|middle ) *default: middle
                textAlign (string): позиция текста. ( left|center|right ) *default: right
                title (string): название блока.
                description (string): описание баннера.
                listText (string): список параметров. * - разделитель "|"
                trial (string): "yes" -  триал баннер. (yes|no)
                promoBuyBlock (string): Включает кнопку PromoBuy (yes|no) *default: переменная не инцелезирована
                planPackageBuy (sting): Включает банер пакетов (yes|no) *default: переменная не инцелезирована
                flagPosition (string): 'left' * - позиция флага относительно тексиа ( описания ). (left|right) default: ''
                flagName (string): 'gb' * - назначение флага. ( au - Австралия | gb - Великобритания | ca - Канада ) default: ''
                blockTrial (string): Включает кнопку Trial (yes|no) *default: переменная не инцелезирована
        *}
        {include file='../includes/content/info/info-promo.tpl'
            imgUrl = "header_banners/bg_famaly_427x254.png"
            imgAlt = "Landing Mobile"
            imgAlign = "left bottom"
            imgVerticalAlign = "bottom"
            textAlign = "left"
            title = "Cell Phone <br />Monitoring Control App"
            description = "Keep your family safe and secured with Pumpic. <br />
                           Track location. View calls and SMS. Follow online activity."
            promoBuyBlock = "no"
            planPackageBuy = "no"
            blockTrial = "yes"
        }
        
        {*
            Template: INFORMATION BLOCK ( BUTTON QUICK AND SIMPLE )
            Переменные:
                imgUrl(url): ссылка на изображение. ( WxH: 437x325) * - не больше ОБЯЗАТЕЛЬНОЕ ПОЛЕ
                imgAlt (string): короткий текст для изображения.
                imgAlign (string): позиция изображения относительно текста. (left|center|right) *default: center
                imgVerticalAlign (string): позиция изображения относительно высоты. ( bottom|middle ) *default: middle
                textAlign (string): позиция текста. ( left|center|right ) *default: right
                title (string): название блока.
                description (string): описание баннера.
                listText (string): список параметров. * - разделитель "|"
                trial (string): "yes" -  триал баннер. (yes|no)
                promoBuyBlock (string): Включает кнопку PromoBuy (yes|no) *default: переменная не инцелезирована
                planPackageBuy (sting): Включает банер пакетов (yes|no) *default: переменная не инцелезирована
                flagPosition (string): 'left' * - позиция флага относительно тексиа ( описания ). (left|right) default: ''
                flagName (string): 'gb' * - назначение флага. ( au - Австралия | gb - Великобритания | ca - Канада ) default: ''
                blockTrial (string): Включает кнопку Trial (yes|no) *default: переменная не инцелезирована
                blockQuickAndSimple (string): Включает кнопку QUICK AND SIMPLE (yes|no) *default: переменная не инцелезирована
        *}
        {include file='../includes/content/info/info-promo.tpl'
            imgUrl = "header_banners/bg_famaly_427x254.png"
            imgAlt = "Landing Mobile"
            imgAlign = "left bottom"
            imgVerticalAlign = "bottom"
            textAlign = "left"
            title = "Cell Phone <br />Monitoring Control App"
            description = "Keep your family safe and secured with Pumpic. <br />
                           Track location. View calls and SMS. Follow online activity."
            promoBuyBlock = "no"
            planPackageBuy = "no"
            blockTrial = "no"
            blockQuickAndSimple = "yes"
        }
        {*
            Template: BLOCK PLANS
            Переменные:
                blockBg (string): Стиль блока ( dark / light ) *default: dark
        *}
        {include file='../includes/content/plans.tpl'
            visible = "true"}
        
        {*
            Template: DID YOU KNOW
            Переменные:
                blockBg (string): Стиль блока ( dark / light ) *default: dark
        *}
        {include file='../includes/content/did_you_know.tpl' 
                    blockBg="light"
        }
        
        {*
            Template: TEMPLATE TEENAGERS
            Переменные:
                blockBg (string): Стиль блока ( dark / light ) *default: dark
        *}
        {include file='../includes/content/teenagers.tpl' 
                    blockBg="light"
        }
        
        {*
            Template: BLOCK DISCOUNT
        *}
        {include file='../includes/content/discount_50_v2.tpl'}
                
        {*
            Template: SAMPLE BLOCK SECURES
            Переменные:
                blockBg (string): Стиль блока ( dark / light ) *default: dark
        *}
        {include file='../includes/content/secures.tpl'
                blockBg="light"
        }
        
        {*
            Template: BLOCK FEATURES LIST
            Переменные:
                blockBg (string): Стиль блока ( dark / light ) *default: dark
        *}
        {include file='../includes/content/features.tpl'}
        
        {* Template: BLOCK TEXT(HTML)
             title (string): название блока
            blockBg (string): Стиль блока ( dark / light ) *default: dark
        *}
        {* Content 
            title="Email using statistics"
            blockBg='light'}

                <p>Though children do not tend to use an email in their online communication, they have to use it almost every day. The thing is that most websites and literally all social networks require an email to sign in. That’s why email monitoring software can show you a broad picture of your kid’s online activity: preferred websites, social networks he or she uses as well as if your child browses sites with inappropriate content.</p>

                <ul>
                    <li>More than 80% of kids receive inappropriate spam via email on a daily basis</li>
                    <li>In addition, 27% of teens have received emails with words or photos that made them feel embarrassed</li>
                    <li>And only 1 in 3 parents with online access actively protect their kids with filtering or blocking software</li>
                </ul>

                <p>The Internet is the easiest way for online predators, web swindlers and cyberbullies to contact your children. By making friendship with your kids via social media, it is not hard to find out their email addresses, which is the key to personal data and identity theft. Unfortunately, not many parents realize how important web protection is. These days’ online reality shifts the world around, making new rules for us. If you really want to secure your kids’ happiness, it is for you to consider these rules.</p>
        {EndContent *}
        
        
        {*
            Template: FLY BUTTONS
            Переменные:
                blockBg (string): Стиль блока ( dark / light ) *default: dark
                buttonBuyNow (string): Кнопка Buy now 'yes' *default: yes
                buttonViewDemo (string): Кнопка View demo 'no' *default: no
                buttonFreeTrial (string): Кнопка Free trial 'yes' *default: yes
        *}
        {include file='../includes/content/fly/box-buttons.tpl'
            buttonBuyNow = 'yes'
            buttonViewDemo = 'no'
            buttonFreeTrial = 'yes'
        }
        
        {*
            Template: SECURES MOBILE PHONES MONITORING
            Переменные:
                blockBg (string): Стиль блока ( dark / light ) *default: dark
        *}
        {include file='../includes/content/secures-mobile-phones-monitoring.tpl'
            blockBg='light'}
        
        {*
            Template: BLOCK FEATURES TEBLE
            Переменные:
                blockBg (string): Стиль блока ( dark / light ) *default: dark
                description (string) описание блока.
        *}
        {include file='../includes/content/features-table.tpl' 
                blockBg="dark"
        } 
        
        {*
            Template: BLOCK Easy-to-Use 'ipad'
            Переменные:
                blockBg (string): Стиль блока ( dark / light ) *default: dark
                imgUrl(url): ссылка на изображение.
                imgAlt (string): короткий текст для изображения.
                title (string): название блока.
                textAlign (string): позиция текста (left|center|right). * default: left
                description (string): описание блока.
        *}
        {include file='../includes/content/ipad.tpl' 
                blockBg="light"
                imgUrl = "parental_control/ipad.png"
                imgAlt = "Android"
                title = "Easy-to-Use Control Panel"
                textAlign = "left"
                description = "Try Control Panel demo to see Pumpic app in use.
                               <br />Buy Pumpic to protect your family and secure your happiness right now."
        }
        
        {*
            Template: BLOCK Easy-to-Use 'ipad_android'
            Переменные:
                blockBg (string): Стиль блока ( dark / light ) *default: dark
                imgUrl(url): ссылка на изображение.
                imgAlt (string): короткий текст для изображения.
                title (string): название блока.
                textAlign (string): позиция текста (left|center|right). * default: left
                description (string): описание блока.
        *}
        {include file='../includes/content/ipad.tpl' 
                blockBg="dark"
                paginations = 'no'
                imgUrl = "icons/ipad_android.png"
                imgAlt = "call monitoring"
                title = "Calls Monitoring"
                textAlign = "left"
                description = "Try Control Panel demo to see Pumpic Calls Monitoring in use.<br/>Buy Pumpic to protect your kids and track their calls right now."

        }
        
        {*
            Template: BLOCK BLUE
            Переменные:
                title (string): название блока.
                description (string): описание блока.
        *}
        {include file='../includes/content/block-blue-text.tpl'
            title = "Pumpic app is attached to the target device itself. <br />It does not depend on a mobile carrier that is used."
            description = "Descriptions"
        }
        
        {*
            Template: BLOCK COMPATIBILITY
            Переменные:
                blockBg (string): Стиль блока ( dark / light ) *default: dark
                title (string): название блока.
                description (string): описание блока.
        *}
        {include file='../includes/content/compatibility/compatibility-table.tpl'
            blockBg="light"
            descriptions="The app is compatible with most of modern smartphones and tablets run by iOS and Android. You can check if your particular target device is compatible by finding it in the list on our <a href='/compatibility/'>Compatibility</a> page. Alternatively, you can fill in the form, send us a request, and we will do it for you."
        } 
        
        
        {*
            Template: BLOCK MOBILE OPERATOTS
            Переменные:
                blockBg (string): Стиль блока ( dark / light ) *default: dark
                title (string): название блока.
                description (string): описание блока.
        *}
        {include file='../includes/content/mobile-operators.tpl'
            blockBg="dark"
            title = "Mobile Wireless Carriers Worldwide"
            descriptions="When searching for a relevant mobile monitoring app online, many people tend to use key words like “how to track my Verizon phone”, “Vodafone tracking”, or “at&t mobile monitoring”. However, it is important to note that Pumpic app works independently; our monitoring software does not depend on any mobile carrier as well as services it provides."
        } 
        
        {*
            Template: TESTIMONIALS
            Переменные:
                blockBg (string): Стиль блока ( dark / light ) *default: dark
                title (string): название блока.
                sliders (string): вкл./ выкл. слайдера (false|true). * default: false
        *}
        {*include file='../includes/main/main-testimonials.tpl'
                title = "Trusted by Over 10 000 Customers Worldwide"
                sliders = "false"
                blockBg="light" *} 
                
        {* 
            Template: BLOCK TESTIMONIALS HTML (static) 
        *}
        <div class="light">
            <div class="container">
                <h2 class="text-center testimonial-title">Trusted by Over 10 000 Customers Worldwide:</h2>
                <div class="row">

                    <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/testimonials_new_1.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Jane A. – mother of twins</h4>
                                    <p>“I didn’t know such technology existed. It made my life easier and helped me big time. I can track my kids’ calls, texts messages and social media to save them from online predators and misgiving communications.”</p>
                            </div>
                    </div>
                    <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/testimonials_new_2.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Karen and Mike – parents of a 12-year-old daughter</h4>
                                    <p>“Our daughter was acting weird after we moved to another state. When we installed Pumpic on her iPhone, we found out that she was bullied by her classmate on Facebook. We gathered with teachers and parents and talked the whole thing out. Thank you!”</p>
                            </div>
                    </div>
                    <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/testimonials_new_3.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Logan T – father of a 14-year-old son</h4>
                                    <p>“Pumpic has really made my life easier. Now, I can take care of my child, even when I’m far from home. I can block 18+ websites and applications. It’s good to know that my son is safe and secured wherever I go.”</p>
                            </div>
                    </div>

                </div>
            </div>
        </div>
                                
        {* 
            Template: BLOCK TESTIMONIALS HTML (sliders) 
        *}    
        <div class="dark">
            <div class="container">
                <h2 class="text-center testimonial-title">Trusted by Over 10 000 Customers Worldwide:</h2>
                <div class="row">

                    <div class="bxSliders">

                        <!-- SLIDE #1 -->
                        <div class="slide">
                            <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <img src="{$img}/testimonials/testimonials_new_25.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>Martin S. (Dallas, TX)</h4>
                                            <p>“I found out about Pumpic after using some two or three similar apps. It stands out reasonably. The app has the widest set of useful functions, which work great. It’s a huge help for me and my family.”</p>
                                    </div>
                            </div>
                            <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <img src="{$img}/testimonials/testimonials_new_26.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>George W. (Los Angeles, CA)</h4>
                                            <p>“I am a business owner and have many cell phones on my command. Pumpic helps my company and me as I can control and monitor all of them from one place. It’s like a load off my mind. Thanks!”</p>
                                    </div>
                            </div>
                            <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <img src="{$img}/testimonials/testimonials_new_27.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>Sandra N. (Denver, CO)</h4>
                                            <p>“With Pumpic I can no longer worry about my two sons and take care of them from work. It helps me track where they are, what they do online and control their communication. It is a rescue for parents.”</p>
                                    </div>
                            </div>
                        </div> <!-- .slide-->
                        <!-- END SLIDER #1 -->
                        <!-- SLIDE #2 -->
                        <div class="slide">
                            <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <img src="{$img}/testimonials/testimonials_new_1.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>Jane A. – mother of twins</h4>
                                            <p>“I didn’t know such technology existed. It made my life easier and helped me big time. I can track my kids’ calls, texts messages and social media to save them from online predators and misgiving communications.”</p>
                                    </div>
                            </div>
                            <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <img src="{$img}/testimonials/testimonials_new_2.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>Karen and Mike – parents of a 12-year-old daughter</h4>
                                            <p>“Our daughter was acting weird after we moved to another state. When we installed Pumpic on her iPhone, we found out that she was bullied by her classmate on Facebook. We gathered with teachers and parents and talked the whole thing out. Thank you!”</p>
                                    </div>
                            </div>
                            <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <img src="{$img}/testimonials/testimonials_new_3.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>Logan T – father of a 14-year-old son</h4>
                                            <p>“Pumpic has really made my life easier. Now, I can take care of my child, even when I’m far from home. I can block 18+ websites and applications. It’s good to know that my son is safe and secured wherever I go.”</p>
                                    </div>
                            </div>
                        </div> <!-- .slide-->
                        <!-- END SLIDER #2-->

                    </div> <!-- .bxSliders -->

                </div>
            </div>
        </div>
        
        {*
            Template: BLOCK HOW-GET-PUMPIC
            Переменные:
                blockBg (string): Стиль блока ( dark / light ) *default: dark
               title (string): название блока.
               style (string): стиль блока. ( static|images ) * default: static
        *}
        {include file='../includes/content/how-get-pumpic.tpl'
            blockBg = 'light'
            title = ""
            style = "static"
        }  
        
        {*
            Template: BLOCK HOW-GET-PUMPIC-OLD
            Переменные:
                blockBg (string): Стиль блока ( dark / light ) *default: dark
               title (string): название блока.
        *}
        {include file='../includes/content/how-get-pumpic_old.tpl'
            blockBg = 'dark'
            title = ""
        } 
        
        {*
            Template: BLOCK HOW-PUMPIC-SECURES
            Переменные:
                blockBg (string): Стиль блока ( dark / light ) *default: dark
        *}
        {include file='../includes/content/how-pumpic-secures.tpl'
            blockBg = 'light'} 
          
        {*
            Template: BLOCK HOT-IT-WORK (old)
        *}
        <div class="dark block-how-it-works-old">
            <div class="container">
                <div class="row">
                    <h2>HOW TOPSPY KIDS AND EMPLOYEES TRACKING SOLUTION WORKS</h2>
                    <ul class="thumbs">
                        <div class="col-sm-12 col-md-4 clearfix">
                            <div class="thumbnail">
                                <span class="img_thumb"><img src="{$img}/thumb_1.png" height="216" width="360" alt=""></span>
                                <div class="caption">
                                    <h3>Ярлык эскиза</h3>
                                    <p>Choose the subscription plan that meets your needs with the period you would like to purchase it for. On the checkout page - enter your valid billing information. The payment procedure is completely secure, privacy is kept this is 100% guaranteed. After payment is done - your account will be created automatically, check your inbox for the Welcome letter from TopSpy with log in details and instructions.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-4 clearfix">
                            <div class="thumbnail">
                                <span class="img_thumb"><img src="{$img}/thumb_2.png" height="206" width="172" alt=""></span>
                                <div class="caption">
                                    <h3>Easy installation</h3>
                                    <p>Choose the subscription plan that meets your needs with the period you would like to purchase it for. On the checkout page - enter your valid billing information. The payment procedure is completely secure, privacy is kept this is 100% guaranteed. After payment is done - your account will be created automatically, check your inbox for the Welcome letter from TopSpy with log in details and instructions.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-4 clearfix">
                            <div class="thumbnail">
                                <span class="img_thumb"><img src="{$img}/thumb_3.png" height="216" width="360" alt=""></span>
                                <div class="caption">
                                    <h3>Reveal the truth</h3>
                                    <p>Choose the subscription plan that meets your needs with the period you would like to purchase it for. On the checkout page - enter your valid billing information. The payment procedure is completely secure, privacy is kept this is 100% guaranteed. After payment is done - your account will be created automatically, check your inbox for the Welcome letter from TopSpy with log in details and instructions.</p>
                                </div>
                            </div>
                        </div>
                    </ul>
                   {* <div class="arrow_bottom">
                        <span><a href="#"><i class="icon-angle-down"></i></a></span>
                        <h3>INSTALLATION GUIDE</h3>
                    </div>*}
                </div>
            </div>
        </div>                
        {*
            Template: BLOCK WHY PUMPIC
            Переменные:
                blockBg (string): Стиль блока ( dark / light ) *default: dark
        *}
        {* include file='../includes/content/why-pumpic.tpl'
                blockBg="light" *}
        <div class="light">
            <div class="container">
                <div class="row">
                    <div class="col-sm-10 col-md-10 col-lg-10 col-sm-offset-1 col-md-offset-1 col-lg-offset-1 gutter-wide">
                        <h2 class="text-center">Why Pumpic</h2>
                        <div class="row">
                            <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                <h3 class="text-center"><img src="{$img}/icons/icon-easy-to-use.gif" alt=""> Easy to use</h3>
                                <p class="text-center">Pumpic is feature-rich mobile monitoring software that will help you take care of your children remotely. More than 20 monitoring features are gathered in Pumpic app.<br/><br/>Control Panel has a user-friendly design and does not require any specific technical skills.</p>
                            </div>
                            <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                <h3 class="text-center"><img src="{$img}/icons/ico-easy-to-install.gif" alt=""> Easy to install</h3>
                                <p class="text-center">Follow the guidelines and start remote monitoring from your Control Panel right after the setup. Get physical access to the target device once and install the app in less than 5 minutes. <br/><br/>For iPhone monitoring via iCloud solution you don't even need to install the software on the target device.</p>
                            </div>
                            <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                <h3 class="text-center"><img src="{$img}/icons/ico-easy-to-contact.gif" alt=""> Easy to contact</h3>
                                <p class="text-center">Pumpic application has a user-friendly interface, which makes the monitoring process more than simple. Enter your Control Panel and see all the data from the target device in a readable form.<br/><br/>Feel free to contact our Support Team at any time, for any reason.</p>
                            </div>
                        </div>
                    </div>
                </div> 

            </div>

        </div>        
  
        {*
            Template: BLOCK QUICK LINK
            Переменные:
                blockBg (string): Стиль блока ( dark / light ) *default: dark
        *}
        {include file='../includes/main/main-quick-link.tpl' 
            blockBg="dark"
        }        
        
        
        {* 
            Template: BLOCK BANNERS 
        *}
        {* include file='../includes/content/banners/index.tpl' *}
        
        <!-- TEMPLATES BANNERS -->
        {* Template: BLOCK BANNER #1 'PROMO-BUY' *}
        {include file='../includes/content/banners/lib/banner-promo-buy.tpl'}
        {* Template: BLOCK BANNER #2 'PROMO-TRIAL' *}
        {include file='../includes/content/banners/lib/banner-promo-trial.tpl'}
        {* Template: BLOCK BANNER #3 'PROMO-APP' *}
        {include file='../includes/content/banners/lib/banner-promo-app.tpl'}
        {* Template: BLOCK BANNER #4 'PROMO-TEENAGERS' *}
        {include file='../includes/content/banners/lib/banner-promo-teenagers.tpl'}
        {* Template: BLOCK BANNER #5 'PROMO-MOBILE-OPERATORS' *}
        {include file='../includes/content/banners/lib/banner-promo-mobile-operators.tpl'}
        <div>
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 col-md-12 col-lg-12">    
                        {* Template: BLOCK BANNER #5 'PROMO-DEMO' *}
                        {include file='../includes/content/banners/lib/banner-promo-demo.tpl'}
                    </div>
                </div>
            </div>
        </div>    
        <!-- END TEMPLATES BANNERS -->
        
        <!-- TEMPLATES VIDEO -->
        {* Template: VIDEO 
            Переменные:
                blockBg (string): Стиль блока ( dark / light ) *default: dark
        *}
        {include file='../includes/content/video-pumpic.tpl'}
        <!-- END TEMPLATES VIDEO -->
        
        <!-- TEMPLATES PLANS WHITE -->
        {* Template: PLANS WHITE
            Переменные:
                blockBg (string): Стиль блока ( dark / light ) *default: dark
        *}
        {include file='../includes/content/plans-white.tpl'}
        <!-- END TEMPLATES PLANS WHITE -->
        
        <!-- TEMPLATES BLOG BANNERS -->
        <div class="pt15">
            <div class="container">
                <div class="row">
                    
                    <div class="col-sm-12 col-md-10 col-lg-10">
                        <div class="row">
                        
                    <div class="col-sm-12 col-md-4 col-lg-4">
                        <!-- #1 Banner BUY -->
                        <div class="thumb_sidebar banner1 banner2"> <!-- banner2 -->
                            <div class='caption'>
                                <p class='buttons'>
                                    <a href="http://pumpic.com/store.html" class='btn btn-default btn-banner-red'>Start Now</a>
                                </p>
                            </div> <!-- .caption -->
                        </div>  
                        
                        <!-- #2 -->
                        
                        <div class="thumb_sidebar">
                            <span class="img_thumb"><img src="{$img}/img_photo.png" height="72" width="138" alt=""></span>
                            <div class="caption">
                                <h3>GET IN LINE TO TRY TOPSPY</h3>
                                <p>We've introduced our new cell phone spying software to help you track you underage kids, and increase your business safety.</p>
                                <p class="text-center">
                                    <a href="#" class="btn btn-default" role="button">Buy NOW</a>
                                    <a href="#" class="btn btn-warning" role="button">View DEMO</a>
                                </p>
                            </div>
                        </div>
                    </div> 
                    <div class="col-sm-12 col-md-4 col-lg-4">
                        <!-- #3 -->
                        <div class="thumb_sidebar thumb_warning">
                            <span class="img_thumb"><img src="{$img}/img_photo_white.png" height="72" width="138" alt=""></span>
                            <div class="caption">
                                <h3>GET IN LINE TO TRY TOPSPY</h3>
                                <p>We've introduced our new cell phone spying software to help you track you underage kids, and increase your business safety.</p>
                                <p class="text-center">
                                        <a href="#" class="btn btn-default" role="button">Buy NOW</a>
                                        <a href="#" class="btn btn-warning" role="button">View DEMO</a>
                                </p>
                            </div>
                        </div>
                    </div>        
                       
                        </div>        
                    </div>  
                            
                </div>
            </div>
        </div>
        <!-- END TEMPLATES BLOG BANNERS -->
        <!-- END CONTENT -->    
           
        <!-- RECOMMENDED -->  
        {*
            Template: RECOMMENDED
            Переменные:
                blockBg (string): Стиль блока ( dark / light ) *default: dark
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
    {*
        Template: ANALYTICS
    *}   
    {include file='../includes/main/main-analytics-footer.tpl'}
</body>
</html>
