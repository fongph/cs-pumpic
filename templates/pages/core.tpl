{closeAccess}
{include file='../includes/main/main-header.tpl'
    robots="yes" 
    title="Title"
    description="Description"
}  

<body>
    <!-- FLY BLOCKS -->
    {include file='../includes/content/fly/fly_blocks.tpl'}
        <!-- templates fly blocks -->
        {* BLOCK 'FLY_FEATURES v1' *}
        {include file='../includes/content/fly/fly_features.tpl'}
        {* BLOCK 'FLY_FEATURES v2' *}
        {include file='../includes/content/fly/fly_features_v2.tpl'}
        {* BLOCK 'FLY_DISCOUNT' *}
        {* include file='../includes/content/fly/fly-box-discount.tpl' *}
        {* BLOCK 'FLY_BUTTONS' *}
        {include file='../includes/content/fly/box-buttons.tpl'}
        {* BLOCK 'FLY_BUTTON_HELP GO_UP' *}
        {* include file='../includes/main/main-button-help.tpl' *}
        {* BLOCK 'FLY_BUTTON_GROUP' *}
        {* include file='../includes/main/main-button-goup.tpl' *}
        <!-- end templates fly blocks -->
    <!-- END FLY BLOCKS-->
    
    <div class="wrapper {*bg_bottom_images*} block-free-trial">
        <!-- TOP MENU -->

	{include file='../includes/main/main-top-menu.tpl'
            topmenu_active='home'
            cache_id = "includes_main_main-top-menu"
            nocache
        }
        
        <!-- CONTENT -->
        {include file='../includes/content/info/info-promo.tpl'
            imgUrl = "header_banners/bg_famaly_427x254.png"
            imgAlt = "Landing Mobile"
            imgAlign = "left bottom"
            imgVerticalAlign = "bottom"
            textAlign = "left"
            title = "Cell Phone <br />Monitoring Control App"
            description = "Keep your family safe and secured with Pumpic. <br />
                           Track location. View calls and SMS. Follow online activity."
            promoBuyBlock = "yes"
        }
        
        {* TEMPLATE TEENAGERS *}
        {include file='../includes/content/teenagers.tpl' 
                    blockBg="light"
        }
        
        {* BLOCK DISCOUNT *}
        {include file='../includes/content/discount_50_v2.tpl'}
                
        {* SAMPLE BLOCK SECURES *}
        {include file='../includes/content/secures.tpl'
                blockBg="light"
        }
        
        {*  BLOCK FEATURES LIST *}
        {include file='../includes/content/features.tpl'}
        
        {* BLOCK TEXT(HTML) *}
        {Content 
            title="Email using statistics"
            blockBg='light'}

                <p>Though children do not tend to use an email in their online communication, they have to use it almost every day. The thing is that most websites and literally all social networks require an email to sign in. That’s why email monitoring software can show you a broad picture of your kid’s online activity: preferred websites, social networks he or she uses as well as if your child browses sites with inappropriate content.</p>

                <ul>
                    <li>More than 80% of kids receive inappropriate spam via email on a daily basis</li>
                    <li>In addition, 27% of teens have received emails with words or photos that made them feel embarrassed</li>
                    <li>And only 1 in 3 parents with online access actively protect their kids with filtering or blocking software</li>
                </ul>

                <p>The Internet is the easiest way for online predators, web swindlers and cyberbullies to contact your children. By making friendship with your kids via social media, it is not hard to find out their email addresses, which is the key to personal data and identity theft. Unfortunately, not many parents realize how important web protection is. These days’ online reality shifts the world around, making new rules for us. If you really want to secure your kids’ happiness, it is for you to consider these rules.</p>
        {EndContent}
        
        {* BLOCK PLANS *}
        {include file='../includes/content/plans.tpl'}

        {* Template: FLY BUTTONS
        *}
        {include file='../includes/content/fly/box-buttons.tpl'
            buttonBuyNow = 'yes'
            buttonViewDemo = 'no'
            buttonFreeTrial = 'yes'
        }
        
        {* TEMPLATE SECURES MOBILE PHONES MONITORING *}
        {include file='../includes/content/secures-mobile-phones-monitoring.tpl'}
        
        
        {* BLOCK FEATURES TEBLE *}
        {include file='../includes/content/features-table.tpl' 
                blockBg="light"
        } 
        
        {* BLOCK Easy-to-Use 'ipad' *}
        {include file='../includes/content/ipad.tpl' 
                blockBg="dark"
                imgUrl = "parental_control/ipad.png"
                imgAlt = "Android"
                title = "Easy-to-Use Control Panel"
                textAlign = "left"
                description = "Try Control Panel demo to see Pumpic app in use.
                               <br />Buy Pumpic to protect your family and secure your happiness right now."
        }
        
        {* BLOCK Easy-to-Use 'ipad_android' *}
        {include file='../includes/content/ipad.tpl' 
                blockBg="dark"
                imgUrl = "icons/ipad_android.png"
                imgAlt = "call monitoring"
                title = "Calls Monitoring"
                textAlign = "left"
                description = "Try Control Panel demo to see Pumpic Calls Monitoring in use.<br/>Buy Pumpic to protect your kids and track their calls right now."

        }
        
        {* TEMPLATE TESTIMONIALS *}
        {include file='../includes/main/main-testimonials.tpl'
                title = "Trusted by Over 10 000 Customers Worldwide"
                sliders = "false"
                blockBg="light"} 
                
        {* BLOCK TESTIMONIALS HTML (static) *}
        <div class="dark">
            <div class="container">
                <h2 class="text-center testimonial-title">Trusted by Over 10 000 Customers Worldwide:</h2>
                <div class="row">

                    <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/testimonials_new_1.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Jane A. – mother of twins</h4>
                                    <p>“I didn’t know such technology existed. It made my life easier and helped me big time. I can track my kids’ calls, texts messages and social media to save them from online predators and misgiving communications.”</p>
                            </div>
                    </div>
                    <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/testimonials_new_2.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Karen and Mike – parents of a 12-year-old daughter</h4>
                                    <p>“Our daughter was acting weird after we moved to another state. When we installed Pumpic on her iPhone, we found out that she was bullied by her classmate on Facebook. We gathered with teachers and parents and talked the whole thing out. Thank you!”</p>
                            </div>
                    </div>
                    <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/testimonials_new_3.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Logan T – father of a 14-year-old son</h4>
                                    <p>“Pumpic has really made my life easier. Now, I can take care of my child, even when I’m far from home. I can block 18+ websites and applications. It’s good to know that my son is safe and secured wherever I go.”</p>
                            </div>
                    </div>

                </div>
            </div>
        </div>
                                
        {* BLOCK TESTIMONIALS HTML (sliders) *}    
        <div class="dark">
            <div class="container">
                <h2 class="text-center testimonial-title">Trusted by Over 10 000 Customers Worldwide:</h2>
                <div class="row">

                    <div class="bxSliders">

                        <!-- SLIDE #1 -->
                        <div class="slide">
                            <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <img src="{$img}/testimonials/testimonials_new_25.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>Martin S. (Dallas, TX)</h4>
                                            <p>“I found out about Pumpic after using some two or three similar apps. It stands out reasonably. The app has the widest set of useful functions, which work great. It’s a huge help for me and my family.”</p>
                                    </div>
                            </div>
                            <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <img src="{$img}/testimonials/testimonials_new_26.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>George W. (Los Angeles, CA)</h4>
                                            <p>“I am a business owner and have many cell phones on my command. Pumpic helps my company and me as I can control and monitor all of them from one place. It’s like a load off my mind. Thanks!”</p>
                                    </div>
                            </div>
                            <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <img src="{$img}/testimonials/testimonials_new_27.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>Sandra N. (Denver, CO)</h4>
                                            <p>“With Pumpic I can no longer worry about my two sons and take care of them from work. It helps me track where they are, what they do online and control their communication. It is a rescue for parents.”</p>
                                    </div>
                            </div>
                        </div> <!-- .slide-->
                        <!-- END SLIDER #1 -->
                        <!-- SLIDE #2 -->
                        <div class="slide">
                            <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <img src="{$img}/testimonials/testimonials_new_1.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>Jane A. – mother of twins</h4>
                                            <p>“I didn’t know such technology existed. It made my life easier and helped me big time. I can track my kids’ calls, texts messages and social media to save them from online predators and misgiving communications.”</p>
                                    </div>
                            </div>
                            <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <img src="{$img}/testimonials/testimonials_new_2.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>Karen and Mike – parents of a 12-year-old daughter</h4>
                                            <p>“Our daughter was acting weird after we moved to another state. When we installed Pumpic on her iPhone, we found out that she was bullied by her classmate on Facebook. We gathered with teachers and parents and talked the whole thing out. Thank you!”</p>
                                    </div>
                            </div>
                            <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <img src="{$img}/testimonials/testimonials_new_3.png" alt="" class="testimonial-photo">
                                    <div class="testimonial-text">
                                            <h4>Logan T – father of a 14-year-old son</h4>
                                            <p>“Pumpic has really made my life easier. Now, I can take care of my child, even when I’m far from home. I can block 18+ websites and applications. It’s good to know that my son is safe and secured wherever I go.”</p>
                                    </div>
                            </div>
                        </div> <!-- .slide-->
                        <!-- END SLIDER #2-->

                    </div> <!-- .bxSliders -->

                </div>
            </div>
        </div>
        
        
        {* BLOCK HOW-GET-PUMPIC *}        
        {include file='../includes/content/how-get-pumpic.tpl'
            title = ""
            style = "static"
        }        
                
        {* BLOCK WHY PUMPIC *}        
        {include file='../includes/content/why-pumpic.tpl'
                blockBg="light"}

        {* BLOCK QUICK LINK *}        
        {include file='../includes/main/main-quick-link.tpl' 
            blockBg="dark"
        }        
        
        
        {* TEMPLATE BANNERS *}
        {include file='../includes/content/banners/index.tpl'}
        
        <!-- TEMPLATES BANNERS -->
        {* BLOCK BANNER #1 'PROMO-BUY' *}
        {include file='../includes/content/banners/lib/banner-promo-buy.tpl'}
        {* BLOCK BANNER #3 'PROMO-TRIAL' *}
        {include file='../includes/content/banners/lib/banner-promo-trial.tpl'}
        {* BLOCK BANNER #3 'PROMO-APP' *}
        {include file='../includes/content/banners/lib/banner-promo-app.tpl'}
        {* BLOCK BANNER #3 'PROMO-TEENAGERS' *}
        {include file='../includes/content/banners/lib/banner-promo-teenagers.tpl'}
        <!-- END TEMPLATES BANNERS -->
        
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
        {include file='../includes/main/main-footer.tpl'}
                
    </div>
       
    {include file='../includes/main/main-analytics-footer.tpl'}
</body>
</html>