$(document).ready(function(){ 
    
    if(!$('.bxSliders.only-mobile') && !$('.bxSliders.only-pc')) {
        var bxSliders = $('.bxSliders').bxSlider({
                slideWidth: 1170,
                minSlides: 1,
                controls: false,
                wrapperClass: 'bx-wrapper-testimonials',
            }); 
    }
    
    if($('.bxSliders.only-mobile')) {
        var bxSlidersMobile = $('.bxSliders.only-mobile').bxSlider({
            slideWidth: 1170,
            minSlides: 1,
            controls: false,
            wrapperClass: 'bx-wrapper-testimonials',
        }); 
    }
    
    if($('.bxSliders.only-pc')) {
        var bxSlidersPC = $('.bxSliders.only-pc').bxSlider({
            slideWidth: 1170,
            minSlides: 1,
            controls: false,
            wrapperClass: 'bx-wrapper-testimonials',
            // moveSlides: 1,
            // startSlide: 2,
            // maxSlides: 10,
            // slideMargin: 10

    //        nextSelector: '#slider-next',
    //        prevSelector: '#slider-prev',
    //        nextText: 'Onward →',
    //         prevText: '← Go back'
        });
    }
    
    $(window).on('load resize', function() {
        // console.log($(this).width());
        if($(this).width() < 992) {
            
            if($('.bxSliders').is('.only-mobile'))
                bxSlidersMobile.reloadSlider();
            
            if($('.bxSliders').is('.only-pc'))
                bxSlidersPC.destroySlider();
            
//            if($('.bxSliders').is(':visible'))
//                bxSliders.reloadSlider();
        } else {
           if($('.bxSliders').is('.only-mobile')) 
                bxSlidersMobile.destroySlider();
            
            if($('.bxSliders').is('.only-pc'))
                bxSlidersPC.reloadSlider();
       }   
    });
    
    if($('.slider-ipad').length) {
        $('.slider-ipad').bxSlider({
            slideWidth: 385,
            minSlides: 1,
            controls: true,
            // moveSlides: 1,
            // startSlide: 2,
            // maxSlides: 10,
            // slideMargin: 10
            nextSelector: '#slider-next',
            prevSelector: '#slider-prev',
            nextText: '',
            prevText: '',
            
//            buildPager: null,
//            pagerCustom: true,
        }); 
    }
});