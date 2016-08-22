{nocache}
<form class="send_find_phone" method="POST" action="/compatibility/" name="send_find_phone">
        <fieldset>
                <legend>
                  {if $inputHidden eq "true"}
                  Check Available Features
                  <span class="fieldset_descr">Want to make sure if there are any particular features supported? Or if the app is compatible with your particular device? Send your request to us.</span>
                  {else}
                    Can’t Find Your Device Here?<span>Let’s Check if it is Compatible:</span>
                  {/if}
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

                        <div class="form-group">
                                <input id="device-model"
                                       name="device-model"
                                       {if $inputHidden eq "true"}
                                       type="hidden"
                                       class="form-control"
                                       value="{$getSetting._item.name}"
                                       {else}
                                       type="text"
                                       class="form-control required"
                                       value="{* if isset($smarty.post.device-model)}{$smarty.post.device-model}{/if *}"
                                       {/if}
                                       placeholder="Device model*">
                                {if isset($getOut) && is_array($getOut.error) && $getOut.error.device_model}
                                    <label class="error show">{$getOut.error.device_model|escape}</label>
                                {/if}
                                {*<p class="bg-danger"></p>*}
                        </div>

                        {if !isset($getUserInfo.login) || empty($getUserInfo.login)}
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
                        {else}
                        <input id="email" class="form-control required" type="hidden" name="email" value="{if isset($getUserInfo.login)}{$getUserInfo.login}{/if}">
                        {/if}


                        <div class="form-group form-box-captcha">
                            <div class="box-captcha">
                                <img src="/captcha.html?width=407&height=44" id="img-captcha">
                                <span class="update-captcha" attr-width="407" attr-height="44"></span>
                            </div>

                        </div>
                        <div class="form-group">
                            <input id="captcha" type="text" name="captcha" autocomplete="off" class="form-control text required captcha"
                              placeholder="Specify required features" />
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
{/nocache}
