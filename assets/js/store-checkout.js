$(document).ready(function () {


    //initialize  product before popup open
    var product = $('input.data-price[data-period="6"]').data('product');
});
function beforeRequestsCallbackFunction() {
}

// GA event send
function buyOnClick(button) {
    fastspring.builder.reset();
    var _ga_action = ($(button).attr('ga-action')) ? $(button).attr('ga-action') : false,
        _ga_category = ($(button).attr('ga-category')) ? $(button).attr('ga-category') : false,
        _ga_label = ($(button).attr('ga-label')) ? $.trim($(button).attr('ga-label').toLowerCase()).replace(/\s/g, '-') : false;

    if (_ga_action && _ga_category && _ga_label) {
        ga('send', 'event', _ga_category, _ga_action, _ga_label);
    }
}

// GA event send


function decorateURLFunction(url) {
    var linkerParam = null;

    ga(function () {
        var trackers = ga.getAll();
        trackers.forEach(function (tracker) {
        });
        linkerParam = trackers[0].get('linkerParam');
    });


    return (linkerParam ? url + '?' + linkerParam : url);
}


function popupEventReceived(event) {

    if (isset(event.ecommerce.purchase.actionField.id)){

        var order_reference_from_store =  event.ecommerce.purchase.actionField.id;
        var orders_referer = getCookie('orders_referer');
        var landing = getCookie('landing');
        var http = new XMLHttpRequest();
        var url = "https://pumpic.com/store-new-ga.html";
        // var url = "/store-new-ga.html";
        var params = "order_reference_from_store="+order_reference_from_store +"&landing=" + landing + "&orders_referer=" + orders_referer;
        http.open("POST", url, true);

        //Send the proper header information along with the request
        http.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        http.setRequestHeader("X-Requested-With", "XMLHttpRequest");
        http.onreadystatechange = function() {//Call a function when the state changes.
            if(http.readyState == 4 && http.status == 200) {
            }
        }
        http.send(params);

        return true;
    }

}

function getCookieGa(name) {
    var nameEQ = name + "=";
    var ca = document.cookie.split(';');
    console.log(ca)

    for(var i=0;i < ca.length;i++) {
        var c = ca[i];
        while (c.charAt(0)==' ') c = c.substring(1,c.length);
        console.log(c.substring(nameEQ.length,c.length))
        console.log(c.indexOf(nameEQ))
        console.log(c)
        console.log(c.substring(nameEQ.length,c.length) == true)

        if (c.indexOf(nameEQ) == 0) return (c.substring(nameEQ.length,c.length) == true) ? c.substring(nameEQ.length,c.length) : '--';
    }
    // return '--';
}

//data-fsc-item-path-value
$(function () {
    $('.buy-form-with-offer').on('change', 'input.data-price', function () {
        var product = $(this).data('product');

        $(this).closest('form').find('button').attr('data-fsc-action', 'Add, Checkout');
        var ga_label = $(this).closest('form').find('button').attr('ga-label');
        $('body').find('button[ga-label="' + ga_label + '"]').attr('data-fsc-action', 'Add, Checkout');
        $('body').find('button[ga-label="' + ga_label + '"]').attr('data-fsc-item-path-value', product);
        fastspring.builder.reset();
        fastspring.builder.update(product, 1);

    });


});
