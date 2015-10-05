{if isset($notLinks) && !empty($notLinks)}
    {assign var="_notVisible" value=","|explode:$notLinks}
{else}
    {assign var="_notVisible" value="false"}
{/if}    

<div class="tab col-item-3 col-md-item-3 col-sm-item-3">
    <ul>
        <li><i class="i-features-sms"></i> <span onclick="window.location='http://{$domain}/mobile-sms-spy.html'">Monitor SMS and MMS</span></li>
        <li><i class="i-features-cell-history"></i> Monitor Calls History</li>
        <li><i class="i-features-calendar"></i> View Calendar</li>
        <li><i class="i-features-contacts"></i> View Contacts</li>
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
        <li><i class="i-features-app"></i> Control Applications</li>
        <li><i class="i-features-view-bookmarks"></i> View Bookmarks</li>
        <li><i class="i-features-view-notes"></i> View Notes</li>
        <li><i class="i-features-block-device"></i> Block Device</li>
        <li><i class="i-features-location"></i> Location Tracking</li>
        <li><i class="i-features-geo-fences"></i> {if !in_array('geo-fences', $_notVisible)}<span onclick="window.location='http://{$domain}/gps-and-geofencing.html'">Geo-fences</span>{else}Geo-fences{/if}</li>
        <li><i class="i-features-keyloger"></i> <span onclick="window.location='http://{$domain}/keylogging-software.html'">Keylogger</span></li>
        {*<li class="hidden-mobile">&nbsp;</li>*}
    </ul>
</div>        

<div class="tab col-item-3 col-md-item-3 col-sm-item-3">
    <ul>
        <li><i class="i-features-monitor-viber-whatsapp"></i> Monitor WhatsApp</li>
        <li><i class="i-features-monitor-skype"></i> Monitor Skype</li>
        <li><i class="i-features-social"></i> Monitor Facebook IM</li>
        <li><i class="i-features-monitor-viber-whatsapp"></i> Monitor Viber</li>
        <li><i class="i-features-monitor-instagram"></i> Monitor Instagram</li>
        {*<li><i class="i-features-remote-activity-control"></i> Remote Control Panel</li>*}
        <li><i class="i-features-kik-chat"></i> Monitor Kik</li>
        <li><i class="i-features-monitor-snapchat"></i> Monitor Snapchat</li>
        <li><i class="i-features-sms-commands"></i> SMS Commands</li>
        {*<li class="hidden-mobile">&nbsp;</li>*}
    </ul>
</div>        

    {*<div class="tab padding-null col-xs-sm-12 col-sm-12 col-md-12 col-lg-12 tab-full">
        <ul>
            <li>
                <span class="width-table-full">
                    <i class="i-features-remote-activity-control-v2"></i> Remote Control Panel
                </span> 
            </li>
        </ul>    
    </div> *}       
            
        {*<div class="tab col-item-3 col-md-item-3 col-sm-item-3">
            <ul>
                <li><i class="i-features-sms"></i> <span onclick="window.location='http://{$domain}/mobile-sms-spy.html'">Monitor SMS</span></li>
                <li><i class="i-features-cell-history"></i> Monitor History</li>
                <li><i class="i-features-email"></i> <span onclick="window.location='http://{$domain}/email-monitoring-software.html'">Monitor Emails</span></li>
                <li><i class="i-features-calendar"></i> View Calendar</li>
                <li><i class="i-features-contacts"></i> View Contacts</li>
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
                <li><i class="i-features-keyloger"></i> <span onclick="window.location='http://{$domain}/keylogging-software.html'">Keylogger</span></li>
                <li><i class="i-features-sms-commands"></i> SMS Commands</li>
                <li class="hidden-mobile"></li>
                <li class="hidden-mobile"></li>
            </ul>
        </div>*}
     