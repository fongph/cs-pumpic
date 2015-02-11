<div class="fly-position">
    <div class="fly-box-buttons">

        <div class="block-fly block-buttons-fixed">
            {if $buttonBuyNow == "yes"}
            <!-- button 'Buy Now' -->
            <a href="/store.html" 
                   class="btn-default ga-action-click fly-button-item" 
                   ga-action ="click"
                   ga-category="store link"
                   ga-label="prices"
                   >
                    Buy Now
                </a>
           {/if}

           {if $buttonViewDemo == "yes"}
            <!-- button 'View Demo' -->
            <a href="http://demo.{$domain}" 
               class="btn-orange ga-action-click fly-button-item" 

               ga-action ="click"
               ga-category="demo link"
               ga-label="prices"
               >
                View Demo</a>
            {/if}

            {if $buttonFreeTrial == "yes"}
            <!-- button 'Free Trial' -->
            {nocache} 
            <form method="POST" action="/buy.html" autocomplete="off">
                <input type='hidden' name='price[productID]' value='16' />
                <button class="btn-yellow ga-action-click fly-button-item" 
                        value="true" 
                        type="submit" 
                        name="price[submit]"

                        ga-action ="click"
                        ga-category="free trial"
                        ga-label="trial"
                        >Free Trial</button>
            </form>            
            {/nocache}

            {/if}
        </div>

    </div>
</div>