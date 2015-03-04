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
                <label for="name">Name*</label>
                <input id="name" class="required" type="text" name="name" value="" />
            </section>
            <section>
                <label for="email">Email*</label>
                <input id="email" class="required" type="text" name="email" value="" />
                {*<label class="error">Password will be send <br />to you your email</label>*}
                <label class="info-email">The password will be sent to your email </label>
            </section>
            <section>
                <label for="phone">Phone</label>
                <input type="text" name="phone" value="" />
            </section>
            <div class="block-captcha">
                <label>Enter the words below <br /><span>Can’t read the words below? <a class="a-update-captcha" attr-width="250" attr-height="39" href="#">Try to refresh</a></span></label>

                <div class="box-captcha clearfix">
                    <img src="/captcha.html?width=250&height=39" id="img-captcha">
                    <span class="update-captcha" attr-width="250" attr-height="39"></span>
                </div>
                <div class="box-captcha-input text-in-box-free-trial">    
                    <span class="left">Text in the box:</span>
                    <div class="captcha-input left">
                        <input id="captcha" type="text" name="captcha" autocomplete="off" class="text required captcha" />
                    </div>    
                </div>    
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
</form>