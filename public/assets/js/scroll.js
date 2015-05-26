// The plugin code
(function($){
    $.fn.scrollPumpic = function(options){
        var $this = $(this);
            offset = $this.offset();
        var _stop = false, 
            _objFly = false, 
            dedug = false; // debuging code
        
        var defaults = {
            "start": 0,
            "stop": offset.top + $this.height(),
            "_objFly": '.box-fly-discount',
            "right": 0,
            "_show": true,
            "_settings" : {
                '_responce': true,
                '_validate': true,
                '_validateObj': "#form-discount-fly"
            },
            "animate": {
                'type': '', // fade, visible, blinking
                'timeShow': 200,
                'timeHide': 100
            }
            //"coeff": 0.95
        };
        
        if(dedug)
            console.log( '---------------------------- // INIT PLUGIN SCROLL ----------------------------' );
        
        var opts = $.extend(defaults, options);
            _objFly = (opts._objFly) ? opts._objFly : false;
        
//        $(window).on('resize', function() { 
//           if($(this).width() > 800) {
//                $this.find( _objFly ).css({'margin-right': opts.right+'px'});
//            } else {
//                $this.find( _objFly ).css({'margin-right': '0px'});
//            }
//        }); 

        if(dedug) {
            console.log( 'SCROLL SETTINGS: ', opts );
            console.log( 'start = '+opts.start, 'stop = '+opts.stop );
        }
        
        
        var _animate = {
            init: function( show ) {
                if(show) {
                    $this.find( _objFly ).addClass('fixed');
                } else {
                    $this.find( _objFly ).removeClass('fixed');
                }
                
                switch ( opts.animate.type ) {
                    // fadeIn/Out
                    case  "fade":
                        if(dedug)
                            console.log( show );
                        
                        if(show && $this.not(':visible')) {
                            $this.stop(true).queue('fx', function(){
                                $(this).fadeIn( opts.animate.timeShow ).dequeue('fx');

                                 if(opts._settings._validate)
                                    $( opts._settings._validateObj ).validate(); // init validate
                            });
                        } else if(!show && $this.is(':visible')) {
                            $this.stop(true).queue('fx', function(){
                                $(this).fadeOut( opts.animate.timeHide ).dequeue('fx');
                            });
                        }
                    break;
                    
                    // show/hide
                    case  "visible":
                        
                        if(dedug)
                            console.log( show );
                        
                        if(show && $this.not(':visible')) {
                            $this.stop(true).queue('fx', function(){
                                $(this).show( opts.animate.timeShow ).dequeue('fx');

                                 if(opts._settings._validate)
                                    $( opts._settings._validateObj ).validate(); // init validate
                            });
                        } else if(!show && $this.is(':visible')) {
                            $this.stop(true).queue('fx', function(){
                                $(this).hide( opts.animate.timeHide ).dequeue('fx');
                            });
                        }
                        
                    break;
                    
                    // opacity
                    case  "blinking":
                        if(dedug)
                            console.log( show );
                        
                        if(show && $this.not(':visible')) {
                            $this.stop(true).queue('fx', function(){
                                $(this).animate({opacity: 1}, opts.animate.timeShow ).dequeue('fx');

                                 if(opts._settings._validate)
                                    $( opts._settings._validateObj ).validate(); // init validate
                            });
                        } else if(!show && $this.is(':visible')) {
                            $this.stop(true).queue('fx', function(){
                                $(this).animate({opacity: 0}, opts.animate.timeHide ).dequeue('fx');
                            });
                        }
                        
                        
                    break;
                    
                    default:
                        
                        if(dedug)
                            console.log( show );
                        
                        if(show && $this.not(':visible')) {
                            $this.stop(true).queue('fx', function(){
                                $(this).animate({opacity: 1}, opts.animate.timeShow ).dequeue('fx');

                                 if(opts._settings._validate)
                                    $( opts._settings._validateObj ).validate(); // init validate
                            });
                        } else if(!show && $this.is(':visible')) {
                            $this.stop(true).queue('fx', function(){
                                $(this).animate({opacity: 0}, opts.animate.timeHide ).dequeue('fx');
                            });
                        }
                        
                    break;    
                }
            }
        };
        
        // clear cache
        if($(window).hasHandlers('scroll')) 
            $(window).off('scroll');
        
        $(window).on('scroll', function() {
            windowTop = $(window).scrollTop();
            _stop = (opts.stop) ? (windowTop <= opts.stop) ? true : false : false;
            
            if(dedug)
                console.log('windowTop = '+ windowTop, '_stop = '+_stop+' opts.start = '+opts.start);
            
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
               
                // run animate
                opts._show = true;
                
             } else if((windowTop < opts.start) || _stop) { 
                 // run animate
                 opts._show = false;   
             }
             
             _animate.init( opts._show ); // animate
            
        });
        
        
        /*
        return this.each(function(){
            
            $(window).on('scroll', function() {
                
                // console.log( opts.start );
                if(opts._settings._responce) {
                    if($(window).width() <= 480)  {
                        $this.find( _objFly ).removeClass('fixed');
                        $this.hide(500);
                        return;
                    }
                }
                
                windowTop = $(window).scrollTop();
                _stop = (opts.stop) ? (windowTop <= opts.stop) ? true : false : false; 
                
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
                    
                    if(opts._show) {
                        if(dedug)
                            console.log( opts._show );
                        $this.find( _objFly ).addClass('fixed');
                        $this.stop(true).queue('fx', function(){
                            $(this).animate({opacity: 1}, 200 ).dequeue('fx');
                             if(opts._settings._validate)
                                $( opts._settings._validateObj ).validate(); // init validate
                        });
                      opts._show = false;  
                    }
                    
                } else if((windowTop < opts.start) || _stop) {
                    if(!opts._show) {
                        if(dedug)
                            console.log( opts._show );
                        $this.find( _objFly ).removeClass('fixed');
                        $this.stop(true).queue('fx', function(){
                            $(this).animate({opacity: 0}, 100 ).dequeue('fx');
                        });
                        opts._show = true;
                    }
                    
                }
                
                if(dedug)
                    console.log( 'widow_width = '+$(window).width()+' windowTop ='+ windowTop+' start = '+opts.start );
                
                
                
                    
            });
        });
        
        */
        
        
    };
})(jQuery);