// The plugin code
(function($){
    $.fn.scrollPumpic = function(options){
        var $this = $(this);
        offset = $this.offset();
        var _stop = false, _objFly = false;
        
        var defaults = {
            "start": 0,
            "stop": offset.top + $this.height(),
            "_objFly": '.box-fly-discount',
            "right": 0,
            "_settings" : {
                '_responce': true,
                '_validate': true,
                '_validateObj': "#form-discount-fly"
            }
            //"coeff": 0.95
        };
        
        
        
        var opts = $.extend(defaults, options);
            _objFly = (opts._objFly) ? opts._objFly : false;
        
//        if(opts.start == 'auto') {
//            opts.start = $('.fly-position').offset().top; 
//        }
        
        return this.each(function(){
//            $(window).on('resize', function() { 
//                if($(window).width() < 800) { 
//                    $this.find( _objFly ).css({'margin-right': '0px'});
//                }
//
//                if(opts.start == 'auto') {
//                    opts.start = $('.fly-position').offset().top; 
//                }
//                
//                console.log( opts.start );
//            });
            
            
            $(window).on('scroll', function() {
                
                console.log( opts.start );
                if(opts._settings._responce) {
                    if($(window).width() <= 480)  {
                        $this.find( _objFly ).removeClass('fixed');
                        $this.hide(500);
                        return;
                    }
                }
                
                
                windowTop = $(window).scrollTop();
                _stop = (opts.stop) ? (windowTop <= opts.stop) ? true : false : false; 
                
                //  console.log( windowTop, $(window).width() );
                // console.log( opts.start, windowTop, opts._settings._responce);
                
                if((windowTop >= opts.start) && !_stop) {
                    //newCoord = windowTop * opts.coeff;
                    
                    // box right
                    if(opts.right > 0) {
                        
                        if($(window).width() > 800) {
                            $this.find( _objFly ).css({'margin-right': opts.right+'px'});
                        } else {
                            $this.find( _objFly ).css({'margin-right': '0px'});
                        }
                    }
                    
                    /*
                    $this.show(500, function() {
                        $this.find( _objFly ).addClass('fixed');
                        if(opts._settings._validate)
                            $( opts._settings._validateObj ).validate(); // init validate
                    });*/
                    
                    $this.stop(true).queue('fx', function(){
                        $this.find( _objFly ).addClass('fixed');
                         $(this).show(300).dequeue('fx');
                         if(opts._settings._validate)
                            $( opts._settings._validateObj ).validate(); // init validate
                    });
                    
                } else if((windowTop < opts.start) || _stop) {
                    $this.find( _objFly ).removeClass('fixed');
                    $this.hide(200).dequeue('fx');
                }
                
                
                // console.log( objWidth, $(window).width() );
                
                
                
                    
            });
        });
    };
})(jQuery);