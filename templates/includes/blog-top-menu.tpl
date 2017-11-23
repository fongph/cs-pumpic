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
                                                            <a href="https://demo.pumpic.com/setDevice/126?redirect_url=cp/calls" target="_blank" class="btn btn-sm btn-orange btn-success visible-lg cp-login">Demo</a>
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
										<a href="/">Home</a>
									</li>
									<li>
										<a href="/all-features.html">Features</a>
									</li>
									<li>
										<a href="/store.html">Store</a>
									</li>
                                                                        <li>
										<a href="/compatibility/">Compatibility</a>
									</li>

									<?php /*<li>
										<a href="/how-to.html">How to</a>
									</li>  */ ?>
									<li>
										<a href="/faq.html">Help & Contacts</a>
									</li>

                                                                        <?php /*
                                                                        <li>
                                                                            <a target="_blank" href="<?php echo $config['schema']; ?>demo.pumpic.com/setDevice/126?redirect_url=cp/calls">Demo</a>
                                                                        </li>

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
                                                                            <a href="https://demo.pumpic.com/setDevice/126?redirect_url=cp/calls" target="_blank" class="btn btn-sm btn-orange btn-success hidden-lg cp-login"> Demo</a>
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

        <div>
            <style>
                .banner{
                    display: flex;
                    align-items: center;
                    background-color: black;
                    /* background-image: url(../img/img2.png); */
                    background-size: contain;
                    background-repeat: no-repeat;
                    background-position: right;
                    color: white;
                    width: 980px;
                    height: 80px;
                    margin: 0 auto;
                    z-index:999;
                }
                .banner-container{
                    position: fixed;
                    width: 100%;
                    display: none;
                    z-index: 1;
                }
                .banner-container:hover{
                    text-decoration: none;
                    color: white;
                }
                .banner-timer{
                    max-height: 80px;
                    width: 50%;
                    padding: 10px 0;
                    display: flex!important;
                    justify-content: space-between;
                    align-items: center;
                    width: 290px;
                    min-width: 0!important;
                    margin: 0!important;
                }
                .timer-element{
                    width: auto;
                    display: flex!important;
                    flex-direction: column;
                    justify-content: center;
                    align-items: center;
                }
                .left-img{
                    margin-right: 0;
                }
                .banner-title{
                    font-size: 50px;
                    line-height: 50px;
                    font-weight: 900;
                    margin: 0;
                }
                .banner-subtitle{
                    font-size: 23px;
                    font-weight: 900;
                    margin: 0;
                }
                .banner-text{
                    margin: 0 15px;
                }
                .banner-btn{
                    width: 140px;
                    height: 40px;
                    border-radius: 5px;
                    background-color: #cf4857;
                    line-height: 40px;
                    vertical-align: middle;
                    text-align: center;
                    margin-left: 15px;
                    font-weight: 700;
                    font-size: 23px;
                    transition: all .3s ease;
                }
                .banner-btn:hover{
                    background-color:#bd3f4d;
                }

                .phantom{
                    width: 100%;
                    height: 80px;
                    opacity: 0;
                }
                @media(min-width:1024px){
                    .banner-container{
                        display: block;
                    }
                }
                @media(max-width:1024px){
                    .phantom{
                        height: 0;
                    }
                }
            </style>
            <a href='/store.html' class="banner-container" id="banner"
                                          ga-action="click" ga-category="Timer" ga-label="sale">

                    <div class="banner">
                        <img src="/images/img1.png" alt="" class="left-img">
                        <div class="banner-text">

                            <div class="banner-title">SALE</div>
                            <div class="banner-subtitle">ENDS IN:</div>
                        </div>
                        <script>
                            (function() {
                                var _id = "1d609752e669765510dacf137bf5e0b2";
                                while (document.getElementById("timer" + _id)) _id = _id + "0";
                                document.write("<div class='banner-timer' id='timer" + _id + "' style='min-width:614px;height:128px;'></div>");
                                var _t = document.createElement("script");
                                _t.src = "/javascripts/timer.js";
                                var _f = function(_k) {
                                    var l = new MegaTimer(_id, {
                                        "view": [1, 1, 1, 1],
                                        "type": {
                                            "currentType": "1",
                                            "params": {
                                                "usertime": true,
                                                "tz": "-5",
                                                "utc": 1511827200000
                                            }
                                        },
                                        "design": {
                                            "type": "circle",
                                            "params": {
                                                "width": "7",
                                                "radius": "25",
                                                "line": "gradient",
                                                "line-color": ["#08a89a", "#c9535a"],
                                                "background": "solid",
                                                "background-color": "#37474f",
                                                "direction": "direct",
                                                "number-font-family": {
                                                    "family": "Roboto",
                                                    "link": "<link href='http://fonts.googleapis.com/css?family=Roboto&subset=latin,cyrillic' rel='stylesheet' type='text/css'>"
                                                },
                                                "number-font-size": "24",
                                                "number-font-color": "#ffffff",
                                                "separator-margin": "0",
                                                "separator-on": false,
                                                "separator-text": ":",
                                                "text-on": true,
                                                "text-font-family": {
                                                    "family": "Roboto",
                                                    "link": "<link href='http://fonts.googleapis.com/css?family=Roboto&subset=latin,cyrillic' rel='stylesheet' type='text/css'>"
                                                },
                                                "text-font-size": "11",
                                                "text-font-color": "#ffffff"
                                            }
                                        },
                                        "designId": 9,
                                        "theme": "black",
                                        "width": 398,
                                        "height": 74
                                    });
                                    if (_k != null) l.run();
                                };
                                _t.onload = _f;
                                _t.onreadystatechange = function() {
                                    if (_t.readyState == "loaded") _f(1);
                                };
                                var _h = document.head || document.getElementsByTagName("head")[0];
                                _h.appendChild(_t);
                            }).call(this);
                        </script>
                        <span class="banner-btn"> SAVE NOW </span>
                    </div>
        </div>
        </a>


        </div>

