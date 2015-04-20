{include file='../includes/main/main-header.tpl' 
    title="Pumpic Email Monitoring Software for parents"
    description="Follow your kids’ communication. Use Pumpic email monitoring software to view sent and received letters, control online registration data, track contact list and get texts sent to email."
}    
    
<body>
    <!-- FLY BLOCKS -->
    {include file='../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->
    
    <div class="wrapper email-monitoring-software">
	
	<!-- TOP MENU -->
	{include file='../includes/main/main-top-menu.tpl'
            cache_id = "includes_main_main-top-menu"
            nocache
        }
        
    <!-- CONTENT -->
         {include file='../includes/content/info/info-promo.tpl'
            imgUrl = "header_banners/bg_email-monitoring-software.png"
            imgAlt = "email monitoring software"
            imgAlign = "right"
            imgVerticalAlign = "bottom"
            textAlign = "right"
            title = "Pumpic Email Monitoring Software"
            description = "Monitor your children’s emails:"
            promoBuyBlock = "no"
            listText = "view sent and received emails|keep track of mailing contact list|follow online registrations"
            planPackageBuy = "yes"
         }
         {*listText = "view sent and received emails|keep track of mailing contact list|follow online registrations"*}    
        
        {include file='../includes/content/plans.tpl'}

        {* Template: FLY BUTTONS
        *}
        {include file='../includes/content/fly/box-buttons.tpl'
            buttonBuyNow = 'yes'
            buttonViewDemo = 'no'
            buttonFreeTrial = 'yes'
        }



{Content 
    title="Email using statistics"
    blockBg='dark'}
                      
    
        <p class="text-center f-light">
            Though children do not tend to use an email in their online communication, they have to use it almost every day. 
            The thing is that most websites and literally all social networks require an email to sign in. That’s why email monitoring 
            software can show you a broad picture of your kid’s online activity: preferred websites, social networks he or she uses as 
            well as if your child browses sites with inappropriate content.
        </p>
        
        <!-- BLOCK STATISTICK -->
        <div class="block-statistick row">
            
            <div class="item col-s-sm-12 col-xs-sm-12 col-sm-4 col-md-4 col-lg-4">
                <section>
                    <span class="text-uppercase">More than</span>
                    <div><strong class="fz50 color-orange">80%</strong></div>
                    <span class="text-uppercase">of kids receive inappropriate spam via email on a daily basis</span>
                </section>
            </div>
            <div class="item col-s-sm-12 col-xs-sm-12 col-sm-4 col-md-4 col-lg-4">
                <section>
                    <span class="text-uppercase">In addition,</span>
                    <div><strong class="fz50 color-orange">27%</strong></div>
                    <span class="text-uppercase">of teens have received emails with words or photos that made them feel embarrassed</span>
                </section>
            </div>
            <div class="item col-s-sm-12 col-xs-sm-12 col-sm-4 col-md-4 col-lg-4">
                <section>
                    <span class="text-uppercase">And only</span>
                    <div>
                        <strong class="fz50 color-orange">1</strong>
                        <span>in</span> 
                        <strong class="fz50 color-orange">3</strong>
                    </div>
                    <span class="text-uppercase">parents with online access actively protect their kids with filtering or blocking software</span>
                </section>
            </div>
            
        </div>
        <!-- END -->

        <p class="text-center f-light">
            The Internet is the easiest way for online predators, web swindlers and cyberbullies to contact your children. 
            By making friendship with your kids via social media, it is not hard to find out their email addresses, which is the key 
            to personal data and identity theft. Unfortunately, not many parents realize how important web protection is. 
            These days’ online reality shifts the world around, making new rules for us. If you really want to secure your kids’ 
            happiness, it is for you to consider these rules:
        </p>
        
        <!-- BLOCK LIST -->
        <div class="row pt15">
            <div class="padding-null col-sm-4 col-md-4 col-lg-4">
                <ul class="block-list">
                    <li><i class="item-list-css-orange"></i> view sent and received emails</li>
                </ul>
            </div>
            <div class="padding-null col-sm-4 col-md-4 col-lg-4">
                <ul class="block-list">
                    <li><i class="item-list-css-orange"></i> keep track of mailing contact list</li>
                </ul>
            </div>
            <div class="padding-null col-sm-4 col-md-4 col-lg-4">
                <ul class="block-list">
                    <li><i class="item-list-css-orange"></i> follow online registrations</li>
                </ul>
            </div>
        </div>
        <!-- END -->
    
        {*<p>Though children do not tend to use an email in their online communication, they have to use it almost every day. 
        The thing is that most websites and literally all social networks require an email to sign in. That’s why email monitoring 
        software can show you a broad picture of your kid’s online activity: preferred websites, social networks he or she uses as 
        well as if your child browses sites with inappropriate content.</p>

        <ul>
            <li>More than 80% of kids receive inappropriate spam via email on a daily basis</li>
            <li>In addition, 27% of teens have received emails with words or photos that made them feel embarrassed</li>
            <li>And only 1 in 3 parents with online access actively protect their kids with filtering or blocking software</li>
        </ul>

        <p>The Internet is the easiest way for online predators, web swindlers and cyberbullies to contact your children. 
        By making friendship with your kids via social media, it is not hard to find out their email addresses, which is the key 
        to personal data and identity theft. Unfortunately, not many parents realize how important web protection is. 
        These days’ online reality shifts the world around, making new rules for us. If you really want to secure your kids’ 
        happiness, it is for you to consider these rules:</p>

        <ul>
            <li>view sent and received emails</li>
            <li>keep track of mailing contact list</li>
            <li>follow online registrations</li>
        </ul>*}

        {* Template: BLOCK IMAGE
            blockAlign (text): позиция блока с изображением. (left|center|right) *default: center
            
            imgUrl (text): путь к изображению. *ОБЯЗАТЕЛЬНОЕ ПОЛЕ 
            imgAlt (text): подпись к изображению.
            // размер изображения
            imgWidth (text): ширина изображения *ОБЯЗАТЕЛЬНОЕ ПОЛЕ
            imgHeight (text): высота изображения *ОБЯЗАТЕЛЬНОЕ ПОЛЕ
            // Подпись к изображению
            captionText (text): подпись к изображению
        *}
        {*include file='../includes/content/block/image.tpl'
                blockAlign = 'center'

                imgUrl = 'parental_control/bg_famaly_mobile.png'
                imgAlt = 'Alt Test image 1'                
                imgWidth = '537'
                imgHeight = '312'

                captionText = 'Caption test image 1 Caption test image 1 Caption test image 1 Caption test image 1'
        *}
                        
{EndContent}

<div class="light">
        <div class="container">
                <h2 class="text-center">How Pumpic Secures Your Kid</h2>
                <div class="row">
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="{$img}/icons/icon-mobile-secure.png" alt="cell phone monitoring">
                                        <h3>Monitor email communication</h3>
                                        <ul class="feature_list">
                                                <li>Read sent and received emails</li>
                                                <li>Prevent bad words and threats</li>
                                                <li>View files attached</li>
                                        </ul>
                                </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="{$img}/icons/icon-online-activity.png" alt="monitor online activity">
                                        <h3>Keep track of mailing contact list</h3>
                                        <ul class="feature_list">
                                                <li>Know whom your children contact</li>
                                                <li>Find out if they make new friends</li>
                                                <li>Prevent kids from misgiving people </li>
                                        </ul>
                                </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-4">
                                <div class="feature">
                                        <img src="{$img}/icons/icon-track-kids.png" alt="remote mobile monitoring">
                                        <h3>Follow online registrations</h3>
                                        <ul class="feature_list">
                                                <li>Follow preferred websites</li>
                                                <li>Track social media your kids use</li>
                                                <li>Prevent from signing in to 18+ sites</li>
                                        </ul>
                                </div>
                        </div>
                </div>
        </div>
</div>      
                                        
{include file='../includes/content/features-table.tpl' 
        title = "Features to Monitor Email"
        description = "When it comes to children’s safety, parents should take all possible measures to protect them. Especially when it concerns online activity. Pumpic monitoring features will enable you to provide comprehensive security and cover all spheres of your kids’ time spending. Starting from tracking precise location and up to daily calls and text message reports, you will keep your children safe in a click."
        blockBg="dark"
} 
                                        
{Content 
    title="To Spy or Not To Spy Email"
    blockBg='light'}
    <p>Most parents would better prefer not to spy on their children. They say it violates their rights as individuals, who deserve privacy as well as any adult does. At the same time, parents admit a need for constant control and want their kids protected.</p> 
<p>Taking into consideration that the number of children, who are a footstep from online addiction, grows rapidly, meanwhile cyberbullying remains the main cause of suicide among the underage, mobile phone monitoring is at least the best of a bad lot.</p>  
<p>By setting parental control software on your kid’s device, you will ensure his or her safety and provide yourself with calm and worriless sleep. A reasonable tracking solution like Pumpic app will reveal the following advantages:</p>
<ul>
<li>You will protect your children from cyberbullies, online predators and swindlers. Thus, you will be able to avert danger before it has happened.</li> 
<li>You will be able to get text messages sent to email your kid uses and check if there are threats, offences, bad words or any other content inappropriate for children under 18.</li> 
<li>Control your kid’s Internet usage, set restrictions including time limits, websites to visit, applications and games to download etc.</li>
<li>You will have the access to incoming and outgoing calls and SMS, know who communicates with your child, if he or she contacts with strangers or misgiving people.</li>
<li>The full data containing your kid’s location and route history will be sent to your personal account systematically. You will surely know, where your children are at each particular moment, and see where they were recently. It is also a good help, if your kid loses his or her device or it is stolen.</li>      
<li>You will be able to control the target smartphone or tablet remotely by sending SMS commands.</li> 
<li>You will have no worries about your children and be sure they are secured and protected.</li>
</ul> 

{EndContent}    

<div class="dark">
    <div class="container">
            <h2 class="text-center testimonial-title">Testimonials:</h2>
            <div class="row">
                    <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/email_monitoring_software/testimonials4.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Steven R. (Fresno, CA)</h4>
                                    <p>“After a few days that I started to spy on email my son uses, I found that he receives too many spam letters from websites, which seemed strange to me. I opened some of them and realized that he was signed up for 18+ web sources, and that’s why they sent him advertisements. We had a serious talk and both agreed he should stop and sign out. I will keep an eye on him. Thanks Pumpic.”</p>
                            </div>
                    </div>
                    <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/email_monitoring_software/testimonials5.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Monica D. (Milwaukee, WI)</h4>
                                    <p>“Pumpic helped me learn the truth and my son get rid of a cyberbully, who kept sending him letters with threats. Messages always came from different addresses, but the message was almost the same. I didn’t know what to do first, but then decided to inform police and reply to the bully as a mom. In two days, he stopped offending my son. Thanks Pumpic for relieving my family.”</p>
                            </div>
                    </div>
                    <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/email_monitoring_software/testimonials6.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Margaret H. (Columbus, OH)</h4>
                                    <p>“Very useful app. I always know where my son logs in, on which websites he subscribes and networks he uses. It also helps me prevent my boy from watching forbidden videos and photos. I think such an app is a must-have, if you work all day and your kids require minding. I’m glad there are technologies for not entertaining only, but for parenting and childcare.”</p>
                            </div>
                    </div>
            </div>
    </div>
</div>
        {include file='../includes/prevent-online-dangers/how-pumpic.tpl' 
             blockBg="light"
        }


        {include file='../includes/main/main-quick-link.tpl' 
            blockBg="dark"
        }

        {*include file='../includes/content/banner-promo.tpl'*}
        {*{include file='../includes/content/banners/banner-promo-trial.tpl'}*}
        
        {include file='../includes/content/banners/index.tpl'}
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
        {include file='../includes/main/main-footer.tpl' 
            our_products = "no"
        }
                
    </div>
      
    {include file='../includes/main/main-analytics-footer.tpl'}
</body>
</html>