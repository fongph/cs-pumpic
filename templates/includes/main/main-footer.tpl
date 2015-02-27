<div class="dark bg-footer">
        <div class="container">
                <div class="row">
                    {*<div class="bg-footer"></div>*}
                    
                        <div class="col-sm-4 col-md-4 col-lg-4 col-sm-offset-1 col-md-offset-1 col-lg-offset-1">
                            
                            <h3>DISCLAIMER</h3>
                            <p>Pumpic is a unique parental control tracking application for iOS and Android mobile phones and tablets. It is for ethical and legal use only. To install the tracking app, one should assure that he or she owns the device before installation, or has obtained the owner’s admittance to track his or her device.</p>
                            
                        </div>
                        <div class="col-sm-2 col-md-2 col-lg-2 col-sm-offset-1 col-md-offset-1 col-lg-offset-1">
                                <h3>COMPANY</h3>
                                <ul class="list_grey">
                                        <li>
                                            <a href="/policy.html">Terms and conditions</a>
                                        </li>
                                        <li>
                                            <a href="/policy.html#privacy-policy">Privacy Policy</a>
                                        </li>
                                        <li>
                                            <a href="/policy.html#refund-policy">Refund policy</a>
                                        </li>
                                        <li>
                                            <a href="/faq.html">Contact us</a>
                                        </li>
                                        {*<li>
                                            <a href="/contact-us.html">Contact us</a>
                                        </li>*}
                                         <li>
                                            <a href="/security/">Security</a>
                                        </li>
                                </ul>
                        </div>
                        {include file="../../includes/main/main-footer-our-products.tpl"}
                </div>
                <div class="row">
                        <div class="col-sm-10 col-md-10 col-lg-10 col-sm-offset-1 col-md-offset-1 col-lg-offset-1">
                                <div class="share">
                                        <ul class="box-socials clearfix">
                                            <li><a href="https://www.facebook.com/pages/Pumpic/299299196929718?sk=timeline" class="icons-social i-fb"></a></li>
                                            <li><a href="https://twitter.com/pumpic_com" class="icons-social i-tw"></a></li>
                                            <li><a href="https://www.youtube.com/user/pumpicapp" class="icons-social i-youtube"></a></li>
                                            <li><a href="https://plus.google.com/u/2/b/103434324737023434003/103434324737023434003/posts" class="icons-social i-google"></a></li>
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
            {year_now}
            Pumpic — All Rights Reserved.
        </div>
    </div>
</div>
                                        
<!-- init popUp -->
<!-- init popUp -->
{if isset($_popUp)}
    {assign 'module' $_popUp}
{else}
    {assign 'module' '../../includes/main-popUp.tpl'}
{/if}

{include file="$module"}

{*include file='../../includes/main-popUp.tpl'*}