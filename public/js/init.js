(function( $ ){
      var $_result = {
          '_plans': false,
          '_mobile': false
      };  
      var $this = {};
    
      var _settings = {
          'plan': false,
          'mobile': false
      }  
    
      // detected method
      var methods = {
        init : function( options ) { 
           
            // set filters
            if(typeof options.filters !== "undefined") {
                _settings.plans = (options.filters.plans) ? options.filters.plans : null;
                _settings.mobile = (options.filters.mobile) ? options.filters.mobile : null;
            }
            
            return $(this);
        }, // set init
        
        _cach: function(params, key) {
            key = (!key) ? "_result" : key;
            if(params) {
                return jQuery.data( window, key, params);
            } else {
                return jQuery.data( window, key);
            }
        }, // set cahce
        
        _plans: function( ) {
            if(_settings.plans) {
               var _res = []; 
               $.each($this, function(key, item_obj) {
                   var $_item = $(item_obj);
                   var $use_plans = $_item.attr('attr-use-plan').split('|');
                   
                   if($.inArray(_settings.plans, $use_plans) != -1) {
                       _res[$_item.index()] = $_item.index();
                   } 
               });
               
               methods._cach(_res, "_plans");
            } else 
                console.log('Not enter filters Plans (*settings)!');
           
        }, // set plans filters
        
        _mobile: function() {
            if(_settings.mobile) {
                var _res = [];
                if(!$_result._plans) {
                    $.each(_settings.mobile, function(_type, _status) {
                        if(_status == true) {
                            $.each($this, function(key, item_obj) {
                                var $_item = $(item_obj);
                                if($_item.find('.box-filter-mobile i.icon-'+_type+'').is('.supported')) {
                                    _res[ $_item.index() ] = $_item.index();
                                }
                            
                            });
                        }
                    }); 
                } else {
                     $.each($this, function(key, item_obj) {
                        var $_item = $(item_obj);
                        if($.inArray($_item.index(), $_result._plans) != -1) {
                            $.each(_settings.mobile, function(_type, _status) {
                                if(_status == true) {
                                    if($_item.find('.box-filter-mobile i.icon-'+_type+'').is('.supported')) 
                                        _res[ $_item.index() ] = $_item.index();
                                }
                            });
                        }
                    });
                }
                
                methods._cach(_res, "_mobile");
            } else
                console.log('Not enter filters mobile (*settings)!');
        }, // set mobile filters
        _run : function( obj ) {
             if(!obj.length) {
                 console.log('Not detected Objects!');
                 return;
             }
             
             $this = obj;   
             
             methods._plans(); // detected plans
             $_result._plans = methods._cach(false, "_plans"); // get params plans in cache
             if(typeof $_result._plans === "undefined") console.log('Not enter plans filters!');
             methods._mobile(); // detected filters mobile
             $_result._mobile = methods._cach(false, "_mobile"); // get params mobile in cache
             if(typeof $_result._mobile === "undefined") console.log('Not enter mobile filter!');
             methods._visible($_result); // show/hide elements
        },
        
        _visible: function( arr_index ) {
            if($this.length > 0) {
                if(typeof arr_index._plans !== "undefined") {
                    $.each($this, function(key, item_obj) {
                        var $_item = $(item_obj);
                        
                        // set plans
                        if($.inArray($_item.index(), arr_index._plans) != -1) {
                            if($_item.hasClass('hide'))
                                $_item.removeClass('hide');
                            $_item.addClass('show');
                        } else {
                            if($_item.hasClass('show'))
                                $_item.removeClass('show')
                            $_item.addClass('hide');
                        }
                    }); // show/hide elements plans
                    
                    // filter mobile in plans
                    if(arr_index._mobile.length > 0 && typeof arr_index._mobile !== "undefined") {
                        $.each($this, function(key, item_obj) {
                            var $_item = $(item_obj);
                            if($.inArray($_item.index(), arr_index._mobile) != -1) {
                                if($_item.hasClass('hide'))
                                    $_item.removeClass('hide');
                                $_item.addClass('show');
                            } else {
                                if($_item.hasClass('show'))
                                    $_item.removeClass('show')
                                $_item.addClass('hide');
                            }
                        });
                    } // show/hide mobile in plans
                    
                    
                } // filters plans
                
                if(!arr_index._plans 
                        && typeof arr_index._mobile !== "undefined") {
                    $.each($this, function(key, item_obj) {
                        var $_item = $(item_obj);
                        if($.inArray($_item.index(), arr_index._mobile) != -1) {
                            if($_item.hasClass('hide'))
                                $_item.removeClass('hide');
                            $_item.addClass('show');
                        } else {
                            if($_item.hasClass('show'))
                                $_item.removeClass('show')
                            $_item.addClass('hide');
                        }
                    });    
                } // all mobile filters
                
            }
        },
        
        show : function() {
            return methods._run( $(this) );
        },
        update : function( content ) {
          // !!!
        }
      };

      // constructor
      $.fn.tabPumpic = function( method ) {

        // логика вызова метода
        if ( methods[method] ) {
          return methods[ method ].apply( this, Array.prototype.slice.call( arguments, 1 ));
        } else if ( typeof method === 'object' || ! method ) {
          return methods.init.apply( this, arguments );
        } else {
          $.error( 'Метод с именем ' +  method + ' не существует для jQuery.tooltip' );
        }
        
        
      };

})( jQuery ); 


