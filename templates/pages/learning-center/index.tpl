
{*
    Template: hedaer HEADER ( ШАПКА СТРАНИЦЫ )
    Переменные:
        robots (text): сключить или выключить индексацию от роботов ( yes | no ) * - default: yes
        title (text): вносим title - страницы. 
        description (text): вносим meta description ( описание страницы )
*}    
    
{include file='../../includes/main/main-header.tpl'
    title="How to protect your child online | Download PDF"
    description="Follow these simple steps to help protect your children's privacy and safety when they are online."
}    
    
<body>
    <!-- BLOCK GTM -->
    {include file='../../includes/main/main-after-body.tpl'}
    <!-- END BLOCK GTM -->
    
    <!-- FLY BLOCKS -->
    {include file='../../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->
    
    {* 'block-android' - название вашей страницы латинецей. ОБЯЗАТЕЛЬНОЕ ПОЛЕ *}
    <div class="wrapper block-knowledge{*block-android*}">
        <!-- TOP MENU -->
        {*
            Template: MENU ( ГЛАВНОЕ МЕНЮ )
            Переменные:
                topmenu_active (test): alias меню, которое будет подсвечиваться активным. 
        *}
	{include file='../../includes/main/main-top-menu.tpl' 
                cache_id = "includes_main_main-top-menu"
                nocache    
        } {* topmenu_active='home' *}
        
        <!-- FLY BLOCKS -->
        {nocache}
        {if ''|hasFreeTrialStick}    
            {include file='../../includes/content/fly/fly-free-trial.tpl'}
        {/if}    
        {/nocache}
        <!-- END FLY -->
        
        {*
            Template: PHONE
            Переменные:
                style (text): стиль блока Phone (blue|black). * - blue 
        *}
        {include file='../../includes/content/phone/block-phone.tpl'
                 style="black"   
        }
        
        <!-- CONTENT -->
       
        {include file='../../includes/content/knowledge.tpl' 
                blockBg="light"
        } 
        
        
        {include file='../../includes/main/main-quick-link.tpl' 
            blockBg="dark"
        }


        {*
            Template: BANNER PROMO
            Переменные:
                title (text): промо текст.
        *}
        {*{include file='../../includes/content/banner-promo.tpl'
                title = "Keep your <span>family safe</span>"
        }*}
        
        {include file='../../includes/content/banners/index.tpl'
            title = "Keep your <span>family safe</span>"
        }
        <!-- END CONTENT -->    
           
        <!-- RECOMMENDED -->
        {*
            Template: RECOMMENDED
        *}    
        {include file='../../includes/main/main-recommended.tpl'}
        
        <!-- FOOTER -->
        {*
            Template: FOOTER
        *}
        {include file='../../includes/main/main-footer.tpl'
            our_products= "no"}
                
    </div>
    {*
        Template: ANALYTICS
    *}        
    {include file='../../includes/main/main-analytics-footer.tpl'}
</body>
</html>