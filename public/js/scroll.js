// The plugin code
(function($){
    $.fn.scrollPumpic = function(options){
        var $this = $(this);
        offset = $this.offset();
        var _stop = false;
        
        var defaults = {
            "start": 0,
            "stop": offset.top + $this.height(),
            //"coeff": 0.95
        };
        
        var opts = $.extend(defaults, options);
        return this.each(function(){
            $(window).on('scroll', function() {
                
                // console.log( $(window).width() );
                
                if($(window).width() <= 480 )  {
                    $this.find('.box-fly-discount').removeClass('fixed');
                    $this.hide(500);
                    return;
                }
                
                windowTop = $(window).scrollTop();
                _stop = (opts.stop) ? (windowTop <= opts.stop) ? true : false : false; 
                
                
                
                if((windowTop >= opts.start) && !_stop) {
                    //newCoord = windowTop * opts.coeff;
                    
                    $this.show(500, function() {
                        $this.find('.box-fly-discount').addClass('fixed');
                        $("#form-discount-fly").validate(); // init validate
                    });
                    
                } else if((windowTop < opts.start) || _stop) {
                    $this.find('.box-fly-discount').removeClass('fixed');
                    $this.hide(500);
                }
                    
            });
        });
    };
})(jQuery);