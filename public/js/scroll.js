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
        
        return this.each(function(){
            $(window).on('scroll', function() {
                
                //console.log( $(window).width() );
                if(opts._settings._responce) {
                    if($(window).width() <= 480)  {
                        $this.find( _objFly ).removeClass('fixed');
                        $this.hide(500);
                        return;
                    }
                }
                
                
                windowTop = $(window).scrollTop();
                _stop = (opts.stop) ? (windowTop <= opts.stop) ? true : false : false; 
                
                // console.log( windowTop );
                // console.log( opts.start, windowTop, opts._settings._responce);
                
                if((windowTop >= opts.start) && !_stop) {
                    //newCoord = windowTop * opts.coeff;
                    
                    // box right
                    if(opts.right > 0) {
                        var objWidth = $this.find( _objFly ).width() + opts.right; 
                        if(objWidth <= $(window).width()) {
                            $this.find( _objFly ).css({'margin-right': opts.right+'px'});
                        } else if(objWidth > $(window).width()) {
                            $this.find( _objFly ).css({'margin-right': '0px'});
                        }
                    }
                    
                    $this.show(500, function() {
                        $this.find( _objFly ).addClass('fixed');
                        if(opts._settings._validate)
                            $( opts._settings._validateObj ).validate(); // init validate
                    });
                    
                } else if((windowTop < opts.start) || _stop) {
                    $this.find( _objFly ).removeClass('fixed');
                    $this.hide(500);
                }
                
                
                console.log( objWidth, $(window).width() );
                
                
                
                    
            });
        });
    };
})(jQuery);