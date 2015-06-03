$(document).ready(function(){ 
    $('.bxSliders').bxSlider({
        slideWidth: 1170,
        minSlides: 1,
        controls: false,
        // moveSlides: 1,
        // startSlide: 2,
        // maxSlides: 10,
        // slideMargin: 10
        
//        nextSelector: '#slider-next',
//        prevSelector: '#slider-prev',
//        nextText: 'Onward →',
//         prevText: '← Go back'
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