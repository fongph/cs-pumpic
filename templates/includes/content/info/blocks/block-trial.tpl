<div class='mt10'>
    <div id='block-promo-buy'>
        <section>
            <span class='text-promo-buy'>
                <span class="uppercase">Try <i class='text-yellow'>7 days</i></span> 
                <br /> <i class='text-yellow'>free</i> trial
            </span>
        </section>
        <section>
            {nocache}
                <form method="POST" action="/free-trial.html" autocomplete="off">
                    {*<input type='hidden' name='price[productID]' value='19' />*}
                    <button class="btn-yellow ga-action-click"
                            value="true"
                            type="submit"
                            name="price[submit]"

                            ga-action ="click"
                            ga-category="trial"
                            ga-label="free trial"
                            >Start Now!</button>
                </form>
            {/nocache}
        </section>
    </div>
</div>