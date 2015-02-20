{strip}

{include file='../includes/main/main-header.tpl'
    robots="no" 
    title="High-grade tracking app with multiple functions"
    description="Pumpic is an innovative solution, which takes Mobile Phone Monitoring on a reasonably new level. Find out more functions of Pumpic and evaluate the progress it made."
}

<body>
    <!-- FLY BUTTON -->
    {include file='../includes/main/main-button-help.tpl'}
    {include file='../includes/main/main-button-goup.tpl'}
	<div class="wrapper">
	{include file='../includes/main/main-top-menu.tpl' 
                topmenu_active="features"
                cache_id = "includes_main_main-top-menu"
                nocache
        }	
<div class="very_easy">
			<div class="container">
						<div class="row">
							<div class="col-lg-12">
								<h2>
                                                                    Pumpic is Your Ultimate Parental Control Monitoring App
                                                                </h2>
								<p class="text-center">Pumpic is mobile phone tracking software for parents of underage children worldwide. The application is safe, fast and reliable. Pumpic gives you easy and quick access to your kid’s device including call logs, SMS, location data, IM chats, social media activity and even more. Pumpic protects your children and secures their happiness.</p>
							</div>
						</div>
						<div class="row">
							<div class="dtable">
								<div class="dhead">
									<div class="row">
										<div class="col-lg-5 col-md-5">
											<h3>
                                                                                            Features:
                                                                                        </h3>
											<div class="dth">
												<span>Plan: </span>
												<a class='box-plans' rel="basic" href="#plan=basic">Basic</a>&nbsp;
												<a class='box-plans' rel='premium' href="#plan=premium">Premium</a>
											</div>
											<!-- dtd -->
											<div class="dth">
												<span>OS: </span>
												<i class="icon-android box-phone" rel='android'></i>
												<i class="icon-apple box-phone" rel='apple'></i>
												{*<i class="icon-blackberry box-phone" rel='blackberry'></i>*}
											</div>
											<!-- dtd -->
										</div>
										<div class="col-lg-7 col-md-7">
                                                                                        <h3>About</h3> <!-- class="lg_dheader" --> 
                                                                                        <div class="dth h47">
												<h4 class="text-success">Read short descriptions of each feature and choose the plan that meets your needs entirely.</h4>
											</div>
                                                                                    
											{*<h3 class="lg_dheader">about</h3>*}
										</div>
									</div>
									<!-- row -->
								</div>
								<!-- dhead -->
								{*<div class="dtitle">
									<div class="row">
										<div class="col-lg-5 col-md-5">
											<div class="dtd">&nbsp;</div> <!-- Basic -->
										</div>
										<div class="col-lg-7 col-md-7">
											<div class="dtd">
												<h4 class="text-success">Read short descriptions of each features and choose yhe plan that meets your needs entirely</h4>
											</div>
										</div>
									</div>
									<!-- row -->
								</div>*}
								<div class="dbody">
                                                                    {features_plans}
								</div>
								{*
                                                                <!-- dbody -->
								<div class="dtitle">
									<div class="row">
										<div class="col-lg-5 col-md-5">
											<div class="dtd">&nbsp;</div> <!-- PRO --> 
										</div>
									</div>
									<!-- row -->
								</div>
								<div class="dbody">
								</div>
								<!-- dbody -->
                                                                *}
							</div>
							<!-- dtable -->
						</div>
			</div>
		</div>

                {*{include file='../includes/content/banners/banner-promo-trial.tpl'}*} 
                                                        
                {include file='../includes/content/banners/index.tpl'}
                <!-- FOOTER -->
                {*
                    Template: FOOTER
                    Переменные:
                        our_products (text): Включить выключить блок OUR PRODUCTS (no|yes). * - yes 
                *}
                {include file='../includes/main/main-footer.tpl'}
	</div>
	{include file='../includes/main/main-analytics-footer.tpl'}
</body>
</html>
{/strip}	
	