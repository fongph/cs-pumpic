{include file='../includes/main/main-header.tpl'
    robots="yes" 
    title="Ultimate Cell Phone Text Message Tracker | Pumpic"
    description="Pumpic is a state-of-art app for all-round parental control: text messages on Android and iOS monitoring, GPS tracking, online activity control, and much more."
    customeStyle="
        .block-child-location-tracking .ipad-text {
            padding: 10px 0;
        }
        
        @media only screen and (max-width: 480px) {
            .block-child-location-tracking .ipad-text {
                padding: 10px 0px 50px 0px;
            }
        }

        @media (min-width: 468px) { 
            .block-child-location-tracking .ipad-text {
                padding: 10px 0px 50px 0px;
            }
        }

        @media (min-width: 768px) {
            .block-child-location-tracking .ipad-text {
              padding: 10px 0;
            }
        }

        @media (min-width: 992px) {
            .block-child-location-tracking .ipad-text {
              padding: 10px 0;
            }
        }

        @media (min-width: 1200px) {
            .block-child-location-tracking .ipad-text {
              padding: 10px 0;
            }
        } 
    "
}    
    
<body>
    <!-- FLY BLOCKS -->
    {include file='../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->
    
    <div class="wrapper {*bg_bottom_images*} block-child-location-tracking home-page">
        <!-- TOP MENU -->

	{include file='../includes/main/main-top-menu.tpl'
            cache_id = "includes_main_main-top-menu"
            nocache
        }


        
        {*
            Template: PHONE
            Переменные:
                style (text): стиль блока Phone (blue|black). * - blue 
        *}
        {include file='../includes/content/phone/block-phone.tpl'
                 style="blue"   
        }
        
        {* bg_famaly_427x254.png imgVerticalAlign = "bottom"*}
        <!-- CONTENT -->

        {include file='../includes/content/info/info-promo.tpl'
            imgUrl = "header_banners/cell-phone-text-tracker_header.png"
            imgAlt = "Cell Phone Text Tracker" 
            imgAlign = "right"
            imgVerticalAlign = "bottom"
			imgTitle = "Cell phone text tracking prevents dangerous contacts"
            textAlign = "right"
            title = "Cell Phone Text Tracker </br> for Parents Who Want to Stay Aware"
			titleSize = "25px"
            description = "Monitor sent and received SMS and MMS </br> Block messages and prevent dangerous communications"
            promoBuyBlock = "no"
            planPackageBuy = "yes"
            block_video = "no"
            block_video_src = "http://www.youtube.com/embed/Atg0CbaytAY"
        } {* ?rel=0&wmode=transparent&fs=0&autoplay=1&modestbranding=1&autohide=1 *}

        {include file='../includes/content/plans.tpl'}

        {* Template: FLY BUTTONS
        *}
        {include file='../includes/content/fly/box-buttons.tpl'
            buttonBuyNow = 'yes'
            buttonViewDemo = 'no'
            buttonFreeTrial = 'yes'
        }
		
        
        {*  styleTitle="h2"
    title="Follow Kids Remotely Wherever They Go" *}
        
{Content 
    styleTitle="h2"    
    title="Keeping the Kid under Control is a Part of Parenting"
    blockBg='light'}
	
	<img class="app-icon-left" src="{$img}/landings/cell-phone-text-tracker_icon1.png" style="margin-top: 5px;" alt="Track Texts on Cell Phone" title = "SMS and MMS monitoring keeps kids away from troubles">
	<p>Modern-day parenting appears to have very little in common with what it was like, say, 20-30 years ago. One of the particular features of contemporary upbringing is providing children with maximum freedom and setting minimum restrictions. The idea behind this concept is to raise independent, unrestrained personality. But the other side of the story is that children start to behave wildly and do wrong things when there’s a lack of control – and they are not afraid of any consequences. Moreover, it’s a typical picture today when parents have a go at people who dare to correct or reprove their children rather than discipline their kids for acting out or wrongdoing. Eventually, there is a significant risk that without enough control a kid will become spoiled and grow up as a rather rude and selfish person. And parents will have no one to blame except themselves.</p>
	<p>Thus, it’s parents’ direct responsibility to find a balance between being strict and being too lenient. Parental control apps can be of a great help providing parents with the information they need to praise and award or to condemn and punish their precious children. No one says you should follow them 24/7 and control their every move. But remotely <a class="a-default" href="/content-filtering-software.html">filtering content</a> they view, monitoring kids’ mobile devices, social media, calls and above all text messages can be a good solution to make sure that there are limits and consequences for unacceptable behavior.</p>
        
        <!-- BLOCK STATISTICK -->
        <div class="block-statistick row">
            
            <div class="item col-s-sm-12 col-xs-sm-12 col-sm-4 col-md-4 col-lg-4">
                <section>
                    <div><strong class="fz50 color-orange">33%</strong></div>
                    <span class="text-uppercase">
                        teenagers (13 to 17 years old) mention texting as their favorite form of keeping in touch with friends. They think that texts are harder to look over.
                    </span>
                </section>
            </div>
			<div class="item col-s-sm-12 col-xs-sm-12 col-sm-4 col-md-4 col-lg-4">
                <section>
                    <div><strong class="fz50 color-orange">55%</strong></div>
                    <span class="text-uppercase">
                        teens spend time every day texting with friends while only 19% talk on the phone. A typical teenager sends and receives 30 text messages per day.
                    </span>
                </section>
            </div>
			<div class="item col-s-sm-12 col-xs-sm-12 col-sm-4 col-md-4 col-lg-4">
                <section>
                    <div><strong class="fz50 color-orange">>40%</strong></div>
                    <span class="text-uppercase">
                        teenagers have sent sexually suggestive messages. At the same time, 15% of teens who have sent their images send them to people they only know from the Internet.
                    </span>
                </section>
            </div>
            
        </div>
        <!-- END -->

        <p>Besides helping raise a responsible young people, monitoring their text messages enables parents to protect them even when kids themselves don’t know that they’re in danger. Pumpic parental control app lets you control contacts, block misgiving senders as well as prevent children from drug abuse, bullies, and online predators.</p>
		<p>Another aspect of teen texting is that, when regularly practiced at bedtime, it may be hazardous to kid’s health. According to the study by Xue Ming, a professor of neuroscience and neurology at Rutgers New Jersey Medical School, late night texting affects the quality and amount of sleep resulting in negative impact on their level of alertness during the day.</p>
		
{EndContent}
		
{Content 
    styleTitle=""
    title=""
    blockBg='dark'}
    
    <div id="grid-images" class="row">
        <div class="col-lg-9 col-md-9 col-sm-9">
            <h2 class="h2 text-right-important">What Parents Should Know about Teens and Texting</h2>
            <div class="pt30 pb20">
                <p>Teens are virtuosic texters. Parents know that their children will respond really fast when you text them. They simplify words, use acronyms and symbols to text more rapidly than almost any grown-up can. That is why most of kids’ and teens’ SMS are hard to interpret at the first sight. However, this tactic can be and is often used to hide the actual meaning from whoever may see their conversation.</p>
				<p>Hence, you should learn at least basic slang words, terms, and acronyms to stay aware of what your kids are up to and prevent them from getting into trouble when it’s necessary. Here are several common codes every parent must familiarize himself with:</p>
				<ul class="list-images">
				<li><img src="/images/landings/mark.png" alt="Check Mark" style="left: -30px;" />CD9 – Code 9 – means Parents Are Around.</li>
				<li><img src="/images/landings/mark.png" alt="Check Mark" style="left: -30px;" />GNOC – Get Naked on Cam (webcam).</li>
				<li><img src="/images/landings/mark.png" alt="Check Mark" style="left: -30px;" />KPC – Keeping Parents Clueless.</li>
				<li><img src="/images/landings/mark.png" alt="Check Mark" style="left: -30px;" />(L)MIRL – (Lets) Meet in Real Life.</li>
				<li><img src="/images/landings/mark.png" alt="Check Mark" style="left: -30px;" />WTTP - Want to trade pictures?</li>
				<li><img src="/images/landings/mark.png" alt="Check Mark" style="left: -30px;" />NIFOC – Naked in Front of Computer.</li>
				<li><img src="/images/landings/mark.png" alt="Check Mark" style="left: -30px;" />TDTM – Talk Dirty To Me.</li>
				<li><img src="/images/landings/mark.png" alt="Check Mark" style="left: -30px;" />Sugarpic – Sexy picture.</li>
				<li><img src="/images/landings/mark.png" alt="Check Mark" style="left: -30px;" />ASLP - Ages, sex, location, picture.</li>
				<li><img src="/images/landings/mark.png" alt="Check Mark" style="left: -30px;" />LHS – Let's Have Sex.</li>
				<li><img src="/images/landings/mark.png" alt="Check Mark" style="left: -30px;" />CU46 – See You for Sex.</li>
				<li><img src="/images/landings/mark.png" alt="Check Mark" style="left: -30px;" />420, Aunt Mary, bobby, boom, chira, Mary Jane - marijuana.</li>
				<li><img src="/images/landings/mark.png" alt="Check Mark" style="left: -30px;" />A, black star, Elvis, golden dragon, pink robots, superman, twenty-five - LSD.</li>
				<p> </p>
				<p>This is just a tiny part of teen specific texting language. You can educate yourself more by visiting <a class="a-default" href="/learning-center/glossary-internet-terms.html" target="blank"> Glossary of Internet Terms</a> in our Learning Center. With this knowledge and Pumpic cell phone tracker, text messages your kid sends and receives will be completely visible and understandable to you.</p>
				<p>Another thing regarding texting you might want to consider is a social impact has on teenagers. For example, a kid may get angry at friends who don’t respond immediately and continuously to messages, not taking into consideration that the addressee may be asleep or driving. Also, researchers warn that round-the-clock contact with friends and receiving multiple opinions on any topic may affect teens' decision-making skills since they may undermine teens’ self-confidence and ability to think things through on their own. Consider these points and talk to your kids about setting limits on texting.</p>
            </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-3 text-center">
            <img alt="Track Texts to Prevent Danger" title = "Monitor texts to prevent sexting, bullying and other perils" src="{$img}/landings/cell-phone-text-tracker_icon2.png" style="margin-top: 175px;"/>
        </div>
    </div>    
{EndContent}
        
<div class="light">
        <div class="container">
                <h2 class="text-center">Protect Your Kids Through Cell Phone Text and SMS Tracking</h2>
                <div class="row">
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="{$img}/icons/icon-monitor-text-messages.png" alt="monitor text messages">
                                        <h3>Track text messages</h3>
                                        <ul class="feature_list">
                                                <li>SMS, MMS, IM conversations</li>
                                                <li>Check multimedia files and contacts</li>
                                                <li>View even deleted texts</li>
                                        </ul>
                                </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="{$img}/icons/icon-online-activity.png" alt="monitor online activity">										
                                        <h3>Follow online activities</h3>
                                        <ul class="feature_list">
                                                <li>Monitor IMs and chats</li>
                                                <li>View browsing history and bookmarks</li>
                                                <li>Follow social media posts</li>
                                        </ul>
                                </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
								        <img src="{$img}/icons/icon-mobile-secure.png" alt="secure mobile">
                                        <h3>Control mobile device use</h3>
                                        <ul class="feature_list">
                                                <li>Lock device remotely, limit activities</li>
                                                <li>Lock SMS containing bad words or threats</li>
                                                <li>Manage app downloads and usage</li>
                                        </ul>
                                </div>
                        </div>
                </div>
        </div>
</div>
        
        {include file='../includes/content/features-table.tpl'
        title = "Benefit from Using All Pumpic Features"
        description = "There are dozens if not hundreds of tracking apps that enable parents to follow their kids’ activity remotely. But Pumpic’s 24 outstanding features (with text monitoring being one of their major functions) make it stand out from the crowd. This parental control app is designed to help keep your children safe both in digital and the real world. Take a look at the full list of Pumpic’s features – and see how easy you can provide all-round protection for your little ones."
        blockBg="dark"
        } 
        
        {* description = "Install the iPad parental control app on your kid’s tablet and start monitoring right away. Log in to your Control Panel and view all the information from the target device. It can be accessed from anywhere including desktop computers, laptops, smartphones, and tablets. In addition to data monitoring, the Control Panel allows you to set limits, block tablet activities, and lock the target device permanently."             
        *}
        
        <div class="light">
    <div class="container">
            <h2 class="text-center testimonial-title">Trusted by Over 10,000 Customers Globally:</h2>
            <div class="row">
                
                <div class="bxSliders only-pc">
                        <!-- SLIDE #1 -->
                        <div class="slide">
                
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/rita-r.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Rita R. – mother of 14-year-old daughter</h4>
                                    <p>“Pumpic is very easy to install, and its Control Panel is very straightforward. I have never been a tech-savvy person, but even I didn’t have any problems figuring out how everything works. I usually check out my daughter’s SMS, instant messengers, and location logs while having lunch at work. We’ve already had several serious talks about her behavior – thankfully, nothing too risky but it made me realize that I’m giving her too much freedom.”</p>
                            </div>
                    </div>
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/joel-a.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Joel A. – father of 13-year-old daughter</h4>
                                    <p>“What can I say – good app. Had some tough times tweaking WhatsApp and Snapchat tracking on my daughter’s iPhone but after they updated the app it’s all working perfectly. Keep up the good work. Can’t imagine what should happen to make me regret the money I had spent on Pumpic. Knowing your kid is OK is worth much. Being able to protect her is priceless.”</p>
                            </div>
                    </div>
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/jessie-m.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Jessie M. – mother of 14-year-old-son</h4>
                                    <p>“I tried out several parental monitoring apps (even hidden ones), stayed with Pumpic. Seems like they have the best price-quality ratio - their functionality is sometimes even wider than the more expensive solutions have. Especially, I like their comprehensive text tracking feature and reliable GPS location tracking. When we buy a smartphone for our younger son, we’ll definitely install Pumpic on it as well.”</p>
                            </div>
                    </div>
                            
                        </div>
                </div>
                <div class="bxSliderMobile"></div>            
                            
            </div>
    </div>
</div>

        {include file='../includes/content/banners/index.tpl'}
        

        
        {*{include file='../includes/content/banners/banner-promo-trial.tpl'}*}
        
        <!-- END CONTENT -->    
           
        <!-- RECOMMENDED -->
        {*
            Template: RECOMMENDED
        *}    
        {include file='../includes/main/main-recommended.tpl'}
        
        <!-- FOOTER -->
        {*
            Template: FOOTER
            Переменные:
                our_products (text): Включить выключить блок OUR PRODUCTS (no|yes). * - yes 
        *}
        {include file='../includes/main/main-quick-link.tpl'
        blockBg="light"
        }
        {include file='../includes/main/main-footer.tpl'}
                
    </div>
       
    {include file='../includes/main/main-analytics-footer.tpl'}
</body>
</html>