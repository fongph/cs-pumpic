$('.parallax-window').parallax({imageSrc: 'img/backg_1.png'});
$(function () {
	$(".owl-carousel_1").owlCarousel({
		loop:true,
		nav:true,
		singleItem:true,
		items:1,
		center:true,
		lazyLoad:true, // Retina image data-src-retina
		dotsEach:true,
		autoWidth:false,
		responsive: {
			0: {
				items: 1
			},
		}
	})
})


$(".owl-carousel").owlCarousel({
	loop:true,
	margin:36,
	items:5,
	autoWidth:true,
	center:true,
	stagePadding: 100,
	lazyLoad:true,

	responsive:{
		0:{
			items:1
		},
		600:{
			items:3
		},
		1000:{
			items:5
		}
	}
})

var links = $(".url_accordion li");
links.on('click',  function() {
	$this = $(this);
	if ($($this[0]).hasClass('minus')) {
		$($this[0]).removeClass('minus').find('.accordion__text').fadeOut(150);
	} else {
		links.each(function(index, el) {
			$(el).removeClass('minus');
		});
		$this.addClass('minus').find('.accordion__text').fadeIn();
	}			
});

		 $(".features__row").animated("fadeIn");
		 $(".container__middle").animated("fadeIn");
		 $("#nav2").animated("fadeIn");
		 $(".video-container, .contacts-row .col, .contact-form").animated("fadeInUp", "fadeOut");

		 if($('html').hasClass('desktop') || $('html').hasClass('tablet') &&  $('html').hasClass('landscape')){
		 	$(window).on('scroll',function(){
		 		if($(window).scrollTop()>200){
		 			$('.navbar').addClass('floating')
		 		}
		 		else{
		 			$('.navbar').removeClass('floating');
		 		}
		 	});
		 };

		 $(window).load(function(){
		 	$("a[rel='ps2id']").mPageScroll2id({ scrollSpeed: 900 });
		 });

		 function downBtnAnimate($disc){
		 	$disc
		 	.css({
		 		"margin-top": 0,
		 		"opacity"   : 0
		 	})
		 	.animate({
		 		"opacity"   : 1
		 	}, 600)
		 	.animate({
		 		"margin-top": 10,
		 	}, 600, function(){
		 		downBtnAnimate($disc);
		 	});
		 }

		 downBtnAnimate($(".btn-down .disc"));
	
			$('.btn-down').on('click', function () {
				var height = $('.first.section').height()
				$('html, body').animate({
					scrollTop: height
				}, 1000);
			});

$('.navbar-toggle').on('click', function () {
	console.log('click')
	$(this).toggleClass('navbar-opened')
})
