{*closeAccess*}
{strip}

{include file='../../includes/main/main-header.tpl'
    title="Pumpic Learning Center: Internet Safety Guide"
    description="Most kids learn about online security from their parents. That’s why you should know and teach your children the following rules of Internet safety."
}

<body>
    <!-- FLY BLOCKS -->
    {include file='../../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->
    
	<div id="tmp-isg" class="wrapper">
	{include file='../../includes/main/main-top-menu.tpl' 
                topmenu_active='faq'
                cache_id = "includes_main_main-top-menu"
                nocache
        }	
        {*
            Template: PHONE
            Переменные:
                style (text): стиль блока Phone (blue|black). * - blue 
        *}
        {include file='../../includes/content/phone/block-phone.tpl'
                 style="black"   
        }
        
        
        
        
        <divv class="very_easy">
            <div class="container">
                <div class="row">
                    <div class="col-lg-10 col-lg-offset-1">

                        <!-- breadcrumbs -->
                        <div class="box-breadcrumbs">
                            <div class="container">
                                <ul id="breadcrumbs">
                                    <li><a class="color-green" href="http://{$domain}/learning-center/">Learning Center</a><span class="arrows icon-right-open"></span>{*<span class="arrows_green"></span>*}</li>
                                    <li><span>The Ultimate Internet Safety Guide</span></li>
                                </ul>
                            </div>
                        </div>
                        <!-- END -->
                        
                        <!-- Descriptions -->
                        <div class="row text-center">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <h2>The Ultimate Internet Safety Guide</h2>
                                <p class="text-justify">Today it is obvious that children spend very much time online. They do homework, play games, watch movies, and communicate with one another via the Internet. Being a parent, you should <strong>protect your kids’ time spending</strong>. As the statistics shows, <i>79% of kids learned about online security from their parents</i>. Thus, you should know and teach your little ones <strong>how to behave safely on the web</strong>.</p> 
                                <p class="text-justify">We have prepared a list of <strong>guidelines on Internet security</strong>, privacy and identity protection for you to <strong>form safe habits</strong> and your kids to follow them.</p>
                            </div>
                        </div>
                        <!-- END -->

                        <!-- End -->

                        <div class="row">
                            <div class="col-lg-12">
                                <h2 id="faq_frequently_asked_questions">Frequently Asked Questions</h2>
                                <div class="tab_category">
                                    {include file='../../includes/content/learning-center/internet-safety-guide-category.tpl'}
                                    <div class="box_category">
                                        <ul>
                                            <!-- #tips-for-parents -->
                                            <li>
                                                <div id="tips-for-parents">
                                                    <div class="row b-column-1">
                                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 item-number">
                                                            <div class="block-number-green">1</div>
                                                            <div id="descriptions">
                                                                <b>Set family rules</b> on when, where, and for how long your children are allowed to use the Internet. The online access for fun should be a meritable award, not a matter of course.
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- view table -->
                                                    <div class="row b-column-2">
                                                        
                                                        <div class="col-lg-6 col-md-6 col-sm-12 item-column">
                                                            
                                                            <div class="row">
                                                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                                                    <div class="block-number-green">2</div>
                                                                </div>
                                                                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-9">
                                                                    <img style="max-width: 170px;max-height: 170px;" src="{$img}/learning_center/internet-safety-guide/step-2-new.png" />
                                                                </div>
                                                            </div>
                                                            <p>Know and <b>understand the rules of websites</b> your kids visit. Some of them may be restricted for children under a certain age due to disclosing content inappropriate for kids or some other reasons.</p>    
                                                        </div>
                                                        <div class="col-lg-6 col-md-6 col-sm-12 item-column">

                                                            <div class="row">
                                                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                                                    <div class="block-number-green">3</div>
                                                                </div>
                                                                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-9">
                                                                    <img style="max-width: 234px;max-height: 124px;" src="{$img}/learning_center/internet-safety-guide/step-3.png" />
                                                                </div>
                                                            </div>
                                                            <p><b>Set privacy settings</b> on social networks. Most of them have a public and private mode for publications. By setting the private one you will prevent your kids from being contacted by strangers.</p>
                                                            
                                                        </div>
                                                        
                                                    </div>
                                                                
                                                    <div class="row b-column-2 odd">
                                                        
                                                        <div class="col-lg-6 col-md-6 col-sm-12 item-column">
                                                            <div class="row">
                                                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                                                    <div class="block-number-green">4</div>
                                                                </div>
                                                                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-9">
                                                                    <img style="max-width: 141px;max-height: 151px;" src="{$img}/learning_center/internet-safety-guide/step-4.png" />
                                                                </div>
                                                            </div>
                                                            <p><b>Prevent</b> your chidren from <b>sharing personal data</b> like name, school, age, phone number, email, and home address with strangers. Thus, you will avert many dangers like identity theft, robbery, bullying, and even kidnapping.</p>    
                                                        </div>
                                                        <div class="col-lg-6 col-md-6 col-sm-12 item-column">
                                                            <div class="row">
                                                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                                                    <div class="block-number-green">5</div>
                                                                </div>
                                                                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-9">
                                                                    <img style="max-width: 157px;max-height: 132px;" src="{$img}/learning_center/internet-safety-guide/step-5.png" />
                                                                </div>
                                                            </div>
                                                            <p><b>Prevent</b> your kids from <b>posting photos of themselves</b>. Some shots, especially sefies, may contain information like a school location or home address that can be used by online predators to track your child.</p>
                                                        </div>
                                                        
                                                    </div>
                                                    <!-- end -->
                                                    <div class="row b-column-1">
                                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 item-number">
                                                            <div class="block-number-green">6</div>
                                                            <div id="descriptions">
                                                                Do not let kids either <b>send or open messages</b> (including photo and video content) coming <b>from strangers</b>. They may contain viruses or have some other fraudulent motives.
                                                            </div>
                                                        </div>
                                                    </div>
                                                    
                                                    <!-- VIEW TABLE V2 -->
                                                    <div class="row view-tb2">
                                                        <div class="col-lg-6 col-md-6 col-sm-12 padding-null view-tb-cell">
                                                            
                                                            <div class="v-tb-item">
                                                                <div class="block-number-green">7</div>
                                                                <div id="descriptions">
                                                                    Teach your kids to <b>inform an adult</b>, once they have noticed any kind of <b>misbehavior</b> against themselves. Thus, you will be able to avert cyberbullying or online predators’ attacks at early stages.
                                                                </div>
                                                            </div>
                                                            <div class="v-tb-item only-mobile">
                                                                <div class="row">
                                                                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                                                        <div class="block-number-green">8</div>
                                                                    </div>
                                                                    <div class="col-lg-9 col-md-9 col-sm-9 col-xs-9">
                                                                        <img style="max-width: 178px;max-height: 94px;" src="{$img}/learning_center/internet-safety-guide/step-8.png" />
                                                                    </div>
                                                                </div>
                                                                <p class="mt30">Tell your kids about the importance of <b>keeping logins and passwords private</b>. Explain that such data should not be shared even with friends. If already shared with someone, it would be better to change all passwords as soon as possible.</p>
                                                            </div>
                                                            <div class="v-tb-item only-pc">
                                                                <div class="row">
                                                                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                                                        <div class="block-number-green">9</div>
                                                                    </div>
                                                                    <div class="col-lg-9 col-md-9 col-sm-9 col-xs-9">
                                                                        <img style="max-width: 203px;max-height: 205px;" src="{$img}/learning_center/internet-safety-guide/step-9.png" />
                                                                    </div>
                                                                </div>
                                                                <p class="mt30">Children should <b>be polite and respectful</b> when communicating with others on the web. Though you can’t see the one you chat with, there is a human being at the other end, who shouldn’t be offended anyway.</p>
                                                            </div>
                                                            
                                                        </div>
                                                                    
                                                        <div class="col-lg-6 col-md-6 col-sm-12 padding-null view-tb-cell">
                                                            
                                                            <div class="v-tb-item only-mobile">
                                                                <div class="row">
                                                                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                                                        <div class="block-number-green">9</div>
                                                                    </div>
                                                                    <div class="col-lg-9 col-md-9 col-sm-9 col-xs-9">
                                                                        <img style="max-width: 203px;max-height: 205px;" src="{$img}/learning_center/internet-safety-guide/step-9.png" />
                                                                    </div>
                                                                </div>
                                                                <p class="mt30">Children should <b>be polite and respectful</b> when communicating with others on the web. Though you can’t see the one you chat with, there is a human being at the other end, who shouldn’t be offended anyway.</p>
                                                            </div>
                                                            
                                                            <div class="v-tb-item only-pc">
                                                                <div class="row">
                                                                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                                                        <div class="block-number-green">8</div>
                                                                    </div>
                                                                    <div class="col-lg-9 col-md-9 col-sm-9 col-xs-9">
                                                                        <img style="max-width: 178px;max-height: 94px;" src="{$img}/learning_center/internet-safety-guide/step-8.png" />
                                                                    </div>
                                                                </div>
                                                                <p class="mt30">Tell your kids about the importance of <b>keeping logins and passwords private</b>. Explain that such data should not be shared even with friends. If already shared with someone, it would be better to change all passwords as soon as possible.</p>
                                                            </div>
                                                            <div class="v-tb-item">
                                                                <div class="row">
                                                                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                                                        <div class="block-number-green padding-right-null padding-left-null">10</div>
                                                                    </div>
                                                                    <div class="col-lg-9 col-md-9 col-sm-9 col-xs-9">
                                                                        <img style="max-width: 141px;max-height: 141px;" src="{$img}/learning_center/internet-safety-guide/step-10.png" />
                                                                    </div>
                                                                </div>
                                                                <p class="mt30">Let them <b>know the danger in the face</b>. Tell your kids about cyberbullying, online predators, scammers, and other perils they may face while surfing the web. Informed means prepared.</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- END -->
                                                    
                                                    {*
                                                    <!-- view table -->
                                                    <div class="row b-column-2">
                                                        
                                                        <div class="col-lg-6 col-md-6 col-sm-12 item-column border-right-null">
                                                            <div class="row">
                                                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 item-number">
                                                                    <div class="block-number-green">7</div>
                                                                    <div id="descriptions">
                                                                        Teach your kids to <b>inform an adult</b>, once they have noticed any kind of <b>misbehavior</b> against themselves. Thus, you will be able to avert cyberbullying or online predators’ attacks at early stages.
                                                                    </div>
                                                                </div>
                                                            </div>    
                                                        </div>
                                                        <div class="col-lg-6 col-md-6 col-sm-12 item-column border-left">

                                                            <div class="row">
                                                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                                                    <div class="block-number-green">8</div>
                                                                </div>
                                                                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-9">
                                                                    <img style="max-width: 178px;max-height: 94px;" src="{$img}/learning_center/internet-safety-guide/step-8.png" />
                                                                </div>
                                                            </div>
                                                             <p>Tell your kids about the importance of <b>keeping logins and passwords private</b>. Explain that such data should not be shared even with friends. If already shared with someone, it would be better to change all passwords as soon as possible.</p>
                                                            
                                                        </div>
                                                        
                                                    </div>
                                                                
                                                    <div class="row b-column-2 odd">
                                                        
                                                        <div class="col-lg-6 col-md-6 col-sm-12 item-column">
                                                            <div class="row">
                                                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                                                    <div class="block-number-green">9</div>
                                                                </div>
                                                                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-9">
                                                                    <img style="max-width: 203px;max-height: 205px;" src="{$img}/learning_center/internet-safety-guide/step-9.png" />
                                                                </div>
                                                            </div>
                                                            <p>Children should <b>be polite and respectful</b> when communicating with others on the web. Though you can’t see the one you chat with, there is a human being at the other end, who shouldn’t be offended anyway.</p>    
                                                        </div>
                                                        <div class="col-lg-6 col-md-6 col-sm-12 item-column">
                                                            <div class="row">
                                                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                                                    <div class="block-number-green padding-right-null padding-left-null">10</div>
                                                                </div>
                                                                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-9">
                                                                    <img style="max-width: 141px;max-height: 141px;" src="{$img}/learning_center/internet-safety-guide/step-10.png" />
                                                                </div>
                                                            </div>
                                                            <p>Let them <b>know the danger in the face</b>. Tell your kids about cyberbullying, online predators, scammers, and other perils they may face while surfing the web. Informed means prepared.</p>
                                                        </div>
                                                        
                                                    </div>
                                                    <!-- end -->
                                                    *}
                                                    
                                                    <div class="row b-column-1">
                                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 item-number">
                                                            <div class="block-number-green">!</div>
                                                            <div id="descriptions">
                                                                In addition, consider applying parental control software, so as you could <b>monitor each step taken</b>, every website visited or a message received. Thus, you will be able to ensure that nothing endangers your kids’ security. Build your relations on a trust basis and never leave your kids one on one with possible threats. <i>Keep your eyes open!</i>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    
                                                </div>
                                            </li>
                                            

                                            <!-- #start -->
                                            <li>
                                                
                                                <div id="useful-links">
                                                    
                                                    <ol class="list-numbers">
                                                        <li><a href="https://www.ftc.gov/tips-advice/business-center/privacy-and-security/children%27s-privacy" class="green">Children’s Online Privacy Protection Act</a>. Federal Trade Commission explains the main child online privacy law of the United States, including the information that websites can collect from kids.</li>
                                                        <li><a href="https://www.fbi.gov/stats-services/publications/parent-guide" class="green">The Parent’s Guide to Internet Safety</a>. The Federal Bureau of Investigation has a lot of experience against online predators, kidnappers, and child abusers. The FBI specialists bring a number of rules and cases that help parents understand the complexities of online child exploitation.</li>
                                                        <li><a href="https://www.usa.gov/online-safety" class="green">Types and tips on avoiding Internet fraud</a>. The information provided by U.S. Government as well as preventative measures mentioned will make you informed prior to entering into transactions over the Internet.</li>
                                                        <li><a href="https://www.us-cert.gov/ncas/tips/ST05-002" class="green">Online risks associated with children and what can be done for protection</a>. You should consider these characteristics when deciding how to secure your data and your child.</li>
                                                        <li><a href="https://www.fcc.gov/guides/childrens-internet-protection-act" class="green">Children's Internet Protection Act</a>. Enacted by Congress, this document imposes certain requirements on schools or libraries to adopt and implement an Internet safety policy addressing.</li>
                                                        <li><a href="http://www.consumer.ftc.gov/topics/kids-online-safety" class="green">Benefits and risks kids may face on the Internet</a>. Adults can help reduce such risks by talking to kids about making safe and responsible decisions.</li>
                                                        <li><a href="http://www.justice.gov/sites/default/files/usao-mn/legacy/2012/09/10/PSC%20Elementary%20Safety%20Tips%20Parents.pdf" class="green">Internet, mobile phones, and texting safety tips for parents</a>. The list of what you should better do to secure your children on the web and avert possible online dangers.</li>
                                                        
                                                        {*<li><span class="green">Children’s Online Privacy Protection Act</span>. Federal Trade Commission explains the main child online privacy law of the United States, including the information that websites can collect from kids.</li>
                                                        <li class="n00"><span class="green">Children’s Online Privacy Protection Act</span>. Federal Trade Commission explains the main child online privacy law of the United States, including the information that websites can collect from kids.</li>
                                                        *}
                                                    </ol>
                                                    
                                                </div>
                                                
                                            </li>

                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
                                                                                        
                {*{include file='../../includes/content/banners/banner-promo-trial.tpl'}*}
                
                {include file='../../includes/content/banners/index.tpl'}
		<!-- FOOTER -->
                
                <!-- RECOMMENDED -->
                {*
                    Template: RECOMMENDED
                *}    
                {include file='../../includes/main/main-recommended.tpl'}
                
                {*
                    Template: FOOTER
                    Переменные:
                        our_products (text): Включить выключить блок OUR PRODUCTS (no|yes). * - yes 
                *}
                {include file='../../includes/main/main-footer.tpl'}
	</div>
	{include file='../../includes/main/main-analytics-footer.tpl'}
        <script type="text/javascript">
            $(document).ready(function(){
                $('#header-menu-store-link').click(function(){
                    ga('send', 'event', 'store link', 'click', 'faq-store-header');
                });
            });
        </script>
</body>
</html>
{/strip}