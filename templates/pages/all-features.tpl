{include file='../includes/main/main-header.tpl'

    title="Features of mobile tracking app | Pumpic"
    description="Pumpic is an innovative solution, which takes Mobile Phone Monitoring on a reasonably new level. Find out more functions of Pumpic and evaluate the progress it made."
}

<body>
    <!-- BLOCK GTM -->
    {include file='../includes/main/main-after-body.tpl'}
    <!-- END BLOCK GTM -->

    <!-- FLY BLOCKS -->
    {include file='../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->

    <div class="wrapper block-technological">
        <!-- TOP MENU -->

	{include file='../includes/main/main-top-menu.tpl'
            topmenu_active='all-features'
            show_control_panel_link="1"
            cache_id = "includes_main_main-top-menu"
            nocache
        }
        <style>
            body {
                color: #4d4f5b;
            }
            .bg_white {
                background-color: #ffffff;
            }
            .dark:not(.bg-footer) {
                background-color: #f6f6f6;
                padding-top: 35px;
                padding-bottom: 52px;
            }
            .filter_fe {
                margin-bottom: 41px;
            }
            .filter_icon {
                line-height: 1.4;
            }
            .filter_icon:before {
                margin-right: .2em;
            }
            .filter-active:after {
                display: none;
            }
            @media (max-width: 768px) {
                .filter_fe .filter_icon {
                    margin-bottom: -5px;
                }
            }
        </style>


        <!-- BLOCK HEADER -->
        <div class="bg_white">
            <div class="container">

                {*
                    Template: PHONE
                    Переменные:
                        style (text): стиль блока Phone (blue|black). * - blue
                *}
                {include file='../includes/content/phone/block-phone.tpl'
                         style="black block"
                }

                <div id="block-technological-header">
                    <div class="box-hedaer-title all-features-title">
                        <h1 class="h2 text-center">Cell Phone Monitoring Features</h1>
                    </div>
                    <div class="row">
                        <div class="col-md-offset-2 col-md-8">
                            <div class="filter_fe">
                                <ul class="filter_list">
                                    <li class="filter_item filter-active _features-filter" data-filter="os-ios"><i class="icon-apple filter_icon"></i><b>iOS</b> <span class="filter_version _version-hide-xs">{$ver_icloud_bot} - {$ver_icloud_up}</span><span class="filter_version"> (iCloud)</span></li>
                                    <li class="filter_item _features-filter" data-filter="os-android"><i class="icon-android filter_icon"></i><b>Android</b> <span class="filter_version _version-hide-xs"> {$ver_android_bot} - {$ver_android_up}</span></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    {* FEATURES IOS *}
                    <div class="box-hedaer-body _features-content" data-feature="os-ios">
                        <div class="row">
                            <div class="col-sm-3 col-md-3 col-lg-3">

                                <ul class="list-features list-features-right">
                                    <li class="i-l-features">
                                        <div class="row">
                                            <div class="col-sm-2 col-md-2 col-lg-2 padding-null features-icon">
                                                <svg width="27" height="27" class="model-center">
                                                    <use xlink:href="/images/svg-icons.svg#calls"></use>
                                                </svg>
                                                {*<img class="model-center" src="{$img}/technological/header/icon/icon-call.png" width="27px" height="27px" />*}
                                            </div>
                                            <div class="col-sm-10 col-md-10 col-lg-10 plr5 features-item">
                                                <a class="underline go_block_scroll" href="#calls-ios">Calls</a>
                                                <div class="bth-info">
                                                    <ul>
                                                        <li>in- and outbound call logs</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>

                                    </li>

                                    <li class="i-l-features">
                                        <div class="row">
                                            <div class="col-sm-2 col-md-2 col-lg-2 padding-null features-icon">
                                                <svg width="24" height="31" class="model-center">
                                                    <use xlink:href="/images/svg-icons.svg#location"></use>
                                                </svg>
                                                {*<img class="model-center" src="{$img}/technological/header/icon/icon-location-history.png" width="24px" height="31px" />*}
                                            </div>
                                            <div class="col-sm-10 col-md-10 col-lg-10 plr5 features-item">
                                                <a class="underline go_block_scroll" href="#location-ios">Location History</a>
                                                <div class="bth-info">
                                                    <ul>
                                                        <li>current GPS location & history</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </li>

                                    <li class="i-l-features">
                                        <div class="row">
                                            <div class="col-sm-2 col-md-2 col-lg-2 padding-null features-icon">
                                                <svg width="28" height="28" class="model-center">
                                                    <use xlink:href="/images/svg-icons.svg#chats"></use>
                                                </svg>                                            </div>
                                            <div class="col-sm-10 col-md-10 col-lg-10 plr5 features-item">
                                                <a class="underline go_block_scroll" href="#social-ios">Online Chats</a>
                                                <div class="bth-info">
                                                    <ul>
                                                        <li>WhatsApp, Skype, Kik</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </li>

                                    <li class="i-l-features">
                                        <div class="row">
                                            <div class="col-sm-2 col-md-2 col-lg-2 padding-null features-icon">
                                                <svg width="28" height="28" class="model-center">
                                                    <use xlink:href="/images/svg-icons.svg#contacts"></use>
                                                </svg>                                            </div>
                                            <div class="col-sm-10 col-md-10 col-lg-10 plr5 features-item">
                                                <a class="underline go_block_scroll" href="#organiser-ios">Contacts</a>
                                                <div class="bth-info">
                                                    <ul>
                                                        <li>existing contacts</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </li>

                                </ul>

                            </div>
                            <div class="hidden-xs col-sm-6 col-md-6 col-lg-6 padding-null text-center mt10">

                                <div class="box-images">
                                    <div class="box-middle" style="max-width: 510px;">
                                        <div class="line-middle line-ios"></div>
                                        <img src="images/technological/header/img_header_ios.png" style="max-width: 510px;" />
                                    </div>

                                    <div class="box-big" style="max-width: 530px;">
                                        <div class="line-big line-ios"></div>
                                        <img src="images/technological/header/img_header_ios.png" />
                                    </div>
                                </div>

                            </div>
                            <div class="col-sm-3 col-md-3 col-lg-3">
                                <ul class="list-features text-left list-features-left">

                                    <li class="i-l-features p-b-item-1 p-b-item-1-ios">
                                        <div class="row">
                                            <div class="col-sm-2 col-md-2 col-lg-2 padding-null features-icon">
                                                <svg width="31" height="31" class="model-center">
                                                    <use xlink:href="/images/svg-icons.svg#texts"></use>
                                                </svg>
                                            </div>

                                            <div class="col-sm-10 col-md-10 col-lg-10 plr5 features-item">
                                                <a class="underline go_block_scroll" href="#sms-ios">Texts</a>
                                                <div class="bth-info">
                                                    <ul>
                                                        <li>SMS, MMS, iMessage text content and supported attachments</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </li>


                                    <li class="i-l-features p-b-item-2 p-b-item-2-ios">
                                        <div class="row">
                                            <div class="col-sm-2 col-md-2 col-lg-2 padding-null features-icon">
                                                <svg width="28" height="24" class="model-center">
                                                    <use xlink:href="/images/svg-icons.svg#photos"></use>
                                                </svg>
                                            </div>

                                            <div class="col-sm-10 col-md-10 col-lg-10 plr5 features-item">
                                                <a class="underline go_block_scroll" href="#media-ios">Photos</a>
                                                <div class="bth-info">
                                                    <ul>
                                                        <li>camera shots, downloaded files</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>

                                    </li>

                                    <li class="i-l-features p-b-item-3 p-b-item-3-ios">
                                        <div class="row">
                                            <div class="col-sm-2 col-md-2 col-lg-2 padding-null features-icon">
                                                <svg width="31" height="31" class="model-center">
                                                    <use xlink:href="/images/svg-icons.svg#browsers"></use>
                                                </svg>
                                            </div>

                                            <div class="col-sm-10 col-md-10 col-lg-10 plr5 features-item">
                                                <a class="underline go_block_scroll" href="#browser_control-ios">Browser</a>
                                                <div class="bth-info">
                                                    <ul>
                                                        <li>browsing history, bookmarks</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>

                                    </li>


                                    <li class="i-l-features">
                                        <div class="row">
                                            <div class="col-sm-2 col-md-2 col-lg-2 padding-null features-icon">
                                                <svg width="31" height="31" class="model-center">
                                                    <use xlink:href="/images/svg-icons.svg#calendar"></use>
                                                </svg>
                                            </div>

                                            <div class="col-sm-10 col-md-10 col-lg-10 plr5 features-item">
                                                <a class="underline go_block_scroll" href="#organiser-ios">Calendar</a>
                                                <div class="bth-info">
                                                    <ul>
                                                        <li>scheduled plans and events</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>

                                    </li>

                                </ul>
                            </div>
                        </div>

                        <!-- block buttons -->
                        <div class="row">
                            <div class="clearfix learn-about">
                            <div class="col-xs-sm-12 col-sm-12 col-md-12 col-lg-12 text-center bth-buttons">
                                <ul>
                                    <li>
                                     <a class="btn-orange ga-action-click btn-view-demo" target="_blank"
                                        href="{$schema}demo.{$domain}/setDevice/126?redirect_url=cp/calls"
                                        ga-action ="click"
                                        ga-category="demo link"
                                        ga-label="all-features-icloud"
                                       >View Demo</a>
                                    </li>

                                    <li>
                                      <a class="btn-red ga-action-click btn-buy-now"
                                       href="/store.html"
                                        ga-action ="click"
                                        ga-category="buy now"
                                        ga-label="all-features-icloud"
                                       >Buy Now</a>
                                    </li>
                                    {*<li>
                                    <a class="btn-yellow ga-action-click btn-free-trial"
                                       href="{$schema}{$domain}/free-trial.html"
                                        ga-action ="click"
                                        ga-category="techological"
                                        ga-label="trial"
                                       >Free Trial</a>
                                    </li>*}
                                </ul>
                                <p style="font-weight: 600;color: #16a89e;">Compatible with iOS {$ver_icloud_bot} - {$ver_icloud_up} (iCloud) on iPhones, iPads, iPods Touch</p>
                                <p>more than <b>11 features</b> of remote mobile tracking with Pumpic.</p>
                                <p>View, track mobile activity remotely with Pumpic.<br class='only-mobile' />
                                    Keep your eyes open!
                                    {*Keep your family safe and secured with Pumpic.
                                    <br />Track location. View calls and SMS. Follow online activity.*}</p>
                            </div>
                            </div>
                        </div>

                    </div>
                    {*FEATURES ANDROID*}
                    <div class="box-hedaer-body _features-content" data-feature="os-android" style="display: none;">
                        <div class="row">
                            <div class="col-sm-3 col-md-3 col-lg-3">

                                <ul class="list-features list-features-right">
                                    <li class="i-l-features i-l-features-jb">
                                        <div class="row">
                                            <div class="col-sm-2 col-md-2 col-lg-2 padding-null features-icon">
                                                <svg width="31" height="31" class="model-center">
                                                    <use xlink:href="/images/svg-icons.svg#calls"></use>
                                                </svg>
                                            </div>
                                            <div class="col-sm-10 col-md-10 col-lg-10 plr5 features-item">
                                                <a class="underline go_block_scroll" href="#calls-android">Calls</a>
                                                <div class="bth-info">
                                                    <ul>
                                                        <li>in- and outbound call logs</li>
                                                        <li>name, number and time data</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>

                                    </li>

                                    <li class="i-l-features i-l-features-jb ">
                                        <div class="row">
                                            <div class="col-sm-2 col-md-2 col-lg-2 padding-null features-icon">
                                                <svg width="31" height="31" class="model-center">
                                                    <use xlink:href="/images/svg-icons.svg#location"></use>
                                                </svg>
                                            </div>
                                            <div class="col-sm-10 col-md-10 col-lg-10 plr5 features-item">
                                                <a class="underline go_block_scroll" href="#location-android">Location & Geo-fences</a>
                                                <div class="bth-info">
                                                    <ul>
                                                        <li>current GPS location & history</li>
                                                        <li>geo-fences and alerts</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </li>

                                    <li class="i-l-features i-l-features-jb ">
                                        <div class="row">
                                            <div class="col-sm-2 col-md-2 col-lg-2 padding-null features-icon">
                                                <svg width="31" height="31" class="model-center">
                                                    <use xlink:href="/images/svg-icons.svg#facebook"></use>
                                                </svg>
                                            </div>
                                            <div class="col-sm-10 col-md-10 col-lg-10 plr5 features-item">
                                                <a class="underline go_block_scroll" href="#social-android">Online Chats</a>
                                                <div class="bth-info">
                                                    <ul>
                                                        <li>Facebook Messenger, Snapchat</li>
                                                        <li>WhatsApp, Viber, Skype, Kik</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </li>

                                    <li class="i-l-features i-l-features-jb ">
                                        <div class="row">
                                            <div class="col-sm-2 col-md-2 col-lg-2 padding-null features-icon">
                                                <svg width="31" height="28" class="model-center">
                                                    <use xlink:href="/images/svg-icons.svg#mail"></use>
                                                </svg>
                                            </div>
                                            <div class="col-sm-10 col-md-10 col-lg-10 plr5 features-item">
                                                <a class="underline go_block_scroll" href="#email-android">Email</a>
                                                <div class="bth-info">
                                                    <ul>
                                                        <li>inbox and sent emails</li>
                                                        <li>precise contact data</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </li>

                                </ul>

                            </div>
                            <div class="hidden-xs col-sm-6 col-md-6 col-lg-6 padding-null text-center mt10">

                                <div class="box-images">
                                    <div class="box-middle" style="max-width: 510px;">
                                        <div class="line-middle"></div>
                                        <img src="images/technological/header/img_header_middle.png" />
                                    </div>

                                    <div class="box-big" style="max-width: 530px;">
                                        <div class="line-big"></div>
                                        <img src="images/technological/header/img_header_big.png" />
                                    </div>
                                </div>

                            </div>
                            <div class="col-sm-3 col-md-3 col-lg-3">
                                <ul class="list-features text-left list-features-left">

                                    <li class="i-l-features p-b-item-1">
                                        <div class="row">
                                            <div class="col-sm-2 col-md-2 col-lg-2 padding-null features-icon">
                                                <svg width="31" height="31" class="model-center">
                                                    <use xlink:href="/images/svg-icons.svg#texts"></use>
                                                </svg>
                                            </div>

                                            <div class="col-sm-10 col-md-10 col-lg-10 plr5 features-item">
                                                <a class="underline go_block_scroll" href="#sms-android">Texts</a>
                                                <div class="bth-info">
                                                    <ul>
                                                        <li>SMS, MMS text content</li>
                                                        <li>block or limit messages</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </li>


                                    <li class="i-l-features p-b-item-2">
                                        <div class="row">
                                            <div class="col-sm-2 col-md-2 col-lg-2 padding-null features-icon">
                                                <svg width="31" height="31" class="model-center">
                                                    <use xlink:href="/images/svg-icons.svg#photos"></use>
                                                </svg>
                                            </div>

                                            <div class="col-sm-10 col-md-10 col-lg-10 plr5 features-item">
                                                <a class="underline go_block_scroll" href="#media-android">Photos & Videos</a>
                                                <div class="bth-info">
                                                    <ul>
                                                        <li>camera shots, downloaded files</li>
                                                        <li>follow Instagram</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>

                                    </li>

                                    <li class="i-l-features p-b-item-3">
                                        <div class="row">
                                            <div class="col-sm-2 col-md-2 col-lg-2 padding-null features-icon">
                                                <svg width="31" height="31" class="model-center">
                                                    <use xlink:href="/images/svg-icons.svg#browsers"></use>
                                                </svg>
                                            </div>

                                            <div class="col-sm-10 col-md-10 col-lg-10 plr5 features-item">
                                                <a class="underline go_block_scroll" href="#browser_control-android">Browsers & Applications</a>
                                                <div class="bth-info">
                                                    <ul>
                                                        <li>browsing history, bookmarks</li>
                                                        <li>block websites and limit apps</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>

                                    </li>


                                    <li class="i-l-features">
                                        <div class="row">
                                            <div class="col-sm-2 col-md-2 col-lg-2 padding-null features-icon">
                                                <svg width="31" height="31" class="model-center">
                                                    <use xlink:href="/images/svg-icons.svg#calendar"></use>
                                                </svg>
                                            </div>

                                            <div class="col-sm-10 col-md-10 col-lg-10 plr5 features-item">
                                                <a class="underline go_block_scroll" href="#organiser-android">Calendar & Contacts</a>
                                                <div class="bth-info">
                                                    <ul>
                                                        <li>scheduled plans and events</li>
                                                        <li>existing and deleted contacts</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>

                                    </li>

                                </ul>
                            </div>
                        </div>

                        <!-- block buttons -->
                        <div class="row">
                            <div class="clearfix learn-about">
                            <div class="col-xs-sm-12 col-sm-12 col-md-12 col-lg-12 text-center bth-buttons">
                                <ul>
                                    <li>
                                     <a class="btn-orange ga-action-click btn-view-demo" target="_blank"
                                        href="{$schema}demo.{$domain}/setDevice/125?redirect_url=cp/calls"
                                        ga-category="demo link"
                                        ga-action="click"
                                        ga-label="all-features-android"
                                       >View Demo</a>
                                    </li>

                                    <li>
                                      <a class="btn-red ga-action-click btn-buy-now"
                                       href="/store.html#android"
                                         ga-category="buy now"
                                         ga-action="click"
                                         ga-label="all-features-android"
                                       >Buy Now</a>
                                    </li>
                                    {*<li>
                                    <a class="btn-yellow ga-action-click btn-free-trial"
                                       href="{$schema}{$domain}/free-trial.html"
                                        ga-action ="click"
                                        ga-category="techological"
                                        ga-label="trial"
                                       >Free Trial</a>
                                    </li>*}
                                </ul>
                                <p style="color:#16a89e; font-weight: 600">Compatible with Android {$ver_android_bot} - {$ver_android_up} on Smartphones and Tablets</p>
                                <p>Enjoy more than <b>20 features</b> of remote mobile tracking with Pumpic.</p>
                                <p>View, track and block mobile activity remotely with Pumpic.<br class='only-mobile' />
                                    Keep your eyes open!
                                    {*Keep your family safe and secured with Pumpic.
                                    <br />Track location. View calls and SMS. Follow online activity.*}</p>
                            </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>

         <!-- BLOCK FEATURES -->
        <div class="dark _features-content" style="display: none;border-top: 1px solid  #e3e3e3;" data-feature="os-android">
                <div class="container">
                        <h2 class="text-center">Other Features</h2>
                        <div class="row">

                            <div id="table-container" class="table-col-8 table-sm-col-3">

                                <section>
                                    <div class="tab col-item-3 col-md-item-3 col-sm-item-3">
                                        <ul>
                                            <li {*class="text-uppercase"*}>
                                                <svg width="25" height="25" class="features-icon vertical-center mr5">
                                                    <use xlink:href="/images/svg-icons.svg#keylogger"></use>
                                                </svg>
                                                <div>
                                                    Keylogger<br />
                                                    {*<span class="text-normal">(passwords, apps behaviour, incognito)</span>*}
                                                </div>
                                            </li>
                                            <li>
                                                <svg width="25" height="18" class="features-icon vertical-center mr5">
                                                    <use xlink:href="/images/svg-icons.svg#reboot"></use>
                                                </svg>
                                                <div>Reboot Application{*REBOOT APPLICATION*}</div>
                                            </li>
                                            <li>
                                                <svg width="25" height="25" class="features-icon vertical-center mr5">
                                                    <use xlink:href="/images/svg-icons.svg#remote"></use>
                                                </svg>
                                                <div>Remote Activity Control{*Remote activity control*}</div>
                                            </li>
                                        </ul>
                                    </div>

                                    <div class="tab col-item-3 col-md-item-3 col-sm-item-3">
                                        <ul>
                                            <li {*class="text-uppercase"*}>
                                                <svg width="25" height="25" class="features-icon vertical-center mr5">
                                                    <use xlink:href="/images/svg-icons.svg#sms-commands"></use>
                                                </svg>
                                                <div>SMS Commands</div>
                                            </li>
                                            <li>
                                                <svg width="25" height="18" class="features-icon vertical-center mr5">
                                                    <use xlink:href="/images/svg-icons.svg#reboot"></use>
                                                </svg>
                                                <div>Reboot Device{*REBOOT DEVICE*}</div>
                                            </li>
                                            <li>
                                                <svg width="25" height="22" class="features-icon vertical-center mr5">
                                                    <use xlink:href="/images/svg-icons.svg#lock"></use>
                                                </svg>
                                                <div>Remote Device Lock</div>
                                            </li>
                                        </ul>
                                    </div>

                                    <div class="tab col-item-3 col-md-item-3 col-sm-item-3 last">
                                        <ul>
                                            <li>
                                                <svg width="25" height="25" class="features-icon vertical-center mr5">
                                                    <use xlink:href="/images/svg-icons.svg#sim-change"></use>
                                                </svg>
                                                <div>SIM Change Notification{*SIM CHANGE <span class="text-normal">notification</span>*}</div>
                                            </li>
                                            <li>
                                                <svg width="25" height="22" class="features-icon vertical-center mr5">
                                                    <use xlink:href="/images/svg-icons.svg#removal"></use>
                                                </svg>
                                                <div>Removal Protection{*Removal protection*}</div>
                                            </li>
                                            <li class="other-feat-last">
                                                <div class="other-feat-last-wrapper">
                                                    <svg width="25" height="25" class="features-icon vertical-center mr5">
                                                        <use xlink:href="/images/svg-icons.svg#instant-location"></use>
                                                    </svg>
                                                    <div>Instant Location{*Instant location*}</div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </section>

                            </div>

                        </div>
                </div>
        </div>

        {*<!-- BLOCK COMPATIBILITY -->*}
        {*{include file='../includes/content/compatibility/compatibility-table.tpl'*}
            {*blockBg="dark"*}
        {*}*}

        <!-- BLOCK LIST FEATURES -->
        <div class="bg_white" style="border-top: 1px solid #e3e3e3;">
            {* FEATURES IOS *}
            <div class="container _features-content" data-feature="os-ios">

                <div class='row'>
                    <h2 class="text-center box-features-list-title">Features</h2>

                    <!-- \\ list -->
                    <div id='box-features-list' class="div-table col-sm-12 col-md-12 col-lg-12">

                        <!-- \\ #2 Calls: (even)-->
                        <div id="calls-ios" class="div-table-row even">
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-right">
                                <img style='max-width: 302px' class="image-features model-mobile-center" src='../images/technological/image-call.png' />
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-1 col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-left">

                                <div class='feature-item-info'>
                                    <ul>
                                        <li>
                                            <a href="/call-monitoring-software.html" style="cursor:default;"><img class="features-icon i-list-features-" src="{$img}/technological/header/icon/icon-call.png" style="width:25px;height:25px;top:4px;" alt="call monitoring for parents" title="tracking kids by their smartphones" /></a>
                                            {*<svg width="31" height="31" class="features-icon i-list-features-svg">*}
                                                {*<use xlink:href="/images/svg-icons.svg#calls"></use>*}
                                            {*</svg>*}
                                            <strong>Calls</strong></li>
                                    </ul>
                                    <div class='block-info'>
                                        <p>Follow <b>incoming</b> and <b>outgoing</b> call logs with precise contact data including <b>name</b>, <b>number</b>, <b>time</b> of the call and its <b>duration</b>. Find out who reaches the target phone, at what time and for how long.</p>

                                        <div><a class="btn-orange ga-action-click" ga-action="click" ga-category="demo link" ga-label="all-features-icloud" target="_blank" href="{$schema}demo.{$domain}/setDevice/126?redirect_url=cp/calls">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                        </div>

                        <!-- \\ #3 SMS: (odd) -->
                        <div id="sms-ios" class="div-table-row odd featured-item">
                            <div class="item-feature-list div-table-column col-lg-4">

                                <div class='feature-item-info'>
                                    <ul>
                                        <li>
                                            <a href="/mobile-sms-spy.html" class="only-mobile" style="cursor:default;"><img class="features-icon i-list-features-" src="{$img}/technological/header/icon/icon-sms.png" width="31px" height="31px" /></a>
                                            {*<svg width="31" height="31" class="features-icon i-list-features-svg only-mobile">*}
                                                {*<use xlink:href="/images/svg-icons.svg#texts"></use>*}
                                            {*</svg>*}
                                            <strong>SMS, MMS, iMessages</strong>
                                            <a href="/mobile-sms-spy.html" class="only-pc" style="cursor:default;"><img class="features-icon i-list-features-" src="{$img}/technological/header/icon/icon-sms.png" style="width:30px;height:25px;top:4px;" alt="sms monitoring" title="kids and text tracking" /></a>

                                            {*<svg width="31" height="31" class="features-icon i-list-features-svg only-pc">*}
                                                {*<use xlink:href="/images/svg-icons.svg#texts"></use>*}
                                            {*</svg>*}
                                        </li>
                                    </ul>
                                    <div class='block-info'>
                                        <p>Monitor <b>sent, received</b>, and <b>deleted text</b> content and supported attachments of SMS, iMessages, and MMS. View data on both a sender and recipient.</p>
                                        {*<ul>
                                            <li>Use Pumpic app to follow the entire call history of your</li>
                                            <li>child’s device. Protect your kids from mistrusted people.</li>
                                            <li>View a caller’s data including the name and phone number,</li>
                                            <li>the time when a call was received and duration of the </li>
                                            <li>conversation</li>
                                        </ul>*}
                                        <div><a class="btn-orange ga-action-click" ga-action="click" ga-category="demo link" ga-label="all-features-icloud" target="_blank" href="{$schema}demo.{$domain}/setDevice/126?redirect_url=cp/sms">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                            <div class="item-feature-list div-table-column col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-lg-4 text-left">
                                <img style='max-width: 302px' class="image-features model-mobile-center" src='../images/technological/image-sms.png' />
                            </div>
                        </div>

                        <!-- \\ #1 Location: (even) -->
                        <div id="location-ios" class="div-table-row even">
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-right">
                                <img style='max-width: 380px' class="image-features model-mobile-center" src='../images/technological/image-location-history.png' />
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-1 col-lg-1 text-center">
                                {*<i class='i-bubble'></i>*}
                                {*<div class='box-solid-1'></div>*}

                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-left">

                                <div class='feature-item-info'>
                                    <ul>
                                        <li>
                                            <a href="/child-location-tracking.html" style="cursor:default;"><img class="features-icon i-list-features-" src="{$img}/technological/header/icon/icon-location-history.png" style="width:21px;height:28px;top:4px;" alt="child locator for parents" title="tracking kids with gps" /></a>
                                            {*<svg width="31" height="31" class="features-icon i-list-features-svg">*}
                                                {*<use xlink:href="/images/svg-icons.svg#location"></use>*}
                                            {*</svg>*}
                                            <strong> Location</strong></li>
                                    </ul>
                                    <div class='block-info'>
                                        <p>Instantly <b>locate</b> the target device <b>on the map</b>. Keep track of current position as well as the <b>entire route history</b> by using GPS. Find the target device, if lost or stolen.</p>
                                        {*<ul>
                                            <li>Pumpic allows you to tell the exact location of your children. </li>
                                            <li>Find your children by using GPS. The application identifies the current position together with the
                                                precise route of recent movements.</li>
                                        </ul>*}
                                        <div><a class="btn-orange ga-action-click" ga-action="click" ga-category="demo link" ga-label="all-features-icloud" target="_blank"  href="{$schema}demo.{$domain}/setDevice/126?redirect_url=cp/locations">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                        </div>


                        <!-- \\ #5 Facebook IM/Viber/Skype/WhatsApp: (even) -->
                        <div id="social-ios" class="div-table-row odd featured-item">
                            <div class="item-feature-list div-table-column col-lg-4">

                                <div class='feature-item-info'>
                                    <ul>
                                        <li>
                                            {*<a href="/monitor-skype.html" class="only-mobile" style="cursor:default;"><img class="features-icon i-list-features-" src="{$img}/technological/i-list-features-skype.png" style="width:21px;height:21px;top:4px;" alt="monitor skype chats" title="skype calls can be viewed by parents" /></a>*}
                                            <svg width="31" height="31" class="features-icon i-list-features-svg only-mobile">
                                                <use xlink:href="/images/svg-icons.svg#skype"></use>
                                            </svg>
                                            <strong>Skype</strong>
                                            {*<svg width="31" height="31" class="features-icon i-list-features-svg only-pc">*}
                                                {*<use xlink:href="/images/svg-icons.svg#skype"></use>*}
                                            {*</svg>*}
                                            <a href="/monitor-skype.html" class="only-pc" style="cursor:default;"><img class="features-icon i-list-features-" src="{$img}/technological/i-list-features-skype.png" style="width:21px;height:21px;top:4px;" alt="monitor skype chats" title="skype calls can be viewed by parents" /></a>
                                        </li>
                                        <li style="position: relative;">
                                            {*<svg width="31" height="31" class="features-icon i-list-features-svg only-mobile">*}
                                                {*<use xlink:href="/images/svg-icons.svg#chats"></use>*}
                                            {*</svg>*}
                                            <a href="/whatsapp-monitoring.html" class="only-mobile" style="cursor:default;"><img class="features-icon i-list-features-" src="{$img}/technological/i-list-features-whatsapp.png" style="width:20px;height:21px;top:4px;" alt="view whatsapp chats" title="parents should check kids whatsapp accounts" /></a>
                                            <strong>WhatsApp</strong>
                                            <a href="/whatsapp-monitoring.html" class="only-pc" style="cursor:default;"><img class="features-icon i-list-features-" src="{$img}/technological/i-list-features-whatsapp.png" style="width:20px;height:21px;top:4px;" alt="view whatsapp chats" title="parents should check kids whatsapp accounts" /></a>
                                            {*<svg width="31" height="31" class="features-icon i-list-features-svg only-pc">*}
                                                {*<use xlink:href="/images/svg-icons.svg#chats"></use>*}
                                            {*</svg>*}
                                            </li>
                                        <li style="position: relative;">
                                            {*<svg width="31" height="31" class="features-icon i-list-features-svg only-mobile">*}
                                                {*<use xlink:href="/images/svg-icons.svg#kik"></use>*}
                                            {*</svg>*}
                                            <a href="/monitor-kik-messenger.html" class="only-mobile" style="cursor:default;"><img class="features-icon i-list-features-" src="{$img}/technological/i-list-features-kik-chat.png" style="width:20px;height:21px;top:4px;" alt="kik messenger can be bad for kids" title="kik messenger can be bad for kids" /></a>
                                            <strong>Kik</strong>
                                            {*<svg width="31" height="31" class="features-icon i-list-features-svg only-pc">*}
                                                {*<use xlink:href="/images/svg-icons.svg#kik"></use>*}
                                            {*</svg>*}
                                            <a href="/monitor-kik-messenger.html" class="only-pc" style="cursor:default;"><img class="features-icon i-list-features-" src="{$img}/technological/i-list-features-kik-chat.png" style="width:25px;height:18px;top:4px;" alt="monitor kik account" title="kik messenger can be bad for kids" /></a>
                                        </li>
                                    </ul>

                                    <div class='block-info'>
                                        <p>
                                            Follow online communication activities. View <b>messages</b> sent and received via popular instant messengers like Skype <em>(up to iOS 8.4.1)</em>, WhatsApp, and Kik <em>(iOS 9.0 and up)</em>.
                                        </p>
                                        <p>
                                            Monitor <b>Skype</b> <em>(up to iOS 8.4.1)</em> and <b>WhatsApp</b> calls.
                                        </p>

                                        <div><a class="btn-orange ga-action-click" ga-action="click" ga-category="demo link" ga-label="all-features-icloud" target="_blank" href="{$schema}demo.{$domain}/setDevice/126?redirect_url=cp/whatsapp">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                            <div class="item-feature-list div-table-column col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-lg-4 text-left">
                                <img style='max-width: 306px' class="image-features model-mobile-center" src='../images/technological/image-messanges-icloud.png' />
                            </div>
                        </div> <!-- #media -->

                        <!-- \\ #6 Browser control: (even) -->
                        <div id="browser_control-ios" class="div-table-row even">
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-right">
                                <img style='max-width: 302px' class="image-features model-mobile-center" src='../images/technological/image-browser.png' />
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-1 col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-left">
                                <div class='feature-item-info'>
                                    <ul>
                                        <li style="position: relative;">
                                            {*<svg width="28" height="28" class="features-icon i-list-features-svg">*}
                                                {*<use xlink:href="/images/svg-icons.svg#browsers"></use>*}
                                            {*</svg>*}
                                            <a href="/browser-parental-control.html" class="only-pc" style="cursor:default;"><img class="features-icon i-list-features-" src="{$img}/technological/icon-browser.png" style="width:23px;height:23px;top:4px;" alt="view browser searches" title="keeping eye on kids browser" /></a>
                                            <strong>Browser control</strong></li>

                                        <li>

                                            <svg width="25" height="25" style="width:25px;" class="features-icon i-list-features-svg">
                                                <use xlink:href="/images/svg-icons.svg#bookmarks"></use>
                                            </svg>
                                            <strong>Bookmarks</strong></li>
                                    </ul>

                                    <div class='block-info'>
                                        <p>Monitor <b>browsing history</b> and view websites visited from the target device. Check <b>bookmarks</b> <em>(up to iOS 8.4.1)</em>.</p>

                                        <div><a class="btn-orange ga-action-click" ga-action="click" ga-category="demo link" ga-label="all-features-icloud" target="_blank"  href="{$schema}demo.{$domain}/setDevice/126?redirect_url=cp/browserHistory">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                        </div>
                        <!-- #browser_control -->

                        {*<div id="browser_control" class="div-table-row odd">
                            <div class="item-feature-list div-table-column col-lg-4 text-right">

                                <div class='feature-item-info'>
                                    <ul>
                                        <li>
                                            <i class='i-list-features-browser only-mobile'></i>
                                            <strong>Browser control</strong>
                                            <i class='i-list-features-browser only-pc'></i>
                                        </li>
                                    </ul>

                                    <div class='block-info'>
                                        <p>Monitor <b>browsing history</b> and view websites visited from the target device. Check <b>bookmarks</b>. <b>Block websites</b> containing inappropriate content.</p>

                                        <div><a class="btn-orange ga-action-click" ga-action="click" ga-category="demo link" ga-label="all-features-icloud" href="{$schema}demo.{$domain}/setDevice/125?redirect_url=cp/browserHistory">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                            <div class="item-feature-list div-table-column col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-lg-4 text-left">
                                <img style='max-width: 302px' class="image-features model-mobile-center" src='../images/technological/image-browser.png' />
                            </div>
                        </div>*}

                       <!-- \\ #11 Photos/Videos: (odd)-->
                       <div id="media-ios" class="div-table-row odd featured-item">
                            <div class="item-feature-list div-table-column col-lg-4">

                                <div class='feature-item-info'>
                                    <ul>
                                        <li>
                                            <svg width="25" height="25" style="width:25px;" class="features-icon i-list-features-svg only-mobile">
                                                <use xlink:href="/images/svg-icons.svg#photos"></use>
                                            </svg>
                                            <strong>Photos</strong>
                                            <svg width="25" height="25" style="width:25px;" class="features-icon i-list-features-svg only-pc">
                                                <use xlink:href="/images/svg-icons.svg#photos"></use>
                                            </svg>
                                        </li>
                                    </ul>

                                    <div class='block-info'>
                                        <p>View each <b>photo</b> file <b>shot by the camera</b> of the target smartphone or <b>downloaded</b> from the Internet. Monitor all multimedia files stored on the target device.</p>

                                        <div><a class="btn-orange ga-action-click" ga-action="click" ga-category="demo link" ga-label="all-features-icloud" target="_blank" href="{$schema}demo.{$domain}/setDevice/126?redirect_url=cp/photos">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                            <div class="item-feature-list div-table-column col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-lg-4 text-left">
                                <img style='max-width: 300px' class="image-features model-mobile-center" src='../images/technological/image-video-and-photos_v2.png' />
                            </div>
                        </div> <!-- #media -->

                       <!-- \\ #7 Email: (even) -->

                        {*<div id="email" class="div-table-row odd">
                            <div class="item-feature-list div-table-column col-lg-4 text-right">

                                <div class='feature-item-info'>
                                    <ul>
                                        <li>
                                            <i class='i-list-features-email only-mobile'></i>
                                            <strong>Email</strong>
                                            <i class='i-list-features-email only-pc'></i>
                                        </li>
                                    </ul>

                                    <div class='block-info'>
                                        <p>View <b>incoming</b>, <b>sent</b> and <b>deleted</b> emails. Find out precise communication data, including <b>names</b>, <b>addresses</b> and writing <b>time</b>. Monitor online correspondence, subscriptions and registrations.</p>

                                        <div><a class="btn-orange ga-action-click" ga-action="click" ga-category="demo link" ga-label="all-features-icloud" href="{$schema}demo.{$domain}/setDevice/125?redirect_url=cp/emails">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                            <div class="item-feature-list div-table-column col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-lg-4 text-left">
                                <img style='max-width: 302px' class="image-features model-mobile-center" src='../images/technological/image-email.png' />
                            </div>
                        </div> *}


                        <!-- \\ #8 Calendar/Contacts/Notes: (odd) -->
                        {*<div id="organiser" class="div-table-row odd">*}
                            {*<div class="item-feature-list div-table-column col-lg-4 text-right">*}

                                {*<div class='feature-item-info'>*}
                                    {*<ul>*}
                                        {*<li>*}
                                            {*<i class='i-list-features-calendar only-mobile'></i>*}
                                            {*<strong>Calendar</strong>*}
                                            {*<i class='i-list-features-calendar only-pc'></i>*}
                                        {*</li>*}
                                        {*<li>*}
                                            {*<i class='i-list-features-contacts only-mobile'></i>*}
                                            {*<strong>Contacts</strong>*}
                                            {*<i class='i-list-features-contacts only-pc'></i>*}
                                        {*</li>*}
                                        {*<li>*}
                                            {*<i class='i-list-features-notes only-mobile'></i>*}
                                            {*<strong>Notes</strong>*}
                                            {*<i class='i-list-features-notes only-pc'></i>*}
                                        {*</li>*}
                                    {*</ul>*}

                                    {*<div class='block-info'>*}
                                        {*<p>View Notes on iPhones, iPads, and iPods Touch. Find out <b>plans</b> and <b>intentions</b>. Follow <b>important information, to-do lists</b>, as well as written down <b>thoughts</b>.</p>*}

                                        {*<div><a class="btn-orange ga-action-click" ga-action="click" ga-category="demo link" ga-label="all-features-icloud" target="_blank" href="{$schema}demo.{$domain}/setDevice/125?redirect_url=cp/calendar">View Demo</a></div>*}
                                        {**}
                                    {*</div>*}
                                {*</div>*}

                            {*</div>*}
                            {*<div class="item-feature-list div-table-column col-lg-1 text-center">*}
                                {*<div class='box-line-solid only-pc'>*}
                                    {*<i class='i-bubble'></i>*}
                                    {*<span class='box-solid-1'></span>*}
                                {*</div>*}
                            {*</div>*}
                            {*<div class="item-feature-list div-table-column col-lg-4 text-left">*}
                                {*<img style='max-width: 302px' class="image-features model-mobile-center" src='../images/technological/image-calendar-and-contacts.png' />*}
                            {*</div>*}
                        {*</div> <!-- #organiser -->*}



                        <div id="organiser-ios" class="div-table-row even">
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-right">
                                <img style='max-width: 302px' class="image-features model-mobile-center" src='../images/technological/image-calendar-and-contacts.png' />
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-1 col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-left">

                                <div class='feature-item-info'>
                                    <ul>
                                        <li>
                                            <svg width="21" height="21" style="width:25px;" class="features-icon i-list-features-svg">
                                                <use xlink:href="/images/svg-icons.svg#calendar"></use>
                                            </svg>
                                            <strong>Calendar</strong>
                                        </li>
                                        <li style="position: relative;">
                                            <a href="/monitor-phone-contacts.html" style="cursor: default;">
                                            <img class="features-icon i-list-features-" src="{$img}/technological/i-list-features-contacts.png" style="width:21px;height:21px;top:4px;" alt="phone contacts monitoring" title="know your kids cell phone contacts" />
                                            </a>
                                            {*<svg width="25" height="25" style="width:25px;" class="features-icon i-list-features-svg">*}
                                                {*<use xlink:href="/images/svg-icons.svg#contacts"></use>*}
                                            {*</svg>*}
                                            <strong>Contacts</strong>
                                        </li>
                                        <li style="position: relative;">
                                            <img class="features-icon i-list-features-" src="{$img}/technological/i-list-features-notes.png" style="width:21px;height:21px;top:4px;margin-left: -53px;" alt="" title="" />
                                            {*<svg width="21" height="21" style="width:25px;" class="features-icon i-list-features-svg">*}
                                                {*<use xlink:href="/images/svg-icons.svg#notes"></use>*}
                                            {*</svg>*}
                                            <strong>Notes</strong>
                                        </li>
                                    </ul>
                                    <div class='block-info'>
                                        <p>View Notes on iPhones, iPads, and iPods Touch <em>(up to iOS 8.4.1)</em>. Find out <b>plans</b> and <b>intentions</b>. Follow <b>important information</b>, <b>to-do lists</b>, as well as written down <b>thoughts</b>.</p>

                                        <div><a class="btn-orange ga-action-click" ga-action="click" ga-category="demo link" ga-label="all-features-icloud" href="{$schema}demo.{$domain}/setDevice/126?redirect_url=cp/calendar">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                        </div>

                        <!-- \\ #9 Keylogger: (even) -->
                        {*<div id="keylogger" class="div-table-row even">*}
                            {*<div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-right">*}
                                {*<img style='max-width: 304px' class="image-features model-mobile-center" src='../images/technological/image-keylogger.png' />*}
                            {*</div>*}
                            {*<div class="item-feature-list div-table-column col-sm-12 col-md-1 col-lg-1 text-center">*}
                                {*<div class='box-line-solid only-pc'>*}
                                    {*<i class='i-bubble'></i>*}
                                    {*<span class='box-solid-1'></span>*}
                                {*</div>*}
                            {*</div>*}
                            {*<div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-left">*}
                                {*<div class='feature-item-info'>*}
                                    {*<ul>*}
                                        {*<li><i class='i-list-features-keylogger'></i><strong>Keylogger</strong></li>*}
                                    {*</ul>*}

                                    {*<div class='block-info'>*}
                                        {*<p>Keep track of <b>each keystroke typed</b> and every tap on the touchscreen of the target device. Follow <b>logins</b> and <b>passwords</b>, as well as texts written in the browser in <b>incognito mode</b>. Monitor typed messages <b>in any app</b>.</p>*}

                                        {*<div><a class="btn-orange ga-action-click" ga-action="click" ga-category="demo link" ga-label="all-features-icloud" target="_blank"  href="{$schema}demo.{$domain}/setDevice/125?redirect_url=cp/keylogger">View Demo</a></div>*}
                                        {**}
                                    {*</div>*}
                                {*</div>*}

                            {*</div>*}
                        {*</div> <!-- #keylogger -->*}

                        {*<div id="keylogger" class="div-table-row odd">
                            <div class="item-feature-list div-table-column col-lg-4 text-right">

                                <div class='feature-item-info'>
                                    <ul>
                                        <li>
                                            <i class='i-list-features-keylogger only-mobile'></i>
                                            <strong> Keylogger </strong>
                                            <i class='i-list-features-keylogger only-pc'></i>
                                        </li>
                                    </ul>

                                    <div class='block-info'>
                                        <p>Keep track of <b>each keystroke typed</b> and every tap on the touchscreen of the target device. Follow <b>logins</b> and <b>passwords</b>, as well as words written in browser in <b>incognito mode</b>. Monitor texts written <b>in any app</b>.</p>

                                        <div><a class="btn-orange ga-action-click" ga-action="click" ga-category="demo link" ga-label="all-features-icloud" href="{$schema}demo.{$domain}/setDevice/125?redirect_url=cp/keylogger">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                            <div class="item-feature-list div-table-column col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-lg-4 text-left">
                                <img style='max-width: 304px' class="image-features model-mobile-center" src='../images/technological/image-keylogger.png' />
                            </div>
                        </div>*}

                        <!-- \\ #10 SMS commands: (odd)-->
                        {*<div id="sms_commands" class="div-table-row odd">*}
                            {*<div class="item-feature-list div-table-column col-lg-4 text-right">*}

                                {*<div class='feature-item-info'>*}
                                    {*<ul>*}
                                        {*<li>*}
                                            {*<i class='i-list-features-sms-command only-mobile'></i>*}
                                            {*<strong>SMS commands</strong>*}
                                            {*<i class='i-list-features-sms-command only-pc'></i>*}
                                        {*</li>*}
                                    {*</ul>*}

                                    {*<div class='block-info'>*}
                                        {*<p>Control the target device remotely. <b>Lock</b> or <b>wipe</b> it out even <b>without Internet connection</b>. Manipulate the target smartphone or tablet <b>by sending command text messages</b>.</p>*}

                                        {*<div><a class="btn-orange ga-action-click" ga-action="click" ga-category="demo link" ga-label="all-features-icloud" target="_blank"  href="{$schema}demo.{$domain}/setDevice/125?redirect_url=cp/smsCommands">View Demo</a></div>*}
                                        {**}
                                    {*</div>*}
                                {*</div>*}

                            {*</div>*}
                            {*<div class="item-feature-list div-table-column col-lg-1 text-center">*}
                                {*<div class='box-line-solid only-pc'>*}
                                    {*<i class='i-bubble'></i>*}
                                    {*<span class='box-solid-1'></span>*}
                                {*</div>*}
                            {*</div>*}
                            {*<div class="item-feature-list div-table-column col-lg-4 text-left">*}
                                {*<img style='max-width: 187px' class="image-features model-mobile-center" src='../images/technological/image-sms-command.png' />*}
                            {*</div>*}
                        {*</div> <!-- #sms_commands -->*}


                        <!-- \\ #13 Geo-fencing: (odd)-->
                        {*<div id="geo_fencing" class="div-table-row odd">*}
                            {*<div class="item-feature-list div-table-column col-lg-4 text-right">*}

                                {*<div class='feature-item-info'>*}
                                    {*<ul>*}
                                        {*<li>*}
                                            {*<i class='i-list-features-geo-fencing only-mobile'></i>*}
                                            {*<strong>Geo-fencing</strong>*}
                                            {*<i class='i-list-features-geo-fencing only-pc'></i>*}
                                        {*</li>*}
                                    {*</ul>*}

                                    {*<div class='block-info'>*}
                                        {*<p>Define and <b>set specific zones</b> on the <b>map</b>. <b>Receive notifications</b>, once the target device <b>leaves</b> a safe territory or <b>enters a restricted area</b>.</p>*}

                                        {*<div><a class="btn-orange ga-action-click" ga-action="click" ga-category="demo link" ga-label="all-features-icloud" target="_blank"  href="{$schema}demo.{$domain}/setDevice/125?redirect_url=cp/locations">View Demo</a></div>*}
                                        {**}
                                    {*</div>*}
                                {*</div>*}

                            {*</div>*}
                            {*<div class="item-feature-list div-table-column col-lg-1 text-center">*}
                                {*<div class='box-line-solid only-pc'>*}
                                    {*<i class='i-bubble'></i>*}
                                    {*<span class='box-solid-1'></span>*}
                                {*</div>*}
                            {*</div>*}
                            {*<div class="item-feature-list div-table-column col-lg-4 text-left">*}
                                {*<img style='max-width: 381px' class="image-features model-mobile-center" src='../images/technological/image-geo-fencing.png' />*}
                            {*</div>*}
                        {*</div> <!-- #geo_fencing -->*}

                        {*<div id="geo_fencing" class="div-table-row even">
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-right">
                                <img style='max-width: 381px' class="image-features model-mobile-center" src='../images/technological/image-geo-fencing.png' />
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-1 col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-left">

                                <div class='feature-item-info'>
                                    <ul>
                                        <li><i class='i-list-features-geo-fencing'></i><strong>Geo-fencing</strong></li>
                                    </ul>
                                    <div class='block-info'>
                                        <p>Define and <b>set specific zones</b> on the <b>map</b>. <b>Receive notifications</b>, once the target device <b>leaves</b> or <b>enters</b> a restricted area.</p>

                                        <div><a class="btn-orange ga-action-click" ga-action="click" ga-category="demo link" ga-label="all-features-icloud" href="{$schema}demo.{$domain}/setDevice/125?redirect_url=cp/locations">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                        </div>*}

                        <!-- \\ #14 iCloud monitoring: (even) -->

                        {*<div id="icloud" class="div-table-row even">*}
                            {*<div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-right">*}
                                {*<img style='max-width: 284*}{*398*}{*px' class="image-features model-mobile-center" src='../images/technological/image-icloud_v2.png' />*}
                            {*</div>*}
                            {*<div class="item-feature-list div-table-column col-sm-12 col-md-1 col-lg-1 text-center">*}
                                {*<div class='box-line-solid only-pc'>*}
                                    {*<i class='i-bubble'></i>*}
                                    {*<span class='box-solid-1'></span>*}
                                {*</div>*}
                            {*</div>*}
                            {*<div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-left">*}
                                {*<div class='feature-item-info'>*}
                                    {*<ul>*}
                                        {*<li>*}
                                            {*<i class='i-list-features-icloud'></i>*}
                                            {*<strong>*}
                                                {*iCloud*}
                                                {*iCloud monitoring <span class='text-normal'>(jailbreak-free up to iOS {$ver_icloud_up})</span>*}
                                            {*</strong>*}
                                        {*</li>*}
                                    {*</ul>*}

                                    {*<div class='block-info'>*}
                                        {*<ul>*}
                                            {*<li>Track every single email your kid sends or receives.</li>*}
                                            {*<li>Check email correspondence history and prevent you children</li>*}
                                            {*<li>from ambiguous communications and online predators.</li>*}
                                        {*</ul>*}
                                        {*<p>Enjoy Pumpic application on iPhones, iPads and iPods Touch with no need to jailbreak the target device.*}
                                            {*Supported features:</p>*}
                                        {*<ul>*}
                                            {*<li><span class="block ltr">Text message monitoring <br /><span class='text-normal'>&lpar;SMS, MMS, and iMessages&rpar;</span></span></li>*}
                                            {*<li>Deleted SMS (previously backed up)</li>*}
                                            {*<li>Call monitoring</li>*}
                                            {*<li>Contact list</li>*}
                                            {*<li>Browsing history</li>*}
                                            {*<li>Bookmarks list (up to iOS 8.4.1)</li>*}
                                            {*<li>Calendar events</li>*}
                                            {*<li>Location History</li>*}
                                            {*<li>Photos</li>*}
                                            {*<li>Notes (up to iOS 8.4.1)</li>*}
                                            {*<li>Kik (from 9.0 and up)</li>*}
                                            {*<li>WhatsApp</li>*}
                                            {*<li>Skype (up to iOS 8.4.1)</li>*}
                                        {*</ul>*}
                                        {*<div><a class="btn-orange ga-action-click" ga-action="click" ga-category="demo link" ga-label="all-features-icloud" target="_blank"  href="{$schema}demo.{$domain}/setDevice/126?redirect_url=cp/call">View Demo</a></div>*}
                                        {**}
                                    {*</div>*}
                                {*</div>*}

                            {*</div>*}
                        {*</div> <!-- #icloud -->*}

                        {*<div id="icloud" class="div-table-row odd">
                            <div class="item-feature-list div-table-column col-lg-4 text-right">

                                <div class='feature-item-info'>
                                    <ul>
                                        <li>
                                            <i class='i-list-features-icloud only-mobile'></i>
                                            <strong>iCloud monitoring <span class='text-normal'>(jailbreak-free)</span></strong>
                                            <i class='i-list-features-icloud only-pc'></i>
                                        </li>
                                    </ul>

                                    <div class='block-info'>
                                        <p>Enjoy Pumpic application on iPhones, iPads and iPods Touch with no need to jailbreak the target device.
                                            Supported features:</p>
                                        <ul>
                                            <li><span class="block ltr">Text message monitoring <br /><span class='text-normal'>&lpar;SMS, MMS, and iMessages&rpar;</span></span></li>
                                            <li>Call monitoring</li>
                                            <li>Contact list</li>
                                            <li>Browsing history</li>
                                            <li>Bookmarks list</li>
                                            <li>Calendar events</li>
                                            <li>Photos</li>
                                            <li>Notes</li>
                                            <li>WhatsApp</li>
                                            <li>Skype</li>
                                        </ul>
                                        <div><a class="btn-orange ga-action-click" ga-action="click" ga-category="demo link" ga-label="all-features-icloud" href="{$schema}demo.{$domain}/setDevice/126?redirect_url=cp/call">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                            <div class="item-feature-list div-table-column col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-lg-4 text-left">
                                <img style='max-width: 398px' class="image-features model-mobile-center" src='../images/technological/image-icloud.png' />
                            </div>
                        </div> *}

                        <!-- \\ #15 Other features: (odd) -->
                        {*<div id="other_features" class="div-table-row odd">*}
                            {*<div class="item-feature-list div-table-column col-lg-4 text-right">*}

                                {*<div class='feature-item-info'>*}
                                    {*<ul>*}
                                        {*<li>*}
                                            {*<i class='i-list-features-sim-change only-mobile'></i>*}
                                            {*<strong>Other features</strong>*}
                                            {*<i class='i-list-features-sim-change only-pc'></i>*}
                                        {*</li>*}
                                    {*</ul>*}

                                    {*<div class='block-info'>*}
                                         {*<ul>*}
                                            {*<li>Receive notifications when a SIM card is changed</li>*}
                                            {*<li>Reboot the target device or the applications remotely</li>*}
                                            {*<li>Protect Pumpic app with a password from being removed</li>*}
                                            {*<li>Lock the target device and control its activity remotely</li>*}
                                        {*</ul>*}
                                        {*<div><a class="btn-orange ga-action-click" ga-action="click" ga-category="demo link" ga-label="all-features-icloud" target="_blank"  href="{$schema}demo.{$domain}/setDevice/125?redirect_url=cp/settings">View Demo</a></div>*}
                                        {**}
                                    {*</div>*}
                                {*</div>*}

                            {*</div>*}
                            {*<div class="item-feature-list div-table-column col-lg-1 text-center">*}
                                {*<div class='box-line-solid only-pc'>*}
                                    {*<i class='i-bubble'></i>*}
                                    {*<span class='box-solid-1'></span>*}
                                {*</div>*}
                            {*</div>*}
                            {*<div class="item-feature-list div-table-column col-lg-4 text-left">*}
                                {*<img style='max-width: 167px' class="image-features model-mobile-center" src='../images/technological/image-sim-change.png' />*}
                            {*</div>*}
                        {*</div> <!-- #other_features -->*}

                        {*<div id="other_features" class="div-table-row even">
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-right">
                                <img style='max-width: 167px' class="image-features model-mobile-center" src='../images/technological/image-sim-change.png' />
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-1 col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-left">

                                <div class='feature-item-info'>
                                    <ul>
                                        <li>
                                            <i class='i-list-features-sim-change'></i>
                                            <strong>Other features</strong>
                                            <!-- <ul>
                                                <li><strong>Sim change notification</strong></li>
                                                <li><strong>Reboot application</strong></li>
                                                <li><strong>Reboot device</strong></li>
                                            </ul> -->

                                        </li>
                                    </ul>
                                    <div class='block-info'>
                                        <ul>
                                            <li>Receive notifications on a SIM card change</li>
                                            <li>Reboot the target device or the applications remotely</li>
                                            <li>Protect Pumpic app with a password from being removed</li>
                                            <li>Lock the target device and control its activity remotely</li>
                                        </ul>
                                        <div><a class="btn-orange ga-action-click" ga-action="click" ga-category="demo link" ga-label="all-features-icloud" href="{$schema}demo.{$domain}/setDevice/125?redirect_url=cp/settings">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                        </div>*}



                    </div>
                    <!-- \\ end -->

                    <!-- \\ #button all -->
                    <div id='box-features-list' class="div-table col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <div class="div-table-row">
                            <div class="item item-buttom div-table-column col-sm-12 col-md-4 col-lg-4 text-right"></div>
                            <div class="item item-buttom div-table-column col-sm-12 col-md-3 col-lg-2 text-center">

                                <div class='box-all-features'>
                                    <a class='btn-red{*btn-green*} ga-action-click'
                                       href='/store.html'
                                       ga-category="store link"
                                       ga-action="click"
                                       ga-label="all-features-icloud">Try now!</a>
                                </div>
                                {*<div class='box-line-solid only-pc'>
                                    <span class='box-solid-1'></span>
                                </div>*}

                            </div>
                            <div class="item item-buttom div-table-column col-sm-12 col-md-4 col-lg-4 text-left"></div>
                        </div>
                    </div>

                    <!-- \\ coming soon -->
                    {*<div id='box-coming-soon-list' class="div-table col-md-12 col-lg-12">

                        <!-- \\ coming soon -->
                        <div class="div-table-row">
                            <div class="item div-table-column col-sm-12 col-md-4 col-lg-4 text-right"></div>
                            <div class="item div-table-column col-sm-12 col-md-4 col-lg-2 text-center">

                                <h2 class='color-orange'>Coming soon:</h2>

                            </div>
                            <div class="item div-table-column col-sm-12 col-md-4 col-lg-4 text-left"></div>
                        </div>

                    </div>
                    <div id='box-coming-soon-list' class="div-table col-sm-12 col-md-12 col-lg-12">
                        <div class="div-table-row">

                            <div class="item item-bottom div-table-column col-sm-12 col-md-4 col-lg-4 text-right">

                                <dl class="table-rows block-right">
                                    <dt class="table-column"><i class='i-coming-soon-instagram t10 only-mobile'></i></dt>
                                    <dd class="table-column">
                                        <strong>instagram</strong>
                                        <p>(see what is picctures and comment)</p>
                                    </dd>
                                    <dt class="table-column"><i class='i-coming-soon-instagram t10 only-pc'></i></dt>
                                </dl>
                                <dl class="table-rows block-right">
                                    <dt class="table-column"><i class='i-coming-soon-applications ml10 t10 only-mobile'></i></dt>
                                    <dd class="table-column">
                                        <strong>applications management</strong>
                                        <p>(limit time of usage of any app)</p>
                                    </dd>
                                    <dt class="table-column"><i class='i-coming-soon-applications t10 only-pc'></i></dt>
                                </dl>

                            </div>
                            <div class="item item-bottom div-table-column col-sm-12 col-md-1 col-lg-1 text-center">

                                <div class='box-line-solid only-pc'>
                                    <span class='box-dashed-1'></span>
                                </div>

                            </div>
                            <div class="item item-bottom div-table-column col-sm-12 col-md-4 col-lg-4 text-left">

                                <dl class="table-rows block-left">
                                    <dt class="table-column"><i class='i-coming-soon-geo-fencing t10'></i></dt>
                                    <dd class="table-column">
                                        <strong>geo-fencing</strong>
                                        <p>(define zones on the map and receive alerts when monitored device enters and leave these zones)</p>
                                    </dd>

                                </dl>
                                <dl class="table-rows block-left">
                                    <dt class="table-column"><i class='i-coming-soon-icloud t5'></i></dt>
                                    <dd class="table-column">
                                        <strong>iCloud</strong>
                                        <p>(iPhone without jailbreak)</p>
                                    </dd>

                                </dl>

                            </div>
                        </div>


                    </div>*}


                </div>




            </div>
            {* FEATURES IOS END *}
            {*FEATURES ANDROID*}
            <div class="container _features-content" data-feature="os-android" style="display: none;">

                <div class='row'>
                    <h2 class="text-center box-features-list-title">Features</h2>

                    <!-- \\ list -->
                    <div id='box-features-list' class="div-table col-sm-12 col-md-12 col-lg-12">

                        <!-- \\ #2 Calls: (even)-->
                        <div id="calls-android" class="div-table-row even">
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-right">
                                <img style='max-width: 302px' class="image-features model-mobile-center" src='../images/technological/image-call.png' />
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-1 col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-left">

                                <div class='feature-item-info'>
                                    <ul>
                                        <li>
                                            <svg width="31" height="31" class="features-icon i-list-features-svg">
                                                <use xlink:href="/images/svg-icons.svg#calls"></use>
                                            </svg>
                                            <strong>Calls</strong></li>
                                    </ul>
                                    <div class='block-info'>
                                        <p>Follow <b>incoming</b> and <b>outgoing</b> call logs with precise contact data including <b>name</b>, <b>number</b>, <b>time</b> of the call and its <b>duration</b>. Find out who reaches the target phone, at what time and for how long.</p>

                                        <div><a class="btn-orange ga-action-click"
                                                target="_blank"
                                                ga-category="demo link"
                                                ga-action="click"
                                                ga-label="all-features-android"
                                                href="{$schema}demo.{$domain}/setDevice/125?redirect_url=cp/calls">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                        </div>

                        <!-- \\ #3 SMS: (odd) -->
                        <div id="sms-android" class="div-table-row odd featured-item">
                            <div class="item-feature-list div-table-column col-lg-4">

                                <div class='feature-item-info'>
                                    <ul>
                                        <li>
                                            <svg width="31" height="31" class="features-icon i-list-features-svg only-mobile">
                                                <use xlink:href="/images/svg-icons.svg#texts"></use>
                                            </svg>
                                            <strong>SMS and MMS</strong>
                                            <svg width="31" height="31" class="features-icon i-list-features-svg only-pc">
                                                <use xlink:href="/images/svg-icons.svg#texts"></use>
                                            </svg>
                                        </li>
                                    </ul>
                                    <div class='block-info'>
                                        <p>Monitor <b>sent, received</b>, and <b>deleted text</b> content of SMS and MMS. View data on both a sender and recipient. <b>Block</b> text messages by a <b>phone number</b> <em>(up to Android 5.1.1)</em>, <b>words</b>, or <b>phrases</b> <em>(up to Android 4.4.4)</em>. <b>Limit</b> the number of <b>texts sent daily</b> <em>(Pumpic keyboard activation required)</em>.</p>
                                        {*<ul>
                                            <li>Use Pumpic app to follow the entire call history of your</li>
                                            <li>child’s device. Protect your kids from mistrusted people.</li>
                                            <li>View a caller’s data including the name and phone number,</li>
                                            <li>the time when a call was received and duration of the </li>
                                            <li>conversation</li>
                                        </ul>*}
                                        <div><a class="btn-orange ga-action-click"
                                                target="_blank"
                                                ga-category="demo link"
                                                ga-action="click"
                                                ga-label="all-features-android" href="{$schema}demo.{$domain}/setDevice/125?redirect_url=cp/sms">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                            <div class="item-feature-list div-table-column col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-lg-4 text-left">
                                <img style='max-width: 302px' class="image-features model-mobile-center" src='../images/technological/image-sms.png' />
                            </div>
                        </div>

                        <!-- \\ #1 Location: (even) -->
                        <div id="location-android" class="div-table-row even">
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-right">
                                <img style='max-width: 380px' class="image-features model-mobile-center" src='../images/technological/image-location-history.png' />
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-1 col-lg-1 text-center">
                                {*<i class='i-bubble'></i>*}
                                {*<div class='box-solid-1'></div>*}

                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-left">

                                <div class='feature-item-info'>
                                    <ul>
                                        <li style="position: relative;">
                                            <a href="/gps-and-geofencing.html" style="cursor:default;"><img class="features-icon i-list-features-" src="{$img}/technological/header/icon/icon-location-history.png" style="width:21px;height:28px;top:4px;" alt="geofence feature" title="gps for knowing kids location" /></a>
                                            {*<svg width="31" height="31" class="features-icon i-list-features-svg">*}
                                                {*<use xlink:href="/images/svg-icons.svg#location"></use>*}
                                            {*</svg>*}
                                            <strong> Location</strong></li>
                                    </ul>
                                    <div class='block-info'>
                                        <p>Instantly <b>locate</b> the target device <b>on the map</b>. Keep track of current position as well as the <b>entire route history</b> by using GPS. Find the target device, if lost or stolen.</p>
                                        {*<ul>
                                            <li>Pumpic allows you to tell the exact location of your children. </li>
                                            <li>Find your children by using GPS. The application identifies the current position together with the
                                                precise route of recent movements.</li>
                                        </ul>*}
                                        <div><a class="btn-orange ga-action-click"
                                                target="_blank"
                                                ga-category="demo link"
                                                ga-action="click"
                                                ga-label="all-features-android" href="{$schema}demo.{$domain}/setDevice/125?redirect_url=cp/locations">View Demo</a></div>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <!-- \\ #4 Applications: (odd) -->
                        <div id="applications-android" class="div-table-row odd featured-item">
                            <div class="item-feature-list div-table-column col-lg-4">

                                <div class='feature-item-info'>
                                    <ul>
                                        <li>
                                            <a href="/block-apps.html" class="only-mobile" style="cursor:default;"><img class="features-icon i-list-features-" src="{$img}/technological/header/icon/icon-location-history.png" style="width:21px;height:28px;top:4px;" alt=" block calls on smartphones" title="stopping unwanted or suspicious calls" /></a>
                                            {*<svg width="31" height="31" class="features-icon i-list-features-svg only-mobile">*}
                                                {*<use xlink:href="/images/svg-icons.svg#application"></use>*}
                                            {*</svg>*}
                                            <strong>Applications</strong>
                                            <a href="/block-apps.html" class="only-pc" style="cursor:default;"><img class="features-icon i-list-features-" src="{$img}/technological/i-list-features-applications.png" style="width:28px;height:28px;top:4px;" alt="block calls on smartphones" title="stopping unwanted or suspicious calls" /></a>
                                            {*<svg width="31" height="31" class="features-icon i-list-features-svg only-pc">*}
                                                {*<use xlink:href="/images/svg-icons.svg#application"></use>*}
                                            {*</svg>*}
                                        </li>
                                    </ul>

                                    <div class='block-info'>
                                        <p>Keep track of <b>applications installed</b> on the target device. <b>Block</b> and <b>set time limits</b> on running particular apps.</p>

                                        <div><a class="btn-orange ga-action-click"
                                                target="_blank"
                                                ga-category="demo link"
                                                ga-action="click"
                                                ga-label="all-features-android"
                                                href="{$schema}demo.{$domain}/setDevice/125?redirect_url=cp/applications">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                            <div class="item-feature-list div-table-column col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-lg-4 text-left">
                                <img style='max-width: 326px' class="image-features model-mobile-center" src='../images/technological/image-applications.png' />
                            </div>
                        </div>

                        {*<div class="div-table-row odd">
                            <div class="item-feature-list div-table-column col-lg-4 text-right">

                                <div class='feature-item-info'>
                                    <ul>
                                        <li>
                                            <i class='i-list-features-photos only-mobile'></i>
                                            <strong>Photos</strong>
                                            <i class='i-list-features-photos only-pc'></i>
                                        </li>
                                        <li>
                                            <i class='i-list-features-video only-mobile'></i>
                                            <strong>Videos</strong>
                                            <i class='i-list-features-video only-pc'></i>
                                        </li>
                                    </ul>

                                    <div class='block-info'>
                                        <p>View each <b>photo</b> or <b>video</b> shot <b>by the camera</b> of the target smartphone or <b>downloaded</b> from the Internet. Monitor all multimedia files stored on the target device.</p>

                                        <div><a class="btn-orange" href="{$schema}demo.{$domain}/setDevice/125?redirect_url=cp/photos">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                            <div class="item-feature-list div-table-column col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-lg-4 text-left">
                                <img style='max-width: 300px' class="image-features model-mobile-center" src='../images/technological/image-video-and-photos.png' />
                            </div>
                        </div>*}

                        <!-- \\ #5 Facebook IM/Viber/Skype/WhatsApp: (even) -->
                        <div id="social-android" class="div-table-row even">
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-right">
                                <img style='max-width: 306px' class="image-features model-mobile-center" src='../images/technological/image-messanges.png' />
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-1 col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-left">
                                <div class='feature-item-info'>
                                    <ul>
                                        <li style="position: relative;">
                                            <img class="features-icon i-list-features-" src="{$img}/technological/i-list-features-facebook.png" style="width:12px;height:22px;top:4px;" alt="" title="" />
                                            {*<svg width="21" height="21" class="features-icon i-list-features-svg">*}
                                                {*<use xlink:href="/images/svg-icons.svg#facebook"></use>*}
                                            {*</svg>*}
                                            <strong>Facebook IM</strong></li>
                                        <li style="position: relative;">
                                            <a href="/monitor-viber.html" style="cursor:default;"><img class="features-icon i-list-features-" src="{$img}/technological/i-list-features-viber.png" style="width:21px;height:21px;top:4px;" alt="parental viber monitoring" title="track viber messages on smartphones" /></a>
                                            {*<svg width="21" height="21" class="features-icon i-list-features-svg">*}
                                                {*<use xlink:href="/images/svg-icons.svg#viber"></use>*}
                                            {*</svg>*}
                                            <strong>Viber</strong></li>
                                        <li style="position: relative;">
                                            <a href="/monitor-skype.html" style="cursor:default;"><img class="features-icon i-list-features-" src="{$img}/technological/i-list-features-skype.png" style="width:21px;height:21px;top:4px;" alt="monitor skype chats" title="skype calls can be viewed by parents" /></a>
                                            {*<svg width="31" height="31" class="features-icon i-list-features-svg">*}
                                                {*<use xlink:href="/images/svg-icons.svg#skype"></use>*}
                                            {*</svg>*}
                                            <strong>Skype</strong></li>
                                        <li style="position: relative;">
                                            <a href="/monitor-snapchat.html" style="cursor:default;"><img class="features-icon i-list-features-" src="{$img}/technological/i-list-features-snapchat.png" style="width:21px;height:21px;top:4px;" alt="snapchat monitoring for parents" title="how to monitor your kids snapchat" /></a>
                                            {*<svg width="21" height="21" class="features-icon i-list-features-svg">*}
                                                {*<use xlink:href="/images/svg-icons.svg#snapchat"></use>*}
                                            {*</svg>*}
                                            <strong>Snapchat</strong></li>
                                        <li style="position: relative;">
                                            <img class="features-icon i-list-features-" src="{$img}/technological/i-list-features-whatsapp.png" style="width:21px;height:21px;top:4px;" alt="" title="" />
                                            {*<svg width="21" height="21" class="features-icon i-list-features-svg">*}
                                                {*<use xlink:href="/images/svg-icons.svg#chats"></use>*}
                                            {*</svg>*}
                                            <strong>WhatsApp</strong></li>
                                        <li style="position: relative;">
                                            <img class="features-icon i-list-features-" src="{$img}/technological/i-list-features-kik-chat.png" style="width:25px;height:18px;top:4px;" alt="" title="" />
                                            {*<svg width="21" height="21" class="features-icon i-list-features-svg">*}
                                                {*<use xlink:href="/images/svg-icons.svg#kik"></use>*}
                                            {*</svg>*}
                                            <strong>Kik</strong></li>
                                    </ul>

                                    <div class='block-info'>
                                        <p>
                                            <em>Root required</em>
                                        </p>
                                        <p>
                                            Follow online communication activities. View <b>messages</b> sent and received via popular instant messengers like Facebook Messenger, Snapchat <em>(text limited monitoring)</em>, Viber, Skype, WhatsApp, and Kik.
                                        </p>
                                        <p>Monitor <b>Skype</b>, <b>WhatsApp</b>, and <b>Facebook</b> calls.</p>

                                        {*<ul>
                                            <li>Pumpic allows you to monitor your child’s device activity in</li>
                                            <li>the most widely used communication applications like</li>
                                            <li>WhatsApp, Viber and Skype. Prevent your children from</li>
                                            <li>conversations with misgiving people.</li>
                                        </ul>*}
                                        <div><a class="btn-orange ga-action-click"
                                                target="_blank"
                                                ga-category="demo link"
                                                ga-action="click"
                                                ga-label="all-features-android"
                                                href="{$schema}demo.{$domain}/setDevice/125?redirect_url=cp/facebook">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                        </div>
                        <div id="instagram-android" class="div-table-row odd featured-item">
                            <div class="item-feature-list div-table-column col-lg-4">

                                <div class='feature-item-info'>
                                    <ul>
                                        <li style="position: relative;">
                                            <a href="/parental-control-for-instagram.html" class="only-mobile" style="cursor:default;"><img class="features-icon i-list-features-" src="{$img}/technological/i-list-features-instagram.png" style="width:21px;height:21px;top:4px;" alt="instagram monitoring app" title="how to monitor instagram activity" /></a>
                                            {*<svg width="31" height="31" class="features-icon i-list-features-svg only-mobile">*}
                                                {*<use xlink:href="/images/svg-icons.svg#instagram"></use>*}
                                            {*</svg>*}
                                            <strong>Instagram</strong>
                                            <a href="/parental-control-for-instagram.html" class="only-pc" style="cursor:default;"><img class="features-icon i-list-features-" src="{$img}/technological/i-list-features-instagram.png" style="width:21px;height:21px;top:4px;" alt="instagram monitoring app" title="how to monitor instagram activity" /></a>
                                            {*<svg width="31" height="31" class="features-icon i-list-features-svg only-pc">*}
                                                {*<use xlink:href="/images/svg-icons.svg#instagram"></use>*}
                                            {*</svg>*}
                                        </li>
                                    </ul>

                                    <div class='block-info'>
                                        <p>Follow Instagram activity. View all <b>photos</b> and <b>videos</b> uploaded, as well as comments posted below.</p>

                                        <div><a class="btn-orange ga-action-click"
                                                target="_blank"
                                                ga-category="demo link"
                                                ga-action="click"
                                                ga-label="all-features-android"
                                                href="{$schema}demo.{$domain}/setDevice/125?redirect_url=cp/instagram">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                            <div class="item-feature-list div-table-column col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-lg-4 text-left">
                                <img style='max-width: 302px' class="image-features model-mobile-center" src='../images/technological/image-instagram.png' />
                            </div>
                        </div>


                        <!-- \\ #6 Browser control: (even) -->
                        <div id="browser_control-android" class="div-table-row even">
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-right">
                                <img style='max-width: 302px' class="image-features model-mobile-center" src='../images/technological/image-browser.png' />
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-1 col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-left">
                                <div class='feature-item-info'>
                                    <ul>
                                        <li>
                                            <img class="features-icon i-list-features-" src="{$img}/technological/icon-browser.png" style="width:25px;height:25px;top:4px;" alt="" title="" />
                                            {*<svg width="31" height="31" class="features-icon i-list-features-svg">*}
                                                {*<use xlink:href="/images/svg-icons.svg#browsers"></use>*}
                                            {*</svg>*}
                                            <strong>Browser control</strong>
                                        </li>
                                    </ul>

                                    <div class='block-info'>
                                        <p><em>Root required starting from Android 6.0</em></p>
                                        <p>Monitor <b>browsing history</b> and view websites visited from the target device. Check <b>bookmarks</b>. <b>Block websites</b> containing inappropriate content.</p>

                                        <div><a class="btn-orange ga-action-click"
                                                target="_blank"
                                                ga-category="demo link"
                                                ga-action="click"
                                                ga-label="all-features-android"
                                                href="{$schema}demo.{$domain}/setDevice/125?redirect_url=cp/browserHistory">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                        </div> <!-- #browser_control -->
{*
                        <div id="browser_control-android" class="div-table-row odd featured-item">
                            <div class="item-feature-list div-table-column col-lg-4">

                                <div class='feature-item-info'>
                                    <ul>
                                        <li>
                                            <i class='i-list-features-browser only-mobile'></i>
                                            <strong>Browser control</strong>
                                            <i class='i-list-features-browser only-pc'></i>
                                        </li>
                                    </ul>

                                    <div class='block-info'>
                                        <p><em>Root required starting from Android 6.0</em></p>
                                        <p>Monitor <b>browsing history</b> and view websites visited from the target device. Check <b>bookmarks</b>. <b>Block websites</b> containing inappropriate content.</p>

                                        <div><a class="btn-orange ga-action-click"
                                                target="_blank"
                                                ga-category="demo link"
                                                ga-action="click"
                                                ga-label="all-features-android"
                                                href="{$schema}demo.{$domain}/setDevice/125?redirect_url=cp/browserHistory">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                            <div class="item-feature-list div-table-column col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-lg-4 text-left">
                                <img style='max-width: 302px' class="image-features model-mobile-center" src='../images/technological/image-browser.png' />
                            </div>
                        </div>
*}
                        <!-- \\ #11 Photos/Videos: (odd)-->
                        <div id="media-android" class="div-table-row odd featured-item">
                            <div class="item-feature-list div-table-column col-lg-4">

                                <div class='feature-item-info'>
                                    <ul>
                                        <li>
                                            <img class="features-icon i-list-features- only-mobile" src="{$img}/technological/i-list-features-photos.png" style="width:29px;height:24px;top:4px;" alt="" title="" />
                                            {*<svg width="31" height="31" class="features-icon i-list-features-svg only-mobile">*}
                                                {*<use xlink:href="/images/svg-icons.svg#photos"></use>*}
                                            {*</svg>*}
                                            <strong>Photos</strong>
                                            <img class="features-icon i-list-features- only-pc" src="{$img}/technological/i-list-features-photos.png" style="width:29px;height:24px;top:4px;" alt="" title="" />
                                            {*<svg width="31" height="31" class="features-icon i-list-features-svg only-pc">*}
                                                {*<use xlink:href="/images/svg-icons.svg#photos"></use>*}
                                            {*</svg>*}
                                        </li>
                                        <li style="position: relative;">
                                            <img class="features-icon i-list-features- only-mobile" src="{$img}/technological/i-list-features-video.png" style="width:29px;height:20px;top:4px;" alt="" title="" />
                                            {*<svg width="31" height="31" class="features-icon i-list-features-svg only-mobile">*}
                                                {*<use xlink:href="/images/svg-icons.svg#video"></use>*}
                                            {*</svg>*}
                                            <strong>Videos</strong>
                                            <img class="features-icon i-list-features- only-pc" src="{$img}/technological/i-list-features-video.png" style="width:29px;height:20px;top:4px;" alt="" title="" />
                                            {*<svg width="31" height="31" class="features-icon i-list-features-svg only-pc">*}
                                                {*<use xlink:href="/images/svg-icons.svg#video"></use>*}
                                            {*</svg>*}
                                        </li>
                                    </ul>

                                    <div class='block-info'>
                                        <p>View each <b>photo</b> or <b>video</b> file <b>shot by the camera</b> of the target smartphone or <b>downloaded</b> from the Internet. Monitor all multimedia files stored on the target device.</p>

                                        <div><a class="btn-orange ga-action-click"
                                                target="_blank"
                                                ga-category="demo link"
                                                ga-action="click"
                                                ga-label="all-features-android"
                                                href="{$schema}demo.{$domain}/setDevice/125?redirect_url=cp/photos">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                            <div class="item-feature-list div-table-column col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-lg-4 text-left">
                                <img style='max-width: 300px' class="image-features model-mobile-center" src='../images/technological/image-video-and-photos_v2.png' />
                            </div>
                        </div> <!-- #media -->
{*
                        <div id="media-android" class="div-table-row even">
                             <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-right">
                                 <img style='max-width: 300px' class="image-features model-mobile-center" src='../images/technological/image-video-and-photos_v2.png' />
                             </div>
                             <div class="item-feature-list div-table-column col-sm-12 col-md-1 col-lg-1 text-center">
                                 <div class='box-line-solid only-pc'>
                                     <i class='i-bubble'></i>
                                     <span class='box-solid-1'></span>
                                 </div>
                             </div>
                             <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-left">

                                 <div class='feature-item-info'>
                                     <ul>
                                         <li><i class='i-list-features-photos'></i><strong>Photos</strong></li>
                                         <li><i class='i-list-features-video'></i><strong>Videos</strong></li>
                                     </ul>
                                     <div class='block-info'>
                                         <p>View each <b>photo</b> or <b>video</b> file <b>shot by the camera</b> of the target smartphone or <b>downloaded</b> from the Internet. Monitor all multimedia files stored on the target device.</p>

                                         <div><a class="btn-orange ga-action-click"
                                                target="_blank"
                                                ga-category="demo link"
                                                ga-action="click"
                                                ga-label="all-features-android"
                                                href="{$schema}demo.{$domain}/setDevice/125?redirect_url=cp/photos">View Demo</a></div>

                                     </div>
                                 </div>

                             </div>
                         </div>
*}
                        <!-- \\ #7 Email: (even) -->

                        <div id="email-android" class="div-table-row even">
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-right">
                                <img style='max-width: 302px' class="image-features model-mobile-center" src='../images/technological/image-email.png' />
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-1 col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-left">
                                <div class='feature-item-info'>
                                    <ul>
                                        <li>
                                            <a href="/email-monitoring-software.html" style="cursor:default;"><img class="features-icon i-list-features-" src="{$img}/technological/header/icon/icon-email.png" style="width:29px;height:20px;top:4px;" alt="email monitoring solutions" title="parental controls for email" /></a>
                                            {*<svg width="35" height="35" class="features-icon i-list-features-svg">*}
                                                {*<use xlink:href="/images/svg-icons.svg#mail"></use>*}
                                            {*</svg>*}
                                            <strong>Email</strong></li>
                                    </ul>

                                    <div class='block-info'>
                                        <p><em>Root required</em></p>
                                        <p>View <b>incoming</b>, <b>sent</b> and <b>deleted</b> emails. Find out precise communication data, including <b>names</b>, <b>addresses</b> and writing <b>time</b>. Monitor online correspondence, subscriptions, and registrations.</p>

                                        <div><a class="btn-orange ga-action-click"
                                                target="_blank"
                                                ga-category="demo link"
                                                ga-action="click"
                                                ga-label="all-features-android"
                                                href="{$schema}demo.{$domain}/setDevice/125?redirect_url=cp/emails">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                        </div> <!-- #email -->
{*
                        <div id="email-android" class="div-table-row odd featured-item">
                            <div class="item-feature-list div-table-column col-lg-4">

                                <div class='feature-item-info'>
                                    <ul>
                                        <li>
                                            <i class='i-list-features-email only-mobile'></i>
                                            <strong>Email</strong>
                                            <i class='i-list-features-email only-pc'></i>
                                        </li>
                                    </ul>

                                    <div class='block-info'>
                                     <p><em>Root required</em></p>
                                        <p>View <b>incoming</b>, <b>sent</b> and <b>deleted</b> emails. Find out precise communication data, including <b>names</b>, <b>addresses</b> and writing <b>time</b>. Monitor online correspondence, subscriptions and registrations.</p>

                                        <div><a class="btn-orange ga-action-click"
                                                target="_blank"
                                                ga-category="demo link"
                                                ga-action="click"
                                                ga-label="all-features-android"
                                                href="{$schema}demo.{$domain}/setDevice/125?redirect_url=cp/emails">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                            <div class="item-feature-list div-table-column col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-lg-4 text-left">
                                <img style='max-width: 302px' class="image-features model-mobile-center" src='../images/technological/image-email.png' />
                            </div>
                        </div>
*}

                        <!-- \\ #8 Calendar/Contacts/Notes: (odd) -->
                         <div id="organiser-android" class="div-table-row odd featured-item">
                             <div class="item-feature-list div-table-column col-lg-4">

                                 <div class='feature-item-info'>
                                     <ul>
                                         <li style="position: relative;">
                                             <img class="features-icon i-list-features- only-mobile" src="{$img}/technological/i-list-features-calendar.png" style="width:28px;height:28px;top:4px;" alt="" title="" />
                                             {*<svg width="31" height="31" class="features-icon i-list-features-svg only-mobile">*}
                                                 {*<use xlink:href="/images/svg-icons.svg#calendar"></use>*}
                                             {*</svg>*}
                                             <strong>Calendar</strong>
                                             {*<svg width="31" height="31" class="features-icon i-list-features-svg only-pc">*}
                                                 {*<use xlink:href="/images/svg-icons.svg#calendar"></use>*}
                                             {*</svg>*}
                                             <img class="features-icon i-list-features- only-pc" src="{$img}/technological/i-list-features-calendar.png" style="width:28px;height:28px;top:4px;" alt="" title="" />
                                         </li>
                                         <li style="position: relative;">
                                             <img class="features-icon i-list-features- only-mobile" src="{$img}/technological/i-list-features-contacts.png" style="width:26px;height:26px;top:4px;" alt="" title="" />
                                             {*<svg width="31" height="31" class="features-icon i-list-features-svg only-mobile">*}
                                                 {*<use xlink:href="/images/svg-icons.svg#contacts"></use>*}
                                             {*</svg>*}
                                             <strong>Contacts</strong>
                                             <img class="features-icon i-list-features- only-pc" src="{$img}/technological/i-list-features-contacts.png" style="width:26px;height:26px;top:4px;" alt="" title="" />
                                             {*<svg width="31" height="31" class="features-icon i-list-features-svg only-pc">*}
                                                 {*<use xlink:href="/images/svg-icons.svg#contacts"></use>*}
                                             {*</svg>*}
                                         </li>
                                     </ul>

                                     <div class='block-info'>
                                         <p>Find out <b>plans</b> and <b>intentions</b>. Follow <b>important information</b>, <b>to-do lists</b>, as well as written down <b>thoughts</b>.</p>

                                         <div><a class="btn-orange ga-action-click"
                                                 target="_blank"
                                                 ga-category="demo link"
                                                 ga-action="click"
                                                 ga-label="all-features-android"
                                                  href="{$schema}demo.{$domain}/setDevice/125?redirect_url=cp/calendar">View Demo</a></div>

                                     </div>
                                 </div>

                             </div>
                             <div class="item-feature-list div-table-column col-lg-1 text-center">
                                 <div class='box-line-solid only-pc'>
                                     <i class='i-bubble'></i>
                                     <span class='box-solid-1'></span>
                                 </div>
                             </div>
                             <div class="item-feature-list div-table-column col-lg-4 text-left">
                                 <img style='max-width: 302px' class="image-features model-mobile-center" src='../images/technological/image-calendar-and-contacts.png' />
                             </div>
                         </div> <!-- #organiser -->
{*
                        <div id="organiser-android" class="div-table-row even">
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-right">
                                <img style='max-width: 302px' class="image-features model-mobile-center" src='../images/technological/image-calendar-and-contacts.png' />
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-1 col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-left">

                                <div class='feature-item-info'>
                                    <ul>
                                        <li>
                                            <i class='i-list-features-calendar'></i>
                                            <strong>Calendar</strong>
                                        </li>
                                        <li>
                                            <i class='i-list-features-contacts'></i>
                                            <strong>Contacts</strong>
                                        </li>
                                        <li>
                                            <i class='i-list-features-notes'></i>
                                            <strong>Notes</strong>
                                        </li>
                                    </ul>
                                    <div class='block-info'>
                                        <p>Find out <b>plans</b> and <b>intentions</b>. Follow <b>important information</b>, <b>to-do lists</b>, as well as written down <b>thoughts</b>.</p>

                                        <div><a class="btn-orange ga-action-click"
                                                target="_blank"
                                                ga-category="demo link"
                                                ga-action="click"
                                                ga-label="all-features-android"
                                                 href="{$schema}demo.{$domain}/setDevice/125?redirect_url=cp/calendar">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                        </div>
*}
                        <!-- \\ #9 Keylogger: (even) -->

                        <div id="keylogger-android" class="div-table-row even">
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-right">
                                <img style='max-width: 304px' class="image-features model-mobile-center" src='../images/technological/image-keylogger.png' />
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-1 col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-left">
                                <div class='feature-item-info'>
                                    <ul>
                                        <li style="position: relative;">
                                            <a href="/keylogging-software.html" class="only-pc" style="cursor:default;"><img class="features-icon i-list-features-" src="{$img}/technological/icon-keylogger.png" style="width:30px;height:20px;top:4px;" alt="use keylogger options" title="mobile phone keylogger for parents" /></a>
                                            {*<svg width="31" height="31" class="features-icon i-list-features-svg">*}
                                                {*<use xlink:href="/images/svg-icons.svg#keylogger"></use>*}
                                            {*</svg>*}
                                            <strong>Keylogger</strong></li>
                                    </ul>

                                    <div class='block-info'>
                                        <p><em>Pumpic keyboard activation required</em></p>
                                        <p>Keep track of <b>each keystroke typed</b> and every tap on the touchscreen of the target device. Follow <b>logins</b> and <b>passwords</b>, as well as texts written in the browser in <b>incognito mode</b>. Monitor typed messages <b>in any app</b>.</p>

                                        <div><a class="btn-orange ga-action-click"
                                                target="_blank"
                                                ga-category="demo link"
                                                ga-action="click"
                                                ga-label="all-features-android"
                                                target="_blank"  href="{$schema}demo.{$domain}/setDevice/125?redirect_url=cp/keylogger">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                        </div> <!-- #keylogger -->
{*
                        <div id="keylogger-android" class="div-table-row odd featured-item">
                            <div class="item-feature-list div-table-column col-lg-4">

                                <div class='feature-item-info'>
                                    <ul>
                                        <li>
                                            <i class='i-list-features-keylogger only-mobile'></i>
                                            <strong> Keylogger </strong>
                                            <i class='i-list-features-keylogger only-pc'></i>
                                        </li>
                                    </ul>

                                    <div class='block-info'>
                                        <p><em>Pumpic keyboard activation required</em></p>
                                        <p>Keep track of <b>each keystroke typed</b> and every tap on the touchscreen of the target device. Follow <b>logins</b> and <b>passwords</b>, as well as words written in browser in <b>incognito mode</b>. Monitor texts written <b>in any app</b>.</p>

                                        <div><a class="btn-orange ga-action-click"
                                                target="_blank"
                                                ga-category="demo link"
                                                ga-action="click"
                                                ga-label="all-features-android"
                                                 href="{$schema}demo.{$domain}/setDevice/125?redirect_url=cp/keylogger">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                            <div class="item-feature-list div-table-column col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-lg-4 text-left">
                                <img style='max-width: 304px' class="image-features model-mobile-center" src='../images/technological/image-keylogger.png' />
                            </div>
                        </div>
*}
                        <!-- \\ #10 SMS commands: (odd)-->

                        <div id="sms_commands-android" class="div-table-row odd featured-item">
                            <div class="item-feature-list div-table-column col-lg-4">

                                <div class='feature-item-info'>
                                    <ul>
                                        <li>
                                            <svg width="31" height="31" class="features-icon i-list-features-svg only-mobile">
                                                <use xlink:href="/images/svg-icons.svg#sms-commands"></use>
                                            </svg>
                                            <strong>SMS commands</strong>
                                            <svg width="31" height="31" class="features-icon i-list-features-svg only-pc">
                                                <use xlink:href="/images/svg-icons.svg#sms-commands"></use>
                                            </svg>
                                        </li>
                                    </ul>

                                    <div class='block-info'>
                                        <p><em>Up to Android 4.4.4</em></p>
                                        <p>Control the target device remotely. <b>Lock</b> or <b>wipe</b> it out even <b>without Internet connection</b>. Manipulate the target smartphone or tablet <b>by sending command text messages</b>.</p>

                                        <div><a class="btn-orange ga-action-click"
                                                target="_blank"
                                                ga-category="demo link"
                                                ga-action="click"
                                                ga-label="all-features-android"
                                                href="{$schema}demo.{$domain}/setDevice/125?redirect_url=cp/smsCommands">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                            <div class="item-feature-list div-table-column col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-lg-4 text-left">
                                <img style='max-width: 187px' class="image-features model-mobile-center" src='../images/technological/image-sms-command.png' />
                            </div>
                        </div> <!-- #sms_commands -->
{*
                        <div id="sms_commands-android" class="div-table-row even">
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-right">
                                <img style='max-width: 187px' class="image-features model-mobile-center" src='../images/technological/image-sms-command.png' />
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-1 col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-left">

                                <div class='feature-item-info'>
                                    <ul>
                                        <li>
                                            <i class='i-list-features-sms-command'></i>
                                            <strong>SMS commands</strong>
                                        </li>
                                    </ul>
                                    <div class='block-info'>
                                        <p><em>Up to Android 4.4.4</em></p>
                                        <p>Control the target device remotely. <b>Lock</b> or <b>wipe</b> it out even <b>without Internet connection</b>. Manipulate the target smartphone or tablet <b>by sending text messages</b>.</p>

                                        <div><a class="btn-orange ga-action-click"
                                                target="_blank"
                                                ga-category="demo link"
                                                ga-action="click"
                                                ga-label="all-features-android"
                                                 href="{$schema}demo.{$domain}/setDevice/125?redirect_url=cp/smsCommands">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                        </div>
*}
                        <!-- \\ #12 Instagram Monitoring: (even) -->
                        {*
                        <div id="instagram" class="div-table-row even">
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-right">
                                <img style='max-width: 302px' class="image-features model-mobile-center" src='../images/technological/image-instagram.png' />
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-1 col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-left">
                                <div class='feature-item-info'>
                                    <ul>
                                        <li><i class='i-list-features-instagram'></i><strong>Instagram</strong></li>
                                    </ul>

                                    <div class='block-info'>
                                        <p>Follow Instagram activity. View all <b>photos</b> and <b>videos</b> uploaded, as well as comments posted below.</p>

                                        <div><a class="btn-orange ga-action-click"
                                                target="_blank"
                                                ga-category="demo link"
                                                ga-action="click"
                                                ga-label="all-features-android"
                                                 href="{$schema}demo.{$domain}/setDevice/125?redirect_url=cp/instagram">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                        </div> <!-- #instagram -->
*}

                        <!-- \\ #13 Geo-fencing: (odd)-->
                        {*
                        <div id="geo_fencing-android" class="div-table-row odd featured-item">
                            <div class="item-feature-list div-table-column col-lg-4">

                                <div class='feature-item-info'>
                                    <ul>
                                        <li>
                                            <i class='i-list-features-geo-fencing only-mobile'></i>
                                            <strong>Geo-fencing</strong>
                                            <i class='i-list-features-geo-fencing only-pc'></i>
                                        </li>
                                    </ul>

                                    <div class='block-info'>
                                        <p>Define and <b>set specific zones</b> on the <b>map</b>. <b>Receive notifications</b>, once the target device <b>leaves</b> a safe territory or <b>enters a restricted area</b>.</p>

                                        <div><a class="btn-orange ga-action-click"
                                                target="_blank"
                                                ga-category="demo link"
                                                ga-action="click"
                                                ga-label="all-features-android"
                                                  href="{$schema}demo.{$domain}/setDevice/125?redirect_url=cp/locations">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                            <div class="item-feature-list div-table-column col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-lg-4 text-left">
                                <img style='max-width: 381px' class="image-features model-mobile-center" src='../images/technological/image-geo-fencing.png' />
                            </div>
                        </div> <!-- #geo_fencing -->
*}
                        <div id="geo_fencing-android" class="div-table-row even">
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-right">
                                <img style='max-width: 381px' class="image-features model-mobile-center" src='../images/technological/image-geo-fencing.png' />
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-1 col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-left">

                                <div class='feature-item-info'>
                                    <ul>
                                        <li>
                                            <svg width="31" height="31" class="features-icon i-list-features-svg">
                                                <use xlink:href="/images/svg-icons.svg#geo-fencing"></use>
                                            </svg>
                                            <strong>Geo-fencing</strong></li>
                                    </ul>
                                    <div class='block-info'>
                                        <p>Define and <b>set specific zones</b> on the <b>map</b>. <b>Receive notifications</b>, once the target device <b>leaves</b> a safe territory or <b>enters a restricted area</b>.</p>

                                        <div><a class="btn-orange ga-action-click"
                                                target="_blank"
                                                ga-category="demo link"
                                                ga-action="click"
                                                ga-label="all-features-android"
                                                href="{$schema}demo.{$domain}/setDevice/125?redirect_url=cp/locations">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                        </div>

                        <!-- \\ #15 Other features: (odd) -->

                        <div id="other_features-android" class="div-table-row odd featured-item">
                            <div class="item-feature-list div-table-column col-lg-4">

                                <div class='feature-item-info'>
                                    <ul>
                                        <li>
                                            <svg width="31" height="31" class="features-icon i-list-features-svg only-mobile">
                                                <use xlink:href="/images/svg-icons.svg#reboot"></use>
                                            </svg>
                                            <strong>Other features</strong>
                                            <svg width="31" height="31" class="features-icon i-list-features-svg only-pc">
                                                <use xlink:href="/images/svg-icons.svg#reboot"></use>
                                            </svg>
                                        </li>
                                    </ul>

                                    <div class='block-info'>
                                        <ul>
                                            <li>Receive notifications when a SIM card is changed</li>
                                            <li>Reboot the target device or the applications remotely <br> <em>(root required)</em></li>
                                            <li>Protect Pumpic app with a password from being removed</li>
                                            <li>Lock the target device and control its activity remotely</li>
                                        </ul>
                                        <div><a class="btn-orange ga-action-click"
                                                target="_blank"
                                                ga-category="demo link"
                                                ga-action="click"
                                                ga-label="all-features-android"
                                                href="{$schema}demo.{$domain}/setDevice/125?redirect_url=cp/settings">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                            <div class="item-feature-list div-table-column col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-lg-4 text-left">
                                <img style='max-width: 167px' class="image-features model-mobile-center" src='../images/technological/image-sim-change.png' />
                            </div>
                        </div> <!-- #other_features -->
{*
                        <div id="other_features" class="div-table-row even">
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-right">
                                <img style='max-width: 167px' class="image-features model-mobile-center" src='../images/technological/image-sim-change.png' />
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-1 col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-left">

                                <div class='feature-item-info'>
                                    <ul>
                                        <li>
                                            <i class='i-list-features-sim-change'></i>
                                            <strong>Other features</strong>
                                            <!-- <ul>
                                                <li><strong>Sim change notification</strong></li>
                                                <li><strong>Reboot application</strong></li>
                                                <li><strong>Reboot device</strong></li>
                                            </ul> -->

                                        </li>
                                    </ul>
                                    <div class='block-info'>
                                        <ul>
                                            <li>Receive notifications on a SIM card change</li>
                                            <li>Reboot the target device or the applications remotely</li>
                                            <li>Protect Pumpic app with a password from being removed</li>
                                            <li>Lock the target device and control its activity remotely</li>
                                        </ul>
                                        <div><a class="btn-orange ga-action-click"
                                                target="_blank"
                                                ga-category="demo link"
                                                ga-action="click"
                                                ga-label="all-features-android"
                                                href="{$schema}demo.{$domain}/setDevice/125?redirect_url=cp/settings">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                        </div>
*}


                    </div>
                    <!-- \\ end -->

                    <!-- \\ #button all -->
                    <div id='box-features-list' class="div-table col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <div class="div-table-row">
                            <div class="item item-buttom div-table-column col-sm-12 col-md-4 col-lg-4 text-right"></div>
                            <div class="item item-buttom div-table-column col-sm-12 col-md-3 col-lg-2 text-center">

                                <div class='box-all-features'>
                                    <a class='btn-red{*btn-green*} ga-action-click'
                                       ga-category="store link"
                                       ga-action="click"
                                       ga-label="all-features-android"
                                       href='/store.html#android' >Try now!</a>
                                </div>
                                {*<div class='box-line-solid only-pc'>
                                    <span class='box-solid-1'></span>
                                </div>*}

                            </div>
                            <div class="item item-buttom div-table-column col-sm-12 col-md-4 col-lg-4 text-left"></div>
                        </div>
                    </div>

                    <!-- \\ coming soon -->
                    {*<div id='box-coming-soon-list' class="div-table col-md-12 col-lg-12">

                        <!-- \\ coming soon -->
                        <div class="div-table-row">
                            <div class="item div-table-column col-sm-12 col-md-4 col-lg-4 text-right"></div>
                            <div class="item div-table-column col-sm-12 col-md-4 col-lg-2 text-center">

                                <h2 class='color-orange'>Coming soon:</h2>

                            </div>
                            <div class="item div-table-column col-sm-12 col-md-4 col-lg-4 text-left"></div>
                        </div>

                    </div>
                    <div id='box-coming-soon-list' class="div-table col-sm-12 col-md-12 col-lg-12">
                        <div class="div-table-row">

                            <div class="item item-bottom div-table-column col-sm-12 col-md-4 col-lg-4 text-right">

                                <dl class="table-rows block-right">
                                    <dt class="table-column"><i class='i-coming-soon-instagram t10 only-mobile'></i></dt>
                                    <dd class="table-column">
                                        <strong>instagram</strong>
                                        <p>(see what is picctures and comment)</p>
                                    </dd>
                                    <dt class="table-column"><i class='i-coming-soon-instagram t10 only-pc'></i></dt>
                                </dl>
                                <dl class="table-rows block-right">
                                    <dt class="table-column"><i class='i-coming-soon-applications ml10 t10 only-mobile'></i></dt>
                                    <dd class="table-column">
                                        <strong>applications management</strong>
                                        <p>(limit time of usage of any app)</p>
                                    </dd>
                                    <dt class="table-column"><i class='i-coming-soon-applications t10 only-pc'></i></dt>
                                </dl>

                            </div>
                            <div class="item item-bottom div-table-column col-sm-12 col-md-1 col-lg-1 text-center">

                                <div class='box-line-solid only-pc'>
                                    <span class='box-dashed-1'></span>
                                </div>

                            </div>
                            <div class="item item-bottom div-table-column col-sm-12 col-md-4 col-lg-4 text-left">

                                <dl class="table-rows block-left">
                                    <dt class="table-column"><i class='i-coming-soon-geo-fencing t10'></i></dt>
                                    <dd class="table-column">
                                        <strong>geo-fencing</strong>
                                        <p>(define zones on the map and receive alerts when monitored device enters and leave these zones)</p>
                                    </dd>

                                </dl>
                                <dl class="table-rows block-left">
                                    <dt class="table-column"><i class='i-coming-soon-icloud t5'></i></dt>
                                    <dd class="table-column">
                                        <strong>iCloud</strong>
                                        <p>(iPhone without jailbreak)</p>
                                    </dd>

                                </dl>

                            </div>
                        </div>


                    </div>*}


                </div>

            </div>
            {*FEATURES ANDROID END*}
            {*FEATURES JAILBREAK*}
            <div class="container _features-content" data-feature="os-jailbreak" style="display: none;">

                <div class='row'>
                    <h2 class="text-center box-features-list-title">Features</h2>

                    <!-- \\ list -->
                    <div id='box-features-list' class="div-table col-sm-12 col-md-12 col-lg-12">

                        <!-- \\ #2 Calls: (even)-->
                        <div id="calls-jb" class="div-table-row even">
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-right">
                                <img style='max-width: 302px' class="image-features model-mobile-center" src='../images/technological/image-call.png' />
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-1 col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-left">

                                <div class='feature-item-info'>
                                    <ul>
                                        <li><i class='i-list-features-call'></i><strong>Calls</strong></li>
                                    </ul>
                                    <div class='block-info'>
                                        <p>Follow <b>incoming</b> and <b>outgoing</b> call logs with precise contact data including <b>name</b>, <b>number</b>, <b>time</b> of the call and its <b>duration</b>. Find out who reaches the target phone, at what time and for how long.</p>

                                        <div><a class="btn-orange ga-action-click"
                                                target="_blank"
                                                ga-category="demo link"
                                                ga-action="click"
                                                ga-label="all-features-jailbreak"
                                                href="{$schema}demo.{$domain}/setDevice/5059?redirect_url=cp/calls">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                        </div>

                        <!-- \\ #3 SMS: (odd) -->
                        <div id="sms-jb" class="div-table-row odd featured-item">
                            <div class="item-feature-list div-table-column col-lg-4">

                                <div class='feature-item-info'>
                                    <ul>
                                        <li>
                                            <i class='i-list-features-sms only-mobile'></i>
                                            <strong>SMS and MMS</strong>
                                            <i class='i-list-features-sms only-pc'></i>
                                        </li>
                                    </ul>
                                    <div class='block-info'>
                                        <p>Monitor <b>sent</b>, <b>received</b>, and <b>deleted</b> text content of SMS, iMessages, and MMS. View data on both a sender and recipient. <b>Block</b> text messages by a <b>phone number</b>, <b>words</b>, or <b>phrases</b>. <b>Limit</b> the number of <b>texts sent daily</b>. </p>
                                        {*<ul>
                                            <li>Use Pumpic app to follow the entire call history of your</li>
                                            <li>child’s device. Protect your kids from mistrusted people.</li>
                                            <li>View a caller’s data including the name and phone number,</li>
                                            <li>the time when a call was received and duration of the </li>
                                            <li>conversation</li>
                                        </ul>*}
                                        <div><a class="btn-orange ga-action-click"
                                                target="_blank"
                                                ga-category="demo link"
                                                ga-action="click"
                                                ga-label="all-features-jailbreak"
                                                href="{$schema}demo.{$domain}/setDevice/5059?redirect_url=cp/sms">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                            <div class="item-feature-list div-table-column col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-lg-4 text-left">
                                <img style='max-width: 302px' class="image-features model-mobile-center" src='../images/technological/image-sms.png' />
                            </div>
                        </div>

                        <!-- \\ #1 Location: (even) -->
                        <div id="location-jb" class="div-table-row even">
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-right">
                                <img style='max-width: 380px' class="image-features model-mobile-center" src='../images/technological/image-location-history.png' />
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-1 col-lg-1 text-center">
                                {*<i class='i-bubble'></i>*}
                                {*<div class='box-solid-1'></div>*}

                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-left">

                                <div class='feature-item-info'>
                                    <ul>
                                        <li><i class="i-list-features-location-history"></i><strong> Location</strong></li>
                                    </ul>
                                    <div class='block-info'>
                                        <p>Instantly <b>locate</b> the target device <b>on the map</b>. Keep track of current position as well as the <b>entire route history</b> by using GPS. Find the target device, if lost or stolen.</p>
                                        {*<ul>
                                            <li>Pumpic allows you to tell the exact location of your children. </li>
                                            <li>Find your children by using GPS. The application identifies the current position together with the
                                                precise route of recent movements.</li>
                                        </ul>*}
                                        <div><a class="btn-orange ga-action-click"
                                                target="_blank"
                                                ga-category="demo link"
                                                ga-action="click"
                                                ga-label="all-features-jailbreak"
                                                href="{$schema}demo.{$domain}/setDevice/5059?redirect_url=cp/locations">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                        </div>

                        <!-- \\ #4 Applications: (odd) -->
                        <div id="applications-jb" class="div-table-row odd featured-item">
                            <div class="item-feature-list div-table-column col-lg-4">

                                <div class='feature-item-info'>
                                    <ul>
                                        <li>
                                            <i class='i-list-features-applications only-mobile'></i>
                                            <strong>Applications</strong>
                                            <i class='i-list-features-applications only-pc'></i>
                                        </li>
                                    </ul>

                                    <div class='block-info'>
                                        <p>Keep track of <b>applications installed</b> on the target device. <b>Block</b> and <b>set time limits</b> on running particular apps.</p>

                                        <div><a class="btn-orange ga-action-click"
                                                target="_blank"
                                                ga-category="demo link"
                                                ga-action="click"
                                                ga-label="all-features-jailbreak"
                                                 href="{$schema}demo.{$domain}/setDevice/5059?redirect_url=cp/applications">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                            <div class="item-feature-list div-table-column col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-lg-4 text-left">
                                <img style='max-width: 326px' class="image-features model-mobile-center" src='../images/technological/image-applications.png' />
                            </div>
                        </div>

                        {*<div class="div-table-row odd">
                            <div class="item-feature-list div-table-column col-lg-4 text-right">

                                <div class='feature-item-info'>
                                    <ul>
                                        <li>
                                            <i class='i-list-features-photos only-mobile'></i>
                                            <strong>Photos</strong>
                                            <i class='i-list-features-photos only-pc'></i>
                                        </li>
                                        <li>
                                            <i class='i-list-features-video only-mobile'></i>
                                            <strong>Videos</strong>
                                            <i class='i-list-features-video only-pc'></i>
                                        </li>
                                    </ul>

                                    <div class='block-info'>
                                        <p>View each <b>photo</b> or <b>video</b> shot <b>by the camera</b> of the target smartphone or <b>downloaded</b> from the Internet. Monitor all multimedia files stored on the target device.</p>

                                        <div><a class="btn-orange ga-action-click"
                                                target="_blank"
                                                ga-category="demo link"
                                                ga-action="click"
                                                ga-label="all-features-jailbreak"
                                                 href="{$schema}demo.{$domain}/setDevice/125?redirect_url=cp/photos">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                            <div class="item-feature-list div-table-column col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-lg-4 text-left">
                                <img style='max-width: 300px' class="image-features model-mobile-center" src='../images/technological/image-video-and-photos.png' />
                            </div>
                        </div>*}

                        <!-- \\ #5 Facebook IM/Viber/Skype/WhatsApp: (even) -->
                        <div id="social-jb" class="div-table-row even">
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-right">
                                <img style='max-width: 306px' class="image-features model-mobile-center" src='../images/technological/image-messanges.png' />
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-1 col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-left">
                                <div class='feature-item-info'>
                                    <ul>
                                        <li><i class='i-list-features-facebook'></i><strong>Facebook IM</strong></li>
                                        <li><i class='i-list-features-viber'></i><strong>Viber</strong></li>
                                        <li><i class='i-list-features-skype'></i><strong>Skype</strong></li>
                                        <li><i class='i-list-features-snapchat'></i><strong>Snapchat</strong></li>
                                        <li><i class='i-list-features-whatsapp'></i><strong>WhatsApp</strong></li>
                                        <li><i class='i-list-features-kik-chat'></i><strong>Kik</strong></li>
                                    </ul>

                                    <div class='block-info'>
                                        <p>
                                            Follow online communication activities. View <b>messages</b> sent and received via popular instant messengers like Facebook Messenger, Snapchat (videos, photos, texts), Viber, Skype, WhatsApp, and Kik.
                                        </p>
                                        <p>
                                            Monitor <b>Skype</b>, <b>WhatsApp</b>, and <b>Facebook</b> calls.
                                        </p>
                                        {*<ul>
                                            <li>Pumpic allows you to monitor your child’s device activity in</li>
                                            <li>the most widely used communication applications like</li>
                                            <li>WhatsApp, Viber and Skype. Prevent your children from</li>
                                            <li>conversations with misgiving people.</li>
                                        </ul>*}
                                        <div><a class="btn-orange ga-action-click"
                                                target="_blank"
                                                ga-category="demo link"
                                                ga-action="click"
                                                ga-label="all-features-jailbreak"
                                                 href="{$schema}demo.{$domain}/setDevice/5059?redirect_url=cp/facebook">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                        </div>
                        <div id="instagram-jb" class="div-table-row odd featured-item">
                            <div class="item-feature-list div-table-column col-lg-4">

                                <div class='feature-item-info'>
                                    <ul>
                                        <li>
                                            <i class='i-list-features-instagram only-mobile'></i>
                                            <strong>Instagram</strong>
                                            <i class='i-list-features-instagram only-pc'></i>
                                        </li>
                                    </ul>

                                    <div class='block-info'>
                                        <p>Follow Instagram activity. View all <b>photos</b> and <b>videos</b> uploaded, as well as comments posted below.</p>

                                        <div><a class="btn-orange ga-action-click"
                                                target="_blank"
                                                ga-category="demo link"
                                                ga-action="click"
                                                ga-label="all-features-jailbreak"
                                                 href="{$schema}demo.{$domain}/setDevice/5059?redirect_url=cp/instagram">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                            <div class="item-feature-list div-table-column col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-lg-4 text-left">
                                <img style='max-width: 302px' class="image-features model-mobile-center" src='../images/technological/image-instagram.png' />
                            </div>
                        </div>

                        <!-- \\ #6 Browser control: (even) -->

                        <div id="browser_control-jb" class="div-table-row even">
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-right">
                                <img style='max-width: 302px' class="image-features model-mobile-center" src='../images/technological/image-browser.png' />
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-1 col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-left">
                                <div class='feature-item-info'>
                                    <ul>
                                        <li><i class='i-list-features-browser'></i><strong>Browser control</strong></li>
                                    </ul>

                                    <div class='block-info'>
                                        <p>Monitor <b>browsing history</b> and view websites visited from the target device.
                                            Check <b>bookmarks</b>. <b>Block websites</b> containing inappropriate content.</p>

                                        <div><a class="btn-orange ga-action-click"
                                                target="_blank"
                                                ga-category="demo link"
                                                ga-action="click"
                                                ga-label="all-features-jailbreak"
                                                href="{$schema}demo.{$domain}/setDevice/5059?redirect_url=cp/browserHistory">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                        </div> <!-- #browser_control -->

                        {*
                        <div id="browser_control-jb" class="div-table-row odd featured-item">
                            <div class="item-feature-list div-table-column col-lg-4">

                                <div class='feature-item-info'>
                                    <ul>
                                        <li>
                                            <i class='i-list-features-browser only-mobile'></i>
                                            <strong>Browser control</strong>
                                            <i class='i-list-features-browser only-pc'></i>
                                        </li>
                                    </ul>

                                    <div class='block-info'>
                                        <p>Monitor <b>browsing history</b> and view websites visited from the target device. Check <b>bookmarks</b>. <b>Block websites</b> containing inappropriate content.</p>

                                        <div><a class="btn-orange" href="{$schema}demo.{$domain}/setDevice/5059?redirect_url=cp/browserHistory">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                            <div class="item-feature-list div-table-column col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-lg-4 text-left">
                                <img style='max-width: 302px' class="image-features model-mobile-center" src='../images/technological/image-browser.png' />
                            </div>
                        </div>
*}
                       <!-- \\ #11 Photos/Videos: (odd)-->
                       <div id="media-jb" class="div-table-row odd">
                            <div class="item-feature-list div-table-column col-lg-4 text-right">

                                <div class='feature-item-info'>
                                    <ul>
                                        <li>
                                            <i class='i-list-features-photos only-mobile'></i>
                                            <strong>Photos</strong>
                                            <i class='i-list-features-photos only-pc'></i>
                                        </li>
                                        <li>
                                            <i class='i-list-features-video only-mobile'></i>
                                            <strong>Videos</strong>
                                            <i class='i-list-features-video only-pc'></i>
                                        </li>
                                    </ul>

                                    <div class='block-info'>
                                        <p>View each <b>photo</b> or <b>video</b> file <b>shot by the camera</b> of the target smartphone or <b>downloaded</b> from the Internet. Monitor all multimedia files stored on the target device.</p>

                                        <div><a class="btn-orange ga-action-click"
                                                target="_blank"
                                                ga-category="demo link"
                                                ga-action="click"
                                                ga-label="all-features-jailbreak"
                                                href="{$schema}demo.{$domain}/setDevice/5059?redirect_url=cp/photos">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                            <div class="item-feature-list div-table-column col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-lg-4 text-left">
                                <img style='max-width: 300px' class="image-features model-mobile-center" src='../images/technological/image-video-and-photos_v2.png' />
                            </div>
                        </div> <!-- #media -->

                        {*
                       <div id="media-jb" class="div-table-row even">
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-right">
                                <img style='max-width: 300px' class="image-features model-mobile-center" src='../images/technological/image-video-and-photos_v2.png' />
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-1 col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-left">

                                <div class='feature-item-info'>
                                    <ul>
                                        <li><i class='i-list-features-photos'></i><strong>Photos</strong></li>
                                        <li><i class='i-list-features-video'></i><strong>Videos</strong></li>
                                    </ul>
                                    <div class='block-info'>
                                        <p>View each <b>photo</b> or <b>video</b> file <b>shot by the camera</b> of the target smartphone or <b>downloaded</b> from the Internet. Monitor all multimedia files stored on the target device.</p>

                                        <div><a class="btn-orange ga-action-click"
                                                target="_blank"
                                                ga-category="demo link"
                                                ga-action="click"
                                                ga-label="all-features-jailbreak"
                                                 href="{$schema}demo.{$domain}/setDevice/5059?redirect_url=cp/photos">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                        </div>
                        *}

                       <!-- \\ #7 Email: (even) -->
                       <div id="email-jb" class="div-table-row even">
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-right">
                                <img style='max-width: 302px' class="image-features model-mobile-center" src='../images/technological/image-email.png' />
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-1 col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-left">
                                <div class='feature-item-info'>
                                    <ul>
                                        <li><i class='i-list-features-email'></i><strong>Email</strong></li>
                                    </ul>

                                    <div class='block-info'>
                                        <p>View <b>incoming</b>, <b>sent</b> and <b>deleted</b> emails. Find out precise communication data, including <b>names</b>, <b>addresses</b> and writing <b>time</b>. Monitor online correspondence, subscriptions, and registrations.</p>

                                        <div><a class="btn-orange ga-action-click"
                                                target="_blank"
                                                ga-category="demo link"
                                                ga-action="click"
                                                ga-label="all-features-jailbreak"
                                                target="_blank"  href="{$schema}demo.{$domain}/setDevice/5059?redirect_url=cp/emails">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                        </div> <!-- #email -->

                        {*
                        <div id="email-jb" class="div-table-row odd featured-item">
                            <div class="item-feature-list div-table-column col-lg-4">

                                <div class='feature-item-info'>
                                    <ul>
                                        <li>
                                            <i class='i-list-features-email only-mobile'></i>
                                            <strong>Email</strong>
                                            <i class='i-list-features-email only-pc'></i>
                                        </li>
                                    </ul>

                                    <div class='block-info'>
                                        <p>View <b>incoming</b>, <b>sent</b> and <b>deleted</b> emails. Find out precise communication data, including <b>names</b>, <b>addresses</b> and writing <b>time</b>. Monitor online correspondence, subscriptions and registrations.</p>

                                        <div><a class="btn-orange ga-action-click"
                                                target="_blank"
                                                ga-category="demo link"
                                                ga-action="click"
                                                ga-label="all-features-jailbreak"
                                                 href="{$schema}demo.{$domain}/setDevice/5059?redirect_url=cp/emails">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                            <div class="item-feature-list div-table-column col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-lg-4 text-left">
                                <img style='max-width: 302px' class="image-features model-mobile-center" src='../images/technological/image-email.png' />
                            </div>
                        </div>
*}

                        <!-- \\ #8 Calendar/Contacts/Notes: (odd) -->
                        <div id="organiser-jb" class="div-table-row odd featured-item">
                            <div class="item-feature-list div-table-column col-lg-4">

                                <div class='feature-item-info'>
                                    <ul>
                                        <li>
                                            <i class='i-list-features-calendar only-mobile'></i>
                                            <strong>Calendar</strong>
                                            <i class='i-list-features-calendar only-pc'></i>
                                        </li>
                                        <li>
                                            <i class='i-list-features-contacts only-mobile'></i>
                                            <strong>Contacts</strong>
                                            <i class='i-list-features-contacts only-pc'></i>
                                        </li>
                                        <li>
                                            <i class='i-list-features-notes only-mobile'></i>
                                            <strong>Notes</strong>
                                            <i class='i-list-features-notes only-pc'></i>
                                        </li>
                                    </ul>

                                    <div class='block-info'>
                                        <p>View Notes on iPhones, iPads, and iPods Touch. Find out <b>plans</b> and <b>intentions</b>. Follow <b>important information, to-do lists</b>, as well as written down <b>thoughts</b>.</p>

                                        <div><a class="btn-orange ga-action-click"
                                                target="_blank"
                                                ga-category="demo link"
                                                ga-action="click"
                                                ga-label="all-features-jailbreak"
                                                href="{$schema}demo.{$domain}/setDevice/5059?redirect_url=cp/calendar">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                            <div class="item-feature-list div-table-column col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-lg-4 text-left">
                                <img style='max-width: 302px' class="image-features model-mobile-center" src='../images/technological/image-calendar-and-contacts.png' />
                            </div>
                        </div> <!-- #organiser -->

                        {*
                        <div id="organiser-jb" class="div-table-row even">
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-right">
                                <img style='max-width: 302px' class="image-features model-mobile-center" src='../images/technological/image-calendar-and-contacts.png' />
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-1 col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-left">

                                <div class='feature-item-info'>
                                    <ul>
                                        <li>
                                            <i class='i-list-features-calendar'></i>
                                            <strong>Calendar</strong>
                                        </li>
                                        <li>
                                            <i class='i-list-features-contacts'></i>
                                            <strong>Contacts</strong>
                                        </li>
                                        <li>
                                            <i class='i-list-features-notes'></i>
                                            <strong>Notes</strong>
                                        </li>
                                    </ul>
                                    <div class='block-info'>
                                        <p>View Notes on iPhones, iPads, and iPods Touch. Find out <b>plans</b> and <b>intentions</b>. Follow <b>important information, to-do lists</b>, as well as written down <b>thoughts</b>.</p>

                                        <div><a class="btn-orange ga-action-click"
                                                target="_blank"
                                                ga-category="demo link"
                                                ga-action="click"
                                                ga-label="all-features-jailbreak"
                                                 href="{$schema}demo.{$domain}/setDevice/5059?redirect_url=cp/calendar">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                        </div>
*}
                        <!-- \\ #9 Keylogger: (even) -->

                        <div id="keylogger-jb" class="div-table-row even">
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-right">
                                <img style='max-width: 304px' class="image-features model-mobile-center" src='../images/technological/image-keylogger.png' />
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-1 col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-left">
                                <div class='feature-item-info'>
                                    <ul>
                                        <li><i class='i-list-features-keylogger'></i><strong>Keylogger</strong></li>
                                    </ul>

                                    <div class='block-info'>
                                        <p>Keep track of <b>each keystroke typed</b> and every tap on the touchscreen of the target device. Follow <b>logins</b> and <b>passwords</b>, as well as texts written in the browser in <b>incognito mode</b>. Monitor typed messages <b>in any app</b>.</p>

                                        <div><a class="btn-orange ga-action-click"
                                                target="_blank"
                                                ga-category="demo link"
                                                ga-action="click"
                                                ga-label="all-features-jailbreak"
                                                href="{$schema}demo.{$domain}/setDevice/5059?redirect_url=cp/keylogger">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                        </div> <!-- #keylogger -->
{*
                        <div id="keylogger-jb" class="div-table-row odd featured-item">
                            <div class="item-feature-list div-table-column col-lg-4">

                                <div class='feature-item-info'>
                                    <ul>
                                        <li>
                                            <i class='i-list-features-keylogger only-mobile'></i>
                                            <strong> Keylogger </strong>
                                            <i class='i-list-features-keylogger only-pc'></i>
                                        </li>
                                    </ul>

                                    <div class='block-info'>
                                        <p>Keep track of <b>each keystroke typed</b> and every tap on the touchscreen of the target device. Follow <b>logins</b> and <b>passwords</b>, as well as words written in browser in <b>incognito mode</b>. Monitor texts written <b>in any app</b>.</p>

                                        <div><a cclass="btn-orange ga-action-click"
                                                target="_blank"
                                                ga-category="demo link"
                                                ga-action="click"
                                                ga-label="all-features-jailbreak"
                                                 href="{$schema}demo.{$domain}/setDevice/5059?redirect_url=cp/keylogger">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                            <div class="item-feature-list div-table-column col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-lg-4 text-left">
                                <img style='max-width: 304px' class="image-features model-mobile-center" src='../images/technological/image-keylogger.png' />
                            </div>
                        </div>
*}
                        <!-- \\ #10 SMS commands: (odd)-->

                        <div id="sms_commands-jb" class="div-table-row odd featured-item">
                            <div class="item-feature-list div-table-column col-lg-4">

                                <div class='feature-item-info'>
                                    <ul>
                                        <li>
                                            <i class='i-list-features-sms-command only-mobile'></i>
                                            <strong>SMS commands</strong>
                                            <i class='i-list-features-sms-command only-pc'></i>
                                        </li>
                                    </ul>

                                    <div class='block-info'>
                                        <p>Control the target device remotely. <b>Lock</b> or <b>wipe</b> it out even <b>without Internet connection</b>. Manipulate the target smartphone or tablet <b>by sending command text messages</b>.</p>

                                        <div><a class="btn-orange ga-action-click"
                                                target="_blank"
                                                ga-category="demo link"
                                                ga-action="click"
                                                ga-label="all-features-jailbreak"
                                                href="{$schema}demo.{$domain}/setDevice/5059?redirect_url=cp/smsCommands">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                            <div class="item-feature-list div-table-column col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-lg-4 text-left">
                                <img style='max-width: 187px' class="image-features model-mobile-center" src='../images/technological/image-sms-command.png' />
                            </div>
                        </div> <!-- #sms_commands -->
{*
                        <div id="sms_commands-jb" class="div-table-row even">
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-right">
                                <img style='max-width: 187px' class="image-features model-mobile-center" src='../images/technological/image-sms-command.png' />
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-1 col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-left">

                                <div class='feature-item-info'>
                                    <ul>
                                        <li>
                                            <i class='i-list-features-sms-command'></i>
                                            <strong>SMS commands</strong>
                                        </li>
                                    </ul>
                                    <div class='block-info'>
                                        <p>Control the target device remotely. <b>Reboot</b> <em>(up to iOS 7.1.2)</em> <b>lock</b> or <b>wipe</b> it out even <b>without Internet connection</b>. Manipulate the target smartphone or tablet <b>by sending command text messages</b>.</p>

                                        <div><a class="btn-orange ga-action-click"
                                                target="_blank"
                                                ga-category="demo link"
                                                ga-action="click"
                                                ga-label="all-features-jailbreak"
                                                 href="{$schema}demo.{$domain}/setDevice/5059?redirect_url=cp/smsCommands">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                        </div>
*}
                        <!-- \\ #12 Instagram Monitoring: (even) -->
                        {*
                        <div id="instagram-jb" class="div-table-row even">
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-right">
                                <img style='max-width: 302px' class="image-features model-mobile-center" src='../images/technological/image-instagram.png' />
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-1 col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-left">
                                <div class='feature-item-info'>
                                    <ul>
                                        <li><i class='i-list-features-instagram'></i><strong>Instagram</strong></li>
                                    </ul>

                                    <div class='block-info'>
                                        <p>Follow Instagram activity. View all <b>photos</b> and <b>videos</b> uploaded, as well as comments posted below.</p>

                                        <div><a class="btn-orange ga-action-click"
                                                target="_blank"
                                                ga-category="demo link"
                                                ga-action="click"
                                                ga-label="all-features-jailbreak"
                                                 target="_blank" href="{$schema}demo.{$domain}/setDevice/5059?redirect_url=cp/instagram">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                        </div> <!-- #instagram -->
*}

                        <!-- \\ #13 Geo-fencing: (odd)-->

{*
                        <div id="geo_fencing-jb" class="div-table-row odd featured-item">
                            <div class="item-feature-list div-table-column col-lg-4">

                                <div class='feature-item-info'>
                                    <ul>
                                        <li>
                                            <i class='i-list-features-geo-fencing only-mobile'></i>
                                            <strong>Geo-fencing</strong>
                                            <i class='i-list-features-geo-fencing only-pc'></i>
                                        </li>
                                    </ul>

                                    <div class='block-info'>
                                        <p>Define and <b>set specific zones</b> on the <b>map</b>. <b>Receive notifications</b>, once the target device <b>leaves</b> a safe territory or <b>enters a restricted area</b>.</p>

                                        <div><a class="btn-orange ga-action-click"
                                                target="_blank"
                                                ga-category="demo link"
                                                ga-action="click"
                                                ga-label="all-features-jailbreak"
                                                  href="{$schema}demo.{$domain}/setDevice/5059?redirect_url=cp/locations">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                            <div class="item-feature-list div-table-column col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-lg-4 text-left">
                                <img style='max-width: 381px' class="image-features model-mobile-center" src='../images/technological/image-geo-fencing.png' />
                            </div>
                        </div> <!-- #geo_fencing -->
*}

                        <div id="geo_fencing-jb" class="div-table-row even">
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-right">
                                <img style='max-width: 381px' class="image-features model-mobile-center" src='../images/technological/image-geo-fencing.png' />
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-1 col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-left">

                                <div class='feature-item-info'>
                                    <ul>
                                        <li><i class='i-list-features-geo-fencing'></i><strong>Geo-fencing</strong></li>
                                    </ul>
                                    <div class='block-info'>
                                        <p>Define and <b>set specific zones</b> on the <b>map</b>. <b>Receive notifications</b>, once the target device <b>leaves</b> a safe territory or <b>enters a restricted area</b>.</p>

                                        <div><a class="btn-orange ga-action-click"
                                                target="_blank"
                                                ga-category="demo link"
                                                ga-action="click"
                                                ga-label="all-features-jailbreak"
                                                href="{$schema}demo.{$domain}/setDevice/5059?redirect_url=cp/locations">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                        </div>

                        <!-- \\ #14 iCloud monitoring: (even) -->

                        {*<div id="icloud" class="div-table-row odd">
                            <div class="item-feature-list div-table-column col-lg-4 text-right">

                                <div class='feature-item-info'>
                                    <ul>
                                        <li>
                                            <i class='i-list-features-icloud only-mobile'></i>
                                            <strong>iCloud monitoring <span class='text-normal'>(jailbreak-free)</span></strong>
                                            <i class='i-list-features-icloud only-pc'></i>
                                        </li>
                                    </ul>

                                    <div class='block-info'>
                                        <p>Enjoy Pumpic application on iPhones, iPads and iPods Touch with no need to jailbreak the target device.
                                            Supported features:</p>
                                        <ul>
                                            <li><span class="block ltr">Text message monitoring <br /><span class='text-normal'>&lpar;SMS, MMS, and iMessages&rpar;</span></span></li>
                                            <li>Call monitoring</li>
                                            <li>Contact list</li>
                                            <li>Browsing history</li>
                                            <li>Bookmarks list</li>
                                            <li>Calendar events</li>
                                            <li>Photos</li>
                                            <li>Notes</li>
                                            <li>WhatsApp</li>
                                            <li>Skype</li>
                                        </ul>
                                        <div><a class="btn-orange ga-action-click"
                                                target="_blank"
                                                ga-category="demo link"
                                                ga-action="click"
                                                ga-label="all-features-jailbreak"
                                                 href="{$schema}demo.{$domain}/setDevice/126?redirect_url=cp/call">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                            <div class="item-feature-list div-table-column col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-lg-4 text-left">
                                <img style='max-width: 398px' class="image-features model-mobile-center" src='../images/technological/image-icloud.png' />
                            </div>
                        </div> *}

                        <!-- \\ #15 Other features: (odd) -->

                        <div id="other_features-jb" class="div-table-row odd featured-item">
                            <div class="item-feature-list div-table-column col-lg-4">

                                <div class='feature-item-info'>
                                    <ul>
                                        <li>
                                            <i class='i-list-features-sim-change only-mobile'></i>
                                            <strong>Other features</strong>
                                            <i class='i-list-features-sim-change only-pc'></i>
                                        </li>
                                    </ul>

                                    <div class='block-info'>
                                        <ul>
                                            <li>Receive notifications when a SIM card is changed</li>
                                            <li>Protect Pumpic app with a password from being removed</li>
                                            <li>Lock the target device and control its activity remotely</li>
                                        </ul>
                                        <div><a class="btn-orange ga-action-click"
                                                target="_blank"
                                                ga-category="demo link"
                                                ga-action="click"
                                                ga-label="all-features-jailbreak"
                                                href="{$schema}demo.{$domain}/setDevice/5059?redirect_url=cp/settings">View Demo</a></div>

                                    </div>
                                </div>

                            </div>
                            <div class="item-feature-list div-table-column col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-lg-4 text-left">
                                <img style='max-width: 167px' class="image-features model-mobile-center" src='../images/technological/image-sim-change.png' />
                            </div>
                        </div> <!-- #other_features -->

                        {*
                        <div id="other_features-jb" class="div-table-row even">
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-right">
                                <img style='max-width: 187px' class="image-features model-mobile-center" src='../images/technological/image-sim-change.png' />
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-1 col-lg-1 text-center">
                                <div class='box-line-solid only-pc'>
                                    <i class='i-bubble'></i>
                                    <span class='box-solid-1'></span>
                                </div>
                            </div>
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-left">

                                <div class='feature-item-info'>
                                    <ul>
                                        <li>
                                            <i class='i-list-features-sim-change only-mobile'></i>
                                            <strong>Other features</strong>
                                            <i class='i-list-features-sim-change only-pc'></i>
                                        </li>
                                    </ul>

                                    <div class='block-info'>
                                        <ul>
                                            <li>Receive notifications when a SIM card is changed</li>
                                            <li>Reboot the target device or the applications remotely</li>
                                            <li>Protect Pumpic app with a password from being removed</li>
                                            <li>Lock the target device and control its activity remotely</li>
                                        </ul>
                                        <div><a class="btn-orange ga-action-click"
                                                target="_blank"
                                                ga-category="demo link"
                                                ga-action="click"
                                                ga-label="all-features-jailbreak"
                                                  href="{$schema}demo.{$domain}/setDevice/5059?redirect_url=cp/settings">View Demo</a></div>

                                    </div>
                                </div>
                            </div>
                        </div>
*}

                    </div>
                    <!-- \\ end -->

                    <!-- \\ #button all -->
                    <div id='box-features-list' class="div-table col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <div class="div-table-row">
                            <div class="item item-buttom div-table-column col-sm-12 col-md-4 col-lg-4 text-right"></div>
                            <div class="item item-buttom div-table-column col-sm-12 col-md-3 col-lg-2 text-center">

                                <div class='box-all-features'>
                                    <a class='btn-red{*btn-green*} ga-action-click'
                                       target="_blank"
                                       ga-action="click"
                                       ga-category="store link"
                                       ga-label="all-features-jailbreak"
                                       href='/store.html#jailbreak' >Try now!</a>
                                </div>
                                {*<div class='box-line-solid only-pc'>
                                    <span class='box-solid-1'></span>
                                </div>*}

                            </div>
                            <div class="item item-buttom div-table-column col-sm-12 col-md-4 col-lg-4 text-left"></div>
                        </div>
                    </div>

                    <!-- \\ coming soon -->
                    {*<div id='box-coming-soon-list' class="div-table col-md-12 col-lg-12">

                        <!-- \\ coming soon -->
                        <div class="div-table-row">
                            <div class="item div-table-column col-sm-12 col-md-4 col-lg-4 text-right"></div>
                            <div class="item div-table-column col-sm-12 col-md-4 col-lg-2 text-center">

                                <h2 class='color-orange'>Coming soon:</h2>

                            </div>
                            <div class="item div-table-column col-sm-12 col-md-4 col-lg-4 text-left"></div>
                        </div>

                    </div>
                    <div id='box-coming-soon-list' class="div-table col-sm-12 col-md-12 col-lg-12">
                        <div class="div-table-row">

                            <div class="item item-bottom div-table-column col-sm-12 col-md-4 col-lg-4 text-right">

                                <dl class="table-rows block-right">
                                    <dt class="table-column"><i class='i-coming-soon-instagram t10 only-mobile'></i></dt>
                                    <dd class="table-column">
                                        <strong>instagram</strong>
                                        <p>(see what is picctures and comment)</p>
                                    </dd>
                                    <dt class="table-column"><i class='i-coming-soon-instagram t10 only-pc'></i></dt>
                                </dl>
                                <dl class="table-rows block-right">
                                    <dt class="table-column"><i class='i-coming-soon-applications ml10 t10 only-mobile'></i></dt>
                                    <dd class="table-column">
                                        <strong>applications management</strong>
                                        <p>(limit time of usage of any app)</p>
                                    </dd>
                                    <dt class="table-column"><i class='i-coming-soon-applications t10 only-pc'></i></dt>
                                </dl>

                            </div>
                            <div class="item item-bottom div-table-column col-sm-12 col-md-1 col-lg-1 text-center">

                                <div class='box-line-solid only-pc'>
                                    <span class='box-dashed-1'></span>
                                </div>

                            </div>
                            <div class="item item-bottom div-table-column col-sm-12 col-md-4 col-lg-4 text-left">

                                <dl class="table-rows block-left">
                                    <dt class="table-column"><i class='i-coming-soon-geo-fencing t10'></i></dt>
                                    <dd class="table-column">
                                        <strong>geo-fencing</strong>
                                        <p>(define zones on the map and receive alerts when monitored device enters and leave these zones)</p>
                                    </dd>

                                </dl>
                                <dl class="table-rows block-left">
                                    <dt class="table-column"><i class='i-coming-soon-icloud t5'></i></dt>
                                    <dd class="table-column">
                                        <strong>iCloud</strong>
                                        <p>(iPhone without jailbreak)</p>
                                    </dd>

                                </dl>

                            </div>
                        </div>


                    </div>*}


                </div>




            </div>
            {*FEATURES JAILBREAK END*}
            </div>

        <!-- BLOCK LINE -->

        {*include file='../includes/main/main-quick-link.tpl'
            blockBg="light"
        *}

        <!-- RECOMMENDED -->
        {*
            Template: RECOMMENDED
        *}
        {include file='../includes/main/main-recommended.tpl'}

        <!-- TESTIMONIALS -->
        <div class="light">
            <div class="container">
                <h2 class="text-center testimonial-title">Trusted by Over 10,000 Customers Worldwide:</h2>
                <div class="row">

                    <div class="bxSliders">
                        <!-- SLIDE #1 -->
                        <div class="slide">
                            <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                <img src="{$img}/testimonials/jessica-h-12-1.png" alt="" class="testimonial-photo">
                                <div class="testimonial-text">
                                    <h4>Jessica H. – mother of 12-year-old son</h4>
                                    <p>“With all the features that Pumpic provides I can easily keep track of what my boy is doing on his smartphone. It is irreplaceable help for parents I think. Kids are addicted to their gadgets today. And considering how many threats there are on the Internet mobile monitoring like this is must have if your kid has a mobile device.”</p>
                                </div>
                            </div>
                            <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                <img src="{$img}/testimonials/steven-b-15-1.png" alt="" class="testimonial-photo">
                                <div class="testimonial-text">
                                    <h4>Steven B. – father of 15-year-old daughter</h4>
                                    <p>“All parents are concerned of their kids. Especially if you are a dad of a teenage girl. Pumpic leaves me assured that my girl is safe wherever she is. Even if I’m not nearby I know where she is and what she is doing. The app lets me view her online activities and communication with friends. It provides parents with amazing opportunity to stay close from a distance.”</p>
                                </div>
                            </div>
                            <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                <img src="{$img}/testimonials/laura-g-16-1.png" alt="" class="testimonial-photo">
                                <div class="testimonial-text">
                                    <h4>Laura G. – mother of 16-year-old son</h4>
                                    <p>“As soon as you realize how much time kids spend on their gadgets and how many dangers they might face online your worriless life ends. Pumpic solves the problem of all these worries and gives you a chance to take part in your kids’ activities on the Internet without taking away their gadgets. All parents should have such an app, if they want to protect their kids appropriately.”</p>
                                </div>
                            </div>
                    </div>


                </div>
            </div>
        </div>
        <!-- END -->
        </div>
    </div>
    </div>

    <!-- FOOTER -->
        {*
            Template: FOOTER
            Переменные:
                our_products (text): Включить выключить блок OUR PRODUCTS (no|yes). * - yes
        *}
        {include file='../includes/main/main-footer.tpl'}

    </div>

    {include file='../includes/main/main-analytics-footer.tpl'}
</body>
</html>
