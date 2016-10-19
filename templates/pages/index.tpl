{include file='../includes/main/main-header.tpl'

    title="Cell Phone Parental Control App for Tracking Children | Pumpic Monitoring Software"
    description="Keep your family safe with Pumpic mobile monitoring app for parents. View calls and text messages. Track GPS location. Follow social media and online activity. Limit or block apps remotely."
}

<body>

    <!-- BLOCK GTM -->
    {include file='../includes/main/main-after-body.tpl'}
    <!-- END BLOCK GTM -->

    <!-- FLY BLOCKS -->
    {include file='../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->

    <div class="wrapper {*bg_bottom_images*} block-free-trial home-page">
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
                 style="blue"
        }

        {* bg_famaly_427x254.png imgVerticalAlign = "bottom"*}
        <!-- CONTENT -->
        {include file='../includes/content/info/info-promo.tpl'
            imgUrl = "header_banners/bg_header_home_page.png"
            imgAlt = "Landing Mobile"
            imgAlign = "left bottom"
            imgVerticalAlign = "center"
            textAlign = "left"
            title = "Cell Phone <br />Monitoring App"
            description = "Protect your family with the Pumpic child tracking app.<br />Check location, calls, and SMS. Control online activities."
            promoBuyBlock = "no"
            planPackageBuy = "yes"
            block_video = "yes"
            block_video_src = "http://www.youtube.com/embed/Atg0CbaytAY"
        } {* ?rel=0&wmode=transparent&fs=0&autoplay=1&modestbranding=1&autohide=1 *}

        {include file='../includes/content/plans.tpl'}

        {* Template: FLY BUTTONS
        *}
        {include file='../includes/content/fly/box-buttons.tpl'
            buttonBuyNow = 'yes'
            buttonViewDemo = 'no'
            buttonFreeTrial = 'yes'
        }

        {include file='../includes/content/secures-mobile-phones-monitoring.tpl'}

        {Content
    styleTitle="h2"
    title="Why Parental Controls Are Essential"
    blockBg='light'}
        <!-- BLOCK STATISTICK -->
        <div class="block-statistick row">
            <div class="item col-s-sm-12 col-xs-sm-12 col-sm-4 col-md-4 col-lg-4">
                <section>
                    <div><strong class="fz50 color-orange">92%</strong></div>
                    <span class="text-uppercase">
                        teens use preferably smartphones to go online on daily basis. Furthermore, 24% say they are on the web almost constantly.
                    </span>
                </section>
            </div>
            <div class="item col-s-sm-12 col-xs-sm-12 col-sm-4 col-md-4 col-lg-4">
                <section>
                    <div><strong class="fz50 color-orange">51%</strong></div>
                    <span class="text-uppercase">
                        children who use the Internet have been cyberbullied. Most of them neither complain nor inform parents. Meanwhile, bullying is among top suicide factors among teens.
                    </span>
                </section>
            </div>
            <div class="item col-s-sm-12 col-xs-sm-12 col-sm-4 col-md-4 col-lg-4">
                <section>
                    <div><strong class="fz50 color-orange">78%</strong></div>
                    <span class="text-uppercase">
                        parents who use parental control software admit their children have reasonably improved behavior and performance at school.
                    </span>
                </section>
            </div>

        </div>
        <!-- END -->

        <p class="text-center f-light">Most threats children face today are closely associated with the use of mobile devices and the Internet. Our cell phone monitoring software helps parents avert all these dangers in the making and protects your little ones. Install the app on your kids’ phones and rest assured they are safe wherever they go. Pumpic is a reliable child tracking solution that each concerned parent should consider using. Keep your eyes open with the Pumpic parental controls.</p>

		{EndContent}

        {include file='../includes/content/features-table.tpl'
                blockBg="dark"
        }

        {include file='../includes/content/ipad.tpl'
                blockBg="light"
                imgUrl = "parental_control/ipad.png"
                imgAlt = "Android"
                title = "Easy-to-Use Control Panel"
                textAlign = "left"
				description = "Right after installing Pumpic mobile monitoring, all the data from the target mobile phone will be sent to your Control Panel. You can access it from any browser and any device, including PCs, smartphones, and tablets. In Control Panel, you can not only monitor the information but also set parent restrictions and block some activities on your child’s phone remotely."
        }

        {* description = "Right after installing Pumpic, all the data from the target mobile phone will be sent to your Control Panel. It can be accessed from any browser and any device, including PCs, smartphones and tablets. In Control Panel you can not only view the information, but also set restrictions and block some of activities on the target device."
        *}

        {include file='../includes/main/main-testimonials.tpl'
                title = "Trusted by Over 10,000 Customers Worldwide"
                sliders = "true"
                blockBg="dark"}

        {include file='../includes/content/how-get-pumpic.tpl'
            blockBg="light"
        }

        {include file='../includes/content/why-pumpic.tpl'
                blockBg="dark"}

        {*{include file='../includes/content/banners/banner-promo-trial.tpl'}*}

        {include file='../includes/content/banners/index.tpl'}
        <!-- END CONTENT -->

        <!-- RECOMMENDED -->
        {*
            Template: RECOMMENDED
        *}
        {include file='../includes/main/main-recommended.tpl'}

        <!-- FOOTER -->
        {*
            Template: FOOTER
            Переменные:
                our_products (text): Включить выключить блок OUR PRODUCTS (no|yes). * - yes
        *}
        {include file='../includes/main/main-quick-link.tpl'
        blockBg="light"
        }

        {include file='../includes/main/main-footer.tpl'}

    </div>

    {include file='../includes/main/main-analytics-footer.tpl'}




</body>
</html>
