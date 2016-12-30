<div class="{if isset($blockBg)}{$blockBg}{else}dark bg-footer{/if}">
        <div class="container">
                <div class="row">
                    {*<div class="bg-footer"></div>*}

                        <div class="col-lg-4 col-md-4 col-sm-4 col-lg-offset-1 col-md-offset-1 col-sm-offset-1">

                            <h3>DISCLAIMER</h3>
                            <p>{if isset($customText)}{$customText}{else}Pumpic is a unique parental control tracking application for iOS and Android mobile phones and tablets. It is for ethical and legal use only. To install the tracking app, one should assure that he or she owns the device before installation, or has obtained the owner’s permission to track his or her device.{/if}</p>

                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-3 col-lg-offset-1 col-md-offset-1 col-sm-offset-1">
                            <div>
                                <h3>COMPANY</h3>
                                <ul class="list_grey">
                                        <li>
                                            <a href="/policy.html">Legal Policies</a>
                                        </li>
                                        {*<li>
                                            <a href="/policy.html#privacy-policy">Privacy Policy</a>
                                        </li>
                                        <li>
                                            <a href="/policy.html#refund-policy">Refund policy</a>
                                        </li>
                                        <li>
                                            <a href="/contact-us.html">Contact us</a>
                                        </li>*}
                                         <li>
                                            <a href="/security/">{*Security*}Child Security Blog</a>
                                        </li>
                                        {*<li>
                                            <a href="/how-to-monitor-social-networks.html">How to Monitor Social Networks</a>
                                        </li>
                                        <li>
                                            <a href="/gps-wireless-tracking-phone.html">Wireless Phone Tracking</a>
                                        </li>*}
                                </ul>
                            </div>
                            <div>
                                <h3>USEFUL INFO</h3>
                                <ul class="list_grey">
                                    <li>
                                        <a href="/how-to-monitor-social-networks.html">How to Monitor Social Networks</a>
                                    </li>
                                    <li>
                                        <a href="/infographics/">Pumpic Mobile Infographics</a>
                                    </li>
                                    <li>
                                        <a href="/reviews/">Best Mobile Trackers</a>
                                    </li>
                                    <li>
                                        <a href="/cell-phones-for-kids.html">Cell Phones for Kids</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        {include file="../../includes/main/main-footer-our-products.tpl"}
                </div>
                <div class="row">
                        <div class="col-sm-10 col-md-10 col-lg-10 col-sm-offset-1 col-md-offset-1 col-lg-offset-1">
                                <div class="share">
                                    <ul itemscope itemtype="https://schema.org/Organization" class="box-socials clearfix">
                                          <link itemprop="url" href="http://pumpic.com">
                                        {if isset($disableSocialLinks)}
                                        <li>
                                            {include file='../../includes/content/phone/block-phone-footer.tpl'}
                                        </li>
                                        <li class="positivessl" style="top: 0;">
                                            <span>Secured by:</span>
                                            <img src="{$img}/positive-ssl.png" alt="positive ssl secured website" title="positive ssl secured website" border="0" />


                                        </li>
                                        {else}
                                            <li>
                                                <a itemprop="sameAs" href="https://www.facebook.com/pumpicapp/" target="_blank" class="icons-social i-fb" ></a></li>
                                            <li><a itemprop="sameAs" href="https://twitter.com/pumpic_com" target="_blank" class="icons-social i-tw"></a></li>
                                            <li><a itemprop="sameAs" href="https://www.youtube.com/user/pumpicapp" target="_blank" class="icons-social i-youtube"></a></li>
                                            <li><a itemprop="sameAs" href="https://plus.google.com/+Pumpic_com" target="_blank" class="icons-social i-google"></a></li>

                                            <li>
                                                {include file='../../includes/content/phone/block-phone-footer.tpl'}
                                            </li>
                                            <li class="positivessl">
                                                <span>Secured by:</span>
                                                <img src="{$img}/positive-ssl.png" alt="positive ssl secured website" title="positive ssl secured website" border="0" />


                                            </li>
                                        </ul>
                                    {/if}

                                </div>
                        </div>
                </div>
        </div>
</div>
<div class="footer">
    <div class="container">
        <div class="footer-text text-center">
            &copy;
            {year_now}
            Pumpic — All Rights Reserved.
        </div>
    </div>
</div>
{if $di.isDirectLogin == true}
    <div class="direct-login-footer">
        <div class="container">
            You are currently logged in as <a class="account-login" href="mailto:{$di.authData.login}">{$di.authData.login}</a>!
            <a class="log-out-button" href="/logout.html">Log out</a>
        </div>

    </div>
{/if}
<!-- init popUp -->
<!-- init popUp -->
{if isset($_popUp)}
    {assign 'module' $_popUp}
{else}
    {assign 'module' '../../includes/main-popUp.tpl'}
{/if}

{include file="$module"}

{*{if (!isset($hideFreeTrialBanner) or !$hideFreeTrialBanner) and $di->get('freeTrialLinks')->isAvailable()}*}
    {*{include file="$templatesDir/includes/content/fly/fly-free-trial.tpl"}*}
{*{/if}*}
