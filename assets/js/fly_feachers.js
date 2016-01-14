$(document).ready(function(){ 

    // create cookie
    if(typeof $.cookie('fly_features') == "undefined") {
        $.cookie('fly_features', 0, {  
            expires: 1 // установить на сутки  
        });
    }
    
    
    $(window).scroll(function() {
            if ($(this).scrollTop() > 100 && 
                    typeof $.cookie('fly_features') !== "undefined" &&
                    !parseInt( $.cookie('fly_features') ) ) {
                    $('#fly_features').fadeIn();
            } else {
                    $('#fly_features').fadeOut();
            }
    });
    
//    if(typeof $.cookie('fly_features') !== "undefined" 
//                && !parseInt( $.cookie('fly_features') )) {
//            $('#fly_features').css({'display': 'inline-block'});
//    }
    
    if($('.fly_close').length) {
        $('.fly_close').on('click', function() {
            $(this).parent().hide();
            if(typeof $.cookie('fly_features') !== "undefined" 
                && !parseInt( $.cookie('fly_features') )) {
                $.cookie('fly_features', 1);
            }
            
            return false;
        });
    }
});

