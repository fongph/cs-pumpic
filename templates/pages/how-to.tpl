{strip}
{include file='../includes/wrap-title-header.tpl'}

	<title>Learn how to use Pumpic</title>
	<meta name="description" content="Pumpic is easy-to-use and quick-to-install Mobile Phone Monitoring Software. It will not take you long to get used to its functions and even much less to run the app. Find out more about how to use Pumpic." />
	
{include file='../includes/wrap-title-footer.tpl'}
<body>
{include file='../includes/button-help.tpl'}
{include file='../includes/button-goup.tpl'}
	<div class="wrapper">
	{include file='../includes/topmenu-logo-login.tpl' topmenu_active='how-to'}	
		<div class="very_easy">
			<div class="container">
				<div class="row">
					<div class="col-lg-10 col-lg-offset-1">
						<div class="row">

						</div>
					</div>
				</div>
				<div class="row">
					<h2>
                                            How Pumpic Mobile Tracking App Works
                                            {*HOW PUMPIC MOBILE TRACKING APP WORKS*}
                                        </h2>
					<ul class="thumbs">
						<div class="col-sm-12 col-md-4">
							<div class="thumbnail">
								<span class="img_thumb"><img src="images/thumb_1.png" height="216" width="360" alt=""></span>
								<div class="caption how-to-step">
									<h3>Subscription plan</h3>
									<p>Visit <a href="/store.html">Store</a>, select the most suitable for you subscription plan and submit the payment.</p>
								</div>
							</div>
						</div>
						<div class="col-sm-12 col-md-4">
							<div class="thumbnail">
								<span class="img_thumb"><img src="images/thumb_2_new.png" height="206" width="172" alt=""></span>
								<div class="caption how-to-step">
									<h3>Install easily</h3>
									<p>Take your kid’s device and install the app following the instructions from the received email.</p>
								</div>
							</div>
						</div>
						<div class="col-sm-12 col-md-4">
							<div class="thumbnail">
								<span class="img_thumb"><img src="images/thumb_3_new.png" height="216" width="360" alt=""></span>
								<div class="caption how-to-step">
									<h3>Protect your kids</h3>
									<p>Log in to your Control Panel in order to start monitoring the data sent from your kid’s device.</p>
								</div>
							</div>
						</div>
					</ul>
					{*<div class="arrow_bottom">
                                            <span><div class="no-click-video-guide"><i class="icon-angle-down"></i></div></span> 
                                            <h3>INSTALLATION VIDEO GUIDE</h3>
					</div>*}
				</div>
				{*<div class="row">
					<ul class="thumbs_video">
						<li class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
							<div class="ico-top"><i class="icon-android"></i>
							</div>
							<a href="#">
								<img src="images/video_thumb1.png" height="345" width="566" alt="">
							</a>
                                                        <a href="http://cp.pumpic.com/how-to-install/android-instructions.html"
                                                           class="text-center mt10" >Android Installation Guide »</a>
						</li>
						<li class="col-lg-6 col-md-6 col-sm-6  col-xs-12">
							<div class="ico-top"><i class="icon-apple"></i>
							</div>
							<a href="#">
								<img src="images/video_thumb2.png" height="345" width="566" alt="">
							</a>
                                                        <a href="http://cp.pumpic.com/how-to-install/ios-instructions.html"
                                                           class="text-center mt10" >iOS Installation Guide »</a>
						</li>
					</ul>
				</div>*}
			</div>
			{include file='../includes/plans-white.tpl'}
			
			<div class="row">
				<div class="col-lg-12">
					<h3 class="link_circle"><a href="/faq.html" class="text-success">
					<span class="circle_ico"><i class="icon-help"></i></span>
					Frequently Asked Questions{*FREQUENTLY ASKED QUESTIONS*}</a></h3>
				</div>
			</div>
		</div>
	{include file='../includes/footer.tpl'}
	</div>
	{include file='../includes/analytics-footer.tpl'}
        <script type="text/javascript">
            $(document).ready(function(){
                $('#plans-block-store').click(function(){
                    ga('send', 'event', 'store link', 'click', 'how-store-body');
                });
                
                $('#plans-block-view-demo').click(function(){
                    ga('send', 'event', 'demo link', 'click', 'how-demo-prices');
                });
                
                $('#plans-block-buy-basic').click(function(){
                    ga('send', 'event', 'buy button', 'click', 'how-basic');
                });
                
                $('#plans-block-buy-premium').click(function(){
                    ga('send', 'event', 'buy button', 'click', 'how-premium');
                });
                
                $('#header-menu-store-link').click(function(){
                    ga('send', 'event', 'store link', 'click', 'how-store-header');
                });
            });
        </script>
</body>
</html>
{/strip}	
	