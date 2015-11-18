var mobile_slider = "<div class=\"slide\">";
        mobile_slider += "<div class=\"col-sm-12 col-md-4 col-lg-4 col-xs-12\">";
        mobile_slider +=    "<img src=\"{img_src}\" class=\"testimonial-photo\">";
        mobile_slider +=    "<div class=\"testimonial-text\">{text}</div>";
        mobile_slider += "</div>";
    mobile_slider += "</div>";
    
var objSliderMobile = $('.bxSliderMobile');
var bxSliders = false;
var bxSlidersMobile = false;
var bxSlidersPC = false;
    
$(document).ready(function(){ 
    // .replace
    
    
    
    if($('.bxSliders').length) {
    
//        if($('.bxSliders').not('.only-mobile, .only-pc')) {
//            bxSliders = runSliders( $('.bxSliders').not('.only-mobile, .only-pc') );
//        }
//
//        if($('.bxSliders.only-mobile').length)
//            bxSlidersMobile = runSliders( $('.bxSliders.only-mobile') ); // :visible
        
        if(!bxSlidersPC && $('.bxSliders.only-pc').length)
            bxSlidersPC = runSliders( $('.bxSliders.only-pc') ); // :visible

        $(window).on('load resize', function() {
            
            if($(this).width() < 992) {

                if(!bxSlidersMobile && !$('.bxSliderMobile').find('.slide').length) {
                    sliderMobileInit(objSliderMobile, $('.bxSliders.only-pc'));
                    bxSlidersMobile = runSliders( $('.bxSliderMobile') );
                }

//                if(bxSlidersMobile && $('.bxSliders.only-mobile').length) // .is(':visible')
//                   bxSlidersMobile.reloadSlider();

//                if(bxSlidersPC && $('.bxSliders.only-pc').length) // .not(':visible')
//                   bxSlidersPC.destroySlider();

                if(bxSlidersPC) {
                   bxSlidersPC.destroySlider();
                   bxSlidersPC = false;
               }   

            } else {

                 if(bxSlidersMobile && $('.bxSliderMobile').length && $('.bxSliderMobile').find('.slide').length) {
                     bxSlidersMobile.destroySlider();
                     clearSliderMobile( objSliderMobile );
                     bxSlidersMobile = false
                 }    
                 
                    

//               if(bxSlidersMobile && $('.bxSliders.only-mobile').length) //.not(':visible') 
//                   bxSlidersMobile.destroySlider();

//                if(bxSlidersPC && $('.bxSliders.only-pc').length) // .is(':visible')
//                   bxSlidersPC.reloadSlider();

                if(!bxSlidersPC) {
                   bxSlidersPC = runSliders( $('.bxSliders.only-pc') );
               }   

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

function sliderMobileInit( obj, getElemts ) {
    var _html = '', $res = new Array;
    if(isset(obj) && isset(getElemts)) {
        getElemts.find('.slide').each(function(k, val) {
            var _item = $(val).find('.bxItem');
            if(isset(_item)) {
                _item.each(function(ik, ival) {
                    
                   $res.push({
                       'src': $(ival).find('.testimonial-photo').attr('src'),
                       'text': $(ival).find('.testimonial-text').html()
                    }); 
                    
                });
            }
        });
    }
    
    if($res.length > 0) {
        $.each($res, function(key, item) {
            if(item.src && item.text) {
                var _hItem = '';
                _hItem += mobile_slider.replace('{img_src}', item.src);
                _html += _hItem.replace('{text}', item.text);
            }
        });
        obj.html( _html );
    }
    
}

function clearSliderMobile(obj) {
    if(isset(obj)) obj.empty(); 
}

function runSliders( obj ) {
    return obj.bxSlider({
        slideWidth: 1170,
        minSlides: 1,
        controls: false,
        
        infiniteLoop: false,
        responsive: true,
        
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