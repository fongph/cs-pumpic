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
    title="How to protect your child online"
    description="Download PDF, desc 'Follow these simple steps to help protect your children's privacy and safety when they are online.'"
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
       
        {include file='../includes/content/knowledge.tpl' 
                blockBg="light"
        } 
        
        
        {include file='../includes/main/main-quick-link.tpl' 
            blockBg="dark"
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
        {include file='../includes/main/main-footer.tpl'
            our_products= "no"}
                
    </div>
    {*
        Template: ANALYTICS
    *}        
    {include file='../includes/main/main-analytics-footer.tpl'}
</body>
</html>