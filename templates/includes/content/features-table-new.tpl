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
                    <div id="table-container" class="table-col-3 table-md-col-3 table-sm-col-3">
                        <article>
                            {if isset($description)}
                                {$description}
                            {else}
                                Pumpic app is a multi-featured parental control application for mobile phones and tablets designed to protect the entire family and prevent dangers your kids may face both in the real and digital worlds. It comes with more than 24 useful monitoring features that cover as many parts of your kids’ lives as possible. Both online and during daily activities, our parental control app provides all-round protection and secures family well-being. Are you a careful parent? Then ensure child safety with Pumpic and its useful features listed below.
                            {/if}
                        </article>

                        <div class="filter-descr">
                            <div class="filter_fe">
                                <ul class="filter_list">
                                    <li class="filter_item _features-filter{if !$android  && !$jailbreak} filter-active{/if}" data-filter="os-ios"><i class="fa fa-apple filter_icon"></i> <b>iOS</b> <span class="filter_version _version-hide-xs">{$ver_icloud_bot} - {$ver_icloud_up}</span><span class="filter_version"> (iCloud)</span></li>
                                    <li class="filter_item _features-filter{if $android == "yes"} filter-active{/if}" data-filter="os-android"><i class="fa fa-android filter_icon"></i> <b>Android</b> <span class="filter_version _version-hide-xs">{$ver_android_bot} - {$ver_android_up}</span></li>
                                    <li class="filter_item _features-filter{if $jailbreak == "yes"} filter-active{/if}" data-filter="os-jailbreak"><i class="fa fa-unlock-alt filter_icon"></i> <b>iOS</b><span class="filter_version _version-hide-xs"> {$ver_ios_bot} - {$ver_jailbreak_up}</span><span class="filter_version"> (jailbreak)</span></li>
                                </ul>
                            </div>
                            {if $android == "yes" || $jailbreak == "yes"}
                                {*noindex ios*}
                            {/if}
                            <div class="prod-head__wrapper _features-content" data-feature="os-ios"
                                 {if $android == "yes" || $jailbreak == "yes"}style="display: none;"{/if}>
                                <div class="filter-comment">No Jailbreak required</div>
                                <span class="prod-head__device phone">iPhone</span>
                                <span class="prod-head__device tablet">iPad</span>
                                <span class="prod-head__device smart">iPod Touch</span>
                            </div>
                            {if $android == "yes" || $jailbreak == "yes"}
                                {*noindex ios*}
                            {/if}
                            {if !$android}
                                {*noindex android*}
                            {/if}
                            <div class="prod-head__wrapper _features-content" data-feature="os-android" {if !$android}style="display: none;"{/if}>
                                <div class="filter-comment">Rooting is required for extended functionality</div>
                                <span class="prod-head__device phone">Smartphone</span>
                                <span class="prod-head__device tablet">Tablet</span>
                            </div>
                            {if !$android}
                                {*noindex android*}
                            {/if}
                            {if !$jailbreak}
                                {*noindex jailbreak*}
                            {/if}
                            <div class="prod-head__wrapper _features-content" data-feature="os-jailbreak" {if !$jailbreak}style="display: none;"{/if}>
                                <div class="filter-comment">Jailbreak required</div>
                                <span class="prod-head__device phone">iPhone</span>
                                <span class="prod-head__device tablet">iPad</span>
                                <span class="prod-head__device smart">iPod Touch</span>
                            </div>
                            {if !$jailbreak}
                                {*noindex jailbreak*}
                            {/if}
                        </div>
                        {if $android == "yes" || $jailbreak == "yes"}
                            {*noindex ios*}
                        {/if}
                        <section class="_features-content" data-feature="os-ios"
                             {if $android == "yes" || $jailbreak == "yes"}style="display: none;"{/if}>
                            <div class="tab col-item-3 col-md-item-3 col-sm-item-3">
                                <ul>
                                    <li><i class="i-features-sms"></i> <span onclick="window.location='http://{$domain}/mobile-sms-spy.html'">Monitor SMS and iMessages</span></li>
                                    <li><i class="i-features-cell-history"></i> {if !in_array('call-monitoring-software', $_notVisible)}<span onclick="window.location='http://{$domain}/call-monitoring-software.html'">Monitor Calls History{else}Monitor Calls History{/if}</li>
                                    <li><i class="i-features-calendar"></i> View Calendar</li>
                                    <li><i class="i-features-contacts"></i> <span onclick="window.location='http://{$domain}/monitor-phone-contacts.html'"> View Contacts</span></li>
                                    {*<li><i class="i-features-kik-chat"></i> Monitor Kik</li>*}
                                </ul>
                            </div>

                            <div class="tab col-item-3 col-md-item-3 col-sm-item-3">
                                <ul>
                                    <li><i class="i-features-browser"></i> <span onclick="window.location='http://{$domain}/browser-parental-control.html'">Control Browser</span></li>
                                    {*<li><i class="i-features-app"></i> <span onclick="window.location='http://{$domain}/block-apps.html'">Control Applications</span></li>*}
                                    <li><i class="i-features-view-bookmarks"></i> View Bookmarks</li>
                                    <li><i class="i-features-view-notes"></i> View Notes</li>
                                    <li><i class="i-features-photos"></i> View Photos</li>
                                </ul>
                            </div>

                            <div class="tab col-item-3 col-md-item-3 col-sm-item-3 last">

                                <ul>
                                    <li><i class="i-features-monitor-viber-whatsapp"></i> <span onclick="window.location='http://{$domain}/whatsapp-monitoring.html'">Monitor WhatsApp</span></li>
                                    <li><i class="i-features-monitor-skype"></i> <span onclick="window.location='http://{$domain}/monitor-skype.html'">Monitor Skype</span></li>
                                    {*<li><i class="i-features-social"></i> Monitor Facebook IM</li>*}
                                    {*<li><i class="i-features-remote-activity-control"></i> Remote Control Panel</li>*}
                                    <li><i class="i-features-kik-chat"></i> <span onclick="window.location='http://{$domain}/monitor-kik-messenger.html'">Monitor Kik</span></li>
                                    <li><i class="i-features-location"></i> {if !in_array('location-tracking', $_notVisible)}<span onclick="window.location='http://{$domain}/child-location-tracking.html'">Location Tracking</span>{else}Location Tracking{/if}</li>
                                    {*<li class="hidden-mobile">&nbsp;</li>*}
                                </ul>
                            </div>
                            <div class="tab last-one" style="width: 100%;">
                            <ul><li><i class="i-features-remote-activity-control-v2"></i> Remote Control Panel</li>
                                <li class="last-child-hidden"><img src="/images/icon-ph.png" class="img-ph" alt="">
                                    <a href="/all-features.html">View All Features  <i class="icon-right-open"></i> </a> </li></ul>

                            </div>


                        </section>
                        {if $android == "yes" || $jailbreak == "yes"}
                            {*noindex ios*}
                        {/if}
                        {if !$android}
                            {*noindex android*}
                        {/if}
                        <section class="_features-content" data-feature="os-android" {if !$android}style="display: none;"{/if}>
                            <div class="tab col-item-3 col-md-item-3 col-sm-item-3">
                                <ul>
                                    <li><i class="i-features-sms"></i> <span onclick="window.location='http://{$domain}/mobile-sms-spy.html'">Monitor SMS and MMS</span></li>
                                    <li><i class="i-features-cell-history"></i> {if !in_array('call-monitoring-software', $_notVisible)}<span onclick="window.location='http://{$domain}/call-monitoring-software.html'">Monitor Calls History{else}Monitor Calls History{/if}</li>
                                    <li><i class="i-features-calendar"></i> View Calendar</li>
                                    <li><i class="i-features-contacts"></i> <span onclick="window.location='http://{$domain}/monitor-phone-contacts.html'"> View Contacts</span></li>
                                    <li><i class="i-features-email"></i> <span onclick="window.location='http://{$domain}/email-monitoring-software.html'">View Emails</span></li>
                                    <li><i class="i-features-photos"></i> View Photos</li>
                                    <li><i class="i-features-videocam"></i> View Videos</li>
                                    {*<li><i class="i-features-kik-chat"></i> Monitor Kik</li>*}
                                </ul>
                            </div>

                            <div class="tab col-item-3 col-md-item-3 col-sm-item-3">
                                <ul>
                                    <li><i class="i-features-browser"></i> <span onclick="window.location='http://{$domain}/browser-parental-control.html'">Control Browser</span></li>
                                    <li><i class="i-features-app"></i> <span onclick="window.location='http://{$domain}/block-apps.html'">Control Applications</span></li>
                                    <li><i class="i-features-view-bookmarks"></i> View Bookmarks</li>
                                    <li><i class="i-features-block-device"></i> Block Device</li>
                                    <li><i class="i-features-location"></i> {if !in_array('location-tracking', $_notVisible)}<span onclick="window.location='http://{$domain}/child-location-tracking.html'">Location Tracking</span>{else}Location Tracking{/if}</li>
                                    <li><i class="i-features-geo-fences"></i> {if !in_array('geo-fences', $_notVisible)}<span onclick="window.location='http://{$domain}/gps-and-geofencing.html'">Geo-fences</span>{else}Geo-fences{/if}</li>
                                    <li><i class="i-features-keyloger"></i> <span onclick="window.location='http://{$domain}/keylogging-software.html'">Keylogger</span></li>
                                    {*<li class="hidden-mobile">&nbsp;</li>*}
                                </ul>
                            </div>

                            <div class="tab col-item-3 col-md-item-3 col-sm-item-3 last">
                                <ul>
                                    <li><i class="i-features-monitor-viber-whatsapp"></i> <span onclick="window.location='http://{$domain}/whatsapp-monitoring.html'">Monitor WhatsApp</span></li>
                                    <li><i class="i-features-monitor-skype"></i> <span onclick="window.location='http://{$domain}/monitor-skype.html'">Monitor Skype</span></li>
                                    <li><i class="i-features-social"></i> Monitor Facebook IM</li>
                                    <li><i class="i-features-monitor-viber-whatsapp"></i> <span onclick="window.location='http://{$domain}/monitor-viber.html'">Monitor Viber</span></li>
                                    <li><i class="i-features-monitor-instagram"></i> <span onclick="window.location='http://{$domain}/parental-control-for-instagram.html'">Monitor Instagram</span></li>
                                    {*<li><i class="i-features-remote-activity-control"></i> Remote Control Panel</li>*}
                                    <li><i class="i-features-kik-chat"></i> <span onclick="window.location='http://{$domain}/monitor-kik-messenger.html'">Monitor Kik</span></li>
                                    <li><i class="i-features-monitor-snapchat"></i><span onclick="window.location='http://{$domain}/monitor-snapchat.html'">Monitor Snapchat</span> </li>
                                    <li class="visible-xs"><i class="i-features-sms-commands"></i> SMS Commands</li>
                                    {*<li class="hidden-mobile">&nbsp;</li>*}
                                </ul>
                            </div>
                            <div class="tab tab-half tab-bdr">
                                <ul>
                                    <li><i class="i-features-remote-activity-control-v2"></i> Remote Control Panel</li>
                                    <li class="last-child-hidden"><img src="/images/icon-ph.png" class="img-ph" alt="">
                                        <a href="/all-features.html">View All Features  <i class="icon-right-open"></i> </a> </li>
                                </ul>
                            </div>
                            <div class="tab tab-half hidden-xs">
                                <ul>
                                    <li><i class="i-features-sms-commands"></i> SMS Commands</li>
                                </ul>
                            </div>

                        </section>
                        {if !$android}
                            {*noindex android*}
                        {/if}
                        {if !$jailbreak}
                            {*noindex jailbreak*}
                        {/if}
                        <section class="_features-content" data-feature="os-jailbreak" {if !$jailbreak}style="display: none;"{/if}>
                            <div class="tab col-item-3 col-md-item-3 col-sm-item-3 last">
                                <ul>
                                    <li><i class="i-features-sms"></i> <span onclick="window.location='http://{$domain}/mobile-sms-spy.html'">Monitor SMS and iMessages</span></li>
                                    <li><i class="i-features-cell-history"></i> {if !in_array('call-monitoring-software', $_notVisible)}<span onclick="window.location='http://{$domain}/call-monitoring-software.html'">Monitor Calls History{else}Monitor Calls History{/if}</li>
                                    <li><i class="i-features-calendar"></i> View Calendar</li>
                                    <li><i class="i-features-contacts"></i> <span onclick="window.location='http://{$domain}/monitor-phone-contacts.html'"> View Contacts</span></li>
                                    <li><i class="i-features-email"></i> <span onclick="window.location='http://{$domain}/email-monitoring-software.html'">View Emails</span></li>
                                    <li><i class="i-features-photos"></i> View Photos</li>
                                    <li><i class="i-features-videocam"></i> View Videos</li>
                                    <li><i class="i-features-remote-activity-control-v2"></i> Remote Control Panel</li>
                                    {*<li><i class="i-features-kik-chat"></i> Monitor Kik</li>*}
                                </ul>
                            </div>

                            <div class="tab col-item-3 col-md-item-3 col-sm-item-3">
                                <ul>
                                    <li><i class="i-features-browser"></i> <span onclick="window.location='http://{$domain}/browser-parental-control.html'">Control Browser</span></li>
                                    <li><i class="i-features-app"></i> <span onclick="window.location='http://{$domain}/block-apps.html'">Control Applications</span></li>
                                    <li><i class="i-features-view-bookmarks"></i> View Bookmarks</li>
                                    <li><i class="i-features-view-notes"></i> View Notes</li>
                                    <li><i class="i-features-block-device"></i> Block Device</li>
                                    <li><i class="i-features-location"></i> {if !in_array('location-tracking', $_notVisible)}<span onclick="window.location='http://{$domain}/child-location-tracking.html'">Location Tracking</span>{else}Location Tracking{/if}</li>
                                    <li><i class="i-features-geo-fences"></i> {if !in_array('geo-fences', $_notVisible)}<span onclick="window.location='http://{$domain}/gps-and-geofencing.html'">Geo-fences</span>{else}Geo-fences{/if}</li>
                                    <li><i class="i-features-keyloger"></i> <span onclick="window.location='http://{$domain}/keylogging-software.html'">Keylogger</span></li>
                                    {*<li class="hidden-mobile">&nbsp;</li>*}
                                </ul>
                            </div>

                            <div class="tab col-item-3 col-md-item-3 col-sm-item-3">
                                <ul>
                                    <li><i class="i-features-monitor-viber-whatsapp"></i> <span onclick="window.location='http://{$domain}/whatsapp-monitoring.html'">Monitor WhatsApp</span></li>
                                    <li><i class="i-features-monitor-skype"></i> <span onclick="window.location='http://{$domain}/monitor-skype.html'">Monitor Skype</span></li>
                                    <li><i class="i-features-social"></i> Monitor Facebook IM</li>
                                    <li><i class="i-features-monitor-viber-whatsapp"></i> <span onclick="window.location='http://{$domain}/monitor-viber.html'">Monitor Viber</span></li>
                                    <li><i class="i-features-monitor-instagram"></i> <span onclick="window.location='http://{$domain}/parental-control-for-instagram.html'">Monitor Instagram</span></li>
                                    {*<li><i class="i-features-remote-activity-control"></i> Remote Control Panel</li>*}
                                    <li><i class="i-features-kik-chat"></i> <span onclick="window.location='http://{$domain}/monitor-kik-messenger.html'">Monitor Kik</span></li>
                                    <li><i class="i-features-monitor-snapchat"></i><span onclick="window.location='http://{$domain}/monitor-snapchat.html'">Monitor Snapchat</span> </li>
                                    <li><i class="i-features-sms-commands"></i> SMS Commands</li>
                                    <li class="last-child-hidden"><img src="/images/icon-ph.png" class="img-ph" alt="">
                                        <a href="/all-features.html">View All Features  <i class="icon-right-open"></i> </a> </li>
                                    {*<li class="hidden-mobile">&nbsp;</li>*}
                                </ul>
                            </div>
                        </section>
                        {if !$jailbreak}
                            {*noindex jailbreak*}
                        {/if}
                        <div class="text-center button-more-detailes">
                            <a href="/all-features.html" data-feature="os-ios" class="btn btn-default _features-content" rel="nofollow"
                               {if $android == "yes" || $jailbreak == "yes"}style="display: none;"{/if}>
                                More Details</a>
                            <a href="/all-features.html#android" data-feature="os-android" class="btn btn-default _features-content" rel="nofollow" {if !$android}style="display: none;"{/if}>More Details</a>
                            <a href="/all-features.html#jailbreak" data-feature="os-jailbreak" class="btn btn-default _features-content" rel="nofollow" {if !$jailbreak}style="display: none;"{/if}>More Details</a>
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
