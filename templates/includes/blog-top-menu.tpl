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
                                    <a href="<?php echo getStaticUrl();?>">pumpic</a>
                                </div>

                    </div>
                                                        
                                                        <div class='box-cp pull-right'>   
                                                            <a href="http://demo.pumpic.com/setDevice/126?redirect_url=cp/calls" target="_blank" class="btn btn-sm btn-orange btn-success visible-lg cp-login">Demo</a>
                                                        </div>
                                                        
                                                        <?php /* if (hasUser()) : ?>
                                                            <div class='box-cp pull-right'>   
                                                                <a href="<?php echo getStaticUrl();?>/logout.html" class="pull-right visible-lg cp-logout">Log Out</a>
                                                                <a href="https://cp.pumpic.com/" class="btn btn-sm btn-success visible-lg cp-login"><i class="icon-lock"></i>Control Panel</a>
                                                            </div>    
                                                        <?php else: ?>
                                                            <a href="https://cp.pumpic.com/" class="btn btn-sm btn-success pull-right visible-lg cp-login"><i class="icon-lock"></i> Log In</a>
                                                        <?php endif; */ ?>
                                                        
							<!-- <a href="<?php echo getStaticUrl();?>/login.html" class="btn btn-sm btn-success pull-right visible-lg"><i class="icon-lock"></i> Log In</a> -->
							<!-- Collect the nav links, forms, and other content for toggling -->
							<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
								<ul class="nav navbar-nav">
									<li>
										<a href="<?php echo getStaticUrl();?>/">Home</a>
									</li>
									<li>
										<a href="<?php echo getStaticUrl();?>/all-features.html">Features</a>
									</li> 
									<li>
										<a href="<?php echo getStaticUrl();?>/store.html">Store</a>
									</li>
                                                                        <li>
										<a href="<?php echo getStaticUrl();?>/compatibility/">Compatibility</a>
									</li>
									
									<?php /*<li>
										<a href="<?php echo getStaticUrl();?>/how-to.html">How to</a>
									</li>  */ ?>
									<li>
										<a href="<?php echo getStaticUrl();?>/faq.html">Help & Contacts</a>
									</li>
                                                                        
                                                                        <?php /*
                                                                        <li>
                                                                            <a target="_blank" href="http://demo.pumpic.com/setDevice/126?redirect_url=cp/calls">Demo</a>
                                                                        </li>
                                                                        
									<!--li>
										<a href="http://demo.{$domain}/setDevice/125?redirect_url=cp/calls">Demo</a>
									</li-->
                                                                        */ ?>
                                                                        
                                                                        <?php /*
                                                                        <li>
                                                                            <?php if (hasUser()) : ?> 
                                                                                <a href="https://cp.pumpic.com/" class="btn btn-sm btn-success hidden-lg cp-login"><i class="icon-lock"></i> Control Panel</a>
                                                                            <?php else: ?>
                                                                                <a href="https://cp.pumpic.com/" class="btn btn-sm btn-success hidden-lg cp-login"><i class="icon-lock"></i> Log In</a>
                                                                            <?php endif; ?>   

                                                                        </li>
                                                                        */ ?>
                                                                        
                                                                        <li>
                                                                            <?php if (hasUser()) : ?>
                                                                                <a href="https://cp.pumpic.com/">Control Panel</a>
                                                                            <?php else: ?>
                                                                                <a href="https://cp.pumpic.com/">Sign in</a>
                                                                            <?php endif; ?>   

                                                                        </li>

                                                                        <li>
                                                                            <a href="http://demo.pumpic.com/setDevice/126?redirect_url=cp/calls" target="_blank" class="btn btn-sm btn-orange btn-success hidden-lg cp-login{*btn btn-sm btn-orange btn-success hidden-lg cp-login*}"> Demo</a>
                                                                        </li>

                                                                        <?php if(di()->get('freeTrialLinks')->isAvailable()): ?>
                                                                        <li class="mobile-free-trial">
                                                                            <a href="/free-trial.html">Free Trial</a>
                                                                        </li>
                                                                        <?php endif; ?>
                                                                        
                                                                        <?php /* if (hasUser()) : ?>
                                                                            <li>
                                                                                <a href="<?php echo getStaticUrl();?>/logout.html" class="hidden-lg cp-logout">Log Out</a>

                                                                            </li>
                                                                        <?php endif; */ ?>
                                                                        
									<!-- <li>
										<a href="<?php echo getStaticUrl();?>/login.html" class="btn btn-sm btn-success hidden-lg"><i class="icon-lock"></i> Log In</a>
									</li> -->
								</ul>
							</div>
							<!-- /.navbar-collapse -->
						</nav>
					</div>
				</div>
			</div>
		</div>
