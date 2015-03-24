<form action="/contact_us_send.html" class="form-contact-us" name="send-mail-contact-us" method="POST">
        <fieldset>
                <legend class="uppercase">Send Your Questions to Us</legend>
                <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3">
                        <span class="info"></span>
                        <div class="form-group">
                                <input id="name" 
                                       name="name" 
                                       type="text" 
                                       class="form-control text required" 
                                       placeholder="Name*" 
                                       value="" />
                        </div>

                        <div class="form-group">
                                <input id="email" 
                                       name="email" 
                                       type="email" 
                                       class="form-control text required" 
                                       placeholder="Email*" 
                                       value="" />
                        </div>


                        <div class="form-group">
                                <select id="os" 
                                        class="select" 
                                        name="os">
                                        <option value="0" selected>Choose your OS*</option>
                                        <option value="iOS">iOS</option>
                                        <option value="Android">Android</option>
                                        <option value="Other">Other</option>
                                        {*<option value="blackberry">BlackBerry</option>*}
                                </select>
                                <input id="wos" 
                                       name="wos" 
                                       type="hidden" 
                                       class="form-control text required" 
                                       placeholder="Wos*" 
                                       value="" />
                        </div>

                        <div class="form-group form-box-captcha">
                            <div class="box-captcha">
                                <img src="/captcha.html?width=443&height=44" id="img-captcha">
                                <span class="update-captcha" attr-width="443" attr-height="44"></span>
                            </div>
                            
                        </div>
                        <div class="form-group">
                            <input id="captcha" type="text" name="captcha" autocomplete="off" class="form-control text required captcha" />
                        </div>       
                                
                        <div class="form-group">
                                <textarea id="description" 
                                          rows="10" 
                                          name="description" 
                                          class="required" 
                                          placeholder="Question*"></textarea>
                        </div>

                        <div class="fatal-error"></div>

                        <p>Learn more from our {*<a href="/faq.html">*}FAQ{*</a>*} before submitting an application.</p>
                        <button class="btn btn-orange mod-center event-submit">Submit Ticket <!-- btn-warning <i class="icon-right-open"></i>-->
                        </button>
                </div>
        </fieldset>
</form>