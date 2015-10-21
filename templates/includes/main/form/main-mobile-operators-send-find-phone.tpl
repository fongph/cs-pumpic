<form class="send_mobile_operators_find_phone" method="POST" action="" name="send_mobile_operators_find_phone">
    <div class="row">
        <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3">    
            {if isset($getOut) && $getOut.success}
                <div class="box-success text-center"> 
                    <p class="bg-ok">{$getOut.success}</p>
                </div>
            {/if}
            {if isset($getOut) && is_string($getOut.error)}
               <div class="box-error text-center">
                    <p class="bg-danger">{$getOut.error}</p>
               </div>
            {/if}
        </div>
    </div>
    <fieldset>
            
                <legend>
                    Can't Find Your Carrier in this List? <span>Leave us your email, write your operator and your name, we will check</span>
                </legend>

                <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3">
                        <span class="info"></span>
                        {nocache}
                        {if !isset($getUserInfo.name) || empty($getUserInfo.name)}
                        <div class="form-group">
                                <input id="name" type="text" 
                                       class="form-control required" 
                                       name="name" 
                                       value="{* if isset($smarty.post.name)}{$smarty.post.name}{/if *}"
                                       placeholder="Name*">
                                {if isset($getOut) && is_array($getOut.error) && $getOut.error.name}
                                    <label class="error show">{$getOut.error.name|escape}</label>
                                {/if}
                        </div>
                        {else}
                        <input id="name" class="form-control required" type="hidden" name="name" value="{if isset($getUserInfo.name)}{$getUserInfo.name}{/if}">
                        {/if}
                        {/nocache}
                        <div class="form-group">
                                <input id="device-model" type="text" 
                                       class="form-control required" 
                                       name="carrier" 
                                       value="{if isset($smarty.post.carrier)}{$smarty.post.carrier}{/if}"
                                       placeholder="Carrier*">
                                {if is_array($getOut.error) && $getOut.error.carrier}<label class="error show">{$getOut.error.carrier|escape}</label>{/if}
                                {*<p class="bg-danger"></p>*}
                        </div>
                        {nocache}
                        {if !isset($getUserInfo.login) || empty($getUserInfo.login)}
                        <div class="form-group {*has-error*}">
                                <input id="email" type="email" 
                                       class="form-control required" 
                                       name="email"
                                       value="{if isset($smarty.post.email)}{$smarty.post.email}{/if}"
                                       placeholder="Email*">
                                {if is_array($getOut.error) && $getOut.error.email}<label class="error show">{$getOut.error.email|escape}</label>{/if}
                                {*<p class="bg-danger"></p>*}
                        </div>
                        {else}
                        <input id="email" class="form-control required" type="hidden" name="email" value="{if isset($getUserInfo.login)}{$getUserInfo.login}{/if}">
                        {/if}
                        {/nocache}
                        <div class="form-group form-box-captcha">
                            <div class="box-captcha">
                                <img src="/captcha.html?width=400&height=44" id="img-captcha">
                                <span class="update-captcha" attr-width="400" attr-height="44"></span>
                            </div>
                            
                        </div>
                        <div class="form-group">
                            <input id="captcha" type="text" name="captcha" autocomplete="off" class="form-control text required captcha" value='' />
                            {if is_array($getOut.error) && $getOut.error.captcha}<label class="error show">{$getOut.error.captcha|escape}</label>{/if}
                        </div>
                        <div class="fatal-error"></div>
                        <button class="btn btn-warning event-submit">Submit<i class="icon-right-open"></i>
                        </button>
                </div>
        </fieldset>
</form>