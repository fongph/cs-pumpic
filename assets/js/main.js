// авто-гритинг чата.


var LC_API = LC_API || {};
function _LC_OPEN() {
    LC_API.open_chat_window();
}

// LC_API.on_after_load = function()
LC_API.on_before_load = function()
{
    
    if(!LC_API.chat_window_maximized()) {
        setTimeout( _LC_OPEN, 1000*60*10); // 1000 - 1cек.
    }
    
//	if(LC_API.chat_window_maximized()) {
//            // LC_API.hide_chat_window();
//            LC_API.minimize_chat_window();
//        }
};

LC_API.on_after_load = function() {
      //  LC_API.close_chat();
    if(LC_API.chat_window_maximized()) {
//            // LC_API.hide_chat_window();
            LC_API.minimize_chat_window();
        }
}

$(function() {
        $('.select_inverse, .select').selectpicker();

	$('.dbody > .row > div:first-child').on('click', function(ev) {
		var $this = $(this);
		if ($(ev.target).closest('.popover').length) return;
		if ($this.hasClass('active')) {
			$this.removeClass('active');
		} else {
			$('.dbody > .row > div').removeClass('active');
			$this.addClass('active');
		}
	});

	$(window).scroll(function() {
		if ($(this).scrollTop() > 100) {
			$('.go_up').fadeIn();
		} else {
			$('.go_up').fadeOut();
		}
	});
	// scroll body to 0px on click
	$('.go_up').on("click", function() {
		$('body,html').animate({
			scrollTop: 0
		}, 800);
		return false;
	});
        
        // scroll body on click
        if($('.go_block_scroll').length) {
           $('.go_block_scroll').on('click', function() {
                var id = ($(this).attr('data-go-block')) ? '#'.$(this).attr('data-go-block') : ($(this).attr('href')) ? $(this).attr('href') : false;  
                if(id && $( id ).length) {
                    $('html, body').animate( { 
                        scrollTop: Math.ceil( $( id ).offset().top ) // Math.ceil((target_top * $(window).outerHeight(true)) / $('html, body').height())
                    },'linear');
                    return false;
                } 
           }); 
        }
        
        // ga form
        // вариант 1
//        ga(function(tracker) {
//          var linkerParam = tracker.get('linkerParam');
//          console.log( linkerParam );
//        });

       if($('form[name="price_premium_bottom"], form[name="price_basic_bottom"], form[name="price_premium"], form[name="price_basic"]').length) {
        $('form[name="price_premium_bottom"], form[name="price_basic_bottom"], form[name="price_premium"], form[name="price_basic"]').submit(function(){
            ga('linker:decorate', this);
        });
       }
});
