{*closeAccess*}
{include file='../includes/main/main-header.tpl'
    robots="yes" 
    title="Track iPhones and Android Smartphones via any Mobile Carrier or Operator"
    description="Learn how you can locate your kids via their phones and stay connected with them on the go. Receive alerts whenever they enter or leave specified GPS zones. Pumpic app is compatible with any carrier and works on Android and Apple mobile devices."
}    
    
<body>
    <!-- BLOCK GTM -->
    {include file='../includes/main/main-after-body.tpl'}
    <!-- END BLOCK GTM -->
    
    <!-- FLY BLOCKS -->
    {include file='../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->
    
    <div class="wrapper {*bg_bottom_images*}block-mobile-operators gps-wireless-tracking-phone">
        <!-- TOP MENU -->

	{include file='../includes/main/main-top-menu.tpl'
            topmenu_active='home'
            cache_id = "includes_main_main-top-menu"
            nocache
        }
        
        <!-- FLY BLOCKS -->
        {nocache}
        {if ''|hasFreeTrialStick}    
            {include file='../includes/content/fly/fly-free-trial.tpl'}
        {/if}    
        {/nocache}
        <!-- END FLY -->
        
        {*
            Template: PHONE
            Переменные:
                style (text): стиль блока Phone (blue|black). * - blue 
        *}
        {include file='../includes/content/phone/block-phone.tpl'
                 style="blue"   
        }
        
       <!-- CONTENT -->
        {include file='../includes/content/info/info-promo.tpl'
            collg = "7"
            imgUrl = "landings/gps-wireless-tracking-phone_v1.png"
            imgAlt = "Compatible with iOS & Android Supported by All Mobile Carriers"
            imgAlign = "right"
            textAlign = "right"
            title = "<b>Compatible with</b> iOS & Android <br />Supported by <b>All Mobile Carriers</b>"
            description = "Monitor the target device remotely<br />
            Despite of mobile carrier services"
            promoBuyBlock = "no"
            planPackageBuy = "yes"
            blockTrial = "no"
            blockQuickAndSimple = "no"
            block_video = "yes"
            block_video_src = "http://www.youtube.com/embed/Atg0CbaytAY"
        } {* bg_features_call_437x226.png *}
        
        {* header_banners/banner-header-mobile-operators.png *}
        {* ?rel=0&wmode=transparent&fs=0&autoplay=1&modestbranding=1&autohide=1 *}
        
        {include file='../includes/content/plans.tpl'}

        {* Template: FLY BUTTONS
        *}
        {include file='../includes/content/fly/box-buttons.tpl'
            buttonBuyNow = 'yes'
            buttonViewDemo = 'no'
            buttonFreeTrial = 'yes'
        }
        
        {include file='../includes/content/secures-mobile-operators.tpl'}
        
        {include file='../includes/content/features-table.tpl' 
                blockBg="light"
                description = "Pumpic is a reasonably improved mobile phone application, which comes with a large range of monitoring functions. The app runs independently of mobile carriers and services they provide."
        } 
        
        {include file='../includes/content/ipad.tpl' 
                blockBg="dark"
                imgUrl = "parental_control/ipad.png"
                imgAlt = "Android"
                title = "Easy-to-Use Control Panel"
                textAlign = "left"
                             
        }
        
        <!-- BLOCK BLUE TEXT -->
        {include file='../includes/content/block-blue-text.tpl'
            title = "Pumpic app is attached to the target device itself. <br />It does not depend on a mobile carrier that is used."
        }
        
        <!-- informer -->
        <!-- end -->
        <!-- BLOCK COMPATIBILITY -->
        {include file='../includes/content/compatibility/compatibility-table.tpl'
            blockBg="dark"
            descriptions="The app is compatible with most of modern smartphones and tablets run by iOS and Android. You can check if your particular target device is compatible by finding it in the list on our <a class='a-default' href='/compatibility/'>Compatibility</a> page. Alternatively, you can fill in the form, send us a request, and we will do it for you."
        } 
        
        
        
        <!-- BLOCK MOBILE OPERATOTS -->
        {include file='../includes/content/mobile-operators.tpl'
            blockBg="light"
            title = "Mobile Wireless Carriers Worldwide"
            descriptions="When searching for a relevant mobile monitoring app online, many people tend to use key words like “how to track my Verizon phone”, “Vodafone tracking”, or “at&t mobile monitoring”. However, it is important to note that Pumpic app works independently; our monitoring software does not depend on any mobile carrier as well as services it provides."
        } 
        
        <!-- FEADBACK FORM -->
        <div class="dark">
            <div class="container">
                <div class="col-lg-10 col-lg-offset-1">
                    <div class="row">
                        <div class="form">
                            {include file='../includes/main/form/main-mobile-operators-send-find-phone.tpl'
                                cache_id = "main-mobile-operators-send-find-phone"
                                nocache} 
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        {include file='../includes/content/how-get-pumpic.tpl'
            blockBg="light"
        } 
        
        <!-- TESTIMONIALS -->
        <div class="dark">
            <div class="container">
                <h2 class="text-center testimonial-title">Trusted by Over 10 000 Customers Worldwide:</h2>
                <div class="row">
                    
                    <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                        <img src="{$img}/testimonials/testimonials_new_13.png" alt="" class="testimonial-photo">
                        <div class="testimonial-text">
                            <h4>Janet K. – mother of 14-year-old son</h4>
                            <p>“I was looking for an app to track a Verizon cell phone of my son and came across Pumpic in one of reviews. I decided to try it and was satisfied with opportunities the app provides. It allows me to control my son’s activities online, check his calls and text messages. Location tracking is one more option I really appreciate. I know where my son is and what he does at any time I need.”</p>
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                        <img src="{$img}/testimonials/testimonials_new_14.png" alt="" class="testimonial-photo">
                        <div class="testimonial-text">
                            <h4>Briana F. – mother of 12-year-old son</h4>
                            <p>“My son asked me for a smartphone as a birthday gift, so I went to AT&T store and bought one for him. I was worried about my kid’s online safety with this new device and a sales assistant suggested me to use parental controls. He said he personally chose Pumpic for his children, so I deiced to follow his advice. For now, I’m sure my son is protected. I can take care of him even from work and control his cell phone use easily.”</p>
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                        <img src="{$img}/testimonials/testimonials_new_15.png" alt="" class="testimonial-photo">
                        <div class="testimonial-text">
                            <h4>Mark O. – a business owner</h4>
                            <p>“I use Pumpic to monitor corporate cell phones that I give my employees. First, I thought about trying tracking services provided by my mobile operator, but as it turned out Pumpic has much more functions and useful abilities that help me effectively control my officers and run my business.”</p>
                        </div>
                    </div>
            
                </div>
            </div>
        </div>    
        <!-- END -->
        {*include file='../includes/main/main-testimonials.tpl'
                title = "Trusted by Over 10 000 Customers Worldwide"
                sliders = "false"
                blockBg="dark"*} 
        
        {include file='../includes/main/main-quick-link.tpl' 
            blockBg="light"
        }        
        
        
        {include file='../includes/content/banners/lib/banner-promo-mobile-operators.tpl'}
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