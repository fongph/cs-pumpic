{include file='../includes/main/main-header.tpl'

    title="Child cell phone monitoring software"
    description="Protect Your Kids Before It Is Too Late. Track location. View calls and SMS. Monitor online activity."
}    
    
<body>
    <!-- BLOCK GTM -->
    {include file='../includes/main/main-after-body.tpl'}
    <!-- END BLOCK GTM -->
    
    <!-- FLY BLOCKS -->
    {include file='../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->
    
    <div class="wrapper {*box-bottom-images*} prevent-online-dangers">
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
        
        <!-- CONTENT -->
        {include file='../includes/content/info/info-promo.tpl'
            imgUrl = "header_banners/bg_teenagers_header_419x325.png"
            imgAlt = "Smartphone monitoring"
            imgAlign = "right"
            imgVerticalAlign = "bottom"
            textAlign = "right"
            title = "Prevent Online Dangers.<br />Pumpic Monitoring App."
            description = "Protect your kids before it is too late.<br />Track location. View calls and SMS. Monitor online activity."
            promoBuyBlock = "no"
            planPackageBuy = "yes"
            block_video = "yes"
            block_video_src = "http://www.youtube.com/embed/Atg0CbaytAY"
        }
        
        {include file='../includes/content/plans.tpl' }

        {* Template: FLY BUTTONS
        *}
        {include file='../includes/content/fly/box-buttons.tpl'
            buttonBuyNow = 'yes'
            buttonViewDemo = 'no'
            buttonFreeTrial = 'yes'
        }
        
         {include file='../includes/content/teenagers.tpl' 
                    blockBg="light"
        }
                
        {include file='../includes/content/secures.tpl'
            blockBg="dark"
        }

        {include file='../includes/content/features-table.tpl' 
                blockBg="light"
        }     

        {include file='../includes/content/ipad.tpl' 
                    blockBg="dark"
                    imgUrl = "parental_control/ipad.png"
                    imgAlt = "remote control"
                    title = "Easy-to-Use Control Panel"
        }
        
        {* description = "Right after installing Pumpic, all the data from the target device will be sent to your Control Panel. It can be accessed from any browser and any gadget, including PCs, mobile phones and tablets. In Control Panel, you can not only view the information, but also set restrictions, block, and limit some of activities."
         *}
        
        {*include file='../includes/testimonials.tpl' 
            blockBg="light"
        *}       

<div class="light">
    <div class="container">
            <h2 class="text-center testimonial-title">Over 10,000 Parents Trust Us:</h2>
            <div class="row">
                
                <div class="bxSliders only-pc">
                        <!-- SLIDE #1 -->
                        <div class="slide">
                
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/noah-n.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Noah N. – father of 15-year-old daughter</h4>
                                    <p>“We had the online predator problem with our daughter. I noticed that she constantly types messages on her tablet, but she said that she messaged her friends from class only. I’ve installed Pumpic and the very first report on the IM messengers showed that our daughter communicates with someone who calls himself her peer and encourages her to meet in person without parents knowing. We had a serious talk, and now she’s much more careful with her communications.”</p>
                            </div>
                    </div>
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/ashley-n.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Ashley N. – mother of 15-year-old son</h4>
                                    <p>“Pumpic is the thing any parent needs to have a keen sense of kids’ activities. I must confess that I don’t even use the whole bunch of the features that Pumpic offers. But, who knows, maybe one day I will need them all as my son uses spends more and more time online every day. The app is really helpful, and I constantly monitor and managehis device – content filtering is a salvation, honestly, kids are too curious today.”</p>
                            </div>
                    </div>
                    <div class="bxItem col-sm-12 col-md-4 col-lg-4 col-xs-12">
                            <img src="{$img}/testimonials/tom-m.png" alt="" class="testimonial-photo">
                            <div class="testimonial-text">
                                    <h4>Tom M. – father of 13-year-ild daughter</h4>
                                    <p>“I don’t want to forbid my daughter to use the Internet, but I have to be sure that she’s using it appropriately and that no fraudsters or bullies threaten her. That’s why about two years ago I started monitoring her mobile phone with parental control software, namely Pumpic. It appears to have the most powerful and diverse features. Though the price of the app might seem quite high, I don’t want to change it because it’s absolutely up to quality.”</p>
                            </div>
                    </div>
                            
                        </div>
                </div>
                <div class="bxSliderMobile"></div>            
                            
            </div>
    </div>
</div>
		
		
        {include file='../includes/content/how-get-pumpic.tpl' 
             blockBg="dark"
        }

        {include file='../includes/content/why-pumpic.tpl' 
            blockBg="light"
        }

        {* blockBg="dark" *}



        {*include file='../includes/main/main-footer-promo-v2.tpl'
            sloganFirst="Prevent Troubles Remotely"
            sloganSecond="Secure Kids’ Happiness"
            bannerImg="image_banners_2.png"
        *}
        {*{include file='../includes/content/banners/banner-promo-trial.tpl'}*}
        
        {include file='../includes/content/banners/index.tpl'}
        <!-- END CONTENT -->    
        
        <!-- RECOMMENDED -->
        {*
            Template: RECOMMENDED
        *}
        {include file='../includes/main/main-quick-link.tpl'
        blockBg="light"
        }

        {include file='../includes/main/main-footer.tpl'}
                
    </div>
        
    {include file='../includes/main/main-analytics-footer.tpl'}
</body>
</html>