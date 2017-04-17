<div class="header">
    <div class="container">
        <div class="row">
            <div class="col-lg-10 col-lg-offset-1">
                <nav class="navbar" role="navigation">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed btn-success" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <div itemscope itemtype="https://schema.org/Organization" class="logo" >
                          <meta itemprop="name" content="Pumpic Parental Monitoring">
                            <a href="/" itemprop="url">pumpic
                            <img itemprop="logo" src="/images/logo/pumpic-logo.svg" style="max-width: 96%;height: 100%;" alt="pumpic app logo" />
                            </a>
                        </div>
                    </div>

                     <div class='box-cp pull-right'>
                        <a href="{if isset($demoHref)}{$schema}demo.{$domain}{$demoHref}{else}{getDemoLink domain=$domain}{/if}" target="_blank" class="btn btn-sm btn-orange btn-success visible-lg cp-login">Demo</a>
                    </div>

                    {*if ''|hasUser}
                        <div class='box-cp pull-right'>
                            <a href="/logout.html" class="pull-right visible-lg cp-logout">Log Out</a>
                            <a href="https://cp.{$domain}/" class="btn btn-sm btn-success visible-lg cp-login"><i class="icon-lock"></i>Control Panel</a>
                        </div>
                    {else}
                        <a href="{if ''|detectedDev}/login.html{else}#{/if}" class="btn btn-sm btn-success pull-right visible-lg cp-login"><i class="icon-lock"></i> Log In</a>
                    {/if*}

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse pl15-imp" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li {if isset($topmenu_active) && $topmenu_active=='home'} class="active"{/if}>
                                <a href="/">Home</a>
                            </li>

                            {if 'iphone-tracking-software.html,iphone-with-jailbreak-monitoring.html,icloud-iphone-without-jailbreak-monitoring.html'|@getCloseLink}
                            <li {if isset($topmenu_active) && $topmenu_active=='all-features'} class="active"{/if}>
                                <a href="/all-features.html">Features</a>
                            </li>
                            {/if}

                            <li class="{if isset($topmenu_active) && $topmenu_active=='pricing'}active{/if} ga-action-click"
                                id="header-menu-store-link"
                                ga-action ="click"
                                ga-category="store link"
                                ga-label="header"
                                >
                                <a href="{if isset($storeHref)}{$storeHref}{else}/store.html{/if}">Store</a>
                            </li>

                            <li {if isset($topmenu_active) && $topmenu_active=='compatibility'} class="active"{/if}>
                                <a href="/compatibility/">Compatibility</a>
                            </li>

                            {*<li {if $topmenu_active=='how-to'} class="active"{/if}>
                                <a href="/how-to.html">How to</a>
                            </li>*}
                            <li {if isset($topmenu_active) && $topmenu_active=='faq'} class="active"{/if}>
                                <a href="/faq.html">Help & Contacts</a>
                            </li>

                            {*{nocache}*}
                                {*{if isset($show_control_panel_link) && $show_control_panel_link}*}
                                    <li>
                                        {*{if ''|hasUser}*}
                                            {*<a href="https://cp.{$domain}/">Control Panel</a>*}
                                            {*<a href="https://cp.{$domain}/">Control Panel</a>*}
                                        {*{else}*}
                                            <a href="https://cp.{$domain}/">Control Panel</a>
                                            {*<a href="{if ''|detectedDev}/login.html{else}#{/if}">Sign in</a>*}
                                        {*{/if}*}

                                    </li>
                                {*{/if}*}
                            {*{/nocache}*}

                            <li>
                                <a href="{$schema}demo.{$domain}{if isset($demoHref)}{$demoHref}{else}/setDevice/126?redirect_url=cp/calls{/if}" target="_blank"
                                   class="btn btn-sm btn-orange btn-success hidden-lg cp-login"> Demo</a>
                            </li>

                            {*{nocache}*}
                                {*{if $di->get('freeTrialLinks')->isAvailable()}*}
                                    {*<li {if isset($topmenu_active) && $topmenu_active=='trial'} class="active"{/if}>*}
                                        {*<span class="mobile-free-trial"><a href="/free-trial.html">Free Trial</a></span>*}
                                    {*</li>*}
                                {*{/if}*}
                            {*{/nocache}*}

                            {*if ''|hasUser}
                                <li>
                                    <a href="/logout.html" class="hidden-lg cp-logout">Log Out</a>

                                </li>
                            {/if*}
                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->
                </nav>
            </div>
        </div>
    </div>

</div>
