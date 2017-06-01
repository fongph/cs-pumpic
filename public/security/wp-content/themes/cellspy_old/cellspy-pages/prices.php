<h1 class="title pt44 pb28"><?php the_title(); ?></h1>

<?php the_content(); ?>

<form method="POST" name="order" action="#" class="form-order pb86">
    <div class="box-info">
        <p>If you've been trying to write an essay or a research paper, you may have already gathered the fact that 
            it is a time-consuming, boring, and sometimes, an extremely annoying task. The problem is that some students 
            don't go to a professional essay writing service to order their papers because they come with a tight budget. 
            We make it easy for every student at Bestessays.com.<br />
            We understand that students will always have to fulfill several responsibilities during 
            their academic career. Sometimes, it all becomes so complex that it shows on your grades. 
            That's when you can come to us for help and expect high quality work at the most affordable rates.</p>
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

        <div class="row">
            <div class="col-w370 left pr30">
                <section class="box-selects">
                    <div class="row">
                        <label>Paper subject: <i class="red">*</i></label>
                        <select name="paper_subject" class="w370">
                            <option value="Test1">Test1</option>
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

    </div>

    <div class="box-button s-center pt27">
        <button class="b-order"></button>
    </div>
</form>