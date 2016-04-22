// $(".navbar").autoHidingNavbar();

   // var $first = $('.first'),
   // 		$sectionbullets = $('.section-bullets'),
   //      $owlcarousel_1 = $(".owl-carousel_1"),
   //      $nav = $(".nav"),
   //      $footer = $(".footer"),
   //      $last = $('.last');

// Function Detect block


// function sectionDetect($block, sections, c){
//     if( $block.offset().top + $block.height()/2 > sections[0].offset().top
//         && $block.offset().top + $block.height()/2 < sections[0].offset().top + sections[0].height() )
//         $block.addClass(c);
//     else if( $block.offset().top + $block.height()/2 > sections[1].offset().top
//         && $block.offset().top + $block.height()/2 < sections[1].offset().top + sections[1].height() )
//         $block.addClass(c);
//     else if( $block.offset().top + $block.height()/2 > sections[2].offset().top
//         && $block.offset().top + $block.height()/2 < sections[2].offset().top + sections[2].height() )
//         $block.addClass(c);
//     else
//         $block.removeClass(c);
// }


// sectionDetect($sectionbullets, [$last, $footer], "to-orange");


//END Function Detect block


$('.parallax-window').parallax({imageSrc: 'img/backg_1.png'});

$(".owl-carousel_1").owlCarousel({
	loop:true,
	nav:true,
	items:1,
			lazyLoad:true, // Retina image data-src-retina
			dotsEach:true,
			autoWidth:false
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
		$($this[0]).removeClass('minus')
	} else {
		links.each(function(index, el) {
			$(el).removeClass('minus');
		});
		$this.addClass('minus');
	}			
});




		 // if( $(this).width() >= 500 ){
		 // 	alert('12311123')
		 $(".features__row").animated("fadeIn");
		 $(".video-container, .contacts-row .col, .contact-form").animated("fadeInUp", "fadeOut");
		 // }



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
