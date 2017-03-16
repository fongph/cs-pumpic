<style>
    .filter_fe {
        border-bottom: 1px solid #e8e8e8;
        float: none;
    }
</style>
<div class="{if isset($blockBg)}{$blockBg}{else}dark{/if} table-padding">
        <div class="container">
                <h2 class="text-center">{if isset($title)}{$title}{else}Useful Features for Every Careful Parent{/if}</h2>
                <div class="row">
                    <div id="table-container" class="ft-table__wrapper table-md-col-3 table-sm-col-3">
                        <article>
                            {if isset($description)}
                                {$description}
                            {else}
                                Pumpic app is a multi-featured parental control application for mobile phones and tablets designed to protect the entire family and prevent dangers your kids may face both in the real and digital worlds. It comes with more than 24 useful monitoring features that cover as many parts of your kids’ lives as possible. Both online and during daily activities, our parental control app provides all-round protection and secures family well-being. Are you a careful parent? Then ensure child safety with Pumpic and its useful features listed below.
                            {/if}
                        </article>

                            <div class="ft-table">
                                <h2 class="ft-table__headline">
                                    Supported OS Versions:
                                </h2>
                                <ul class="ft-table__list">
                                    <li class="ft-table__item">
                                        <div class="os-label label-black">
                                            <i class="fa fa-apple"></i>IOS
                                        </div>
                                        &mdash;
                                        <span class="ft-table__os"><i class="fa fa-apple fa-lg"></i> IOS </span>
                                        <span class="ft-table__os-version">{$ver_icloud_bot} - {$ver_icloud_up}</span>
                                        <div class="ft-table__descr">iCloud password required</div>
                                    </li>
                                    <li class="ft-table__item">
                                        <div class="os-label label-green large">
                                            <i class="fa fa-android"></i>
                                        </div>
                                        &mdash;
                                        <span class="ft-table__os"><i class="fa fa-android fa-lg"></i> Android </span>
                                        <span class="ft-table__os-version">{$ver_android_bot} - {$ver_android_up}</span>
                                        <div class="ft-table__descr">Some features require root</div>
                                    </li>
                                </ul>
                            </div>

                        <section class="_features-content">
                            <div class="tab col-item-3 col-md-item-3 col-sm-item-3 last">
                                <ul>
                                    <li>
                                        <svg width="22" height="22" class="features-icon vertical-center mr5">
                                            <use xlink:href="/images/svg-icons.svg#texts"></use>
                                        </svg>
                                        <span onclick="window.location='/mobile-sms-spy.html'">Monitor SMS and MMS</span>
                                        <div class="os-label__wrapper">
                                            <div class="os-label label-black">
                                                <i class="fa fa-apple"></i>IOS
                                            </div>
                                            <div class="os-label label-green large">
                                                <i class="fa fa-android"></i>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <svg width="22" height="21" class="features-icon vertical-center mr5">
                                            <use xlink:href="/images/svg-icons.svg#calls"></use>
                                        </svg>
                                        {if !in_array('call-monitoring-software', $_notVisible)}<span onclick="window.location='/call-monitoring-software.html'">Monitor Calls History{else}Monitor Calls History{/if}
                                        <div class="os-label__wrapper">
                                            <div class="os-label label-black">
                                                <i class="fa fa-apple"></i>IOS
                                            </div>
                                            <div class="os-label label-green large">
                                                <i class="fa fa-android"></i>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <svg width="22" height="20" class="features-icon vertical-center mr5">
                                            <use xlink:href="/images/svg-icons.svg#calendar"></use>
                                        </svg>
                                        View Calendar
                                        <div class="os-label__wrapper">
                                            <div class="os-label label-black">
                                                <i class="fa fa-apple"></i>IOS
                                            </div>
                                            <div class="os-label label-green large">
                                                <i class="fa fa-android"></i>
                                            </div>
                                        </div>

                                    </li>
                                    <li>
                                        <svg width="22" height="22" class="features-icon vertical-center mr5">
                                            <use xlink:href="/images/svg-icons.svg#contacts"></use>
                                        </svg>
                                        <span onclick="window.location='/monitor-phone-contacts.html'"> View Contacts</span>
                                        <div class="os-label__wrapper">
                                            <div class="os-label label-black">
                                                <i class="fa fa-apple"></i>IOS
                                            </div>
                                            <div class="os-label label-green large">
                                                <i class="fa fa-android"></i>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <svg width="20" height="19" class="features-icon vertical-center mr5">
                                            <use xlink:href="/images/svg-icons.svg#mail"></use>
                                        </svg>
                                        <span onclick="window.location='/email-monitoring-software.html'">View Emails</span>
                                        <div class="os-label__wrapper">
                                            <div class="os-label label-green">
                                                <i class="fa fa-android"></i>root
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <svg width="21" height="21" class="features-icon vertical-center mr5">
                                            <use xlink:href="/images/svg-icons.svg#photos"></use>
                                        </svg>
                                        View Photos
                                        <div class="os-label__wrapper">
                                            <div class="os-label label-black">
                                                <i class="fa fa-apple"></i>IOS
                                            </div>
                                            <div class="os-label label-green large">
                                                <i class="fa fa-android"></i>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <svg width="21" height="20" class="features-icon vertical-center mr5">
                                            <use xlink:href="/images/svg-icons.svg#video"></use>
                                        </svg>
                                        View Videos
                                        <div class="os-label__wrapper">
                                            <div class="os-label label-green large">
                                                <i class="fa fa-android"></i>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <svg width="22" height="22" class="features-icon vertical-center mr5">
                                            <use xlink:href="/images/svg-icons.svg#remote"></use>
                                        </svg>
                                        Remote Control Panel
                                        <div class="os-label__wrapper">
                                            <div class="os-label label-black">
                                                <i class="fa fa-apple"></i>IOS
                                            </div>
                                            <div class="os-label label-green large">
                                                <i class="fa fa-android"></i>
                                            </div>
                                        </div>
                                    </li>
                                    {*<li><i class="i-features-kik-chat"></i> Monitor Kik</li>*}
                                </ul>
                            </div>

                            <div class="tab col-item-3 col-md-item-3 col-sm-item-3">
                                <ul>
                                    <li>
                                        <svg width="20" height="20" class="features-icon vertical-center mr5">
                                            <use xlink:href="/images/svg-icons.svg#browsers"></use>
                                        </svg>
                                        <span onclick="window.location='/browser-parental-control.html'">Control Browser</span>
                                        <div class="os-label__wrapper">
                                            <div class="os-label label-black">
                                                <i class="fa fa-apple"></i>IOS
                                            </div>
                                            <div class="os-label label-green large">
                                                <i class="fa fa-android"></i>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <svg width="22" height="22" class="features-icon vertical-center mr5">
                                            <use xlink:href="/images/svg-icons.svg#application"></use>
                                        </svg>
                                        <span onclick="window.location='/block-apps.html'">Control Applications</span>
                                        <div class="os-label__wrapper">
                                            <div class="os-label label-green large">
                                                <i class="fa fa-android"></i>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <svg width="22" height="22" class="features-icon vertical-center mr5">
                                            <use xlink:href="/images/svg-icons.svg#bookmarks"></use>
                                        </svg>
                                        View Bookmarks
                                        <div class="os-label__wrapper">
                                            <div class="os-label label-black">
                                                <i class="fa fa-apple"></i>IOS
                                            </div>
                                            <div class="os-label label-green large">
                                                <i class="fa fa-android"></i>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <svg width="20" height="20" class="features-icon vertical-center mr5">
                                            <use xlink:href="/images/svg-icons.svg#notes"></use>
                                        </svg>
                                        View Notes
                                        <div class="os-label__wrapper">
                                            <div class="os-label label-black">
                                                <i class="fa fa-apple"></i>IOS
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <svg width="20" height="20" class="features-icon vertical-center mr5">
                                            <use xlink:href="/images/svg-icons.svg#lock"></use>
                                        </svg>
                                        Block Device
                                        <div class="os-label__wrapper">
                                            <div class="os-label label-green large">
                                                <i class="fa fa-android"></i>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <svg width="20" height="20" class="features-icon vertical-center mr5">
                                            <use xlink:href="/images/svg-icons.svg#location"></use>
                                        </svg>
                                        {if !in_array('location-tracking', $_notVisible)}<span onclick="window.location='/child-location-tracking.html'">Location Tracking</span>{else}Location Tracking{/if}
                                        <div class="os-label__wrapper">
                                            <div class="os-label label-black">
                                                <i class="fa fa-apple"></i>IOS
                                            </div>
                                            <div class="os-label label-green large">
                                                <i class="fa fa-android"></i>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <svg width="22" height="22" class="features-icon vertical-center mr5">
                                            <use xlink:href="/images/svg-icons.svg#geo-fencing"></use>
                                        </svg>
                                        {if !in_array('geo-fences', $_notVisible)}<span onclick="window.location='/gps-and-geofencing.html'">Geo-fences</span>{else}Geo-fences{/if}
                                        <div class="os-label__wrapper">
                                            <div class="os-label label-green large">
                                                <i class="fa fa-android"></i>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <svg width="22" height="22" class="features-icon vertical-center mr5">
                                            <use xlink:href="/images/svg-icons.svg#keylogger"></use>
                                        </svg>
                                        <span onclick="window.location='/keylogging-software.html'">Keylogger</span>
                                        <div class="os-label__wrapper">
                                            <div class="os-label label-green large">
                                                <i class="fa fa-android"></i>
                                            </div>

                                        </div>
                                    </li>
                                    {*<li class="hidden-mobile">&nbsp;</li>*}
                                </ul>
                            </div>

                            <div class="tab col-item-3 col-md-item-3 col-sm-item-3">
                                <ul>
                                    <li>
                                        <svg width="20" height="20" class="features-icon vertical-center mr5">
                                            <use xlink:href="/images/svg-icons.svg#chats"></use>
                                        </svg>
                                        </i> <span onclick="window.location='/whatsapp-monitoring.html'">Monitor WhatsApp</span>
                                        <div class="os-label__wrapper">
                                            <div class="os-label label-black">
                                                <i class="fa fa-apple"></i>IOS
                                            </div>
                                            <div class="os-label label-green">
                                                <i class="fa fa-android"></i>root
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <svg width="20" height="20" class="features-icon vertical-center mr5">
                                            <use xlink:href="/images/svg-icons.svg#skype"></use>
                                        </svg>
                                        <span onclick="window.location='/monitor-skype.html'">Monitor Skype</span>
                                        <div class="os-label__wrapper">
                                            <div class="os-label label-black">
                                                <i class="fa fa-apple"></i>IOS
                                            </div>
                                            <div class="os-label label-green">
                                                <i class="fa fa-android"></i>root
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <svg width="20" height="20" class="features-icon vertical-center mr5">
                                            <use xlink:href="/images/svg-icons.svg#facebook"></use>
                                        </svg>
                                        Monitor Facebook IM
                                        <div class="os-label__wrapper">
                                            <div class="os-label label-green">
                                                <i class="fa fa-android"></i>root
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <svg width="20" height="20" class="features-icon vertical-center mr5">
                                            <use xlink:href="/images/svg-icons.svg#viber"></use>
                                        </svg>
                                        <span onclick="window.location='/monitor-viber.html'">Monitor Viber</span>
                                        <div class="os-label__wrapper">
                                            <div class="os-label label-green">
                                                <i class="fa fa-android"></i>root
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <svg width="20" height="20" class="features-icon vertical-center mr5">
                                            <use xlink:href="/images/svg-icons.svg#instagram"></use>
                                        </svg>
                                        <span onclick="window.location='/parental-control-for-instagram.html'">Monitor Instagram</span>
                                        <div class="os-label__wrapper">
                                            <div class="os-label label-green">
                                                <i class="fa fa-android"></i>root
                                            </div>
                                        </div>
                                    </li>
                                    {*<li><i class="i-features-remote-activity-control"></i> Remote Control Panel</li>*}
                                    <li>
                                        <svg width="22" height="20" class="features-icon vertical-center mr5">
                                            <use xlink:href="/images/svg-icons.svg#kik"></use>
                                        </svg>
                                        <span onclick="window.location='/monitor-kik-messenger.html'">Monitor Kik</span>
                                        <div class="os-label__wrapper">
                                            <div class="os-label label-black">
                                                <i class="fa fa-apple"></i>IOS
                                            </div>
                                            <div class="os-label label-green">
                                                <i class="fa fa-android"></i>root
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <svg width="22" height="22" class="features-icon vertical-center mr5">
                                            <use xlink:href="/images/svg-icons.svg#snapchat"></use>
                                        </svg>
                                        <span onclick="window.location='/monitor-snapchat.html'">Monitor Snapchat</span>
                                        <div class="os-label__wrapper">
                                            <div class="os-label label-green">
                                                <i class="fa fa-android"></i>root
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <svg width="22" height="22" class="features-icon vertical-center mr5">
                                            <use xlink:href="/images/svg-icons.svg#sms-commands"></use>
                                        </svg>
                                        SMS Commands
                                        <div class="os-label__wrapper">
                                            <div class="os-label label-green large">
                                                <i class="fa fa-android"></i>
                                            </div>
                                        </div>
                                    </li>
                                    {*<li class="last-child-hidden all-features-item"><img src="/images/icon-ph.png" class="img-ph" alt="">*}
                                        {*<a href="/all-features.html">View All Features  <i class="icon-right-open"></i> </a> </li>*}
                                    {*<li class="hidden-mobile">&nbsp;</li>*}
                                </ul>
                            </div>
                        </section>

                        <div class="text-center button-more-detailes">
                            {if $icloud == "yes"}
                            <a href="/all-features.html" class="btn btn-green ga-action-click" ga-category="features-block" ga-action="click" ga-label="all-features" rel="nofollow">
                                All Features</a>
                                {if $storeLink != "no"}
                                <a href="/store.html" class="btn btn-default ga-action-click" ga-category="features-block" ga-action="click" ga-label="store" rel="nofollow">
                                    {if isset($storeLinkText)}{$storeLinkText}{else}Start Monitoring{/if}</a>
                                {/if}
                            {/if}
                            {if $android == "yes"}
                            <a href="/all-features.html#android" class="btn btn-green ga-action-click" ga-category="features-block" ga-action="click" ga-label="all-features" rel="nofollow">
                                All Features</a>
                                {if $storeLink != "no"}
                                    <a href="/store.html#android" class="btn btn-default ga-action-click" ga-category="features-block" ga-action="click" ga-label="store" rel="nofollow">
                                        {if isset($storeLinkText)}{$storeLinkText}{else}Start Monitoring{/if}</a>
                                {/if}
                            {/if}
                            {if $jailbreak == "yes"}
                            <a href="/all-features.html#jailbreak" class="btn btn-green ga-action-click" ga-category="features-block" ga-action="click" ga-label="all-features" rel="nofollow">
                                All Features</a>
                                {if $storeLink != "no"}
                                    <a href="/store.html#jailbreak" class="btn btn-default ga-action-click" ga-category="features-block" ga-action="click" ga-label="store" rel="nofollow">
                                        {if isset($storeLinkText)}{$storeLinkText}{else}Start Monitoring{/if}</a>
                                {/if}
                            {/if}
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



    @media (min-width: 480px){
        .last-child-hidden{
            display: none !important;
        }
    }



</style>