/*
 * parce url
 **/
function parseUrlQuery() {
    var data = {};
    if(location.search) {
        var pair = (location.search.substr(1)).split('&');
        for(var i = 0; i < pair.length; i ++) {
            var param = pair[i].split('=');
            data[param[0]] = param[1];
        }
    }
    return data;
}


function clickActive(obj, _this) {
    if($(obj).length > 0) {
        $.each($(obj), function(key, val) {
            if($(val).hasClass('active'))
                $(val).removeClass('active');
        }); // clear all active
         _this.addClass('active');
    }
}

$(document).ready(function(){ 
    $.data( window, "filters", false); // init clear cache
    
    var filters = {
        'plans': false,
        'mobile': {
            'apple': false,
            'android': false,
            'blackberry': false
        }
    }; // init settings
    
    $('.box-plans, .box-phone').on('click', function(event) {
        event.preventDefault();
        filters = (!$.data( window, "filters")) ? filters : $.data( window, "filters");
        var _rel  = $(this).attr('rel');
        
        if($(this).is('.box-plans')) {
            clickActive('.box-plans', $(this));
            filters.plans = _rel;
        } else if( $(this).is('.box-phone') ) {
            clickActive('.box-phone', $(this));
            // clear all params (after click in mobile)
            for(key in filters.mobile) {
                filters.mobile[key] = false;
            }
            
            if(typeof filters.mobile[_rel] !== "undefined")
                filters.mobile[_rel] = true;
        }
       
        
        console.log( 'save cashe filter...' );
        $.data( window, "filters", filters); // save in result locale cache
        console.log( 'end...' );
        
        console.log('init Plugins Tabs...');
        $('.box-body-filters').tabPumpic({
            'filters' : filters
        }).tabPumpic('show');
        console.log('end...');
        return false;
    });

    // choose categoey
    $('.list_category li a').on('click', function(event) {
        event.preventDefault();
        var _hash = $(this).attr('href').split('#');
        
        $.each($('.list_category li a'), function() {
            if($(this).parent().hasClass('active'))
                $(this).parent().removeClass('active');
        }); // clear active
        
        $(this).parent().addClass('active');
        
        // all category hide;
        $('.box_category ul li').hide();
        
        if(_hash.length > 1) {
            $('.box_category ul li').find('#'+_hash[1]).parents('li').show();
        }
        
        return true;
    });
    
});