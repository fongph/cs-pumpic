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
    title="Prevent Online Dangers"
    description="Protect Your Kids Before It Is Too Late. Track location. View calls and SMS. Monitor online activity."
} 

<body class="pc2">
{include file='../includes/button-help.tpl'}
{include file='../includes/button-goup.tpl'}
	<div class="wrapper parent-control prevent-online-dangers">
            
            <!-- TOP MENU -->
            {*
                Template: MENU ( ГЛАВНОЕ МЕНЮ )
                Переменные:
                    topmenu_active (test): alias меню, которое будет подсвечиваться активным. 
            *}
            {include file='../includes/main/main-top-menu.tpl' 
                    topmenu_active='home'
            }
        
            <!-- не стандартный блок -->
            <div class="visual">

                    <div class="container bg_teenagers">

                        <div class="row">

                            <div class="col-lg-10 col-lg-offset-1">

                                <div class="col-md-6 col-lg-6 box-right-description">
                                    <div class="visual-text text-left">
                                        <h1 class="title">Prevent Online Dangers. <br />Pumpic Monitoring App.</h1>
                                        <p>Protect your kids before it is too late. <br />
                                            Track location. View calls and SMS. Monitor online activity.</p>
                                        <ul class="compatibility">
                                            <li><i class="icon-android"></i> (2.2 - 5.0)</li>
                                            <li><i class="icon-apple"></i> (6.0 - 8.1.2)</li>
                                            {*<li><i class="icon-blackberry"></i> (1.0 - 7.1)</li>*}
                                            <li>
                                                <i class="icon-info-circled"></i> <a href="/compatibility.html">platform compatibility</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>

                                <div class="col-md-6 col-lg-6 mobile-version w770">
                                    <img src="{$img}/pc2/bg_teenagers_header.png" alt="" class="visual-img-pc">
                                </div>            

                            </div>
                        </div> <!-- .row -->
                    </div>
            </div>
            <!-- end -->                    

            {include file='../includes/content/plans.tpl'}

            {*
                Template: TEENAGERS
                Переменные:
                    blockBg (text): Стиль блока ( dark / light ) *default: dark
            *}
            {include file='../includes/content/teenagers.tpl' 
                    blockBg="light"
            }

            {*
                Template: SECURES
                Переменные:
                    blockBg (text): Стиль блока ( dark / light ) *default: dark
            *}
            {include file='../includes/content/secures.tpl' 
                    blockBg="dark"
            }
            
            
            {*
                Template: FEATURES TABLE
                Переменные:
                    blockBg (text): Стиль блока ( dark / light ) *default: dark
            *}
            {include file='../includes/content/features-table.tpl' 
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
                    imgUrl = "parental_control/ipad.png"
                    imgAlt = ""
                    title = "Easy-to-Use Control Panel"
                    description = "Try Control Panel in use to see how Pumpic prevents your kids from troubles.
                                   <br />Buy Pumpic to protect, control and secure your children now."
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
                Template: HOW PUMPIC
                Переменные:
                    blockBg (text): Стиль блока ( dark / light ) *default: dark
            *}
            {include file='../includes/prevent-online-dangers/how-pumpic.tpl' 
                    blockBg="dark"
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
                Template: QUICK LINK
                Переменные:
                    blockBg (text): Стиль блока ( dark / light ) *default: dark
            *}
            {include file='../includes/main/main-quick-link.tpl' 
                    blockBg="dark"
            }

            {*
                Template: BANNER PROMO v2
            *}
            {include file='../includes/main/main-footer-promo-v2.tpl'}

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
{/strip}