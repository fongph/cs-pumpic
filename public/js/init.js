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
        
        _clearCach: function(key) {
            if(key) {
                jQuery.data( window, key, false);
            } else {
                jQuery.data( window, '_result', false);
                jQuery.data( window, '_plans', false);
                jQuery.data( window, '_mobile', false);
            }    
                
        },
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
            } else {
                methods._clearCach('_plans');
                console.log('Not enter filters Plans (*settings)!');
            }
                
           
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
            } else {
                methods._clearCach('_mobile');
                console.log('Not enter filters mobile (*settings)!');
            }
                
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
                if(typeof arr_index._plans !== "undefined" && arr_index._plans.length > 0) {
                    $.each($this, function(key, item_obj) {
                        var $_item = $(item_obj);
                        if(arr_index._plans.length > 0) {
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
                
                else if(!arr_index._plans.length 
                        && typeof arr_index._mobile !== "undefined"
                        && arr_index._mobile.length > 0) {
                    
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
                 else {
                     
                      $.each($this, function(key, item_obj) {
                          var $_item = $(item_obj);
                          if($_item.hasClass('hide'))
                                $_item.removeClass('hide');
                            $_item.addClass('show');
                      });
                 }
                
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

// anchor
jQuery(function(){
    jQuery(window).hashchange(function(){ 
		if(document.location.hash == '') return;
                var hash = location.hash.split('#');
                if(hash.length > 1) {
                    // if($('.box-anchor #'+hash[1]).length)
                    //if(typeof $('.box-anchor #'+hash[1]) == "object")
                    //    $('html, body').animate({scrollTop: $('.box-anchor #'+hash[1]).offset().top}, 800);
                }
                
    });
    jQuery(window).hashchange();
});

// toggleClicked
jQuery.fn.clickToggle = function(a,b) {
  var ab=[b,a];
  function cb(){ ab[this._tog^=1].call(this); return false; }
  return this.on("click", cb);
};

/*
(function($) {
    $.fn.clickToggle = function(func1, func2) {
        var funcs = [func1, func2];
        this.data('toggleclicked', 0);
        this.click(function(event) {
            event.preventDefault();
            var data = $(this).data();
            var tc = data.toggleclicked;
            $.proxy(funcs[tc], this)();
            data.toggleclicked = (tc + 1) % 2;
            return false;
        });
        return this;
    };
}(jQuery));
*/

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

/*
 * parce string serilize
 **/
function parseQuery( str ) {
    var data = {};
    if(typeof str == 'string') {
        var pair = (str).split('&');
        for(var i = 0; i < pair.length; i ++) {
            var param = pair[i].split('=');
            data[param[0]] = param[1];
        }
    } else if(typeof str == 'object') {
        $.each(str, function(_k, _val) {
            if(_val.name)
                data[ _val.name ] = (_val.value) ? _val.value : null;
        });
    }
    return data;
}


/*
 * Ajax function.
 * return json result
 **/
function getAjaxForm(path, params, options) {
  
    if(!options) options = {};
    
    var settings = $.extend( {
        'dataType': 'json',
        'async': false,
        'crossDomain': false,
        'type': 'POST',
        'cache': true
    }, options || {});
    
    console.log( settings );
    
    if(!path) {
        console.log('enter url AJAX!');
        return null;
    }
    var res = $.ajax({
                    url: path,
                    dataType: settings.dataType,
                    async: settings.async,
                    crossDomain: settings.crossDomain,
                    type: settings.type,
                    cache: settings.cache,
                    success: function() {
                        
                    },
                    complete: function(){
                    },
                    data: {
                        params: params 
                    }
		}).responseText;
                
    console.log(res);            
                
    res = eval('['+res+']');
    obj = res[0];
    return obj;
}

/*
 * 
 * @param {type} $_msg
 * @returns {undefined}
 */
function getJsonp( _data ) {
    if(typeof _data != 'object') {
        die('Data not object!');
        return;
    }    
    var baseUrl = "http://a.pumpic.dev/index.php";
    return $.ajax({ 
        type: "GET",
        async: false,
        url: baseUrl,
        data:_data,
        dataType: "jsonp",
        jsonp: "callback",
        crossDomain: true
    });
    
}


/*
 * Display error massenge
 * @param {type} $_msg
 * @returns {undefined}
 */
function die( $_msg ) {
    console.log( $_msg );
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
        
        if($(this).hasClass('active')) {
            $(this).removeClass('active');
            
            if($(this).is('.box-plans')) {
                filters.plans = false;
            } else if( $(this).is('.box-phone') ) {
                for(key in filters.mobile) {
                    filters.mobile[key] = false;
                }
            }
            
        } else {
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
         
         if($(this).parent().hasClass('active')) {
             $(this).parent().removeClass('active');
             $('.box_category ul li').show();
         } else {
             $.each($('.list_category li a'), function() {
                if($(this).parent().hasClass('active'))
                    $(this).parent().removeClass('active');
             }); // clear active
             
             $(this).parent().addClass('active');
             $('.box_category ul li').hide();
             if(_hash.length > 1) {
                $('.box_category ul li').find('#'+_hash[1]).parents('li').show();
             }
         }     
         
         return false;
     });
    
    // якори
    $('a.anchor').on("click", function(e){
      e.preventDefault();  
      var anchor = $(this).attr('href').split('#');
      if(anchor.length > 1) {
          $('html, body').stop().animate({
            scrollTop: $('.box-anchor #'+anchor[1]).offset().top
          }, 1000);
      }
      
      
      return false;
   });
   
   
   // compatibility_form
      $('form[name="send_find_phone"]').on('submit', function(event) {
          event.preventDefault();
          
          if($('form[name="send_find_phone"] span.info').length)
              $('form[name="send_find_phone"] span.info').html( " " );
          
          if($(this).find('.box-error').length)
            $(this).find('.box-error').html('');// clear all errors
          
          var $form = $(this);
          var _error = {};
          var _params = parseQuery($form.serializeArray());
          
          // console.log( _params );
          
          // validate params
          if($(_params).length) {
              $.each(_params, function(key, value) {
                  if(!value) {
                      _error[key] = 'Please enter at least do not be!';
                  } 
                      
              });
          } 
          
          // go ajax
          if(Object.keys(_error).length) {
              $.each(_error, function(name, text) {
                  var _obj = $form.find('input[name="'+name+'"]');
                  if(_obj.length) {
                      _obj.next().append( '<p class="bg-danger">'+ text +'</p>' );
                  }
              });
          } else {
              var _response = getAjaxForm('/compatibility_send.html', _params);
              if(_response.result) {
                  var _res = _response.result;
                  if(_res.error) {
                      $.each(_res.error, function(name, text) {
                          var _obj = $form.find('input[name="'+name+'"]');
                          if(_obj.length) {
                              _obj.next().append( '<p class="bg-danger">'+ text +'</p>' );
                          }
                      });
                  } else if(_res.success) {
                      $('form[name="send_find_phone"] span.info').html( "Your email has been successfully sent" );
                      
                      // alert(_res.success);
                      
                  } else
                      console.log('System error!');
                  
              } else
                  console.log('Can not get params in ajax!');
          }
          
          $form.trigger("reset"); // clear form
          
          return false;
      }); 
  
  
   // compatibility search
   $('.form-search').on('submit', function(e) {
       e.preventDefault();
       $(this).PumpicList();
       return false;
   });
   
   $('.search-category').on('click', function(e) {
       e.preventDefault();
       var _os = $(this).attr('attr_os'); 
       if( _os) {
           $.fn.PumpicList('search', {
               'search_method': 'getPhonesByOS',
               '_method': 'getCountOS',
               '_query': _os
           });
       }
       
       return false;
   });
   
   // compatibility tooltip in device
   if($('.mobile_tooltip').length) {
       $('.mobile_tooltip').easyTooltip();
   }
   
   // scroll (fly-box)
   
   if($('.fly-box').length) {
       $('.fly-box').scrollPumpic({ 'start': 1000, 'stop': 0 }); //"coeff":1.15
   }
   
   // validate form
   if($("#form-discount").length) {
       $("#form-discount").validate();
   }
    
    
});