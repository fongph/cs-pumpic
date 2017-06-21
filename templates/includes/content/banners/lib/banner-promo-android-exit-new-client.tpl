<!-- banner 1 -->
<script>
    var $banner =  '<div id="exit-banner-android" class="bg-android-exit-banner  text-center" >'
        + '<div class="block-android-exit-banner"><i class="small close icon-close-android-exit-banner"></i></div>'
        + '<div class="block-android-exit-banner text-center"><h3 class="header-android-exit-banner">Save today!</h3></div>'
        + '<div class="col-md-7 left-col-android-exit-banner"> <span class="currency-android-exit-banner">$</span> <span class="action-price-android-exit-banner">74</span></div>'
        + '<div class="col-md-5 right-col-android-exit-banner text-left"> <span class="product-name-android-exit-banner">12 month<br>Android Premium Plan</span> <span class="action-cents-android-exit-banner">.99</span></div>'
        + '<div class="block-android-exit-banner"><span class="prev-price-android-exit-banner">$83,99</span></div>'
        + '<div class="block-android-exit-banner"> <form name="price_basic" method="POST" action="/buy.html" class="buy-form-with-offer" autocomplete="off"> <input id="product_price_premium" type="hidden" name="price[productID]" value="244" class="product_price" /> <input class="data-price"  data-target=".andr-premium-price-per-month" data-cur="usd" data-price-usd="74.99" data-offer-price-usd="74.99" data-period="12" data-product="244" data-offer-product="" data-group="android-prem"  name="optionsRadios" id="optionsRadios2441" value="244" type="hidden" /><button class="btn btn-default ga-action-click btn-buy-android-exit-banner" ga-action ="click" ga-category="{$gaCategory}" ga-label="{$gaLabel}" value="true" type="submit" name="price[submit]"><span class="text-buy-android-exit-banner">Buy now!</span></button></form></div>'
        + '</div>';


    addEvent(window,"load",function(e) {
        addEvent(document, "mouseout", function(e) {
            e = e ? e : window.event;
            var from = e.relatedTarget || e.toElement;
            if (!from || from.nodeName == "HTML") {
                // stop your drag event here
                // for now we can just use an alert
                var cookie = getCookie('{$cookieName}');

                if (cookie == '{$cookieValue}') {
                    return false;
                }
                $trial_registration =  $('.box-popUp').append($banner).find('#exit-banner-android');
                $trial_registration.bPopup({
                    modalClose: true,
                    opacity: 0.6,
                    follow: [false, false],
                    positionStyle: 'fixed',
                    onOpen: function () {

                        // google analitycs
                        ga('send', 'event', '{$gaLabel}', 'popup', '{$gaCategory}');
                        if ({$cookieSession}){
                            $.cookie('{$cookieName}', '{$cookieValue}');

                        } else {
                            setCookie('{$cookieName}', '{$cookieValue}')

                        }

                    },
                    closeClass: 'close',
                    onClose: function () {
                    },
                });

            }
        });
    });


</script>
<!-- end -->