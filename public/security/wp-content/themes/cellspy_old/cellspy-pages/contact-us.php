<h1 class="title pt44 pb28"><?php the_title(); ?></h1>

<?php the_content(); ?>

<address>
    <section id="phone">
        <label>Toll free support:</label>
        <strong>1-888-533-3844</strong>
    </section>
    <section id="buttons" class="pt17">
        <a class="button b-orange button-live-support" href="#">24/7  live support</a>
    </section>
</address>

<form method="POST" name="order" action="#" class="form-order pb86">

    <fieldset>
        <div class="row">
            <div class="col-w370 left pr30">
                <label>First name<i class="red">*</i></label>
                <input class="input-xlarge" type="text" value="" name="first_name">

                <label>Email<i class="red">*</i></label>
                <input class="input-xlarge" type="text" value="" name="email">

                <label>Contact phone</label><br />
                <input class="input-small" type="text" value="" name="phone_code_country" placeholder="380">
                <input class="input-small" type="text" value="" name="phone_code_city">
                <input class="input-medium" type="text" value="" name="phone_numbers">
            </div>
            <div class="col-w370 left">
                <label>Last name</label>
                <input class="input-xlarge" type="text" value="" name="last_name">

                <label>Country</label>
                <select name="country" class="w370">
                    <option value="Test1">Ukraune - 380</option>
                    <option value="Test2">Test2</option>
                </select>

                <label>Subject</label>
                <input class="input-xlarge" type="text" value="" name="subject">
            </div>
        </div>

        <div class="row">
            <label>Message<i class="red">*</i></label>
            <textarea name="message"></textarea>
        </div> 
    </fieldset>

    <div class="box-button s-center pt27">
        <button class="b-order"></button>
    </div>
</form>