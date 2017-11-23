		<div class="dark bg-footer">
			<div class="container">
				<div class="row">
					<div class="col-lg-4 col-md-4 col-sm-4 col-lg-offset-1 col-md-offset-1 col-sm-offset-1">
						<h3>DISCLAIMER</h3>
						<p>Pumpic is a unique parental control tracking application for iOS and Android mobile phones and tablets. It is for ethical and legal use only. To install the tracking app, one should assure that he or she owns the device before installation, or has obtained the owner’s permission to track his or her device.</p>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-3 col-lg-offset-1 col-md-offset-1 col-sm-offset-1">
                                            <div>
						<h3>COMPANY</h3>
						<ul class="list_grey">
                                                    <li>
                                                        <a href="/policy.html">Legal Policies</a>
                                                    </li>
                                                    <?php /*<li>
                                                        <a href="/policy.html#privacy-policy">Privacy Policy</a>
                                                    </li>
                                                    <li>
                                                        <a href="/policy.html#refund-policy">Refund policy</a>
                                                    </li>
                                                    <li>
                                                        <a href="/faq.html">Contact us</a>
                                                    </li> */ ?>
                                                    <li>
                                                        <a href="/security/">Child Security Blog</a>
                                                    </li>
                                                    <?php /*
                                                    <li>
                                                        <a href="/how-to-monitor-social-networks.html">How to Monitor Social Networks</a>
                                                    </li>
                                                    <li>
                                                        <a href="/gps-wireless-tracking-phone.html">Wireless Phone Tracking</a>
                                                    </li>
                                                    */ ?>

                                                        <?php /*
							<li>
								<a href="<?php echo getStaticUrl();?>/policy.html">Policy</a>
							</li>
							<li>
								<a href="<?php echo getStaticUrl();?>/faq.html">Contacts</a>
							</li>
							<li>
								<a href="<?php echo getStaticUrl();?>/security/">Blog</a>
							</li>
                                                        */ ?>

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
                    <?php include(dirname(__FILE__).'/blog-footer-our-products.tpl'); ?>
				</div>
				<div class="row">
					<div class="col-sm-10 col-md-10 col-lg-10 col-sm-offset-1 col-md-offset-1 col-lg-offset-1">
						<div class="share">
							<?php /*Share:
							<img src="<?php echo getStaticUrl();?>/images/social-buttons.png" alt=""> */ ?>

                                                        <ul class="box-socials clearfix">
                                                            <li><a href="https://www.facebook.com/pumpicapp/" target="_blank" class="icons-social i-fb"></a></li>
                                                            <li><a href="https://twitter.com/pumpic_com" target="_blank"  class="icons-social i-tw"></a></li>
                                                            <li><a href="https://www.youtube.com/user/pumpicapp" target="_blank"  class="icons-social i-youtube"></a></li>
                                                            <li><a href="https://plus.google.com/+Pumpic_com" target="_blank"  class="icons-social i-google"></a></li>
                                                            <li><a href=" https://www.pinterest.com/pumpicapp/" target="_blank"  class="i-pinterest"></a></li>
                                                            <li>
                                                                <?php include(dirname(__FILE__).'/content/phone/blog-phone-footer.tpl'); ?>
                                                            </li>
                                                        </ul>

						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="footer">
			<div class="container">
				<div class="footer-text text-center">
					&copy;
					<?= strftime('%Y',time()) ?>
					Pumpic — All Rights Reserved.
				</div>
			</div>
		</div>
        <?php
        if (di()->get('isDirectLogin') == true): ?>
            <div class="direct-login-footer">
                <div class="container">
                    You are currently logged in as <a class="account-login" href="mailto:<?=di()['authData']['login']?>"><?=di()['authData']['login']?></a>!
                    <a class="log-out-button" href="/logout.html">Log out</a>
                </div>
            </div>
        <?php endif; ?>
	</div>

        <!-- init popUp -->
        <?php include(dirname(__FILE__).'/blog-popUp.tpl'); ?>
        <?php include(dirname(__FILE__).'/blog-analytics-footer.tpl'); ?>

        <?php if(di()->get('freeTrialLinks')->isAvailable()): ?>
        <?php include(dirname(__FILE__).'/content/fly/fly-free-trial.tpl'); ?>
        <?php endif; ?>
        <script>
            $(document).ready(function () {
                $('.container').eq( 1 ).prepend('<div class="phantom"></div>');
            })
        </script>