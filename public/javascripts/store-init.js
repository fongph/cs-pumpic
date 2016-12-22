$(document).ready(function(){
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
				$('script[data-delete=delete]').remove();
				var s = document.createElement("script");
				s.type = "text/javascript";
				s.src = "/javascripts/frontend.min.js";
				$("body").append(s);
				if(deviceWidth < 700) {
					var stickyHeader = function() {
						var sticky = $('.save__2plan'),
								parentOffset = $('thead'),
								offset = parentOffset.offset().top + 50;
						$(window).scroll(function(){
							var scroll = $(window).scrollTop();
							if (scroll >= offset) {
								sticky.addClass('sticky');
							} else {
								sticky.removeClass('sticky');
							}
						});
					}
					stickyHeader();
				};
			});
});