{include file='../../includes/main/main-header.tpl'

title="Pumpic Mobile Infographics | Pumpic"
description="Check out useful infographics on child online security that Pumpic has prepared for you. Learn what it takes to keep your children safe online and offline."
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
    <h1 class="h2 text-center">Online Security for Kids <br>
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
        <li><a href="/child-online-mobile-security.html"><img class="top" src="/images/infographics/1.png" title="How to Protect Children on Smartphones and Tablets" alt="Infographic shows ways to protect children from potential risks on smartphones and tablets."/></a></li>
    </ul>
        <div class="infographics__desc"><a href="/child-online-mobile-security.html">How to Protect Children on Smartphones and Tablets</a></div>
    </div>



    <div class="col-lg-4 col-md-4">
    <ul class="infographics__block effect">
        <li><p class="zero">We have put together eight essential skills you should develop in your kids. Teach your little ones to be creative, curious, and self-confident since early ages.</p></li>
        <li><a href="/entrepreneurial-skills-to-teach-your-child.html"><img class="top" src="/images/infographics/2.png" title="8 Entrepreneurial Skills You Should Teach Your Kids" alt="Eight entrepreneurial skills you should develop in your kids described in one infographic."/></a></li>
    </ul>
        <div class="infographics__desc"><a href="/entrepreneurial-skills-to-teach-your-child.html">8 Entrepreneurial Skills You Should Teach Your Kids</a></div>
</div>



    <div class="col-lg-4 col-md-4">
    <ul class="infographics__block effect">
        <li><p class="zero">See how to turn your child’s smartphone into a useful tool for study, not a means of wasting time. 20 learning apps and 10 useful things to learn via a cell phone.</p></li>
        <li><a href="/10-things-your-kids-can-learn-online.html"> <img class="top" src="/images/infographics/3.png" title="10 Things Your Kids Can Learn Online" alt="Infographic with useful references to develop 10 essential skills in your little ones."/> </a></li>
    </ul>
        <div class="infographics__desc"><a href="/10-things-your-kids-can-learn-online.html">10 Things Your Kids Can Learn Online</a></div>
</div>

    <div class="col-lg-4 col-md-4">
        <ul class="infographics__block effect">
            <li><p class="zero">Uncover 10 fundamental rules for kids going online. They will help your young ones learn to look after themselves when using the Web and avert any risks.</p></li>
            <li><a href="/internet-safety-rules-for-kids.html"> <img class="top" src="/images/infographics/4.png" title="10 Internet commandments for kids going online" alt="10 Internet commandments for kids going online"/> </a></li>
        </ul>
        <div class="infographics__desc"><a href="/internet-safety-rules-for-kids.html">10 Internet commandments for kids going online</a></div>
    </div>

    <div class="col-lg-4 col-md-4">
        <ul class="infographics__block effect">
            <li><p class="zero">How much screen time is too much for youngsters? Find out the answer and check out 8 tips to help parents reduce the screen time in this infographic.</p></li>
            <li><a href="/how-to-manage-kids-screen-time.html"> <img class="top" src="/images/infographics/5.png" title="8 Must-Follow Tips to Manage Kids’ Screen Time" alt="8 Must-Follow Tips to Manage Kids’ Screen Time"/> </a></li>
        </ul>
        <div class="infographics__desc"><a href="/how-to-manage-kids-screen-time.html">8 Must-Follow Tips to Manage Kids’ Screen Time</a></div>
    </div>

    <div class="col-lg-4 col-md-4">
        <ul class="infographics__block effect">
            <li><p class="zero">Check this infographic to find out 10 best ways to use smartphones and tablets for educational purposes in schools and at home.</p></li>
            <li><a href="/kids-education-in-mobile-era.html"> <img class="top" src="/images/infographics/6.png" title="How to Use Smartphones & Tablets to Boost Your Kid’s Education" alt="How to Use Smartphones & Tablets to Boost Your Kid’s Education"/> </a></li>
        </ul>
        <div class="infographics__desc"><a href="/kids-education-in-mobile-era.html">How to Use Smartphones & Tablets to Boost Your Kid’s Education</a></div>
    </div>
</div>
     {literal}
         <script>
         $('.infographics__desc a').hover( function(){
                 $this = $(this);
                 $new = $this[0];
                 $block = $($new).parent().parent().find('.top');
                 $block.css({"top":"-90px", "padding-bottom":"100px"})
                 }, function(){
                $block.css({"top":"", "padding-bottom":""});
         });

         $('.infographics__block').hover( function(){
             $this = $(this);
             $new = $this[0];
             $block = $($new).parent().find('a');
             console.log($block[0]);
             $block.css({"color":"#f5ac43"})
         }, function(){
             $block.css({"color":""})
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
