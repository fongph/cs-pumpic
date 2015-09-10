<form class="send_find_phone" method="POST" action="/compatibility/" name="send_find_phone">
        <fieldset>
                <legend>
                    Can’t Find Your Device Here?<span>Let’s Check if it is Compatible:</span>
                </legend>

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
                    
                        <span class="info"></span>

                        <div class="form-group">
                                <input id="device-model" type="text" 
                                       class="form-control required" 
                                       name="device-model" 
                                       value="{* if isset($smarty.post.device-model)}{$smarty.post.device-model}{/if *}"
                                       placeholder="Device model*">
                                {if isset($getOut) && is_array($getOut.error) && $getOut.error.device_model}
                                    <label class="error show">{$getOut.error.device_model|escape}</label>
                                {/if}
                                {*<p class="bg-danger"></p>*}
                        </div>
                        <div class="form-group {*has-error*}">
                                <input id="email" type="email" 
                                       class="form-control required" 
                                       name="email"
                                       value="{* if isset($smarty.post.email)}{$smarty.post.email}{/if *}"
                                       placeholder="Email*">
                                {if isset($getOut) && is_array($getOut.error) && $getOut.error.email}
                                    <label class="error show">{$getOut.error.email|escape}</label>
                                {/if}
                                {*<p class="bg-danger"></p>*}
                        </div>
                        <div class="form-group form-box-captcha">
                            <div class="box-captcha">
                                <img src="/captcha.html?width=443&height=44" id="img-captcha">
                                <span class="update-captcha" attr-width="443" attr-height="44"></span>
                            </div>
                            
                        </div>
                        <div class="form-group">
                            <input id="captcha" type="text" name="captcha" autocomplete="off" class="form-control text required captcha" />
                            {if isset($getOut) && is_array($getOut.error) && $getOut.error.captcha}
                                <label class="error show">{$getOut.error.captcha|escape}</label>
                            {/if}
                        </div>
                        <div class="fatal-error"></div>
                        <button class="btn btn-warning event-submit" name="submit" value="1">Submit<i class="icon-right-open"></i>
                        </button>
                </div>
        </fieldset>
</form>