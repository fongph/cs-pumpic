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

// globa variable
$data_hash = [];

// anchor
jQuery(function(){
    jQuery(window).hashchange(function(){ 
		if(document.location.hash == '') return;
                var hash = location.hash.split('#');
                if(hash.length > 1) {
                    $data_hash = hash[1];
                    hashchange_onLoadInit();
                    
                    // if($('.box-anchor #'+hash[1]).length)
                    //if(typeof $('.box-anchor #'+hash[1]) == "object")
                    //    $('html, body').animate({scrollTop: $('.box-anchor #'+hash[1]).offset().top}, 800);
                }
                
    });
    jQuery(window).hashchange();
});

// init cookies
function cookie_init() {
//    if(!getCookie('popUp')) {
//        $.cookie('popUp', false, { 
//                        expires: 7, 
//                        path: '/' 
//                    });
//    }            
}

function cookie_clear() {
    if($.cookie('popUp')) {
        $.removeCookie('popUp', { path: '/' });
    }
}

function setCookie(name, value) {
    $.cookie(name, value, { expires: 7, path: '/' });
}

function getCookie( name ) {
    if($.cookie(name)) {
        return $.cookie(name); 
    } else
        return false;
}

// init hashchange ( init bPopUp )
function hashchange_onLoadInit() {
    
}

function hashchange_AfterInit() { 
    var _data = _parceHash( $data_hash );
    
    // init bPopUp
    if(isset(_data['popUp'])) {
        
        if(_data['popUp'] == "auth") { // && !getCookie('popUp')
            // login status ok
            if(isset($('.box-popUp #box-status-auth'))) {
                var $this = $('.box-popUp #box-status-auth')
                , title = $this.find('.title') 
                , content = $this.find('.info'); 

                $this.bPopup({
                    modalClose: true,
                    opacity: 0.6,
                    follow: [false, false], 
                    positionStyle: 'fixed', //'fixed' or 'absolute'
                    onOpen: function() {
                        //content.html('TEST POPUP element!');
                    },
                    closeClass: 'close',
                    onClose: function() {
                        // setCookie('popUp', true);
                        //content.empty();
                    },

                });
            } 
        }
        
        if(_data['popUp'] == "registration") { // && !getCookie('popUp')
            // login status ok
            if(isset($('.box-popUp #box-status-registration'))) {
                var $this = $('.box-popUp #box-status-registration')
                , title = $this.find('.title') 
                , content = $this.find('.info'); 

                $this.bPopup({
                    modalClose: true,
                    opacity: 0.6,
                    follow: [false, false], 
                    positionStyle: 'fixed', //'fixed' or 'absolute'
                    onOpen: function() {
                        //content.html('TEST POPUP element!');
                    },
                    closeClass: 'close',
                    onClose: function() {
                        // setCookie('popUp', true);
                        //content.empty();
                    },

                });
            } 
        }
        
        
    }
}

function _parceHash( hash ) {
    var _data = {};
    if(hash.length) {
        var pair = (hash).split('&');
        for(var i = 0; i < pair.length; i ++) {
            var param = pair[i].split('=');
           _data[param[0]] = param[1];
        }
    }
    return _data;
}


