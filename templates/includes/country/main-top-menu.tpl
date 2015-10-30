<div id="block-stickybar" class="header">
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
                        {if isset($lang) && $lang == "bra"}
                            <a href="#store" class="btn btn-sm btn-red visible-lg cp-login"> Comprar Agora</a>
                        {elseif isset($lang) && $lang == "de"}
                            <a href="#store" class="btn btn-sm btn-red visible-lg cp-login"> Jetzt kaufen</a>
                        {else}
                            <a href="#store" class="btn btn-sm btn-red visible-lg cp-login"> Buy Now</a>
                        {/if}
                    </div>    
                        
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse pl15-imp" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li {if isset($topmenu_active) && $topmenu_active=='mobile-spy'} class="active"{/if}>
                                
                                {if isset($lang) && $lang == "bra"}
                                    <a href="#mobile-spy">Espião Móvel</a>
                                {elseif isset($lang) && $lang == "de"}
                                    <a href="#mobile-spy">Mobile Spy</a>
                                {else}
                                    <a href="#mobile-spy">Mobile Spy</a>
                                {/if}    
                            </li>
                            
                            <li {if isset($topmenu_active) && $topmenu_active=='icloud-spy'} class="active"{/if}>
                                
                                {if isset($lang) && $lang == "bra"}
                                    <a href="#icloud-spy">Espião iCloud</a>
                                {elseif isset($lang) && $lang == "de"}
                                    <a href="#icloud-spy">iCloud Spy</a>
                                {else}
                                    <a href="#icloud-spy">iCloud Spy</a>
                                {/if} 
                                
                            </li>
                            
                            <li {if isset($topmenu_active) && $topmenu_active=='demo'} class="active"{/if}>
                                
                                {if isset($lang) && $lang == "bra"}
                                    <a href="#ipad">Demonstração</a>
                                {elseif isset($lang) && $lang == "de"}
                                    <a href="#ipad">Demo</a>
                                {else}
                                    <a href="#ipad">Demo</a>
                                {/if}
                                
                            </li>
                            
                            {if !isset($hidden) || isset($hidden) && $hidden != "yes"}
                            <li class="language {if isset($topmenu_active) && $topmenu_active=='english-version'}active{/if}">
                                
                                {if isset($lang) && $lang == "bra"}
                                    <a href="/">Versão em inglês <i class="lang-icon-en"></i></a>
                                {elseif isset($lang) && $lang == "de"}
                                    <a href="/">Englische Version <i class="lang-icon-en"></i></a>
                                {else}
                                    <a href="/">English version <i class="lang-icon-en"></i></a>
                                {/if}
                                
                            </li>
                            {/if}
                           
                            <li>
                                
                                {if isset($lang) && $lang == "bra"}
                                    <a href="#store" class="btn btn-sm btn-red hidden-lg cp-login"> Comprar Agora</a>
                                {elseif isset($lang) && $lang == "de"}
                                    <a href="#store" class="btn btn-sm btn-red hidden-lg cp-login"> Jetzt kaufen</a>
                                {else}
                                    <a href="#store" class="btn btn-sm btn-red hidden-lg cp-login"> Buy Now</a>
                                {/if}
                                
                            </li>
                            
                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->
                </nav>
            </div>
        </div>
    </div>
</div>                           