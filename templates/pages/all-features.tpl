{include file='../includes/main/main-header.tpl'
    robots="yes" 
    title="Professional mobile tracking app | Pumpic"
    description="Pumpic is an innovative solution, which takes Mobile Phone Monitoring on a reasonably new level. Find out more functions of Pumpic and evaluate the progress it made."
}    
    
<body>
    <!-- FLY BLOCKS -->
    {include file='../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->
    
    <div class="wrapper block-technological">
        <!-- TOP MENU -->

	{include file='../includes/main/main-top-menu.tpl'
            topmenu_active='all-features'
            cache_id = "includes_main_main-top-menu"
            nocache
        }
        
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
                    <div class="box-hedaer-title">
                        <h2 class="text-center">Cell Phone Monitoring Mobile Application</h2>
                        {*<span>Enjoy more than <strong>20 features</strong> of <strong>remote mobile tracking</strong> with Pumpic.</span>*}
                    </div>
                    
                    <div class="box-hedaer-body">
                        <div class="row">
                            <div class="col-sm-3 col-md-3 col-lg-3">
                                
                                <ul class="list-features text-right">
                                    <li class="i-l-features">
                                        <div class="row">
                                            <div class="col-sm-10 col-md-10 col-lg-10 plr5">
                                                <a class="underline go_block_scroll" href="#calls">Calls</a>
                                                <div class="bth-info">
                                                    <ul>
                                                        <li>in- and outbound call logs</li>
                                                        <li>name, number and time data</li>
                                                    </ul>  
                                                </div>
                                            </div>
                                            <div class="col-sm-2 col-md-2 col-lg-2 padding-null">
                                                <img class="model-center" src="{$img}/technological/header/icon/icon-call.png" width="27px" height="27px" />
                                            </div>
                                        </div>
                                        
                                    </li>
                                    
                                    <li class="i-l-features">
                                        <div class="row">
                                            <div class="col-sm-10 col-md-10 col-lg-10 plr5">
                                                <a class="underline go_block_scroll" href="#location">Location & Geo-fences</a>
                                                <div class="bth-info">
                                                    <ul>
                                                        <li>current GPS location & history</li>
                                                        <li>geo-fences and alerts</li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col-sm-2 col-md-2 col-lg-2 padding-null">
                                                <img class="model-center" src="{$img}/technological/header/icon/icon-location-history.png" width="24px" height="31px" />
                                            </div>
                                        </div>
                                    </li>
                                    
                                    <li class="i-l-features">
                                        <div class="row">
                                            <div class="col-sm-10 col-md-10 col-lg-10 plr5">
                                                <a class="underline go_block_scroll" href="#social">Online Chats</a>
                                                <div class="bth-info">
                                                    <ul>
                                                        <li>Facebook Messenger</li>
                                                        <li>WhatsApp, Viber, Skype, Kik</li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col-sm-2 col-md-2 col-lg-2 padding-null">
                                                <img class="model-center" src="{$img}/technological/header/icon/icon-chat.png" width="13px" height="28px" />
                                            </div>
                                        </div>
                                    </li>
                                    
                                    <li class="i-l-features">
                                        <div class="row">
                                            <div class="col-sm-10 col-md-10 col-lg-10 plr5">
                                                <a class="underline go_block_scroll" href="#email">Email</a>
                                                <div class="bth-info">
                                                    <ul>
                                                        <li>inbox and sent emails</li>
                                                        <li>precise contact data</li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col-sm-2 col-md-2 col-lg-2 padding-null">
                                                <img class="model-center" src="{$img}/technological/header/icon/icon-email.png" width="29px" height="20px" />
                                            </div>
                                        </div>
                                    </li>
                                    
                                </ul>
                                
                            </div>
                            <div class="col-sm-6 col-md-6 col-lg-6 padding-null text-center mt10">
                                
                                <div class="box-images">
                                    <div class="box-middle" style="max-width: 510px;">
                                        <div class="line-middle"></div>
                                        <img src="images/technological/header/img_header_middle.png" />
                                    </div>
                                    
                                    <div class="box-big" style="max-width: 622px;">
                                        <div class="line-big"></div>
                                        <img src="images/technological/header/img_header_big.png" />
                                    </div>
                                </div>
                                
                            </div>
                            <div class="col-sm-3 col-md-3 col-lg-3">
                                <ul class="list-features text-left">
                                    
                                    <li class="i-l-features p-b-item-1">
                                        <div class="row">
                                            <div class="col-sm-2 col-md-2 col-lg-2 padding-null">
                                                <img class="model-center" src="{$img}/technological/header/icon/icon-sms.png" width="33px" height="29px" />
                                            </div>
                                            
                                            <div class="col-sm-10 col-md-10 col-lg-10 plr5">
                                                <a class="underline go_block_scroll" href="#sms">Texts</a>
                                                <div class="bth-info">
                                                    <ul>
                                                        <li>SMS, MMS, iMessage text content</li>
                                                        <li>block or limit messages</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    
                                    
                                    <li class="i-l-features p-b-item-2">
                                        <div class="row">
                                            <div class="col-sm-2 col-md-2 col-lg-2 padding-null">
                                                <img class="model-center" src="{$img}/technological/header/icon/icon-photos.png" width="29px" height="24px" />
                                            </div>
                                            
                                            <div class="col-sm-10 col-md-10 col-lg-10 plr5">
                                                <a class="underline go_block_scroll" href="#media">Photos & Videos</a>
                                                <div class="bth-info">
                                                    <ul>
                                                        <li>camera shots, downloaded files</li>
                                                        <li>follow Instagram and Snapchat</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        
                                    </li>
                                    
                                    <li class="i-l-features p-b-item-3">
                                        <div class="row">
                                            <div class="col-sm-2 col-md-2 col-lg-2 padding-null">
                                                <img class="model-center" src="{$img}/technological/header/icon/icon-browser.png" width="31px" height="31px" />
                                            </div>
                                            
                                            <div class="col-sm-10 col-md-10 col-lg-10 plr5">
                                                <a class="underline go_block_scroll" href="#applications">Browsers & Applications</a>
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
                                            <div class="col-sm-2 col-md-2 col-lg-2 padding-null">
                                                <img class="model-center" src="{$img}/technological/header/icon/icon-calendar.png" width="31px" height="31px" />
                                            </div>
                                            
                                            <div class="col-sm-10 col-md-10 col-lg-10 plr5">
                                                <a class="underline go_block_scroll" href="#organiser">Calendar & Contacts</a>
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
                            <div class="col-xs-sm-12 col-sm-12 col-md-12 col-lg-12 text-center bth-buttons">
                                <ul>
                                    <li>
                                     <a class="btn-orange ga-action-click btn-view-demo" 
                                       href="http://demo.{$domain}/setDevice/125?redirect_url=cp/calls"
                                        ga-action ="click"
                                        ga-category="techological"
                                        ga-label="demo"
                                       >View Demo</a>
                                    </li>
                                    
                                    <li>
                                      <a class="btn-red ga-action-click btn-buy-now" 
                                       href="http://{$domain}/store.html"
                                        ga-action ="click"
                                        ga-category="techological"
                                        ga-label="buy now"
                                       >Buy Now</a>
                                    </li>
                                    {*<li>
                                    <a class="btn-yellow ga-action-click btn-free-trial" 
                                       href="http://{$domain}/free-trial.html"
                                        ga-action ="click"
                                        ga-category="techological"
                                        ga-label="trial"
                                       >Free Trial</a>
                                    </li>*}    
                                </ul>
                                <p>Enjoy more than <strong>20 features</strong> of <strong>remote mobile tracking</strong> with Pumpic.</p>
                                <p>View, track and block mobile activity remotely with Pumpic.<br class='only-mobile' />
                                    Keep your eyes open!
                                    {*Keep your family safe and secured with Pumpic. 
                                    <br />Track location. View calls and SMS. Follow online activity.*}</p>
                            </div>
                        </div>  
                                
                        <!-- features lists only mobile -->  
                        <div class='row'>
                            <div class='col-sm-12'>
                                
                                <ul class='box-features-header-lists features-mobile'>
                                    <!-- calls -->
                                    <li>
                                        <div class="row">
                                            
                                            <div class='col-sm-12 col-md-12'>
                                                
                                                <div class='box-features-header-item'>
                                                    <div>
                                                        <i class='i-header-feature-call'></i>
                                                        <a class="underline go_block_scroll" href="#calls">Calls</a>
                                                    </div>
                                                    <div class="bth-info">
                                                        <ul>
                                                            <li>in- and outbound call logs</li>
                                                            <li>name, number and time data</li>
                                                        </ul> 
                                                    </div>        
                                                </div>
                                                
                                            </div>
                                            
                                        </div>
                                    </li>
                                    
                                    <!-- Location & Geo-fences -->
                                    <li>
                                        <div class="row">
                                            
                                            <div class='col-sm-12 col-md-12'>
                                                
                                                <div class='box-features-header-item'>
                                                    <div>
                                                        <i class='i-header-feature-location-history min-t5'></i>
                                                        <a class="underline go_block_scroll" href="#location">Location & Geo-fences</a>
                                                    </div>
                                                    <div class="bth-info">
                                                        <ul>
                                                            <li>current GPS location & history</li>
                                                            <li>geo-fences and alerts</li>
                                                        </ul>
                                                    </div>        
                                                </div>
                                                
                                            </div>
                                            
                                        </div>
                                    </li>
                                    
                                    <!-- Online Chats -->
                                    <li>
                                        <div class="row">
                                            
                                            <div class='col-sm-12 col-md-12'>
                                                
                                                <div class='box-features-header-item'>
                                                    <div>
                                                        <i class='i-header-feature-chat min-t5'></i>
                                                        <a class="underline go_block_scroll" href="#social">Online Chats</a>
                                                    </div>
                                                    <div class="bth-info">
                                                        <ul>
                                                            <li>Facebook Messenger</li>
                                                            <li>WhatsApp, Viber, Skype, Kik</li>
                                                        </ul>
                                                    </div>        
                                                </div>
                                                
                                            </div>
                                            
                                        </div>
                                    </li>
                                    
                                    <!-- Email -->
                                    <li>
                                        <div class="row">
                                            
                                            <div class='col-sm-12 col-md-12'>
                                                
                                                <div class='box-features-header-item'>
                                                    <div>
                                                        <i class='i-header-feature-email'></i>
                                                        <a class="underline go_block_scroll" href="#email">Email</a>
                                                    </div>
                                                    <div class="bth-info">
                                                        <ul>
                                                            <li>inbox and sent emails</li>
                                                            <li>precise contact data</li>
                                                        </ul>
                                                    </div>        
                                                </div>
                                                
                                            </div>
                                            
                                        </div>
                                    </li>
                                    
                                    <!-- Text -->
                                    <li>
                                        <div class="row">
                                            
                                            <div class='col-sm-12 col-md-12'>
                                                
                                                <div class='box-features-header-item'>
                                                    <div>
                                                        <i class='i-header-feature-sms'></i>
                                                        <a class="underline go_block_scroll" href="#email">Texts</a>
                                                    </div>
                                                    <div class="bth-info">
                                                        <ul>
                                                            <li>SMS, MMS, iMessage text content</li>
                                                            <li>block or limit messages</li>
                                                        </ul>
                                                    </div>        
                                                </div>
                                                
                                            </div>
                                            
                                        </div>
                                    </li>
                                    
                                    <!-- SMS -->
                                    {*<li>
                                        <div class="row">
                                            
                                            <div class='col-sm-12 col-md-12'>
                                                
                                                <div class='box-features-header-item'>
                                                    <div>
                                                        <i class='i-header-feature-sms min-t5'></i>
                                                        <a class="underline go_block_scroll" href="#sms">SMS</a>
                                                    </div>
                                                    <div class="bth-info">
                                                        <ul>
                                                            <li>sent, received and deleted text messages</li>
                                                            <li>block by senders or bad words</li>
                                                        </ul>
                                                    </div>        
                                                </div>
                                                
                                            </div>
                                            
                                        </div>
                                    </li>*}
                                    
                                    <!-- Photos & Videos -->
                                    <li>
                                        <div class="row">
                                            
                                            <div class='col-sm-12 col-md-12'>
                                                
                                                <div class='box-features-header-item'>
                                                    <div>
                                                        <i class='i-header-feature-photos min-t5'></i>
                                                        <a class="underline go_block_scroll" href="#media">Photos & Videos</a>
                                                    </div>
                                                    <div class="bth-info">
                                                        <ul>
                                                            <li>camera shots, downloaded files</li>
                                                            <li>follow Instagram and Snapchat</li>
                                                        </ul>
                                                    </div>        
                                                </div>
                                                
                                            </div>
                                            
                                        </div>
                                    </li>
                                    
                                    <!-- Browsers & Applications -->
                                    <li>
                                        <div class="row">
                                            
                                            <div class='col-sm-12 col-md-12'>
                                                
                                                <div class='box-features-header-item'>
                                                    <div>
                                                        <i class='i-header-feature-browser min-t5'></i>
                                                        <a class="underline go_block_scroll" href="#applications">Browsers & Applications</a>
                                                    </div>
                                                    <div class="bth-info">
                                                        <ul>
                                                            <li>browsing history, bookmarks</li>
                                                            <li>block websites and limit apps</li>
                                                            {*<li>browsing history and bookmarks</li>
                                                            <li>block websites and limit applications</li>*}
                                                        </ul>
                                                    </div>        
                                                </div>
                                                
                                            </div>
                                            
                                        </div>
                                    </li>
                                    
                                    <!-- Calendar & Contacts -->
                                    <li>
                                        <div class="row">
                                            
                                            <div class='col-sm-12 col-md-12'>
                                                
                                                <div class='box-features-header-item'>
                                                    <div>
                                                        <i class='i-header-feature-calendar min-t5'></i>
                                                        <a class="underline go_block_scroll" href="#organiser">Calendar & Contacts</a>
                                                    </div>
                                                    <div class="bth-info">
                                                        <ul>
                                                            <li>scheduled plans and events</li>
                                                            <li>existing and deleted contacts</li>
                                                        </ul>
                                                    </div>        
                                                </div>
                                                
                                            </div>
                                            
                                        </div>
                                    </li>
                                    
                                </ul>
                                
                            </div>
                        </div>
                        <!-- end -->        
                                
                    </div>
                    
                </div>
                
                
            </div>
        </div>    
        
         <!-- BLOCK FEATURES -->
        <div class="dark">
                <div class="container">
                        <h2 class="text-center">Other Features</h2>
                        <div class="row">

                            <div id="table-container" class="table-col-8 table-sm-col-3">
                                
                                <section>
                                    <div class="tab col-item-3 col-md-item-3 col-sm-item-3">
                                        <ul>
                                            <li {*class="text-uppercase"*}>
                                                <i class="i-features-keyloger"></i> 
                                                <div>
                                                    Keylogger<br />
                                                    {*<span class="text-normal">(passwords, apps behaviour, incognito)</span>*}
                                                </div>    
                                            </li>
                                            <li>
                                                <i class="i-features-reboot"></i>
                                                <div>Reboot Application{*REBOOT APPLICATION*}</div>
                                            </li>
                                            <li>
                                                <i class="i-features-remote-activity-control"></i>
                                                <div>Remote Activity Control{*Remote activity control*}</div>
                                            </li>
                                        </ul>
                                    </div>

                                    <div class="tab col-item-3 col-md-item-3 col-sm-item-3">
                                        <ul>
                                            <li {*class="text-uppercase"*}>
                                                <i class="i-features-sms-commands"></i> 
                                                <div>SMS Commands</div>
                                            </li>
                                            <li>
                                                <i class="i-features-reboot"></i>
                                                <div>Reboot Device{*REBOOT DEVICE*}</div>
                                            </li>
                                            <li>
                                                <i class="i-features-remote-device-lock"></i>
                                                <div>Remote Device Lock</div>
                                            </li>
                                        </ul>
                                    </div>

                                    <div class="tab col-item-3 col-md-item-3 col-sm-item-3">
                                        <ul>
                                            <li>
                                                <i class="i-features-sim-card"></i>
                                                <div>SIM Change Notification{*SIM CHANGE <span class="text-normal">notification</span>*}</div>
                                            </li>
                                            <li>
                                                <i class="i-features-removal-protection"></i>
                                                <div>Removal Protection{*Removal protection*}</div>
                                            </li>
                                            <li>
                                                <i class="i-features-instant-location"></i>
                                                <div>Instant Location{*Instant location*}</div>
                                            </li>
                                        </ul>
                                    </div>
                                </section>

                            </div>    

                        </div>
                </div>
        </div>
              
        {include file='../includes/content/how-get-pumpic.tpl'
            blockBg="bg_white pt40"
            title = ""
            style = "images"
        }  
         
        <!-- BLOCK COMPATIBILITY -->
        {include file='../includes/content/compatibility/compatibility-table.tpl'
            blockBg="dark"
        } 
        
        <!-- BLOCK LIST FEATURES -->
        <div class="bg_white">
            <div class="container">
                
                <div class='row'>
                    <h2 class="text-center box-features-list-title">Features</h2>
                    
                    <!-- \\ list -->
                    <div id='box-features-list' class="div-table col-sm-12 col-md-12 col-lg-12">
                        
                        <!-- \\ #2 Calls: (even)-->
                        <div id="calls" class="div-table-row even">
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
                                        <p>Follow <b>incoming</b> and <b>outgoing</b> call logs with precise contact data including <b>name</b>, <b>number</b>, <b>time</b> of the call and its <b>duration</b>. Find out, who reaches the target phone, at what time and for how long.</p>
                                        
                                        <div><a class="btn-orange" href="http://demo.{$domain}/setDevice/125?redirect_url=cp/calls">View Demo</a></div>
                                        <label class="color-orange">(no registration required)</label>
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                        
                        <!-- \\ #3 SMS: (odd) -->
                        <div id="sms" class="div-table-row odd">
                            <div class="item-feature-list div-table-column col-lg-4 text-right">
                                
                                <div class='feature-item-info'>
                                    <ul>
                                        <li>
                                            <i class='i-list-features-sms only-mobile'></i>
                                            <strong>SMS and MMS</strong>
                                            <i class='i-list-features-sms only-pc'></i>
                                        </li>
                                    </ul>
                                    <div class='block-info'>
                                        <p>Monitor <b>sent</b>, <b>received</b>, and <b>deleted</b> text content of SMS, iMessages, and MMS. View data on both a sender and recipient. <b>Block</b> text messages by a <b>phone number</b>, <b>words</b>, or <b>phrases</b>. <b>Limit</b> a number of <b>texts sent daily</b>. </p>
                                        {*<ul>
                                            <li>Use Pumpic app to follow the entire call history of your</li>
                                            <li>child’s device. Protect your kids from mistrusted people.</li>
                                            <li>View a caller’s data including the name and phone number,</li>
                                            <li>the time when a call was received and duration of the </li>
                                            <li>conversation</li>
                                        </ul>*}
                                        <div><a class="btn-orange" href="http://demo.{$domain}/setDevice/125?redirect_url=cp/sms">View Demo</a></div>
                                        <label class="color-orange">(no registration required)</label>
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
                        <div id="location" class="div-table-row even">
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
                                        <div><a class="btn-orange" href="http://demo.{$domain}/setDevice/125?redirect_url=cp/locations">View Demo</a></div>
                                        <label class="color-orange">(no registration required)</label>
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                        
                        <!-- \\ #4 Applications: (odd) -->
                        <div id="applications" class="div-table-row odd">
                            <div class="item-feature-list div-table-column col-lg-4 text-right">
                                
                                <div class='feature-item-info'>
                                    <ul>
                                        <li>
                                            <i class='i-list-features-applications only-mobile'></i>
                                            <strong>Applications</strong>
                                            <i class='i-list-features-applications only-pc'></i>
                                        </li>
                                    </ul>
                                    
                                    <div class='block-info'>
                                        <p>Keep track of <b>installed applications</b> on the target device. <b>Block</b> and <b>set time limits</b> on running particular apps installed on the target device.</p>
                                        
                                        <div><a class="btn-orange" href="http://demo.{$domain}/setDevice/125?redirect_url=cp/applications">View Demo</a></div>
                                        <label class="color-orange">(no registration required)</label>
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
                                        
                                        <div><a class="btn-orange" href="http://demo.{$domain}/setDevice/125?redirect_url=cp/photos">View Demo</a></div>
                                        <label class="color-orange">(no registration required)</label>
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
                        <div id="social" class="div-table-row even">
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
                                        <li><i class='i-list-features-whatsapp'></i><strong>WhatsApp</strong></li>
                                        <li><i class='i-list-features-kik-chat'></i><strong>Kik</strong></li>
                                    </ul>
                                    
                                    <div class='block-info'>
                                        <p>
                                            Follow online communication activities. View <b>messages</b> sent and received via popular instant messengers like Facebook Messenger, Viber, Skype, WhatsApp, and Kik.
                                        </p>
                                        <p>
                                            Monitor <b>Skype</b>, <b>WhatsApp</b>, and <b>Facebook calls</b>.
                                        </p>
                                        {*<ul>
                                            <li>Pumpic allows you to monitor your child’s device activity in</li>
                                            <li>the most widely used communication applications like</li>
                                            <li>WhatsApp, Viber and Skype. Prevent your children from</li>
                                            <li>conversations with misgiving people.</li>
                                        </ul>*}
                                        <div><a class="btn-orange" href="http://demo.{$domain}/setDevice/125?redirect_url=cp/facebook">View Demo</a></div>
                                        <label class="color-orange">(no registration required)</label>
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                        
                        <!-- \\ #14 Snapchat: (odd) -->
                        <div id="snapchat" class="div-table-row odd">
                            <div class="item-feature-list div-table-column col-lg-4 text-right">
                                
                                <div class='feature-item-info'>
                                    <ul>
                                        <li>
                                            <i class='i-list-features-snapchat only-mobile'></i>
                                            <strong>Snapchat</strong>
                                            <i class='i-list-features-snapchat only-pc'></i>
                                        </li>
                                    </ul>
                                    
                                    <div class='block-info'>
                                        <p>Monitor temporary <b>photos</b>, <b>videos</b>, and <b>comments</b> posted on Snapchat. Prevent your children from inappropriate <b>content sharing</b> and <b>viewing</b>.</p>
                                        
                                        <div><a class="btn-orange" href="http://demo.{$domain}/setDevice/126?redirect_url=cp/call">View Demo</a></div>
                                        <label class="color-orange">(no registration required)</label>
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
                                <img style='max-width: 302px' class="image-features model-mobile-center" src='../images/technological/image-snapchat.png' />
                            </div>
                        </div> <!-- #snapchat -->              
                                        
                                        
                        <!-- \\ #6 Browser control: (even) -->
                        <div id="browser_control" class="div-table-row even">
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
                                        
                                        <div><a class="btn-orange" href="http://demo.{$domain}/setDevice/125?redirect_url=cp/browserHistory">View Demo</a></div>
                                        <label class="color-orange">(no registration required)</label>
                                    </div>
                                </div>
                                
                            </div>
                        </div> <!-- #browser_control -->
                        
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
                                        
                                        <div><a class="btn-orange" href="http://demo.{$domain}/setDevice/125?redirect_url=cp/browserHistory">View Demo</a></div>
                                        <label class="color-orange">(no registration required)</label>
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
                       <div id="media" class="div-table-row odd">
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
                                        
                                        <div><a class="btn-orange" href="http://demo.{$domain}/setDevice/125?redirect_url=cp/photos">View Demo</a></div>
                                        <label class="color-orange">(no registration required)</label>
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
                        
                       {*<div id="media" class="div-table-row even">
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
                                        
                                        <div><a class="btn-orange" href="http://demo.{$domain}/setDevice/125?redirect_url=cp/photos">View Demo</a></div>
                                        <label class="color-orange">(no registration required)</label>
                                    </div>
                                </div>
                                
                            </div>
                        </div>*}
                                        
                       <!-- \\ #7 Email: (even) -->
                       <div id="email" class="div-table-row even">
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
                                        <p>View <b>incoming</b>, <b>sent</b> and <b>deleted</b> emails. Find out precise communication data, including <b>names</b>, <b>addresses</b> and writing <b>time</b>. Monitor online correspondence, subscriptions and registrations.</p>
                                        
                                        <div><a class="btn-orange" href="http://demo.{$domain}/setDevice/125?redirect_url=cp/emails">View Demo</a></div>
                                        <label class="color-orange">(no registration required)</label>
                                    </div>
                                </div>
                                
                            </div>
                        </div> <!-- #email -->
                       
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
                                        
                                        <div><a class="btn-orange" href="http://demo.{$domain}/setDevice/125?redirect_url=cp/emails">View Demo</a></div>
                                        <label class="color-orange">(no registration required)</label>
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
                        <div id="organiser" class="div-table-row odd">
                            <div class="item-feature-list div-table-column col-lg-4 text-right">
                                
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
                                        
                                        <div><a class="btn-orange" href="http://demo.{$domain}/setDevice/125?redirect_url=cp/calendar">View Demo</a></div>
                                        <label class="color-orange">(no registration required)</label>
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
                        
                        {*<div id="organiser" class="div-table-row even">
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
                                        
                                        <div><a class="btn-orange" href="http://demo.{$domain}/setDevice/125?redirect_url=cp/calendar">View Demo</a></div>
                                        <label class="color-orange">(no registration required)</label>
                                    </div>
                                </div>
                                
                            </div>
                        </div>*}
                        
                        <!-- \\ #9 Keylogger: (even) -->
                        <div id="keylogger" class="div-table-row even">
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
                                        <p>Keep track of <b>each keystroke typed</b> and every tap on the touchscreen of the target device. Follow <b>logins</b> and <b>passwords</b>, as well as words written in browser in <b>incognito mode</b>. Monitor texts written <b>in any app</b>.</p>
                                        
                                        <div><a class="btn-orange" href="http://demo.{$domain}/setDevice/125?redirect_url=cp/keylogger">View Demo</a></div>
                                        <label class="color-orange">(no registration required)</label>
                                    </div>
                                </div>
                                
                            </div>
                        </div> <!-- #keylogger -->
                        
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
                                        
                                        <div><a class="btn-orange" href="http://demo.{$domain}/setDevice/125?redirect_url=cp/keylogger">View Demo</a></div>
                                        <label class="color-orange">(no registration required)</label>
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
                        <div id="sms_commands" class="div-table-row odd">
                            <div class="item-feature-list div-table-column col-lg-4 text-right">
                                
                                <div class='feature-item-info'>
                                    <ul>
                                        <li>
                                            <i class='i-list-features-sms-command only-mobile'></i>
                                            <strong>SMS commands</strong>
                                            <i class='i-list-features-sms-command only-pc'></i>
                                        </li>
                                    </ul>
                                    
                                    <div class='block-info'>
                                        <p>Control the target device remotely. <b>Lock</b> or <b>wipe</b> it out even <b>without Internet connection</b>. Manipulate the target smartphone or tablet <b>by sending text messages</b>.</p>
                                        
                                        <div><a class="btn-orange" href="http://demo.{$domain}/setDevice/125?redirect_url=cp/smsCommands">View Demo</a></div>
                                        <label class="color-orange">(no registration required)</label>
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
                        
                        {*<div id="sms_commands" class="div-table-row even">
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
                                        <p>Control the target device remotely. <b>Lock</b> or <b>wipe</b> it out even <b>without Internet connection</b>. Manipulate the target smartphone or tablet <b>by sending text messages</b>.</p>
                                        
                                        <div><a class="btn-orange" href="http://demo.{$domain}/setDevice/125?redirect_url=cp/smsCommands">View Demo</a></div>
                                        <label class="color-orange">(no registration required)</label>
                                    </div>
                                </div>
                                
                            </div>
                        </div>*}
                        
                        <!-- \\ #12 Instagram Monitoring: (even) -->
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
                                        
                                        <div><a class="btn-orange" href="http://demo.{$domain}/setDevice/125?redirect_url=cp/instagram">View Demo</a></div>
                                        <label class="color-orange">(no registration required)</label>
                                    </div>
                                </div>
                                
                            </div>
                        </div> <!-- #instagram -->
                        
                        {*<div id="instagram" class="div-table-row odd">
                            <div class="item-feature-list div-table-column col-lg-4 text-right">
                                
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
                                        
                                        <div><a class="btn-orange" href="http://demo.{$domain}/setDevice/125?redirect_url=cp/instagram">View Demo</a></div>
                                        <label class="color-orange">(no registration required)</label>
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
                        </div>*}
                        
                        <!-- \\ #13 Geo-fencing: (odd)-->
                        <div id="geo_fencing" class="div-table-row odd">
                            <div class="item-feature-list div-table-column col-lg-4 text-right">
                                
                                <div class='feature-item-info'>
                                    <ul>
                                        <li>
                                            <i class='i-list-features-geo-fencing only-mobile'></i>
                                            <strong>Geo-fencing</strong>
                                            <i class='i-list-features-geo-fencing only-pc'></i>
                                        </li>
                                    </ul>
                                    
                                    <div class='block-info'>
                                        <p>Define and <b>set specific zones</b> on the <b>map</b>. <b>Receive notifications</b>, once the target device <b>leaves</b> or <b>enters</b> a restricted area.</p>
                                        
                                        <div><a class="btn-orange" href="http://demo.{$domain}/setDevice/125?redirect_url=cp/locations">View Demo</a></div>
                                        <label class="color-orange">(no registration required)</label>
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
                                        
                                        <div><a class="btn-orange" href="http://demo.{$domain}/setDevice/125?redirect_url=cp/locations">View Demo</a></div>
                                        <label class="color-orange">(no registration required)</label>
                                    </div>
                                </div>
                                
                            </div>
                        </div>*}
                        
                        <!-- \\ #14 iCloud monitoring: (even) -->
                        <div id="icloud" class="div-table-row even">
                            <div class="item-feature-list div-table-column col-sm-12 col-md-4 col-lg-4 text-right">
                                <img style='max-width: 398px' class="image-features model-mobile-center" src='../images/technological/image-icloud.png' />
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
                                        <li><i class='i-list-features-icloud'></i><strong>iCloud monitoring <span class='text-normal'>(jailbreak-free)</span></strong></li>
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
                                            <li>Location</li>
                                            <li>Photos</li>
                                            <li>Notes</li>
                                            <li>WhatsApp</li>
                                            <li>Skype</li>
                                        </ul>
                                        <div><a class="btn-orange" href="http://demo.{$domain}/setDevice/126?redirect_url=cp/call">View Demo</a></div>
                                        <label class="color-orange">(no registration required)</label>
                                    </div>
                                </div>
                                
                            </div>
                        </div> <!-- #icloud -->
                        
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
                                        <div><a class="btn-orange" href="http://demo.{$domain}/setDevice/126?redirect_url=cp/call">View Demo</a></div>
                                        <label class="color-orange">(no registration required)</label>
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
                        <div id="other_features" class="div-table-row odd">
                            <div class="item-feature-list div-table-column col-lg-4 text-right">
                                
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
                                            <li>Receive notifications on a SIM card change</li>
                                            <li>Reboot the target device or the applications remotely</li>
                                            <li>Protect Pumpic app with a password from being removed</li>
                                            <li>Lock the target device and control its activity remotely</li>
                                        </ul>
                                        <div><a class="btn-orange" href="http://demo.{$domain}/setDevice/125?redirect_url=cp/settings">View Demo</a></div>
                                        <label class="color-orange">(no registration required)</label>
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
                                        <div><a class="btn-orange" href="http://demo.{$domain}/setDevice/125?redirect_url=cp/settings">View Demo</a></div>
                                        <label class="color-orange">(no registration required)</label>
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
                                    <a class='btn-red{*btn-green*}' href='http://{$domain}/store.html' >Try now!</a>
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
        </div>
        
        <!-- BLOCK LINE -->
        <div class="border-dark-line"></div>    
        
        {*include file='../includes/main/main-quick-link.tpl' 
            blockBg="light"
        *} 
        
        <!-- RECOMMENDED -->
        {*
            Template: RECOMMENDED
        *}    
        {include file='../includes/main/main-recommended.tpl'}
        
        {include file='../includes/main/main-testimonials.tpl'
                title = "Trusted by Over 10 000 Customers Worldwide"
                sliders = "true"
                blockBg="bg_white pt40"} {* light *} 
        
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