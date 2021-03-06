{include file='../includes/main/main-header.tpl'
    title="SMS Monitoring for Kids Protection, SMS Tracking App - Pumpic"
    description="SMS communication is more popular these days than making calls. That’s why it is reasonable for parents to use a text message spy app to monitor their kids’ activity."
}

<body>
    <!-- BLOCK GTM -->
    {include file='../includes/main/main-after-body.tpl'}
    <!-- END BLOCK GTM -->

    <!-- FLY BLOCKS -->
    {include file='../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->

    <div class="wrapper mobile_sms_spy">

	<!-- TOP MENU -->
	{include file='../includes/main/main-top-menu.tpl'
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
         {include file='../includes/content/info/info-promo.tpl'
            imgUrl = "landings/bg_mobile_sms_spy_1.png"
            imgAlt = "SMS spy app"
            imgAlign = "right"
            imgVerticalAlign = "bottom"
            collg="7"
            textAlign = "right"
            title = "SMS Monitoring App"
            description = "Follow your kids’ text message communication.<br />Monitor text content of SMS, MMS, and iMessages."
            promoBuyBlock = "no"
            listText = "monitor SMS messages sent and received|control contacts, block misgiving senders|prevent children from bullies and online predators"
            planPackageBuy = "yes"
            block_video = "yes"
            block_video_src = "https://www.youtube.com/embed/Atg0CbaytAY"
         }
        {* header_banners/bg_mobile_sms_spy.png *}
        {* ?rel=0&wmode=transparent&fs=0&autoplay=1&modestbranding=1&autohide=1 *}
        {*listText = "monitor SMS messages sent and received|control contacts, block misgiving senders|prevent children from bullies and online predators"*}

        {include file='../includes/content/plans.tpl'}

        {* Template: FLY BUTTONS
        *}
        {include file='../includes/content/fly/box-buttons.tpl'
            buttonBuyNow = 'yes'
            buttonViewDemo = 'no'
            buttonFreeTrial = 'yes'
        }



{Content
    styleTitle="h2"
    title="Did You Know?"
    blockBg='dark'}

        <p class="text-center f-light">
            Nowadays children spend more than 3 hours a day using smartphones for playing games, social media activity and chatting.
            Being a parent implies a huge responsibility to protect kids from misgiving people they might contact on the web.
            Reliable SMS spy software will help you secure your children.
        </p>

        <!-- BLOCK STATISTICK -->
        <div class="block-statistick row">

            <div class="item col-s-sm-12 col-xs-sm-12 col-sm-4 col-md-4 col-lg-4">
                <section>
                    <div><strong class="fz50 color-orange">70%</strong></div>
                    <span class="text-uppercase">
                        of victims that online predators target are boys and girls aged 14-16 years old
                    </span>
                </section>
            </div>
            <div class="item col-s-sm-12 col-xs-sm-12 col-sm-4 col-md-4 col-lg-4">
                <section>
                    <div><strong class="fz50 color-orange">50%</strong></div>
                    <span class="text-uppercase">
                        of children share personal data online, including names, addresses, and billing accounts
                    </span>
                </section>
            </div>
            <div class="item col-s-sm-12 col-xs-sm-12 col-sm-4 col-md-4 col-lg-4">
                <section>
                    <div><strong class="fz50 color-orange">60%</strong></div>
                    <span class="text-uppercase">
                        of all criminal cases among teenagers were planned through SMS and IM chats
                    </span>
                </section>
            </div>

        </div>
        <!-- END -->

        <p class="text-center f-light">
            Pumpic parental text monitoring app was designed to help keep your children safe by tracking incoming and outgoing SMS.
            The app allows you to view saved and deleted messages, limit daily amount of sent SMS, as well as block specific contacts from reaching your kids in future:
        </p>

        <!-- BLOCK LIST -->
        <div class="row pt15">
            <div class="padding-null col-sm-4 col-md-4 col-lg-4">
                <ul class="block-list">
                    <li><i class="item-list-css-orange"></i> monitor SMS messages sent and received</li>
                </ul>
            </div>
            <div class="padding-null col-sm-4 col-md-4 col-lg-4">
                <ul class="block-list">
                    <li><i class="item-list-css-orange"></i> control contacts, block misgiving senders</li>

                </ul>
            </div>
            <div class="padding-null col-sm-4 col-md-4 col-lg-4">
                <ul class="block-list">
                    <li><i class="item-list-css-orange"></i> prevent children from bullies and online predators</li>
                </ul>
            </div>
        </div>
        <!-- END -->


        {*<p>Nowadays children spend more than 3 hours a day using smartphones for playing games, social media activity and chatting. Being a parent implies a huge responsibility to protect kids from misgiving people they might contact on the web. Reliable SMS spy software will help you secure your children.</p>

        <ul>
            <li>70% of victims that online predators target are boys and girls aged 14-16 years old</li>
            <li>50% of children share personal data online, including names, addresses, and billing accounts</li>
            <li>60% of all criminal cases among teenagers were planned through SMS and IM chats</li>
        </ul>

        <p>Pumpic parental text monitoring app was designed to help keep your children safe by tracking incoming and outgoing SMS. The app allows you to view saved and deleted messages, limit daily amount of sent SMS, as well as block specific contacts from reaching your kids in future:</p>

        <ul>
            <li>monitor SMS messages sent and received</li>
            <li>control contacts, block misgiving senders</li>
            <li>prevent children from bullies and online predators</li>
        </ul>*}

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

                imgUrl = 'parental_control/bg_famaly_mobile.png'
                imgAlt = 'Alt Test image 1'
                imgWidth = '537'
                imgHeight = '312'

                captionText = 'Caption test image 1 Caption test image 1 Caption test image 1 Caption test image 1'
        *}

{EndContent}

<div class="light">
        <div class="container">
                <h2 class="text-center">How Pumpic Secures Your Kid</h2>
                <div class="row">
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="{$img}/icons/icon-mobile-secure.png" alt="cell phone monitoring">
                                        <h3>Keep track of text messages</h3>
                                        <ul class="feature_list">
                                                <li>View SMS, iMessages, and MMS</li>
                                                <li>View saved and deleted SMS</li>
                                                <li>Control message contact list</li>
                                        </ul>
                                </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="{$img}/icons/icon-block-incoming-sms.png" alt="block incoming SMS">
                                        <h3>Block text messages</h3>
                                        <ul class="feature_list">
                                                <li>Add misgiving people to the block list</li>
                                                <li>Lock SMS containing bad words or threats</li>
                                                <li>Limit the amount of SMS sent daily </li>
                                        </ul>
                                </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="{$img}/icons/icon-track-kids.png" alt="remote mobile monitoring">
                                        <h3>Prevent threats and danger</h3>
                                        <ul class="feature_list">
                                                <li>Avert cyberbullying</li>
                                                <li>Save kids from online predators</li>
                                                <li>Control bad words usage</li>
                                        </ul>
                                </div>
                        </div>
                </div>
        </div>
</div>

{include file='../includes/content/features-table-new.tpl'
        title = "More of Pumpic Features"
        description = "In a large variety of available software, it is rather a challenge to find a reliable app for parents to monitor text messages on their kids’ cell phones. The very first thing to consider here is features such an application offers. Except text message monitoring you will surely want to track your kids’ location, online activity and control the time they spend playing games. Below is the entire list of functions Pumpic provides to protect your kids and secure their happiness."
        blockBg="dark"
        icloud="yes"
        storeLink="yes"
}

{*<div class="dark">
        <div class="container">
                <h2 class="text-center">More of Pumpic Features</h2>
                <div class="row">

                    <div id="table-container" class="table-col-3 table-md-col-3 table-sm-col-3">
                        <article class="text-center">In a large variety of available software, it is rather a challenge to find a reliable app
                            for parents to monitor text messages on their kids’ cell phones. The very first thing to consider here is features
                            such an application offers. Except text message monitoring you will surely want to track your kids’ location,
                            online activity and control the time they spend playing games. Below is the entire list of functions Pumpic
                            provides to protect your kids and secure their happiness. </article>
                        <section>
                            <div class="tab col-item-3 col-md-item-3 col-sm-item-3">
                                <ul>
                                    <li><i class="i-features-sms"></i> <span onclick="window.location='{$schema}{$domain}/mobile-sms-spy.html'">View SMS</span></li>
                                    <li><i class="i-features-cell-history"></i> View Call History</li>
                                    <li><i class="i-features-calendar"></i> View Calendar</li>
                                    <li><i class="i-features-contacts"></i> View Contacts</li>
                                    <li><i class="i-features-email"></i> View Emails</li>
                                </ul>
                            </div>

                            <div class="tab col-item-3 col-md-item-3 col-sm-item-3">
                                <ul>
                                    <li><i class="i-features-videocam"></i> View Videos</li>
                                    <li><i class="i-features-photos"></i> View Photos</li>
                                    <li><i class="i-features-browser"></i> Control Browser</li>
                                    <li><i class="i-features-app"></i> Control Applications</li>
                                    <li><i class="i-features-social"></i> Control Social Networks</li>
                                </ul>
                            </div>

                            <div class="tab col-item-3 col-md-item-3 col-sm-item-3">
                                <ul>
                                    <li><i class="i-features-location"></i> Location Tracking</li>
                                    <li><i class="i-features-keyloger"></i> Keylogger</li>
                                    <li><i class="i-features-sms-commands"></i> SMS Commands</li>
                                    <li class="hidden-mobile"></li>
                                    <li class="hidden-mobile"></li>
                                </ul>
                            </div>
                        </section>

                    </div>

                </div>
        </div>
</div> *}

{Content
    styleTitle="h2"
    title="Why to Follow Kids’ Text Messages"
    blockBg='light'}
    <p>You will probably wonder, if hear that children most of all do not use their mobile phones to call each other. Instead, they use them to play games, search online, and chat via social media or SMS. In other words, modern kids prefer writing text messages to making calls. That's why most of spying apps - be it for iOS or for Android - primarily focus on tracking texts.</p>

    <p>According to the recent statistics, more than 70% of teenagers use SMS to contact their friends. If you have a look at one of your kid’s SMS chat history, you will see that it more likely resembles a written down phone call than a message itself. It means that if you want to find out what your child talks about with his or her friend, you don’t need to record a call, you can simply read text messages. That’s why monitoring SMS is one of the best ways of keeping up with your kid’s affairs.</p>

    <p>There is a lot of tracking software, which enables parents to follow their kids’ activity remotely. And SMS monitoring is one of its major functions. With the help of such spyware, you will easily track your children from any spot of the world as well as view SMS they send and receive.</p>

    <p>SMS spy software will let you take care of your kids remotely and prevent them from possible dangers, namely:</p>
    <ul>
        <li>find out if your kid is dating someone and prevent him or her from related threats (teenagers chat with their dates pretty often, and thus, SMS tracking will let you be in touch with the situation and take action, if needed);</li>
        <li>control whom your kids communicate with and prevent them from chatting with strangers or misgiving people (swindlers, bullies, and online predators often use text messages to contact their victims);</li>
        <li>block texts messages on Android and iOS devices to prevent kids from seeing inappropriate content and communicating with strangers;</li>
		<li>take immediate action, if find out that your kid contacts drug dealers or someone, who might be a bad company for him or her;</li>
        <li>find out if your kid is up to do something you would not approve, or is going to go anywhere you would not allow;</li>
        <li>find out if your kid uses bad words in his or her communication;</li>
        <li>prevent your kid from being involved in sexting (exchanging messages with sexual content, sometimes including inappropriate photos attached).</li>
    </ul>
{EndContent}

<div class="dark">
    <div class="container">
            <h2 class="text-center testimonial-title">Pumpic SMS Monitoring Testimonials:</h2>
            <div class="row">

                <div class="bxSliders only-pc">
                        <!-- SLIDE #1 -->
                        <div class="slide">

                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/testimonials_new_19.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Amanda J. (Newport Beach, CA)</h4>
                                    <p>“I am a single mother of 15 years old daughter. Recently, we had to move to the Golden State where she made friends with uncertain group of young people. I was worrying about her a lot. When I found Pumpic, I was relieved, now I can check her messages and IM chats to see what she is planning. I can see her GPS location and route history too to make sure she is home after school while I am at work.”</p>
                            </div>
                    </div>
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/testimonials_new_20.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Tiffany and Greg W. (Huntsville, AL)</h4>
                                    <p>“We have two adorable daughters (10 and 12). We do everything to rise them in a proper Catholic way. Although we allow them to use smartphones, we do keep track of their phones with SMS monitoring app. We use it as a precaution. We are fully satisfied with Pumpic, it let us see all incoming and outgoing messages to make sure they are safe. We also use block list that allows us to monitor bad words used in messages, if there are such.”</p>
                            </div>
                    </div>
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/testimonials_new_21.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>George K. (Oklahoma City, OK)</h4>
                                    <p>“I installed Pumpic to keep track of my son, David (16). I am satisfied with the product, especially the function that allows me to see deleted messages. Sometimes, you just have to do it. I think it’s natural to protect your kids and Pumpic is one of the easiest ways.”</p>
                            </div>
                    </div>

                        </div>
                </div>
                <div class="bxSliderMobile"></div>

            </div>
    </div>
</div>
        {include file='../includes/content/how-get-pumpic.tpl'
             blockBg="light"
        }

        {include file='../includes/content/banners/index.tpl'}


        {*include file='../includes/content/banner-promo.tpl'*}
        {*{include file='../includes/content/banners/banner-promo-trial.tpl'}*}

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
