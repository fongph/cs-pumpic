<form action="/faq.html" class="form-faq" name="send-mail-contact-us" method="POST">
        <fieldset>
            <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3">
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
            
                <legend class="uppercase" style="text-align: center">Send Your Questions to Us</legend>
                <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3">
                        <span class="info"></span>
                        {nocache}
                        {if !isset($getUserInfo.name) || empty($getUserInfo.name)}
                        <div class="form-group">
                                <input id="name" 
                                       name="name" 
                                       type="text" 
                                       class="form-control text required" 
                                       placeholder="Name*" 
                                       value="{if isset($smarty.post.name)}{$smarty.post.name}{/if}" />
                                {if is_array($getOut.error) && $getOut.error.name}<label class="error show">{$getOut.error.name|escape}</label>{/if}
                        </div>
                        {else}
                        <input id="name" class="form-control required" type="hidden" name="name" value="{if isset($getUserInfo.name)}{$getUserInfo.name}{/if}">
                        {/if}
                        {/nocache}
                        {nocache}
                        {if !isset($getUserInfo.login) || empty($getUserInfo.login)}
                        <div class="form-group">
                                <input id="email" 
                                       name="email" 
                                       type="email" 
                                       class="form-control text required" 
                                       placeholder="Email*" 
                                       value="{if isset($smarty.post.email)}{$smarty.post.email}{/if}" />
                                {if is_array($getOut.error) && $getOut.error.email}<label class="error show">{$getOut.error.email|escape}</label>{/if}
                        </div>
                        {else}
                        <input id="email" class="form-control required" type="hidden" name="email" value="{if isset($getUserInfo.login)}{$getUserInfo.login}{/if}">
                        {/if}
                        {/nocache}
                        
                        <div class="form-group">
                                <select id="os" 
                                        class="select"
                                        title='Question type*'
                                        name="os">
                                        <option {if !isset($smarty.post.os) || (isset($smarty.post.os) && $smarty.post.os == "0") }selected{/if} data-hidden="true" value="0">Question type*</option>
                                        <option {if isset($smarty.post.os) && $smarty.post.os == "General"}selected{/if} value="General">General question</option>
                                        <option {if isset($smarty.post.os) && $smarty.post.os == "Technical"}selected{/if} value="Technical">Technical question</option>
                                        <option {if isset($smarty.post.os) && $smarty.post.os == "Billing"}selected{/if} value="Billing">Billing question</option>
                                        <option {if isset($smarty.post.os) && $smarty.post.os == "Website"}selected{/if} value="Website">Website feedback</option>
                                </select>
                                {if is_array($getOut.error) && $getOut.error.os}<label class="error show">{$getOut.error.os|escape}</label>{/if}
                                {* v1 <select id="os" 
                                        class="select selectpicker" 
                                        title='Question type*'
                                        name="os"
                                        multiple data-max-options="1">
                                        <option value="iOS">iOS</option>
                                        <option value="Android">Android</option>
                                        <option value="Other">Other</option>
                                </select>*}
                                
                                {* v2 <select id="os" 
                                        class="select form-control" 
                                        title='Question type*'
                                        name="os"
                                        data-max-options="1">
                                        <option value=""></option>
                                        <option value="iOS">iOS</option>
                                        <option value="Android">Android</option>
                                        <option value="Other">Other</option>
                                </select>*}
                                
                                {* v3 <select 
                                    id="os" 
                                    class="select selectpicker" 
                                    title='Question type*'
                                    name="os">
                                    <option data-hidden="true">Question type*</option>
                                    <option value="Billing">Billing</option>
                                    <option value="Technical">Technical</option>
                                    <option value="General">General</option>
                                    <option value="Website">Website</option>
                                </select>*}
                                
                                <input id="wos" 
                                       name="wos" 
                                       type="hidden" 
                                       class="form-control text required" 
                                       placeholder="Wos*" 
                                       value="" />
                        </div>

                        <div class="form-group form-box-captcha">
                            <div class="box-captcha">
                                <img src="/captcha.html?width=420&height=44" id="img-captcha">
                                <span class="update-captcha" attr-width="420" attr-height="44"></span>
                            </div>
                            
                        </div>
                        <div class="form-group">
                            <input id="captcha" type="text" name="captcha" autocomplete="off" class="form-control text required captcha" placeholder="Enter verification code" />
                            {if is_array($getOut.error) && $getOut.error.captcha}<label class="error show">{$getOut.error.captcha|escape}</label>{/if}
                        </div>       
                                
                        <div class="form-group">
                                <textarea id="description" 
                                          rows="10" 
                                          name="description" 
                                          class="required" 
                                          placeholder="Question*">{if isset($smarty.post.description)}{$smarty.post.description}{/if}</textarea>
                                {if is_array($getOut.error) && $getOut.error.description}<label class="error show">{$getOut.error.description|escape}</label>{/if}          
                        </div>

                        <div class="fatal-error"></div>

                        <p>Learn more from our <a class="go_block_scroll a-default" href="http://{$domain}/faq.html#faq_frequently_asked_questions">FAQ</a> before submitting your question.{*before submitting an application.*}</p>
                        <button class="btn-orange mod-center event-submit">Submit Ticket <!-- btn-warning <i class="icon-right-open"></i>-->
                        </button>
                </div>
        </fieldset>
</form>