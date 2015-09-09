$(document).ready(function(){ 
    var bxSliders = false;
    var bxSlidersMobile = false;
    var bxSlidersPC = false;
    
    if($('.bxSliders').length) {
    
        if($('.bxSliders').not('.only-mobile, .only-pc')) {
            bxSliders = runSliders( $('.bxSliders').not('.only-mobile, .only-pc') );
        }

        bxSlidersMobile = runSliders( $('.bxSliders.only-mobile') ); // :visible
        bxSlidersPC = runSliders( $('.bxSliders.only-pc') ); // :visible

        $(window).on('load resize', function() {
            if($(this).width() < 992) {

                if($('.bxSliders.only-mobile').length) // .is(':visible')
                   bxSlidersMobile.reloadSlider();

                if($('.bxSliders.only-pc').length) // .not(':visible')
                   bxSlidersPC.destroySlider();

            } else {

               if($('.bxSliders.only-mobile').length) //.not(':visible') 
                   bxSlidersMobile.destroySlider();

                if($('.bxSliders.only-pc').length) // .is(':visible')
                   bxSlidersPC.reloadSlider();
           }   
        });
    
    }
    
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

function runSliders( obj ) {
    if(obj.length) {
        return obj.bxSlider({
            slideWidth: 1170,
            minSlides: 1,
            controls: false,
            wrapperClass: 'bx-wrapper-testimonials',
            onSliderLoad: function(){
                // alert( $('.bx-controls .bx-pager > .bx-pager-item').length );
                if($('.bx-controls > .bx-pager > .bx-pager-item').length < 2) $('.bx-controls > .bx-pager > .bx-pager-item').hide(); 
            },
            onSlideBefore: function() {

            },
            onSlideAfter: function(){

            },
        }); 
    }
}