$(document).ready(function(){
    $('input:checkbox').prop('checked', false);

    $(document).on('mouseover', '[data-toggle="tooltip"]', function () {
        $('[data-toggle="tooltip"]').tooltip({
            placement:'top',
            animation:false,
            html: true,
        });
    });
    var deviceWidth =  $(window).width();

    $.get('/store-android.php', { deviceWidth: deviceWidth })
        .done(function(data) {
            $('#loader').fadeOut()
            $(".prod-list-android").html(data);
            ab_test();
            $('script[data-delete=delete]').remove();
            var s = document.createElement("script");
            s.type = "text/javascript";
            s.src = "/javascripts/frontend.min.js";
            $("body").append(s);
        });
});

function ab_test() {
    $('.buy-form-with-offer').on('change', 'input.data-price', function () {
        var product = $(this).data('product');
        console.log(product);
        $(this).closest('form').find('button').attr('data-fsc-action', 'Add, Checkout');
        var ga_label = $(this).closest('form').find('button').attr('ga-label');
        $('body').find('button[ga-label="'+ga_label+'"]').attr('data-fsc-action', 'Add, Checkout');
        $('body').find('button[ga-label="'+ga_label+'"]').attr('data-fsc-item-path-value', product);
        fastspring.builder.reset();
        fastspring.builder.update(product,1);

    });
}