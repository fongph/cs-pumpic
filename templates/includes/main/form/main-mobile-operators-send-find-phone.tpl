<form class="send_find_phone" method="POST" action="" name="send_find_phone">
        <fieldset>
                <legend>
                    Can’t Find Your Device Here?<span>Let’s Check if it is Compatible:</span>
                    {*CAN’T FIND YOUR DEVICE HERE?<span>LET’S CHECK IF IT IS COMPATIBLE:</span>*}
                </legend>

                <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3">
                        <span class="info"></span>

                        <div class="form-group">
                                <input id="device-model" type="text" 
                                       class="form-control required" 
                                       name="device-model" 
                                       value=""
                                       placeholder="Device model*">

                                {*<p class="bg-danger"></p>*}
                        </div>
                        <div class="form-group {*has-error*}">
                                <input id="email" type="email" 
                                       class="form-control required" 
                                       name="email"
                                       value=""
                                       placeholder="Email*">

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
                        </div>
                        <div class="fatal-error"></div>
                        <button class="btn btn-warning event-submit">Submit<i class="icon-right-open"></i>
                        </button>
                </div>
        </fieldset>
</form>