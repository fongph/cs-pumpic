{hasUser out="getUser"}		
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
                                                        {if $getUser.success == 'true'} 
                                                            <a href="http://cp.{$domain}/" class="btn btn-sm btn-success pull-right visible-lg"><i class="icon-lock"></i> CP </a>
                                                        {else}
                                                            <a href="#" class="btn btn-sm btn-success pull-right visible-lg cp-login"><i class="icon-lock"></i> Log In</a>
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
									<li {if $topmenu_active=='pricing'} class="active"{/if}>
										<a href="/pricing.html">Pricing</a>
									</li>
									<li {if $topmenu_active=='features'} class="active"{/if}>
										<a href="/features.html">Features</a>
									</li>
									<li {if $topmenu_active=='how-to'} class="active"{/if}>
										<a href="/how-to.html">How to</a>
									</li>
									<li {if $topmenu_active=='faq'} class="active"{/if}>
										<a href="/faq.html">FAQ</a>
									</li>
									<!--li>
										<a href="http://demo.{$domain}">Demo</a>
									</li-->
									<li>
                                                                            {if $getUser.success == 'true'} 
                                                                                <a href="http://cp.{$domain}/" class="btn btn-sm btn-success hidden-lg cp-login"><i class="icon-lock"></i> CP</a>
                                                                            {else}
                                                                                <a href="#" class="btn btn-sm btn-success hidden-lg cp-login"><i class="icon-lock"></i> Log In</a>
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
