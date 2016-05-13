{include file='../../includes/main/main-header.tpl'
robots="yes"
title="Pumpic Mobile Infographics | Pumpic"
description="Check out useful infographics on child online security that Pumpic has prepared for you. Learn what it takes to keep your children safe online and during daily living."
}

<body>
<!-- BLOCK GTM -->
{include file='../../includes/main/main-after-body.tpl'}
<!-- END BLOCK GTM -->

<!-- FLY BLOCKS -->
{include file='../../includes/main/main-button-help.tpl'}
{include file='../../includes/main/main-button-goup.tpl'}
<!-- END FLY BLOCKS-->

<div class="wrapper icloud-iphone-without-jailbreak-monitoring">
    <!-- TOP MENU -->

    {include file='../../includes/main/main-top-menu.tpl'
    topmenu_active='home'
    cache_id = "includes_main_main-top-menu"
    nocache
    }

    {*
        Template: PHONE
        Переменные:
            style (text): стиль блока Phone (blue|black). * - blue
    *}
    {include file='../../includes/content/phone/block-phone.tpl'
    style="blue"
    }


    <div class="b-how-it-work light">

 <div class="container">
    <h1 class="h2 text-center">Online Security for Kids
        Infographics by Pumpic
    </h1>
    <p style="text-align: center;color: #4d4f5b;">When it comes to keeping your child safe on the Internet, it is important to secure all spheres of their lives and always stay up to date. That is why Pumpic provides parents with reliable monitoring solutions on one hand and relevant information on Internet security for children on the other.
    </p>
    <p style="text-align: center;color: #4d4f5b;">
        Each mobile security infographic you can find below reflects an important part of children’s living these days. Consider all Internet safety guidelines carefully; develop essential skills in your kids. The Pumpic team is happy to share its experience with you.

    </p>
<div class="infographics__main">

    <div class="col-lg-4 col-md-4">
    <ul class="infographics__block effect">
        <li><p class="zero">Find out potential risks kids may face on smartphones and tablets as well as what it takes to keep them safe on the Internet.</p></li>
        <li><img class="top" src="/images/infographics/1.png" title="How to Protect Children on Smartphones and Tablets" alt="Infographic shows ways to protect children from potential risks on smartphones and tablets."/></li>
    </ul>
        <div class="infographics__desc"><a href="/child-online-mobile-security.html">How to Protect Children on Smartphones and Tablets</a></div>
    </div>



    <div class="col-lg-4 col-md-4">
    <ul class="infographics__block effect">
        <li><p class="zero">We have put together eight essential skills you should develop in your kids. Teach your little ones to be creative, curious, and self-confident since early ages.</p></li>
        <li><img class="top" src="/images/infographics/2.png" title="8 Entrepreneurial Skills You Should Teach Your Kids" alt="Eight entrepreneurial skills you should develop in your kids described in one infographic."/></li>
    </ul>
        <div class="infographics__desc"><a href="/entrepreneurial-skills-to-teach-your-child.html">8 Entrepreneurial Skills You Should Teach Your Kids</a></div>
</div>



    <div class="col-lg-4 col-md-4 test">
    <ul class="infographics__block effect">
        <li><p class="zero">See how to turn your child’s smartphone into a useful tool for study, not a means of wasting time. 20 learning apps and 10 useful things to learn via a cell phone.</p></li>
        <li><img class="top" src="/images/infographics/3.png" title="10 Things Your Kids Can Learn Online" alt="Infographic with useful references to develop 10 essential skills in your little ones."/></li>
    </ul>
        <div class="infographics__desc"><a  href="/10-things-your-kids-can-learn-online.html">10 Things Your Kids Can Learn Online</a></div>
</div>
</div>
     {literal}
         <script>
         $('.infographics__desc a').hover(

             function(){
                 $this = $(this);
                 $new = $this[0];
                 $block = $($new).parent().parent().find('.top');
                 $block.css({"top":"-90px", "padding-bottom":"100px"})
                 },

         function(){
             $block.css({"top":"", "padding-bottom":""})
         });
         </script>
     {/literal}

</div></div>


    <!-- FOOTER -->
    {*
        Template: FOOTER
        Переменные:
            our_products (text): Включить выключить блок OUR PRODUCTS (no|yes). * - yes
    *}
    {include file='../../includes/main/main-footer.tpl'}

</div>

{include file='../../includes/main/main-analytics-footer.tpl'}
</body>
</html>