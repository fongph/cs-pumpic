{*<div class="{if $blockBg}{$blockBg}{else}dark{/if}">
        <div class="container">
                <h2 class="text-center">Useful Features for Every Careful Parent</h2>
                <div class="row">

                    <div id="table-container" class="table-col-3 table-md-col-3 table-sm-col-3">
                        <h1 class="text-center">Pumpic app is a multifeature parental control application for mobile phones and tablets designed to protect all the family and prevent dangers your kids may face. It comes with more than 24 useful monitoring features, which cover as many parts of your kids’ lives as possible. Both online and during daily activities, our parental control app provides all-round protection and secures family happiness.</h1>
                        <h1 class="text-center">Are you a careful parent? Then ensure child safety with Pumpic and its useful features listed below.</h1>
                        <section>
                            <div class="tab col-item-3 col-md-item-3 col-sm-item-3">
                                <ul>
                                    <li><i class="i-features-sms"></i> View SMS</li>
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
</div>*}

<div class="{if isset($blockBg)}{$blockBg}{else}dark{/if} table-padding">
        <div class="container">
                <h2 class="text-center">{if isset($title)}{$title}{else}Useful Features for Every Careful Parent{/if}</h2>
                <div class="row">
                    <div id="table-container" class="table-col-3 table-md-col-3 table-sm-col-3">
                        <article>
                            {if isset($description)}
                                {$description}
                            {else}
                                Pumpic app is a multi-featured parental control application for mobile phones and tablets designed to protect the entire family and prevent dangers your kids may face both in the real and digital worlds. It comes with more than 24 useful monitoring features that cover as many parts of your kids’ lives as possible. Both online and during daily activities, our parental control app provides all-round protection and secures family well-being. Are you a careful parent? Then ensure child safety with Pumpic and its useful features listed below.
                                {*Pumpic is reasonably improved mobile phone tracking software, which comes with a large range of monitoring functions.
                            They will help you keep track of the target device quickly and quite.*}
                            {/if}
                        </article>
                        <section>
                            <div class="tab col-item-3 col-md-item-3 col-sm-item-3">
                                <ul>
                                    <li>
                                        <svg width="22" height="22" class="features-icon vertical-center mr5">
                                            <use xlink:href="/images/svg-icons.svg#texts"></use>
                                        </svg>
                                        <span onclick="window.location='/mobile-sms-spy.html'">Monitor SMS and MMS</span></li>
                                    <li>
                                        <svg width="22" height="22" class="features-icon vertical-center mr5">
                                            <use xlink:href="/images/svg-icons.svg#calls"></use>
                                        </svg>
                                        </i> {if !in_array('call-monitoring-software', $_notVisible)}<span onclick="window.location='/call-monitoring-software.html'">Monitor Calls History</span>{else}Monitor Calls History{/if}</li>
                                    <li>
                                        <svg width="22" height="22" class="features-icon vertical-center mr5">
                                            <use xlink:href="/images/svg-icons.svg#calendar"></use>
                                        </svg>
                                        View Calendar</li>
                                    <li>
                                        <svg width="22" height="22" class="features-icon vertical-center mr5">
                                            <use xlink:href="/images/svg-icons.svg#contacts"></use>
                                        </svg>
                                        <span onclick="window.location='/monitor-phone-contacts.html'"> View Contacts</span></li>
                                    <li>
                                        <svg width="22" height="22" class="features-icon vertical-center mr5">
                                            <use xlink:href="/images/svg-icons.svg#mail"></use>
                                        </svg>
                                        <span onclick="window.location='/email-monitoring-software.html'">View Emails</span></li>
                                    <li>
                                        <svg width="22" height="22" class="features-icon vertical-center mr5">
                                            <use xlink:href="/images/svg-icons.svg#photos"></use>
                                        </svg>
                                        View Photos</li>
                                    <li>
                                        <svg width="22" height="22" class="features-icon vertical-center mr5">
                                            <use xlink:href="/images/svg-icons.svg#video"></use>
                                        </svg>
                                        View Videos</li>
                                    <li>
                                        <svg width="22" height="22" class="features-icon vertical-center mr5">
                                            <use xlink:href="/images/svg-icons.svg#remote"></use>
                                        </svg>
                                        Remote Control Panel</li>
                                    {*<li><i class="i-features-kik-chat"></i> Monitor Kik</li>*}
                                </ul>
                            </div>

                            <div class="tab col-item-3 col-md-item-3 col-sm-item-3">
                                <ul>
                                    <li>
                                        <svg width="22" height="22" class="features-icon vertical-center mr5">
                                            <use xlink:href="/images/svg-icons.svg#browsers"></use>
                                        </svg>
                                        <span onclick="window.location='/browser-parental-control.html'">Control Browser</span></li>
                                    <li>
                                        <svg width="22" height="22" class="features-icon vertical-center mr5">
                                            <use xlink:href="/images/svg-icons.svg#application"></use>
                                        </svg>
                                        <span onclick="window.location='/block-apps.html'">Control Applications</span></li>
                                    <li>
                                        <svg width="22" height="22" class="features-icon vertical-center mr5">
                                            <use xlink:href="/images/svg-icons.svg#bookmarks"></use>
                                        </svg>
                                        View Bookmarks</li>
                                    <li>
                                        <svg width="22" height="22" class="features-icon vertical-center mr5">
                                            <use xlink:href="/images/svg-icons.svg#notes"></use>
                                        </svg>
                                        View Notes</li>
                                    <li>
                                        <svg width="22" height="22" class="features-icon vertical-center mr5">
                                            <use xlink:href="/images/svg-icons.svg#lock"></use>
                                        </svg>
                                        Block Device</li>
                                    <li>
                                        <svg width="22" height="22" class="features-icon vertical-center mr5">
                                            <use xlink:href="/images/svg-icons.svg#location"></use>
                                        </svg>
                                        {if !in_array('location-tracking', $_notVisible)}<span onclick="window.location='/child-location-tracking.html'">Location Tracking</span>{else}Location Tracking{/if}</li>
                                    <li>
                                        <svg width="22" height="22" class="features-icon vertical-center mr5">
                                            <use xlink:href="/images/svg-icons.svg#geo-fencing"></use>
                                        </svg>
                                        {if !in_array('geo-fences', $_notVisible)}<span onclick="window.location='/gps-and-geofencing.html'">Geo-fences</span>{else}Geo-fences{/if}</li>
                                    <li>
                                        <svg width="22" height="22" class="features-icon vertical-center mr5">
                                            <use xlink:href="/images/svg-icons.svg#keylogger"></use>
                                        </svg>
                                        <span onclick="window.location='/keylogging-software.html'">Keylogger</span></li>
                                    {*<li class="hidden-mobile">&nbsp;</li>*}
                                </ul>
                            </div>

                            <div class="tab col-item-3 col-md-item-3 col-sm-item-3 last">
                                <ul>
                                    <li>
                                        <svg width="22" height="22" class="features-icon vertical-center mr5">
                                            <use xlink:href="/images/svg-icons.svg#chats"></use>
                                        </svg>
                                        <span onclick="window.location='/whatsapp-monitoring.html'">Monitor WhatsApp</span></li>
                                    <li>
                                        <svg width="22" height="22" class="features-icon vertical-center mr5">
                                            <use xlink:href="/images/svg-icons.svg#skype"></use>
                                        </svg>
                                        <span onclick="window.location='/monitor-skype.html'">Monitor Skype</span></li>
                                    <li>
                                        <svg width="22" height="22" class="features-icon vertical-center mr5">
                                            <use xlink:href="/images/svg-icons.svg#facebook"></use>
                                        </svg>
                                        Monitor Facebook IM</li>
                                    <li>
                                        <svg width="22" height="22" class="features-icon vertical-center mr5">
                                            <use xlink:href="/images/svg-icons.svg#viber"></use>
                                        </svg>
                                        <span onclick="window.location='/monitor-viber.html'">Monitor Viber</span></li>
                                    <li>
                                        <svg width="22" height="22" class="features-icon vertical-center mr5">
                                            <use xlink:href="/images/svg-icons.svg#instagram"></use>
                                        </svg>
                                        <span onclick="window.location='/parental-control-for-instagram.html'">Monitor Instagram</span></li>
                                    {*<li><i class="i-features-remote-activity-control"></i> Remote Control Panel</li>*}
                                    <li>
                                        <svg width="22" height="22" class="features-icon vertical-center mr5">
                                            <use xlink:href="/images/svg-icons.svg#kik"></use>
                                        </svg>
                                        <span onclick="window.location='/monitor-kik-messenger.html'">Monitor Kik</span></li>
                                    <li>
                                        <svg width="22" height="22" class="features-icon vertical-center mr5">
                                            <use xlink:href="/images/svg-icons.svg#snapchat"></use>
                                        </svg>
                                        <span onclick="window.location='/monitor-snapchat.html'">Monitor Snapchat</span> </li>
                                    <li>
                                        <svg width="22" height="22" class="features-icon vertical-center mr5">
                                            <use xlink:href="/images/svg-icons.svg#sms-commands"></use>
                                        </svg>
                                        SMS Commands</li>
                                    <li class="last-child-hidden" style="padding-top: 16px;"><img src="/images/hashtag-icon.png" class="img-ph" alt="hashtag symbol">
                                        <a href="/all-features.html">View All Features  <i class="icon-right-open"></i> </a> </li>
                                    {*<li class="hidden-mobile">&nbsp;</li>*}
                                </ul>
                            </div>
                        </section>

                        <div class="text-center button-more-detailes">
                            <a href="/all-features.html" class="btn-gree" rel="nofollow">More Details</a>
                        </div>

                    </div>
                </div>
        </div>
</div>


<style>

    .img-ph{
        vertical-align: bottom;
        margin: 0px 8px 0px 6px;
    }

    .last-child-hidden a{
        color: #16a89e !important;
        cursor: pointer !important;
    }


    @media (max-width: 480px){
        .button-more-detailes{
            display: none;
        }

    }


    @media (min-width: 480px){
        .last-child-hidden{
            display: none !important;
        }
    }



</style>
