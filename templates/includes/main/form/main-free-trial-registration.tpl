<form id="free_trial_registration" class="clearfix" action="" method="POST" name="free_trial_registration">
    <input type="hidden" name="site_id" value="{$site_id}" />
    {*<input type="hidden" name="productID" value="15" />*}
    
    <div class="step-1">
        <h1>Contact Information</h1>
        
        {if $getOut._success}
            <div class="box-success text-center"> 
                <p class="bg-ok">{$getOut._success}</p>
            </div>
       {/if}

       {if $getOut._error}
           <div class="box-error text-left">
                <p class="bg-danger">{$getOut._error}</p>
           </div>
       {/if}
        
        <div id="block-fields">
            <section>
                <label for="name">Your Name*</label>
                <input id="name" class="required" type="text" name="name" value="" />
            </section>
            <section>
                <label for="email">Your Email*</label>
                <input id="email" class="required" type="email" name="email" value="" />
            </section>
            <section>
                <label for="phone">Your Phone</label>
                <input type="text" name="phone" value="" />
            </section>
            <div class="block-captcha">
                <div class="box-captcha clearfix">
                    <img src="/captcha.html?width=250&height=39" id="img-captcha">
                    <span class="update-captcha" attr-width="250" attr-height="39"></span>
                </div>
                <div class="box-captcha-input text-in-box-free-trial">    
                    <span class="left">Text in the box:</span>
                    <div class="captcha-input left">
                        <input id="captcha" type="text" name="captcha" autocomplete="off" class="text required captcha"  placeholder="Enter verification code" />
                    </div>    
                </div>    
            </div>
            <div class="block-accept">
                <section>
                    Please, read our Legal Policies carefully. You must accept <a href="/policy.html" class="">Terms of Use</a>,
                    <a href="/policy.html">Privacy Policy</a>, and <a href="/direct-notice.html"">Direct Notice</a> to proceed.
                    <label class="legal-accept" for="tos-accept"><input id="tos-accept" class="required" type="checkbox" name="tos-accept" value="" /> I have read and accept the Terms of Use.</label>
                    <label class="legal-accept"  for="policy-accept"><input id="policy-accept" class="required" type="checkbox" name="policy-accept" value="" /> I have read and accept the Privacy Policy.</label>
                    <label class="legal-accept" for="direct-notice-accept"><input id="direct-notice-accept" class="required" type="checkbox" name="direct-notice-accept" value="" /> I have read and accept the Direct Notice.</label>
                </section>
            </div>
        </div>
    </div> <!-- step1 -->

    <div class="step-2 text-center">
        <div>
            <span>no credit card required</span> <i class='img-credit-card'></i>
        </div>
    </div>

    <div class="block-buttons">
        <button ga-label="buy button" ga-category="trial" ga-action="click" class="btn-orange ga-action-click">
            Start your 7-day free trial <i class='white-arrows-right'></i>
        </button>
    </div>
    <div>
        <p class="disclaimer">DISCLAIMER</p>
        <span> Free Trial subscription is limited to 1 account per person.</span>
        <p> Unfortunately, you are not eligible for Free trial, if you already have a subscription with Pumpic or used Free Trial before.</p>
    </div>
</form>