function isset(element) {
    if(typeof element != 'undefined') {
        return element.length > 0;
    } else
        return false;
}

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
    var obj = res[0];
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
    cookie_init();
    
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
             $('.box_category ul > li').hide();
             if(_hash.length > 1) {
                if(_hash[1] == 'all') {
                    $('.box_category ul > li').show();
                } else {
                    $('.box_category ul > li').find('#'+_hash[1]).parents('li').show();
                }
                 
                
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
   
   
   // compatibility search
   $('.form-search').validate({
        rules: {
            'device-model': {
                required: true,
                minlength: 2
            }
        },
        errorClass: "invalid",
        errorLabelContainer: "#compatibility-search-error",
        messages: {
            'device-model': {
                required: "The Device Model field is empty",
                minlength: "Enter at least 2 symbols to start search"
            }
        },
        
        invalidHandler: function(form, validator) {
//            var $form = $(form);
//            
//             // 'this' refers to the form
//            var errors = validator.numberOfInvalids();
//            if (errors) {
//            var message = errors == 1
//            ? 'You missed 1 field. It has been highlighted'
//            : 'You missed ' + errors + ' fields. They have been highlighted';
//                $form.find('.fatal-error').html(message);
//                $form.find('.fatal-error').show();
//            } else {
//                $form.find('.fatal-error').hide();
//            }
        },
        submitHandler: function( form ) {
            var $form = $(form);
            $form.PumpicList();
            $form.trigger("reset");
        }
    });
   
   /*$('.form-search').on('submit', function(e) {
       e.preventDefault();
       
       $(this).validate({
            onfocusout: false,
            focusInvalid: false,
        }); 
       
       // $(this).PumpicList();
       return false;
   });
   */
   
   
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
   
   // focus
   if($('.form-discount').length) {
       var elements = $(".form-discount input[type!='submit'], .form-discount textarea, .form-discount select");
        elements.focus(function() {
                $(this).addClass('highlight');
        });
        elements.blur(function() {
                $(this).removeClass('highlight');
        });
   }
   
   if($('.box-form').length) {
       var elements = $(".box-form input[type!='submit'], .box-form textarea, .box-form select");
        elements.focus(function() {
                $(this).addClass('highlight');
        });
        elements.blur(function() {
                $(this).removeClass('highlight');
        });
   }
   
   
   // compatibility_form
   var validator_send_find_phone = $('form[name="send_find_phone"]').validate({
        onfocusout: false,
        focusInvalid: false,
       'device-model': {
            required: true
        },
        email: {
            required: true,
            email: true
        },
        messages: {
            name: "The Device Model field is empty",
            email: {
                required: "The Email field is empty",
                email: "Invalid email format"
            }
        },
       
        errorClass: "invalid",
        validClass: "success",
        invalidHandler: function(event, validator) {
            if($('form[name="send_find_phone"] span.info').length)
                $('form[name="send_find_phone"] span.info').html( " " ).hide();
            
            if($('form[name="send_find_phone"] .fatal-error').length)
                $('form[name="send_find_phone"] .fatal-error').html( " " ).hide();
        },

        submitHandler: function( form ) {
            if($('form[name="send_find_phone"] span.info').length)
                $('form[name="send_find_phone"] span.info').html( " " ).hide();
            
            if($('form[name="send_find_phone"] .fatal-error').length)
                $('form[name="send_find_phone"] .fatal-error').html( " " ).hide();

            var $form = $(form);
            var _params = parseQuery($form.serializeArray());

            var _response = getAjaxForm('/compatibility_send.html', _params);
              if(_response.result) {
                  var _res = _response.result;
                  if(_res.error) {
                      
                      if(typeof _res.error === 'object') {
                          $.each(_res.error, function(name, text) {
                              var _obj = $form.find('input[name="'+name+'"]');
                              if(_obj.length) {
                                 if(_obj.next('label').length)
                                    _obj.next().html( text ).show();
                                  else
                                     $('<label id="'+name+'-error" for="'+name+'" class="invalid">'+text+'</label>').insertAfter(_obj); 
                              }
                          });
                      } else {
                          $('form[name="send_find_phone"] .fatal-error').html( _res.error );
                      }
                      
                      
                      return false;
                  } else if(_res.success) {
                      $('form[name="send_find_phone"] span.info').html( _res.success ).css({'display':'inline-block'});

                  } else {
                      $('form[name="send_find_phone"] .fatal-error').html('Your email was not sent');
                      console.log('System error!');
                      return false;
                  }    

              } else {
                  $('form[name="send_find_phone"] .fatal-error').html('Your email was not sent'); 
                  console.log('Can not get params in ajax!');
                  return false;
              }
                  

              $form.trigger("reset"); 
        }
    });
      
   // clear info in focus   
   $('form[name="send_find_phone"] input, form[name="send_find_phone"] textarea').focus(function() {
        if($('form[name="send_find_phone"] span.info').length)
            $('form[name="send_find_phone"] span.info').html( " " ).hide();
        if($('form[name="send_find_phone"] .fatal-error').length)
            $('form[name="send_find_phone"] .fatal-error').html( " " ).hide();
    });   
      
   // validator faq (form-faq)
   var validator_form_faq = $('form.form-faq').validate({
        onfocusout: false,
        focusInvalid: false,
       'name': {
            required: true
        },
        'question': {
            required: true
        },
        email: {
            required: true,
            email: true
        },
        messages: {
            name: "The Name field is empty",
            question: 'The Question field is empty',
            email: {
                required: "The Email field is empty",
                email: "Invalid email format"
            },
        },
       
        errorClass: "invalid",
        validClass: "success",
        invalidHandler: function(event, validator) {
            if($('form.form-faq span.info').length)
                $('form.form-faq span.info').html( " " ).hide();
            
            if($('form.form-faq .fatal-error').length)
                $('form.form-faq .fatal-error').html( " " ).hide();
        },

        submitHandler: function( form ) {
            if($('form.form-faq span.info').length)
                $('form.form-faq span.info').html( " " ).hide();
            
            if($('form.form-faq .fatal-error').length)
                $('form.form-faq .fatal-error').html( " " ).hide();

            var $form = $(form);
            var _params = parseQuery($form.serializeArray());

            var _response = getAjaxForm('/faq_send.html', _params);
              if(_response.result) {
                  var _res = _response.result;
                  if(_res.error) {
                      if(typeof _res.error === 'object') {
                          $.each(_res.error, function(name, text) {
                              var _obj = $form.find('input[name="'+name+'"]');
                              if(_obj.length) {
                                  if(_obj.next('label').length)
                                    _obj.next().html( text ).show();
                                  else
                                     $('<label id="'+name+'-error" for="'+name+'" class="invalid">'+text+'</label>').insertAfter(_obj); 
                              }
                          });
                      } else {
                          $('form.form-faq .fatal-error').html( _res.error );
                      }
                      
                      
                      return false;
                  } else if(_res.success) {
                      $('form.form-faq span.info').html( _res.success ).css({'display':'inline-block'});

                  } else {
                      $('form.form-faq .fatal-error').html('Your email was not sent');
                      console.log('System error!');
                      return false;
                  }    

              } else {
                  $('form.form-faq .fatal-error').html('Your email was not sent'); 
                  console.log('Can not get params in ajax!');
                  return false;
              }
                  

              $form.trigger("reset"); 
        }
    });
    
   // clear info in focus 
   $('form.form-faq input, form.form-faq textarea').focus(function() {
        if($('form.form-faq span.info').length)
            $('form.form-faq span.info').html( " " ).hide();
        if($('form.form-faq .fatal-error').length)
            $('form.form-faq .fatal-error').html( " " ).hide();
    });
    
   /* validate contact us */
   $( 'form.form-contact-us select' )
        .change(function () {
            var _selected = false;
            $('form.form-contact-us #wos').val('');
            $( "select option:selected" ).each(function() {
                _selected = $( this ).val();
            });
            
            if(_selected && _selected != '0') {
                $('form.form-contact-us #wos').val( _selected ).valid();
            }
        })
            .change(); 
    
   
   var validator_contact_us = $('form.form-contact-us').validate({
        onfocusout: false,
        focusInvalid: false,
        ignore: "not:hidden",
       'name': {
            required: true
        },
        'description': {
            required: true
        },
        wos: {
            required: true
        },
        email: {
            required: true,
            email: true
        },
        messages: {
            name: "The Name field is empty",
            description: 'The Question field is empty',
            wos: 'The field Choose your OS is empty',
            email: {
                required: "The Email field is empty",
                email: "Invalid email format"
            },
        },
       
        errorClass: "invalid",
        validClass: "success",
        invalidHandler: function(event, validator) {
            if($('form.form-contact-us span.info').length)
                $('form.form-contact-us span.info').html( " " ).hide();
            
            if($('form.form-contact-us .fatal-error').length)
                $('form.form-contact-us .fatal-error').html( " " ).hide();
        },

//        errorPlacement: function(error, element) {
//          console.log( element.attr('id') );  
//        },

        submitHandler: function( form ) {
            if($('form.form-contact-us span.info').length)
                $('form.form-contact-us span.info').html( " " ).hide();
            
            if($('form.form-contact-us .fatal-error').length)
                $('form.form-contact-us .fatal-error').html( " " ).hide();

            var $form = $(form);
            var _params = parseQuery($form.serializeArray());

            var _response = getAjaxForm('/contact_us_send.html', _params);
              if(_response.result) {
                  var _res = _response.result;
                  if(_res.error) {
                      
                      if(typeof _res.error === 'object') {
                          $.each(_res.error, function(name, text) {
                              var _obj = $form.find('input[name="'+name+'"]');
                              if(_obj.length) {
                                  if(_obj.next('label').length)
                                    _obj.next().html( text ).show();
                                  else
                                     $('<label id="'+name+'-error" for="'+name+'" class="invalid">'+text+'</label>').insertAfter(_obj); 
                              }
                          });
                      } else {
                          $('form.form-contact-us .fatal-error').html( _res.error );
                      }
                      
                      
                      return false;
                  } else if(_res.success) {
                      $('form.form-contact-us span.info').html( _res.success ).css({'display':'inline-block'});

                  } else {
                      $('form.form-contact-us .fatal-error').html('Your email was not sent');
                      console.log('System error!');
                      return false;
                  }    

              } else {
                  $('form.form-contact-us .fatal-error').html('Your email was not sent'); 
                  console.log('Can not get params in ajax!');
                  return false;
              }
                  

              $form.trigger("reset"); 
        }
    }); 
    
    $('form.form-contact-us input, form.form-contact-us textarea').focus(function() {
        if($('form.form-contact-us span.info').length)
            $('form.form-contact-us span.info').html( " " ).hide();
        if($('form.form-contact-us .fatal-error').length)
            $('form.form-contact-us .fatal-error').html( " " ).hide();
    });
    
      
   // validate form
   //if($(".box-form").length) {
   //    $(".box-form").validate();
  // }
   /* ------- form login ------ */
   if($('form[name="form-login"]').length) {
       $('form[name="form-login"]').validate({ 
             messages: {
                'password': "The Password field is empty.",
                'email': {
                    required: "The Email field is empty.",
                    email: "Invalid email format."
                }
            }
        });
   }
   
   /* ------- form-registration ------ */
   if($('form[name="form-registration"]').length) {
       $('form[name="form-registration"]').validate({ 
             messages: {
                'captcha': "Invalid CAPTCHA.", // The CAPTCHA field is empty.
                'email': {
                    required: "The Email field is empty.",
                    email: "Invalid email format."
                }
            }
        });
   }
   
   /* ------- form-restore ------ */
   if($('form[name="form-restore"]').length) {
       $('form[name="form-restore"]').validate({ 
             messages: {
                'email': {
                    required: "The Email field is empty.",
                    email: "Invalid email format."
                }
            }
        });
   }
   
   /* ----- form discount ----- */
   if($('#form-discount').length) {
       $('#form-discount').validate({ 
             messages: {
                'discount[name]': "The Name field is empty.",
                'discount[email]': {
                    required: "The Password field is empty.",
                    email: "Invalid email format."
                }
            }
        });
   } 
   
   /**
    * CAPACHA 
    */
   if($('.box-captcha').length) {
       $('.update-captcha').on('click', function(event) {
           event.preventDefault();
           $('.box-captcha').find('#img-captcha').attr('src', '/captcha.html?'+Math.random());
           $('form[name="form-registration"]').find('input[name="captcha"]').focus();
           return false;
       });
   }
    
    
   /* Pricing */
  if($('form[name="price_basic"]').length) {
      var _basic = $('form[name="price_basic"]');
      var _input_basic = _basic.find('#product_price_basic');
          _input_basic.val(''); 
 //init
_basic.find('.label_radio').each(function(){
    //console.log('asd');
    var curr  = $(this);
    if($(this).children('input').attr('checked')){
       curr.removeClass('r_off'); 
       curr.addClass('r_on');
        _input_basic.val($(this).val());
       //console.log($(this).children('input'));
   } 
});         
          
           _basic.find('.label_radio').on('click', function() { 
          //var _val = false;
          //if($(this).is('.r_on')) {
            var  _val = $(this).children('input').val();
          //}
          var curr = $(this);

          _basic.find('.label_radio').each(function(){
              $(this).removeClass('r_on'); 
              $(this).addClass('r_off');

          });
          curr.removeClass('r_off'); 
          curr.addClass('r_on');
          
         _input_basic.val(_val); 
           });
         
       // select  
       _basic.find('select').change(function () {
                _input_basic.val('');
                var _selected = false;

                $(this).find( "option:selected" ).each(function() {
                    _selected = $( this ).val();
                });

                if(_selected && _selected != '0') {
                    _input_basic.val( _selected );
                }
            })
                    .change();   
         
      if(_basic.find('.label_radio input[type="radio"]:visible')) {
          // scan all checked
          _basic.find('.label_radio input[type="radio"]:visible').each(function(k, val) {        
              if($(val).attr('checked')) {
                  _input_basic.val( $(val).val() );
              }
          });

           
      } else {
         
          
          _basic.find('select option').each(function(){
              var _val = $( this ).val();
              if($(this).attr('selected')) {
                  _input_basic.val( _val );
              }
          });
          
         
      }
      
        
       
  }
  
  
  if($('form[name="price_premium"]').length) {
      var _premium = $('form[name="price_premium"]');
      var _input_premium = _premium.find('#product_price_premium');
          _input_premium.val('');
 _premium.find('.label_radio').each(function(){
    //console.log('asd');
    var curr  = $(this);
    if($(this).children('input').attr('checked')){
       curr.removeClass('r_off'); 
       curr.addClass('r_on');
        _input_premium.val($(this).val());
       //console.log($(this).children('input'));
   } 
});             
             
      // radio
      _premium.find('.label_radio').on('click', function() {
          _input_premium.val('');
          //var _val = false;
          //if($(this).is('.r_on')) {
            var  _val = $(this).children('input').val();
          //}
          var curr = $(this);

          _premium.find('.label_radio').each(function(){
              $(this).removeClass('r_on'); 
              $(this).addClass('r_off');

          });
          curr.removeClass('r_off'); 
          curr.addClass('r_on');
          
         _input_premium.val(_val);
        }); 
        
        
       // select 
      _premium.find('select').change(function () {
          _input_premium.val('');
            var _selected = false;

            $(this).find( "option:selected" ).each(function() {
                _selected = $( this ).val();
            });

            if(_selected && _selected != '0') {
                _input_premium.val( _selected );
            }
        })
        .change();  
             
      if(_premium.find('.label_radio input[type="radio"]:visible')) {
          // scan all checked
          _premium.find('.label_radio input[type="radio"]:visible').each(function(k, val) {        
              if($(val).attr('checked')) {
                  _input_premium.val( $(val).val() );
              }
          });    
      } else {
          
          _premium.find('select option').each(function(){
              var _val = $( this ).val();
              if($(this).attr('selected')) {
                  _input_premium.val( _val );
              }
          });
         
      }
      
      
       
  } 
  // switch features
  $('.show_basic_features a').toggle(
    function(event) {
        event.preventDefault();
        $('.basic_fe').css( "margin-top", "10px" );
        $('.basic_fe').show();
    }, function(event) {
        event.preventDefault(); 
        $('.basic_fe').css( "margin-top", "90px" ); 
        $('.basic_fe').hide();
    }
);
  $('.show_premium_features a').toggle(
    function(event) {
        event.preventDefault();
        $('.premium_fe').css( "margin-top", "10px" );
        $('.premium_fe').show();
    }, function(event) {
        event.preventDefault();
        $('.premium_fe').css( "margin-top", "90px" );   
        $('.premium_fe').hide();
    }
);   
  /* hashchange_AfterInit */
  hashchange_AfterInit();
  
  /* fix features desine chrome */
  if($('#viber-whatsapp-skype').length) {
       if ( $.browser.webkit ) {
           $('#viber-whatsapp-skype').removeClass('w30p').addClass('w16p');
            // alert( "This is WebKit!" );
        } else
           $('#viber-whatsapp-skype').removeClass('w16p').addClass('w30p'); 
  }
  
  /*Monay*/
//  if($('.box-currancies').length) {
//      // alert('blaaaaa');
//      $('.box-currancies').currancy({},'run');
//  }
    
  
  
//  $.ajax( {
//      dataType: 'json',
//      url: 'http://openexchangerates.org/api/latest.json?app_id=aef6d4fe78d94707b26b14e5aaa2a143',
//      success: function(data) {
//          
//      }
//  } );
  
  
  /*
  $.ajax({ dataType: 'jsonp', 
            url: 'http://api.fixer.io/latest', 
            success: function(data) { 
                fx.rates = data.rates; 
                fx.rates = $.extend(fx.rates, {'EUR': 0.125});
                
                console.log(fx.rates);
                
                demo(); 
            } 
   }); 
   
    var demo = function() { 
        var rate = fx(1).from('USD').to('EUR'); 
        var round = Math.round(rate * 100) / 100; 
        console.log('USD100 equals EUR' + round); 
    } 
    */
    
    
  
  
//    $width = $('#box-content-post img').width();
//    $('#content img').css({
//        'max-width' : $width , 'height' : 'auto'
//    });
  
});