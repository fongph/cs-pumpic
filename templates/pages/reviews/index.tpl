{* closeAccess *}

{include file='../../includes/main/main-header.tpl'
    robots="yes" 
    title="Best parental control apps for Android and iPhone"
    description="We have manually reviewed 50+ parental control software and handpicked the best products for you. Here's the detailed comparison of parental control apps for Android devices and iPhones that allow parents to block and filter bad content, limit app usage, review calls, texts, and Internet activity."
}    
    
<body>
    <!-- FLY BLOCKS -->
    {include file='../../includes/content/fly/fly_blocks.tpl'}
    <!-- END FLY BLOCKS-->
    
    <div class="wrapper {*bg_bottom_images*} block-reviews">
        <!-- TOP MENU -->

	{include file='../../includes/main/main-top-menu.tpl'
            topmenu_active='home'
            cache_id = "includes_main_main-top-menu"
            nocache
        }
        
        {*
            Template: PHONE
            Переменные:
                style (text): стиль блока Phone (blue|black). * - blue 
        *}
        {include file='../../includes/content/phone/block-phone.tpl'
                 style="blue"   
        } 
        
        <!-- CONTENT (img: 300x285)-->
        {include file='../../includes/content/info/info-promo.tpl'
            imgUrl = "header_banners/bg-img-phone-star.png"
            imgAlt = "Best parental control apps for Android and iPhone"
            imgAlign = "left bottom"
            imgVerticalAlign = "bottom"
            textAlign = "left"
            title = "Best of Parental Controls <br>Mobile Monitoring App Reviews"
            description = "Secure your family. Ensure your children’s safety.
                           <br>Track calls, text messages, and location. Follow online activity."
            Review = "yes"   
            imgWidth = "285"
            imgHeight = "300"
            promoBuyBlock = "no"
            planPackageBuy = "no"
            infoBlockMobile = "no"
        }
        
        {include file='../../includes/content/plans.tpl'}

        {* Template: FLY BUTTONS
        *}
        {include file='../../includes/content/fly/box-buttons.tpl'
            buttonBuyNow = 'yes'
            buttonViewDemo = 'no'
            buttonFreeTrial = 'yes'
        }
        
        
        <div class="darken">
            <div class="container">
                <div class="box-state box-state-table">
                    <h3 class="heading">Ranking</h3>
                    <div class="list-ranking">
                        <ul>
                            <li>
                                <div class="thumb-ranking thumb-ranking-heading">
                                    <div class="header-thumb-ranking">
                                        <span class="number-ranking">#1</span>
                                    </div>
                                    <div class="content-thumb-ranking">
                                        <div class="img-ranking">
                                            <img src="{$img}/boxes/boxes_1_2.png" height="57" width="62" alt="">
                                            <span>Pumpic</span>
                                        </div>
                                        <div class="price-ranking">$5.33</div>
                                    </div>
                                    <div class="footer-thumb-ranking">
                                        <div class="btn-ranking">
                                            <a href="/reviews/pumpic.html" class="btn btn-info">Read review</a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="thumb-ranking">
                                    <div class="header-thumb-ranking">
                                        <span class="number-ranking">#2</span>
                                    </div>
                                    <div class="content-thumb-ranking">
                                        <div class="img-ranking">
                                            <img src="{$img}/boxes/boxes_1_11.png" height="57" width="62" alt="">
                                            <span>Mobile <br />Force Field</span>
                                        </div>
                                        <div class="price-ranking">$31.95</div>
                                    </div>
                                    <div class="footer-thumb-ranking">
                                        <div class="btn-ranking">
                                            <a href="/reviews/mobileforcefield-mobile-monitoring.html" class="btn btn-info">Read review</a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="thumb-ranking">
                                    <div class="header-thumb-ranking">
                                        <span class="number-ranking">#3</span>
                                    </div>
                                    <div class="content-thumb-ranking">
                                        <div class="img-ranking">
                                            <img src="{$img}/boxes/boxes_1_10.png" height="57" width="62" alt="">
                                            <span>MM <br />Guardian</span>
                                        </div>
                                        <div class="price-ranking">$49.99</div>
                                    </div>
                                    <div class="footer-thumb-ranking">
                                        <div class="btn-ranking">
                                            <a href="/reviews/mmguardian-mobile-monitoring.html" class="btn btn-info">Read review</a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="thumb-ranking">
                                    <div class="header-thumb-ranking">
                                        <span class="number-ranking">#4</span>
                                    </div>
                                    <div class="content-thumb-ranking">
                                        <div class="img-ranking">
                                            <img src="{$img}/boxes/boxes_1_3.png" height="57" width="62" alt="">
                                            <span>Funamo</span>
                                        </div>
                                        <div class="price-ranking">$19.99</div>
                                    </div>
                                    <div class="footer-thumb-ranking">
                                        <div class="btn-ranking">
                                            <a href="/reviews/funamo-mobile-monitoring.html" class="btn btn-info">Read review</a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="thumb-ranking">
                                    <div class="header-thumb-ranking">
                                        <span class="number-ranking">#5</span>
                                    </div>
                                    <div class="content-thumb-ranking">
                                        <div class="img-ranking">
                                            <img src="{$img}/boxes/boxes_1_6.png" height="57" width="62" alt="">
                                            <span>ParentKit</span>
                                        </div>
                                        <div class="price-ranking">$39.99</div>
                                    </div>
                                    <div class="footer-thumb-ranking">
                                        <div class="btn-ranking">
                                            <a href="/reviews/parentkit-mobile-monitoring.html" class="btn btn-info">Read review</a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="thumb-ranking">
                                    <div class="header-thumb-ranking">
                                        <span class="number-ranking">#6</span>
                                    </div>
                                    <div class="content-thumb-ranking">
                                        <div class="img-ranking">
                                            <img src="{$img}/boxes/boxes_1_5.png" height="57" width="62" alt="">
                                            <span>Screentime <br /> Labs </span>
                                        </div>
                                        <div class="price-ranking">$39.99</div>
                                    </div>
                                    <div class="footer-thumb-ranking">
                                        <div class="btn-ranking">
                                            <a href="/reviews/screentime-labs-mobile-monitoring.html" class="btn btn-info">Read review</a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="thumb-ranking">
                                    <div class="header-thumb-ranking">
                                        <span class="number-ranking">#7</span>
                                    </div>
                                    <div class="content-thumb-ranking">
                                        <div class="img-ranking">
                                            <img src="{$img}/boxes/boxes_1_9.png" height="57" width="62" alt="">
                                            <span>SafetyWeb</span>
                                        </div>
                                        <div class="price-ranking">$4.99</div>
                                    </div>
                                    <div class="footer-thumb-ranking">
                                        <div class="btn-ranking">
                                            <a href="/reviews/safetyweb-mobile-monitoring.html" class="btn btn-info">Read review</a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="thumb-ranking">
                                    <div class="header-thumb-ranking">
                                        <span class="number-ranking">#8</span>
                                    </div>
                                    <div class="content-thumb-ranking">
                                        <div class="img-ranking">
                                            <img src="{$img}/boxes/boxes_1_1.png" height="57" width="62" alt="">
                                            <span>TxtWatcher</span>
                                        </div>
                                        <div class="price-ranking">$65.88</div>
                                    </div>
                                    <div class="footer-thumb-ranking">
                                        <div class="btn-ranking">
                                            <a href="/reviews/txtwatcher-mobile-monitoring.html" class="btn btn-info">Read review</a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="thumb-ranking">
                                    <div class="header-thumb-ranking">
                                        <span class="number-ranking">#9</span>
                                    </div>
                                    <div class="content-thumb-ranking">
                                        <div class="img-ranking">
                                            <img src="{$img}/boxes/boxes_1_8.png" height="57" width="62" alt="">
                                            <span>Ignore <br>No More</span>
                                        </div>
                                        <div class="price-ranking">$5.99</div>
                                    </div>
                                    <div class="footer-thumb-ranking">
                                        <div class="btn-ranking">
                                            <a href="/reviews/ignorenomore-mobile-monitoring.html" class="btn btn-info">Read review</a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="thumb-ranking">
                                    <div class="header-thumb-ranking">
                                        <span class="number-ranking">#10</span>
                                    </div>
                                    <div class="content-thumb-ranking">
                                        <div class="img-ranking">
                                            <img src="{$img}/boxes/boxes_1_12.png" height="57" width="62" alt="">
                                            <span>Care4Teen</span>
                                        </div>
                                        <div class="price-ranking">Free</div>
                                    </div>
                                    <div class="footer-thumb-ranking">
                                        <div class="btn-ranking">
                                            <a href="/reviews/care4teen-mobile-monitoring.html" class="btn btn-info">Read review</a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <table class="table-vertical-striped">
                        <thead>
                            <tr>
                                <th class="table-vertical-striped-title">Reports & Logs{*Reporting & Logging*}</th>
                                <th class="boxes-img-heading">
                                    <div class="boxes-img">
                                        <span>#1</span>
                                        <img src="{$img}/boxes/boxes_2_2.png" height="46" width="51" alt="">
                                    </div>
                                </th>
                                <th>
                                    <div class="boxes-img">
                                        <span>#2</span>
                                        <img src="{$img}/boxes/boxes_1_11.png" height="46" width="51" alt="">
                                    </div>
                                </th>
                                <th>
                                    <div class="boxes-img">
                                        <span>#3</span>
                                        <img src="{$img}/boxes/boxes_1_10.png" height="46" width="51" alt="">
                                    </div>
                                </th>
                                <th>
                                    <div class="boxes-img">
                                        <span>#4</span>
                                        <img src="{$img}/boxes/boxes_2_3.png" height="46" width="51" alt="">
                                    </div>
                                </th>
                                <th>
                                    <div class="boxes-img">
                                        <span>#5</span>
                                        <img src="{$img}/boxes/boxes_2_6.png" height="46" width="51" alt="">
                                    </div>
                                </th>
                                <th>
                                    <div class="boxes-img">
                                        <span>#6</span>
                                        <img src="{$img}/boxes/boxes_2_5.png" height="46" width="51" alt="">
                                    </div>
                                </th>
                                <th>
                                    <div class="boxes-img">
                                        <span>#7</span>
                                        <img src="{$img}/boxes/boxes_2_9.png" height="46" width="51" alt="">
                                    </div>
                                </th>
                                <th>
                                    <div class="boxes-img">
                                        <span>#8</span>
                                        <img src="{$img}/boxes/boxes_2_1.png" height="46" width="51" alt="">
                                    </div>
                                </th>
                                <th>
                                    <div class="boxes-img">
                                        <span>#9</span>
                                        <img src="{$img}/boxes/boxes_2_8.png" height="46" width="51" alt="">
                                    </div>
                                </th>
                                <th>
                                    <div class="boxes-img">
                                        <span>#10</span>
                                        <img src="{$img}/boxes/boxes_1_12.png" height="46" width="51" alt="">
                                    </div>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <span class="title-table">Calls</span>
                                </td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-ok"></i></td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="title-table">Text Messages{*Texts*}</span>
                                </td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-ok"></i></td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="title-table">Emails</span>
                                </td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="title-table">GPS Location & Geo-fencing</span>
                                </td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-ok"></i></td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="title-table">Photos & Videos</span>
                                </td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="title-table">Websites Visited</span>
                                </td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="title-table">Contact Details</span>
                                </td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-cancel"></i></td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="title-table">Calendar Events</span>
                                </td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="title-table">Bookmarks</span>
                                </td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="title-table">Application List</span>
                                </td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="title-table">Skype</span>
                                </td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="title-table">Viber</span>
                                </td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="title-table">Facebook Messenger</span>
                                </td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="title-table">Kik</span>
                                </td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="title-table">WhatsApp</span>
                                </td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="title-table">Instagram</span>
                                </td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                            </tr>
                            {*<tr>
                                <td>
                                    <span class="title-table">Twitter</span>
                                </td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                            </tr>*}
                            <tr>
                                <td>
                                    <span class="title-table">Keylogger</span>
                                </td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                            </tr>
                            
                            <tr>
                                <td>
                                    <span class="title-table">Snapchat</span>
                                </td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                            </tr>
                        </tbody>
                    </table> 
                    <table class="table-vertical-striped">
                        <thead>
                            <tr>
                                <th colspan="11" class="table-vertical-striped-title">Features</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <span class="title-table">Application Limiting</span>
                                </td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="title-table">Application Blocking</span>
                                </td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-ok"></i></td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="title-table">Website Blocking</span>
                                </td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-ok"></i></td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="title-table">Restrict Numbers</span>
                                </td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="title-table">Restrict Keywords</span>
                                </td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="title-table">SMS Amount Limiting</span>
                                </td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                            </tr>
                        </tbody>
                    </table>
                    <table class="table-vertical-striped">
                        <thead>
                            <tr>
                                <th colspan="11" class="table-vertical-striped-title">Security & Management</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <span class="title-table">Remote Management</span>
                                </td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-ok"></i></td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="title-table">SIM Change Notification</span>
                                </td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="title-table">Remote Wipe</span>
                                </td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="title-table">Remote Lock</span>
                                </td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                            </tr>
                        </tbody>
                    </table>
                    <table class="table-vertical-striped">
                        <thead>
                            <tr>
                                <th colspan="11" class="table-vertical-striped-title">Help & Support</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <span class="title-table">Free 24/7 Support</span>
                                </td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="title-table">Email / Form</span>
                                </td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-cancel"></i></td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="title-table">Phone</span>
                                </td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="title-table">Live Chat</span>
                                </td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="title-table">Software Updates</span>
                                </td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-ok"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                                <td><i class="icon-cancel"></i></td>
                            </tr>
                        </tbody>
                    </table>
                    {*<table class="table-vertical-striped">
                        <tbody>
                            <tr>
                                <td>
                                    <span class="title-table">Price</span>
                                </td>
                                <td>$39.99</td>
                                <td>$31.95</td>
                                <td>$49.99</td>
                                <td>$19.99</td>
                                <td>$39.99</td>
                                <td>$39.99</td>
                                <td>$4.99</td>
                                <td>$65.88</td>
                                <td>$5.99</td>
                                <td>Free</td>
                            </tr>
                        </tbody>
                    </table>*}       
                    <div class="table-vertical-striped-mobile">
                        <table class="table-vertical-striped">
                            <thead>
                                <tr>
                                    <th colspan="2" class="boxes-img-heading">
                                        <div class="boxes-img">
                                            <span>#1</span>
                                            <img src="{$img}/boxes/1.png" height="45" width="152" alt="">
                                        </div>
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <span class="title-table">Calls</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Text Messages{*Texts*}</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Emails</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">GPS Location & Geo-fencing</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Photos & Videos</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Websites Visited</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Contact Details</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Calendar Events</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Bookmarks</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Application List</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Skype</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Viber</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Facebook Messenger</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Kik</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">WhatsApp</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Instagram</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                {*<tr>
                                    <td>
                                        <span class="title-table">Twitter</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>*}
                                <tr>
                                    <td>
                                        <span class="title-table">Keylogger</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Application Limiting</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Application Blocking</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Website Blocking</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Restrict Numbers</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Restrict Keywords</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">SMS Amount Limiting</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Remote Management</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">SIM Change Notification</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Remote Wipe</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Remote Lock</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Free 24/7 Support</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Email / Form</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Phone</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Live Chat</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Software Updates</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                            </tbody>
                        </table>
                        <table class="table-vertical-striped">
                            <thead>
                                <tr>
                                    <th colspan="2">
                                        <div class="boxes-img">
                                            <span>#2</span>
                                            <img src="{$img}/boxes/6.png" height="45" width="152" alt="">
                                        </div>
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <span class="title-table">Calls</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Text Messages{*Texts*}</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Emails</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">GPS Location & Geo-fencing</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Photos & Videos</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Websites Visited</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Contact Details</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Calendar Events</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Bookmarks</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Application List</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Skype</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Viber</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Facebook Messenger</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Kik</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">WhatsApp</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Instagram</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                {*<tr>
                                    <td>
                                        <span class="title-table">Twitter</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>*}
                                <tr>
                                    <td>
                                        <span class="title-table">Keylogger</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Application Limiting</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Application Blocking</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Website Blocking</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Restrict Numbers</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Restrict Keywords</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">SMS Amount Limiting</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Remote Management</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">SIM Change Notification</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Remote Wipe</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Remote Lock</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Free 24/7 Support</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Email / Form</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Phone</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Live Chat</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Software Updates</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                            </tbody>
                        </table>
                        <table class="table-vertical-striped">
                            <thead>
                                <tr>
                                    <th colspan="2">
                                        <div class="boxes-img">
                                            <span>#3</span>
                                            <img src="{$img}/boxes/7.png" height="45" width="152" alt="">
                                        </div>
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <span class="title-table">Calls</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Text Messages{*Texts*}</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Emails</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">GPS Location & Geo-fencing</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Photos & Videos</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Websites Visited</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Contact Details</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Calendar Events</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Bookmarks</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Application List</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Skype</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Viber</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Facebook Messenger</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Kik</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">WhatsApp</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Instagram</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                {*<tr>
                                    <td>
                                        <span class="title-table">Twitter</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>*}
                                <tr>
                                    <td>
                                        <span class="title-table">Keylogger</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Application Limiting</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Application Blocking</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Website Blocking</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Restrict Numbers</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Restrict Keywords</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">SMS Amount Limiting</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Remote Management</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">SIM Change Notification</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Remote Wipe</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Remote Lock</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Free 24/7 Support</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Email / Form</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Phone</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Live Chat</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Software Updates</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                            </tbody>
                        </table>
                        <table class="table-vertical-striped">
                            <thead>
                                <tr>
                                    <th colspan="2">
                                        <div class="boxes-img">
                                            <span>#4</span>
                                            <img src="{$img}/boxes/2.png" height="45" width="152" alt="">
                                        </div>
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <span class="title-table">Calls</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Text Messages{*Texts*}</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Emails</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">GPS Location & Geo-fencing</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Photos & Videos</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Websites Visited</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Contact Details</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Calendar Events</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Bookmarks</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Application List</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Skype</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Viber</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Facebook Messenger</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Kik</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">WhatsApp</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Instagram</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                {*<tr>
                                    <td>
                                        <span class="title-table">Twitter</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>*}
                                <tr>
                                    <td>
                                        <span class="title-table">Keylogger</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Application Limiting</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Application Blocking</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Website Blocking</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Restrict Numbers</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Restrict Keywords</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">SMS Amount Limiting</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Remote Management</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">SIM Change Notification</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Remote Wipe</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Remote Lock</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Free 24/7 Support</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Email / Form</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Phone</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Live Chat</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Software Updates</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                            </tbody>
                        </table>
                        <table class="table-vertical-striped">
                            <thead>
                                <tr>
                                    <th colspan="2">
                                        <div class="boxes-img">
                                            <span>#5</span>
                                            <img src="{$img}/boxes/3.png" height="45" width="152" alt="">
                                        </div>
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <span class="title-table">Calls</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Text Messages{*Texts*}</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Emails</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">GPS Location & Geo-fencing</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Photos & Videos</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Websites Visited</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Contact Details</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Calendar Events</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Bookmarks</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Application List</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Skype</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Viber</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Facebook Messenger</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Kik</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">WhatsApp</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Instagram</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                {*<tr>
                                    <td>
                                        <span class="title-table">Twitter</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>*}
                                <tr>
                                    <td>
                                        <span class="title-table">Keylogger</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Application Limiting</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Application Blocking</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Website Blocking</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Restrict Numbers</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Restrict Keywords</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">SMS Amount Limiting</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Remote Management</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">SIM Change Notification</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Remote Wipe</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Remote Lock</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Free 24/7 Support</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Email / Form</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Phone</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Live Chat</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Software Updates</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                            </tbody>
                        </table>
                        <table class="table-vertical-striped">
                            <thead>
                                <tr>
                                    <th colspan="2">
                                        <div class="boxes-img">
                                            <span>#6</span>
                                            <img src="{$img}/boxes/9.png" height="53" width="152" alt="">
                                        </div>
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <span class="title-table">Calls</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Text Messages{*Texts*}</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Emails</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">GPS Location & Geo-fencing</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Photos & Videos</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Websites Visited</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Contact Details</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Calendar Events</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Bookmarks</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Application List</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Skype</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Viber</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Facebook Messenger</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Kik</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">WhatsApp</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Instagram</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                {*<tr>
                                    <td>
                                        <span class="title-table">Twitter</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>*}
                                <tr>
                                    <td>
                                        <span class="title-table">Keylogger</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Application Limiting</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Application Blocking</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Website Blocking</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Restrict Numbers</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Restrict Keywords</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">SMS Amount Limiting</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Remote Management</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">SIM Change Notification</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Remote Wipe</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Remote Lock</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Free 24/7 Support</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Email / Form</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Phone</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Live Chat</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Software Updates</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                            </tbody>
                        </table>
                        <table class="table-vertical-striped">
                            <thead>
                                <tr>
                                    <th colspan="2">
                                        <div class="boxes-img">
                                            <span>#7</span>
                                            <img src="{$img}/boxes/4.png" height="45" width="152" alt="">
                                        </div>
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <span class="title-table">Calls</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Text Messages{*Texts*}</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Emails</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">GPS Location & Geo-fencing</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Photos & Videos</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Websites Visited</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Contact Details</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Calendar Events</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Bookmarks</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Application List</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Skype</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Viber</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Facebook Messenger</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Kik</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">WhatsApp</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Instagram</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                {*<tr>
                                    <td>
                                        <span class="title-table">Twitter</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>*}
                                <tr>
                                    <td>
                                        <span class="title-table">Keylogger</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Application Limiting</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Application Blocking</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Website Blocking</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Restrict Numbers</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Restrict Keywords</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">SMS Amount Limiting</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Remote Management</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">SIM Change Notification</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Remote Wipe</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Remote Lock</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Free 24/7 Support</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Email / Form</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Phone</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Live Chat</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Software Updates</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                            </tbody>
                        </table>
                        <table class="table-vertical-striped">
                            <thead>
                                <tr>
                                    <th colspan="2">
                                        <div class="boxes-img">
                                            <span>#8</span>
                                            <img src="{$img}/boxes/5.png" height="45" width="152" alt="">
                                        </div>
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <span class="title-table">Calls</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Text Messages{*Texts*}</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Emails</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">GPS Location & Geo-fencing</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Photos & Videos</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Websites Visited</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Contact Details</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Calendar Events</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Bookmarks</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Application List</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Skype</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Viber</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Facebook Messenger</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Kik</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">WhatsApp</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Instagram</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                {*<tr>
                                    <td>
                                        <span class="title-table">Twitter</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>*}
                                <tr>
                                    <td>
                                        <span class="title-table">Keylogger</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Application Limiting</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Application Blocking</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Website Blocking</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Restrict Numbers</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Restrict Keywords</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">SMS Amount Limiting</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Remote Management</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">SIM Change Notification</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Remote Wipe</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Remote Lock</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Free 24/7 Support</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Email / Form</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Phone</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Live Chat</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Software Updates</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                            </tbody>
                        </table>
                        <table class="table-vertical-striped">
                            <thead>
                                <tr>
                                    <th colspan="2">
                                        <div class="boxes-img">
                                            <span>#9</span>
                                            <img src="{$img}/boxes/8.png" height="53" width="152" alt="">
                                        </div>
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <span class="title-table">Calls</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Text Messages{*Texts*}</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Emails</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">GPS Location & Geo-fencing</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Photos & Videos</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Websites Visited</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Contact Details</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Calendar Events</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Bookmarks</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Application List</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Skype</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Viber</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Facebook Messenger</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Kik</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">WhatsApp</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Instagram</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                {*<tr>
                                    <td>
                                        <span class="title-table">Twitter</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>*}
                                <tr>
                                    <td>
                                        <span class="title-table">Keylogger</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Application Limiting</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Application Blocking</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Website Blocking</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Restrict Numbers</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Restrict Keywords</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">SMS Amount Limiting</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Remote Management</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">SIM Change Notification</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Remote Wipe</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Remote Lock</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Free 24/7 Support</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Email / Form</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Phone</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Live Chat</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Software Updates</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                            </tbody>
                        </table>
                        <table class="table-vertical-striped">
                            <thead>
                                <tr>
                                    <th colspan="2">
                                        <div class="boxes-img">
                                            <span>#10</span>
                                            <img src="{$img}/boxes/10.png" height="45" width="152" alt="">
                                        </div>
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <span class="title-table">Calls</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Text Messages{*Texts*}</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Emails</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">GPS Location & Geo-fencing</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Photos & Videos</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Websites Visited</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Contact Details</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Calendar Events</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Bookmarks</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Application List</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Skype</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Viber</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Facebook Messenger</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Kik</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">WhatsApp</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Instagram</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                {*<tr>
                                    <td>
                                        <span class="title-table">Twitter</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>*}
                                <tr>
                                    <td>
                                        <span class="title-table">Keylogger</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Application Limiting</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Application Blocking</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Website Blocking</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Restrict Numbers</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Restrict Keywords</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">SMS Amount Limiting</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Remote Management</span>
                                    </td>
                                    <td><i class="icon-ok"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">SIM Change Notification</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Remote Wipe</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Remote Lock</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Free 24/7 Support</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Email / Form</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Phone</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Live Chat</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="title-table">Software Updates</span>
                                    </td>
                                    <td><i class="icon-cancel"></i></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- END CONTENT -->    
        {include file='../../includes/content/banners/index.tpl'}
        <!-- END CONTENT -->    
           
        <!-- RECOMMENDED -->
        {*
            Template: RECOMMENDED
        *}    
        {include file='../../includes/main/main-recommended.tpl'}   
        
        <!-- FOOTER -->
        {*
            Template: FOOTER
            Переменные:
                our_products (text): Включить выключить блок OUR PRODUCTS (no|yes). * - yes 
        *}
        {include file='../../includes/main/main-footer.tpl'}
                
    </div>
       
    {include file='../../includes/main/main-analytics-footer.tpl'}
</body>
</html>