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
                        <div itemscope itemtype="https://schema.org/Organization" class="logo">
                            <a href="{$domain_http}" itemprop="url">pumpic</a>
                            <img itemprop="logo" src="../images/logo/pumpic-logo.png" alt="pumpic" />
                        </div>
                    </div>
                    {if ''|hasUser}
                        <div class='box-cp pull-right'>
                            <a href="/logout.html" class="pull-right visible-lg cp-logout">Log Out</a>
                            <a href="https://cp.{$domain}/" class="btn btn-sm btn-success visible-lg cp-login"><i class="icon-lock"></i>Control Panel</a>
                        </div>
                    {else}
                        <a href="{if ''|detectedDev}/login.html{else}#{/if}" class="btn btn-sm btn-success pull-right visible-lg cp-login"><i class="icon-lock"></i> Log In</a>
                    {/if}

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li {if $topmenu_active=='home'} class="active"{/if}>
                                <a href="/">Home</a>
                            </li>
                            <li {if $topmenu_active=='compatibility'} class="active"{/if}>
                                <a href="/compatibility.html">Compatibility</a>
                            </li>
                            <li class="{if $topmenu_active=='pricing'}active{/if} ga-action-click"
                                id="header-menu-store-link"
                                ga-action ="link click"
                                ga-category="store"
                                ga-label="header"
                                >
                                <a href="/store.html">Store</a>
                            </li>
                            <li {if $topmenu_active=='all-features'} class="active"{/if}>
                                <a href="/all-features.html">Features</a>
                            </li>
                            <li {if $topmenu_active=='how-to'} class="active"{/if}>
                                <a href="/how-to.html">How to</a>
                            </li>
                            <li {if $topmenu_active=='faq'} class="active"{/if}>
                                <a href="/faq.html">FAQ</a>
                            </li>
                            <!--li>
                                    <a href="{$schema}demo.{$domain}/setDevice/125?redirect_url=cp/calls">Demo</a>
                            </li-->
                            <li>
                                {if ''|hasUser}
                                    <a href="https://cp.{$domain}/" class="btn btn-sm btn-success hidden-lg cp-login"><i class="icon-lock"></i> Control Panel</a>
                                {else}
                                    <a href="{if ''|detectedDev}/login.html{else}#{/if}" class="btn btn-sm btn-success hidden-lg cp-login"><i class="icon-lock"></i> Log In</a>
                                {/if}

                            </li>

                            {if ''|hasUser}
                                <li>
                                    <a href="/logout.html" class="hidden-lg cp-logout">Log Out</a>

                                </li>
                            {/if}
                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->
                </nav>
            </div>
        </div>
    </div>
</div>
