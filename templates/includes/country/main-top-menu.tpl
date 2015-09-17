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
                        <div class="logo">
                            <a href="{$domain_http}">pumpic</a>
                        </div>
                    </div>
                        
                    <div class='box-cp pull-right mt3'>   
                        <a href="/store.html" class="btn btn-sm btn-red{*btn-orange btn-success*} visible-lg cp-login"> Buy Now</a>
                    </div>    
                        
                     {*<div class='box-cp pull-right'>   
                        <a href="{if isset($demoHref)}http://demo.{$domain}{$demoHref}{else}{getDemoLink domain=$domain}{/if}" class="btn btn-sm btn-orange btn-success visible-lg cp-login">Demo</a>
                    </div> *}  
                       
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse pl15-imp" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li {if isset($topmenu_active) && $topmenu_active=='mobile-spy'} class="active"{/if}>
                                <a href="#mobile-spy">Mobile Spy</a>
                            </li>
                            
                            <li {if isset($topmenu_active) && $topmenu_active=='icloud-spy'} class="active"{/if}>
                                <a href="#icloud-spy">iCloud Spy</a>
                            </li>
                            
                            <li {if isset($topmenu_active) && $topmenu_active=='demo'} class="active"{/if}>
                                <a href="{if isset($demoHref)}http://demo.{$domain}{$demoHref}{else}{getDemoLink domain=$domain}{/if}">Demo</a>
                            </li>
                            
                            <li class="language {if isset($topmenu_active) && $topmenu_active=='english-version'}active{/if}">
                                {*<a href="/english-version.html">English version <i class="lang-icon-en"></i></a>*}
                                <span>English version <i class="lang-icon-en"></i></span>
                            </li>
                            
                            {*<li>
                                {if ''|hasUser} 
                                    <a href="http://cp.{$domain}/">Control Panel</a>
                                {else}
                                    <a href="{if ''|detectedDev}/login.html{else}#{/if}">Sign in</a>
                                {/if}   

                            </li>

                            <li>
                                <a href="http://demo.{$domain}{if isset($demoHref)}{$demoHref}{else}/setDevice/125?redirect_url=cp/calls{/if}" 
                                   class="btn btn-sm btn-orange btn-success hidden-lg cp-login"> Demo</a>
                            </li>*}
                            
                            <li>
                                <a href="/store.html" 
                                   class="btn btn-sm btn-red hidden-lg cp-login"> Buy Now</a>
                            </li>
                            
                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->
                </nav>
            </div>
        </div>
    </div>
</div>                           