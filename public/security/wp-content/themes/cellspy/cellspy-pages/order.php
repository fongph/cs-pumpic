<h1 class="title pt44 pb28"><?php the_title(); ?></h1>

<?php the_content(); ?>

<form method="POST" name="order" action="#" class="form-order pb86">
    <div class="box-info">
        <p>If you've been trying to write an essay or a research paper, you may have already gathered the fact that it is a time-consuming, 
            boring, and sometimes, an extremely annoying task. The problem is that some students don't go to a professional essay writing 
            service to order their papers because they come with a tight budget. We make it easy for every student at Bestessays.com.<br />
            We understand that students will always have to fulfill several responsibilities during their academic career. Sometimes, 
            it all becomes so complex that it shows on your grades. That's when you can come to us for help and expect high quality 
            work at the most affordable rates.</p>
    </div>

    <div class="fields pt40">
        <section class="box-checkboxes pb28">
            <div class="row">
                <label>Currency:</label>
                <label class="radio-inline">
                    USD <input name="currency" id="radio1" value="usd" type="radio">
                </label>
                <label class="radio-inline">
                    EUR <input name="currency" id="radio2" value="eur" checked="checked" type="radio"> 
                </label>
                <label class="radio-inline">
                    GBP <input name="currency" id="radio3" value="gbr" type="radio"> 
                </label>
                <label class="radio-inline">
                    AUD <input name="currency" id="radio3" value="aud" type="radio"> 
                </label>
            </div>  
        </section>

        <section class="box-inputs">
            <div class="row">
                <label>Paper topic: <i class="red">*</i></label>
                <input class="input-xxlarge" type="text" value="" name="paper_topic">
            </div>    
        </section>

        <div class="row">
            <div class="col-w370 left pr30">
                <section class="box-selects">
                    <div class="row">
                        <label>Paper subject: <i class="red">*</i></label>
                        <select name="paper_subject" class="w370">
                            <option value="Test1">Test1</option>
                            <option value="Test2">Test2</option>
                        </select>

                        <label>Style <i class="red">*</i></label>
                        <select name="style" class="w370">
                            <option value="Test1">MLA</option>
                            <option value="Test2">Test2</option>
                        </select>

                        <label>Urgancy</label>
                        <select name="urgancy" class="w370">
                            <option value="Test1">3 days</option>
                            <option value="Test2">Test2</option>
                        </select>

                        <label>Number of pages <i class="red">*</i></label>
                        <select name="number-of-pages" class="w370">
                            <option value="Test1">1 Pages (375 words)</option>
                            <option value="Test2">Test2</option>
                        </select>

                        <label>Number of sources <i class="red">*</i></label>
                        <select name="number_of_sources" class="w370">
                            <option value="Test1">Test1</option>
                            <option value="Test2">Test2</option>
                        </select>

                        <label>Discount code</label>
                        <input class="input-xlarge" type="text" value="" name="discount_code">
                    </div>    
                </section>
            </div>
            <div class="col-w370 left">
                <section class="box-selects">
                    <div class="row">
                        <label>Type of work</label>
                        <select name="type-of-work" class="w370">
                            <option value="Test1">Test1</option>
                            <option value="Test2">Test2</option>
                        </select>

                        <label>Language style</label>
                        <select name="language-style" class="w370">
                            <option value="Test1">Test1</option>
                            <option value="Test2">Test2</option>
                        </select>

                        <label>Academic Level</label>
                        <select name="academic-level" class="w370">
                            <option value="Test1">Test1</option>
                            <option value="Test2">Test2</option>
                        </select>

                        <label>Standard</label>
                        <select name="standard" class="w370">
                            <option value="Test1">Test1</option>
                            <option value="Test2">Test2</option>
                        </select>

                        <label>Preffered writer ID</label>
                        <input class="input-xlarge" type="text" value="" name="preffered_writer_id">

                        <label>Top Writer<i class="red">*</i></label>
                        <div class="pt13">
                            <input type="checkbox" name="top_writer" value="1" /> I would like my work to be written by a TOP wrier
                        </div>
                    </div>    
                </section>
            </div>
        </div>


        <div class="box-total-price s-center pt44 pb28">
            <span class="title">Total price</span>
            <a href="#" class="button b-standart" role="button">9436.52</a>
        </div>

        <fieldset>
            <div class="row">
                <label>Order description:<i class="red">*</i> (type your instructions here)</label>
                <textarea name="order_description"></textarea>
            </div> 

            <div class="row">
                <div class="col-w370 left pr30">
                    <label>First name<i class="red">*</i></label>
                    <input class="input-xlarge" type="text" value="" name="first_name">

                    <label>Email<i class="red">*</i></label>
                    <input class="input-xlarge" type="text" value="" name="email">

                    <label>Contact phone<i class="red">*</i></label><br />
                    <input class="input-small" type="text" value="" name="phone_code_country" placeholder="380">
                    <input class="input-small" type="text" value="" name="phone_code_city">
                    <input class="input-medium" type="text" value="" name="phone_numbers">
                </div>
                <div class="col-w370 left">
                    <label>Last name<i class="red">*</i></label>
                    <input class="input-xlarge" type="text" value="" name="last_name">

                    <label>Country<i class="red">*</i></label>
                    <select name="country" class="w370">
                        <option value="Test1">Ukraune - 380</option>
                        <option value="Test2">Test2</option>
                    </select>
                </div>
            </div>

            <div class="roe box-accept pt24">
                <input name="accept" id="radio1" value="1" type="radio" checked> <label>I accept terms and conditions</label><br />
                <input name="accept" id="radio1" value="0" type="radio"> <label>I do not accept terms and conditions</label>
            </div>

        </fieldset>

    </div>

    <div class="box-button s-center pt27">
        <button class="b-order"></button>
    </div>
</form>