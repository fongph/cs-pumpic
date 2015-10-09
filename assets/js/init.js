// fix ie8 - 10
var alertFallback = false;
if (typeof console === "undefined" || typeof console.log === "undefined") {
 console = {};
 if (alertFallback) {
     console.log = function(msg) {
          alert(msg);
     };
 } else {
     console.log = function() {};
 }
}

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

var _htmlPopUp = {
    'boxStatusAuth': '<div id="box-status-auth" class="popUp"><div><label class="title gold">Hello!<i class="close small"></i></label></div>'
        +'<p class="info">You have just logged into Pumpic.com, enjoy your time with us or go straight to your <a class="a-default" href="http://cp.pumpic.com">account</a>.</p>'
        +'</div>',
    'boxStatusRegistration': '<div id="box-status-registration" class="popUp">'
        +'<div><label class="title gold">Hello!<i class="close small"></i></label></div>'
        +'<p class="info">You have just registered in Pumpic.com, enjoy your time with us or go straight to your <a class="a-default" href="http://cp.pumpic.com">account</a>.</p>'
        +'</div>',
    'boxStatusFreeTrialRegistration' : '<div id="box-status-free-trial-registration" class="popUp">'
        +'<div><label class="title gold">Thank you for signing up!<i class="close small"></i></label></div>'
        +'<p class="info">The email with registration details was sent to '+UserLogin+'.<br /> You can go straight to your <a class="a-default" href="http://cp.pumpic.com">Personal Account</a> now.</p>'
        +'</div>',
    'email_success' : '<div id="box-email-success" class="popUp">'
        +'<div><label class="title gold"> Thank you! <i class="close small"></i></label></div>'
        +'<div class="info text-center"> Your discount code will be sent to you soon.'
        +'<form><div><a href="#" class="button-red btn-default block-popUp-close">Close</a></div></form>'
        +'</div></div>',
    'box_email' : '<div id="box-email" class="popUp">'
        +'<div><label class="title gold"> <b>10%</b> off<i class="close small"></i></label></div>'
        +'<div class="info text-center">Want to get <a class="a-default" href="#">10% discount</a> right now?<br />Subscribe to our specail promo!'
        +'<form class="block-popup-form text-center">'
        +'<div><input id="email" class="required" type="email" name="email" value="" placeholder="email" />'
        +'<div id="email-error" class="error"></div></div><div><button class="button-red btn-default">Save 10% today</button></div>'
        +'</form></div></div>',    
};
    
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

    // save cookie screen window
    if(!getCookie('_screen')) {
        console.log('Save Cookie!');
        $.cookie('_screen', $(window).width()+'x'+$(window).height(), { expires: 7, path: '/', domain: '.pumpic.com' });
    }

}

function copy_to_clipboard_init() {
    var client = new ZeroClipboard($(".copy-to-clipboard"));

    client.on( "copy", function (event) {
        var clipboard = event.clipboardData;
        clipboard.setData( "text/plain", $('.copy-this').val() );
    });

    client.on( 'aftercopy', function(event) {
        $('.copy-done').show().fadeOut(1500);
    } );

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
    var $_popUp = $('.box-popUp'),
        $auth = $_popUp.find('#box-status-auth'),
        $registration = $_popUp.find('#box-status-registration'),
        $trial_registration = $_popUp.find('#box-status-free-trial-registration');
    // init bPopUp
    if(isset(_data['popUp']) && _hasUser == 'true') {
        
        if(_data['popUp'] == "auth") { // && !getCookie('popUp')
            // google analitycs
            ga('send', 'event', 'form', 'submit', 'login-success');
           
            if(!$auth.length) { 
                $auth = $_popUp
                        .append( _htmlPopUp.boxStatusAuth )
                        .find('#box-status-auth'); 
            }
            
            // login status ok
            if(isset($auth)) {
                var title = $auth.find('.title') 
                , content = $auth.find('.info'); 
                $auth.bPopup({
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
            // google analitycs
            ga('send', 'event', 'form', 'submit', 'registration-success');
            
            if(!$registration.length) { 
                $registration = $_popUp
                        .append( _htmlPopUp.boxStatusRegistration )
                        .find('#box-status-registration'); 
            }
            
            // login status ok
            if(isset($registration)) {
                var title = $registration.find('.title') 
                , content = $registration.find('.info'); 
                $registration.bPopup({
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
        
        //free-trial-registration
        if(_data['popUp'] == "free-trial-registration") { // && !getCookie('popUp')
            if(!$trial_registration.length) { 
                $trial_registration = $_popUp
                        .append( _htmlPopUp.boxStatusFreeTrialRegistration )
                        .find('#box-status-free-trial-registration'); 
            }
            // login status ok
            if(isset($trial_registration)) {
                var title = $trial_registration.find('.title') 
                , content = $trial_registration.find('.info'); 

                $trial_registration.bPopup({
                    modalClose: true,
                    opacity: 0.6,
                    follow: [false, false], 
                    positionStyle: 'fixed',
                    onOpen: function() {
                        
                        // google analitycs
                        ga('send', 'event', 'trial', 'popup', 'free-trial-registration-success');
                        
                    },
                    closeClass: 'close',
                    onClose: function() {
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
 * JSONP
 * 
 */
function _getAJAX( path, params, options ) {
   if(!options) options = {};
    
    var settings = $.extend( {
        'dataType': 'jsonp',
        'jsonp': "callback",
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

    return $.ajax({ 
        type: settings.type,
        async: settings.async,
        url: path,
        data: { 
           params: params 
        },
        dataType: settings.dataType,
        jsonp: settings.jsonp,
        crossDomain: settings.crossDomain,
        cache: settings.cache,
    });
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
 * 
 * @param {type} $_msg
 * @returns {undefined}
 */
function reloadCaptcha( obj, error ) {
   if(!obj.length) return false;
   var _form = obj.parents('form');
   var _src = '/captcha.html?'+Math.random();
   if($(obj).attr('attr-width') && $(obj).attr('attr-height')) {
       _src = '/captcha.html?width='+$(obj).attr('attr-width')+'&height='+$(obj).attr('attr-height')+'&'+Math.random();
   }
   $('.box-captcha').find('#img-captcha').attr('src', _src);
   
   if(error)
    _form.find('input[name="captcha"]').focus();
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
    
   $rs_width = false;
   $( window ).resize(function() { 
      $rs_width = $(window).width()
   });
   
   if(!$rs_width) {
       $rs_width = $(window).width();
   }
    
    cookie_init();

    copy_to_clipboard_init();
    
    $.data( window, "filters", false); // init clear cache
    
    var filters = {
        'plans': false,
        'mobile': {
            'apple': false,
            'android': false,
            'blackberry': false
        }
    }; // init settings

    // activate tab
    if(window.location.hash.length) {
        var hash = window.location.hash,
            $button = $('a[href="'+hash+'"]');
        if($button.length && $(hash).length) {    
            $button.attr('data-toggled', 'on');
            $button.parent().addClass('active');
            $('.box_category>ul>li').hide();
            $(hash).show();
        }
    }

    // faceboock share
    
//    $.ajaxSetup({ cache: true });
//    $.getScript('//connect.facebook.net/en_US/sdk.js', function(){
//        FB.init({
//            // appId: '{your-app-id}',
//            version: 'v2.4' // or v2.0, v2.1, v2.2, v2.3
//        });     
//        //$('#loginbutton,#feedbutton').removeAttr('disabled');
//        // FB.getLoginStatus(updateStatusCallback);
//    });

    function fb_share() {
        // facebook share dialog
        FB.ui( {
            method: 'feed',
            name: "Your Page Title",
            link: "https://www.webniraj.com/link-to-page/",
            picture: "https://stackexchange.com/users/flair/557969.png",
            caption: "Some description here"
        }, function( response ) {
            // do nothing
        } );

    }



    $('.share_list a').click(function(e){
        e.preventDefault();
        
        // facebook
//        if($(this).hasClass('share-facebook')) {
//           window.open("http://www.facebook.com/sharer/sharer.php?s=100&p[url]="+encodeURIComponent(window.location)+"&p[images][0]=http://pumpic.com/images/socials/social-icon.jpg&p[title]=Mobile Phone Security Measures&p[summary]=How to protect children from online predators, cyberbullies, 18+ content, and identity theft. Pumpic gathered essential information on mobile phone safety practice. Learn more to keep kids safe.", 
//           'Share', 
//           'height=300,width=500'); 
//           // fb_share();
//        } else {
        
//        console.log( $(this).data('location') + encodeURIComponent(window.location) );
            if(isset($(this).data('location')) && $(this).data('location').length) {
                
                var media = '';
                if(isset($(this).data('media')) && $(this).data('media').length)
                    media = '&media='+$(this).data('media');

                window.open($(this).data('location') + encodeURIComponent(window.location) + media, 'Share', 'height=300,width=500');
            }
        
        //}
        return false
    });
    
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

    if($('#item-stickybar').length) {
        // $("#item-stickybar").trigger("sticky_kit:detach");
    // $("#item-stickybar").stick_in_parent();
    
    
        $('.list_category > li').each(function(key, val) {
            $('#item-stickybar.stickybar-'+key).stick_in_parent();
            console.log( 'key = '+key );
        });
    
    
//        $("#item-stickybar").each(function(key, val) {
//            console.log(key);
//            $(this).stick_in_parent();
//        });
    
//        $("#item-stickybar").stick_in_parent({
//        parent: "#items-stickybar",
//        spacer: "#item-stickybar"
//      });
    }
    


    if($('.list_category > li > a[data-toggled="on"]').length) {
        $.each($('.list_category > li > a[data-toggled="on"]'), function() {
            $('.box_category > ul > li').hide();
           if($(this).parent().hasClass('active')) {
               var _hash = $(this).attr('href').split('#');
               console.log(_hash[1]);
               if(_hash.length) {
                   $('.box_category > ul > li').find('#'+_hash[1]).closest('li').show();
               }
           } 
        });
    }

    // choose categoey
    $('.list_category > li > a').on('click', function(event){
        event.preventDefault();
        var _hash = $(this).attr('href').split('#'), 
            _index = $(this).closest('li').index(),
            $holder = $(this).parent().parent();
        
        // console.log('index = '+_index);

        var store_history = $holder.attr('save-state');

        if(typeof store_history !== typeof undefined && store_history !== false) {
            window.location.hash = $(this).attr('href');
        }
         
        // clear all active 
        $.each($('.list_category > li').not(":eq("+ _index +")"), function() {
            if($(this).hasClass('active'))
                $(this).removeClass('active');
            
            if($(this).children('a').attr('data-toggled') == 'on') {
                $(this).children('a').attr('data-toggled', 'off');
            }
        }); // clear active 
        
        // all add attr off
         
        if (!$(this).attr('data-toggled') || $(this).attr('data-toggled') == 'off'){
            $(this).attr('data-toggled','on');
          
            $(".list_category").each(function(key, value){
                if($(this).find("li:eq("+ _index +")").length)
                    $(this).find("li:eq("+ _index +")").addClass('active');
            });
            
            $('.box_category > ul > li').hide();
            
            if(_hash.length > 1) {
                if(_hash[1] == 'all') {
                    $('.box_category > ul > li').show();
                } else {
                    $('.box_category > ul > li').find('#'+_hash[1]).closest('li').show();
                }
                
                if($('.box_category > ul > li').find('#'+_hash[1]).length) {
                    $('html, body').animate( { 
                        scrollTop: Math.ceil( $('.box_category > ul > li').find('#'+_hash[1]).offset().top ) // Math.ceil((target_top * $(window).outerHeight(true)) / $('html, body').height())
                    },'linear');
                }
                
            }
               
        }
        else if ($(this).attr('data-toggled') == 'on'){
               $(this).attr('data-toggled','off');
               
               $(".list_category").each(function(key, value){
                   if($(this).find("li:eq("+ _index +")").hasClass('active'))
                        $(this).find("li:eq("+ _index +")").removeClass('active');
                });
                    
               $('.box_category > ul > li').show();
        }
        
       // $('#item-stickybar').trigger("sticky_kit:recalc");
        
        return false;
    });
    
//    
//     $('.list_category > li > a').on('click', function(event) {
//         event.preventDefault();
//         var _hash = $(this).attr('href').split('#');
//         
//         $.each($('.list_category > li'), function() {
//            if($(this).hasClass('active'))
//                $(this).removeClass('active');
//         }); // clear active
//         
//         if($(this).parent().hasClass('active')) {
//             $(this).parent().removeClass('active');
//             $('.box_category > ul > li').show();
//         } else {
//             $(this).parent().addClass('active');
//             $('.box_category > ul > li').hide();
//             if(_hash.length > 1) {
//                if(_hash[1] == 'all') {
//                    $('.box_category > ul > li').show();
//                } else {
//                    $('.box_category > ul > li').find('#'+_hash[1]).closest('li').show();
//                }
//                 
//                
//             }
//         }     
//         
//         return false;
//     });
    
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
   
   
//   $('.search-category').on('click', function(e) {
//       e.preventDefault();
//       var _os = $(this).attr('attr_os'); 
//       if( _os) {
//           $.fn.PumpicList('search', {
//               'search_method': 'getPhonesByOS',
//               '_method': 'getCountOS',
//               '_query': _os
//           });
//       }
//       
//       return false;
//   });
   
   // compatibility tooltip in device
   if($('.mobile_tooltip').length) {
       $('.mobile_tooltip').easyTooltip();
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
         onkeyup: false,
         onclick: true,
         onsubmit: true,
         focusInvalid: false,
         focusCleanup: false,
         debug: false,
       'device-model': {
            required: true
        },
        'captcha': {
            required: true
        },
        email: {
            required: true,
            email: true
        },
        messages: {
           'captcha': "Invalid CAPTCHA.", // The CAPTCHA field is empty.
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
            
            if($('form[name="send_find_phone"] label.error, form[name="send_find_phone"] label.invalid').length)
                    $('form[name="send_find_phone"] label.error, form[name="send_find_phone"] label.invalid').remove();
        },
        // управление ошибками
        showErrors: function(errorMap, errorList) {
            var _form = $('form[name="send_find_phone"]');
            var msg = null;

            $.each(errorList, function(key, value){
                if(value.element) {
                    var name = _form.find( value.element ).attr('name');
                    // console.log( name );
                    _form.find(value.element).after( '<label id="'+name+'-error" for="'+name+'" class="invalid">'+value.message+'</label>' );
                    _form.find(value.element).next().show();
                }
             });
        },
        submitHandler: function( form ) {
            if($('form[name="send_find_phone"] span.info').length)
                $('form[name="send_find_phone"] span.info').html( " " ).hide();
            
            if($('form[name="send_find_phone"] .fatal-error').length)
                $('form[name="send_find_phone"] .fatal-error').html( " " ).hide();

            if($('form[name="send_find_phone"] label.error, form[name="send_find_phone"] label.invalid').length)
                    $('form[name="send_find_phone"] label.error, form[name="send_find_phone"] label.invalid').remove();    

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
                                 
                                if(_obj.next('label').length) {
                                    _obj.next().html( text ).show();
                                 } else {
                                     $('<label id="'+name+'-error" for="'+name+'" class="invalid">'+text+'</label>').insertAfter(_obj); 
                                 }   
                              }
                          });
                      } else {
                          $('form[name="send_find_phone"] .fatal-error').html( _res.error );
                      }
                      
                      reloadCaptcha( $form.find('.box-captcha > img'), true ); // reload captcha 
                      return false;
                  } else if(_res.success) {
                      $('form[name="send_find_phone"] span.info').html( _res.success ).css({'display':'inline-block'});
                      
                      // scrollTo block info
                      var target_top = $('form[name="send_find_phone"] span.info').offset().top;
                      $('html, body').animate( { 
                            scrollTop: Math.ceil(target_top) // Math.ceil((target_top * $(window).outerHeight(true)) / $('html, body').height())
                       },'linear');
                      
                      console.log( target_top, Math.ceil((target_top * $(window).outerHeight(true)) / $('html, body').height()) );
                      
                      // google analitycs
                      ga('send', 'event', 'form', 'submit', 'compatibility-request-success');

                  } else {
                      $('form[name="send_find_phone"] .fatal-error').html('Your email was not sent');
                      reloadCaptcha( $form.find('.box-captcha > img'), true ); // reload captcha 
                      return false;
                  }    

              } else {
                  $('form[name="send_find_phone"] .fatal-error').html('Your email was not sent'); 
                  reloadCaptcha( $form.find('.box-captcha > img'), true ); // reload captcha 
                  return false;
              }
                  
              reloadCaptcha( $form.find('.box-captcha > img'), false ); // reload captcha        
              $form.trigger("reset");
              
            // return false;  
        }
    });
      
   // clear info in focus   
   $('form[name="send_find_phone"] input, form[name="send_find_phone"] textarea').focus(function() {
        //if($('form[name="send_find_phone"] span.info').length)
        //    $('form[name="send_find_phone"] span.info').html( " " ).hide();
        //if($('form[name="send_find_phone"] .fatal-error').length)
        //    $('form[name="send_find_phone"] .fatal-error').html( " " ).hide();
        //if($('form[name="send_find_phone"] label.error, form[name="send_find_phone"] label.invalid').length)
        //    $('form[name="send_find_phone"] label.error, form[name="send_find_phone"] label.invalid').remove();
    });   
    
    // compatibility_form
   var validator_send_mobile_operators_find_phone = $('form[name="send_mobile_operators_find_phone"]').validate({
         onfocusout: false,
         onkeyup: false,
         onclick: true,
         onsubmit: true,
         focusInvalid: false,
         focusCleanup: false,
         debug: false,
       'carrier': {
            required: true
        },
        'captcha': {
            required: true
        },
        email: {
            required: true,
            email: true
        },
        messages: {
           'captcha': "Invalid CAPTCHA.", // The CAPTCHA field is empty.
            name: "The Device Model field is empty",
            email: {
                required: "The Email field is empty",
                email: "Invalid email format"
            }
        },
       
        errorClass: "invalid",
        validClass: "success",
        invalidHandler: function(event, validator) {
            if($('form[name="send_mobile_operators_find_phone"] span.info').length)
                $('form[name="send_mobile_operators_find_phone"] span.info').html( " " ).hide();
            
            if($('form[name="send_mobile_operators_find_phone"] .fatal-error').length)
                $('form[name="send_mobile_operators_find_phone"] .fatal-error').html( " " ).hide();
            
            if($('form[name="send_mobile_operators_find_phone"] label.error, form[name="send_mobile_operators_find_phone"] label.invalid').length)
                    $('form[name="send_mobile_operators_find_phone"] label.error, form[name="send_mobile_operators_find_phone"] label.invalid').remove();
        },
        // управление ошибками
        showErrors: function(errorMap, errorList) {
            var _form = $('form[name="send_mobile_operators_find_phone"]');
            var msg = null;

            $.each(errorList, function(key, value){
                if(value.element) {
                    var name = _form.find( value.element ).attr('name');
                    // console.log( name );
                    _form.find(value.element).after( '<label id="'+name+'-error" for="'+name+'" class="invalid">'+value.message+'</label>' );
                    _form.find(value.element).next().show();
                }
             });
        },
        submitHandler: function( form ) {
            if($('form[name="send_mobile_operators_find_phone"] span.info').length)
                $('form[name="send_mobile_operators_find_phone"] span.info').html( " " ).hide();
            
            if($('form[name="send_mobile_operators_find_phone"] .fatal-error').length)
                $('form[name="send_mobile_operators_find_phone"] .fatal-error').html( " " ).hide();

            if($('form[name="send_mobile_operators_find_phone"] label.error, form[name="send_mobile_operators_find_phone"] label.invalid').length)
                    $('form[name="send_mobile_operators_find_phone"] label.error, form[name="send_mobile_operators_find_phone"] label.invalid').remove();    

            var $form = $(form);
            var _params = parseQuery($form.serializeArray());

            var _response = getAjaxForm('/gps-wireless-tracking-phone.html', _params);
              if(_response.result) {
                  var _res = _response.result;
                  if(_res.error) {
                      
                      if(typeof _res.error === 'object') {
                          $.each(_res.error, function(name, text) {
                              var _obj = $form.find('input[name="'+name+'"]');
                              
                              if(_obj.length) {
                                 
                                if(_obj.next('label').length) {
                                    _obj.next().html( text ).show();
                                 } else {
                                     $('<label id="'+name+'-error" for="'+name+'" class="invalid">'+text+'</label>').insertAfter(_obj); 
                                 }   
                              }
                          });
                      } else {
                          $('form[name="send_mobile_operators_find_phone"] .fatal-error').html( _res.error );
                      }
                      
                      reloadCaptcha( $form.find('.box-captcha > img'), true ); // reload captcha 
                      return false;
                  } else if(_res.success) {
                      $('form[name="send_mobile_operators_find_phone"] span.info').html( _res.success ).css({'display':'inline-block'});
                      
                      // scrollTo block info
                      var target_top = $('form[name="send_mobile_operators_find_phone"] span.info').offset().top;
                      $('html, body').animate( { 
                            scrollTop: Math.ceil(target_top) // Math.ceil((target_top * $(window).outerHeight(true)) / $('html, body').height())
                       },'linear');
                      
                      // console.log( target_top, Math.ceil((target_top * $(window).outerHeight(true)) / $('html, body').height()) );
                      
                      // google analitycs
                      ga('send', 'event', 'form', 'submit', 'mobile-operators-request-success');

                  } else {
                      $('form[name="send_mobile_operators_find_phone"] .fatal-error').html('Your email was not sent');
                      reloadCaptcha( $form.find('.box-captcha > img'), true ); // reload captcha 
                      return false;
                  }    

              } else {
                  $('form[name="send_mobile_operators_find_phone"] .fatal-error').html('Your email was not sent'); 
                  reloadCaptcha( $form.find('.box-captcha > img'), true ); // reload captcha 
                  return false;
              }
                  
              reloadCaptcha( $form.find('.box-captcha > img'), false ); // reload captcha        
              $form.trigger("reset");
              
            // return false;  
        }
    });
      
   // clear info in focus   
   $('form[name="send_mobile_operators_find_phone"] input, form[name="send_mobile_operators_find_phone"] textarea').focus(function() {
        //if($('form[name="send_mobile_operators_find_phone"] span.info').length)
        //    $('form[name="send_mobile_operators_find_phone"] span.info').html( " " ).hide();
        //if($('form[name="send_mobile_operators_find_phone"] .fatal-error').length)
        //    $('form[name="send_mobile_operators_find_phone"] .fatal-error').html( " " ).hide();
        //if($('form[name="send_mobile_operators_find_phone"] label.error, form[name="send_mobile_operators_find_phone"] label.invalid').length)
        //    $('form[name="send_mobile_operators_find_phone"] label.error, form[name="send_mobile_operators_find_phone"] label.invalid').remove();
    });   
    
 
   // validator faq (form-faq-send)
   var validator_form_faq = $('form.form-faq-send').validate({
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
            if($('form.form-faq-send span.info').length)
                $('form.form-faq-send span.info').html( " " ).hide();
            
            if($('form.form-faq-send .fatal-error').length)
                $('form.form-faq-send .fatal-error').html( " " ).hide();
        },

        submitHandler: function( form ) {
            if($('form.form-faq-send span.info').length)
                $('form.form-faq-send span.info').html( " " ).hide();
            
            if($('form.form-faq-send .fatal-error').length)
                $('form.form-faq-send .fatal-error').html( " " ).hide();

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
                          $('form.form-faq-send .fatal-error').html( _res.error );
                      }
                      
                      
                      return false;
                  } else if(_res.success) {
                      $('form.form-faq-send span.info').html( _res.success ).css({'display':'inline-block'});
                      
                      // google analitycs
                      ga('send', 'event', 'form', 'submit', 'faq-request-success');

                  } else {
                      $('form.form-faq-send .fatal-error').html('Your email was not sent');
                      console.log('System error!');
                      return false;
                  }    

              } else {
                  $('form.form-faq-send .fatal-error').html('Your email was not sent'); 
                  console.log('Can not get params in ajax!');
                  return false;
              }
                  

              $form.trigger("reset"); 
        }
    });
    
   // clear info in focus 
   $('form.form-faq-send input, form.form-faq-send textarea').focus(function() {
//        if($('form.form-faq-send span.info').length)
//            $('form.form-faq-send span.info').html( " " ).hide();
//        if($('form.form-faq-send .fatal-error').length)
//            $('form.form-faq-send .fatal-error').html( " " ).hide();
//        if($('form.form-faq-send label.error, form.form-faq-send label.invalid').length)
//            $('form.form-faq-send label.error, form.form-faq-send label.invalid').remove();
    });
    
   
    
   /* validate contact us */
   $( 'form.form-contact-us select' )
        .change(function () {
            var _selected = false;
            $('form.form-contact-us #wos').val('');
            $(this).find( "option:selected" ).each(function() {
                _selected = $( this ).val();
            });
            
            if(_selected && _selected != '0') {
                $('form.form-contact-us #wos').val( _selected ).valid();
            }
            // $(this).selectpicker('hide');
        })
            .change(); 
    
   
   var validator_contact_us = $('form.form-contact-us').validate({
        onfocusout: false,
        onkeyup: false,
        onclick: true,
        onsubmit: true,
        focusInvalid: false,
        focusCleanup: false,
        debug: false,
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
        'captcha': {
            required: true,
        },
        messages: {
            'captcha': "Invalid CAPTCHA.", // The CAPTCHA field is empty.
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
            
            if($('form.form-contact-us label.error, form.form-contact-us label.invalid').length)
                    $('form.form-contact-us label.error, form.form-contact-us label.invalid').remove();
        },
        // управление ошибками
        showErrors: function(errorMap, errorList) {
            var _form = $('form.form-contact-us');
            var msg = null;

            $.each(errorList, function(key, value){
                if(value.element) {
                    var name = _form.find( value.element ).attr('name');
                    // console.log( name );
                    _form.find(value.element).after( '<label id="'+name+'-error" for="'+name+'" class="invalid">'+value.message+'</label>' );
                    _form.find(value.element).next().show();
                }
             });
        },
        submitHandler: function( form ) {
            if($('form.form-contact-us span.info').length)
                $('form.form-contact-us span.info').html( " " ).hide();
            
            if($('form.form-contact-us .fatal-error').length)
                $('form.form-contact-us .fatal-error').html( " " ).hide();
            
            if($('form.form-contact-us label.error, form.form-contact-us label.invalid').length)
                    $('form.form-contact-us label.error, form.form-contact-us label.invalid').remove();

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
                      
                      reloadCaptcha( $form.find('.box-captcha > img'), true ); // reload captcha 
                      return false;
                  } else if(_res.success) {
                      
                      $('form.form-contact-us span.info')
                              .html( _res.success )
                              .css({'display':'inline-block'});
                      
                      // scrollTo block info
                      var target_top = $('form.form-contact-us span.info').offset().top;
                      $('html, body').animate( { 
                            scrollTop: Math.ceil((target_top * $(window).outerHeight(true)) / $('html, body').height())
                       },'linear');
                               
                      // google analitycs
                      ga('send', 'event', 'form', 'submit', 'contact-request-success');

                  } else {
                      $('form.form-contact-us .fatal-error').html('Your email was not sent');
                      reloadCaptcha( $form.find('.box-captcha > img'), true ); // reload captcha 
                      return false;
                  }    

              } else {
                  $('form.form-contact-us .fatal-error').html('Your email was not sent'); 
                  reloadCaptcha( $form.find('.box-captcha > img'), true ); // reload captcha 
                  return false;
              }
              
              reloadCaptcha( $form.find('.box-captcha > img')); // reload captcha     
              $form.trigger("reset");
        }
    }); 
    
//    $('form.form-contact-us"]').on('submit', function() {
//       alert('ok!');
//        return false;
//    });
    
    $('form.form-contact-us input, form.form-contact-us textarea').focus(function() {
//        if($('form.form-contact-us span.info').length)
//            $('form.form-contact-us span.info').html( " " ).hide();
//        if($('form.form-contact-us .fatal-error').length)
//            $('form.form-contact-us .fatal-error').html( " " ).hide();
//        if($('form.form-contact-us label.error, form.form-contact-us label.invalid').length)
//            $('form.form-contact-us label.error, form.form-contact-us label.invalid').remove();
    });
    
    /* validate faq form */
   $( 'form.form-faq select' )
        .change(function () {
            var _selected = false;
            $('form.form-faq #wos').val('');
            $(this).find( "option:selected" ).each(function() {
                _selected = $( this ).val();
            });
            
            if(_selected && _selected != '0') {
                $('form.form-faq #wos').val( _selected ).valid();
            }
            // $(this).selectpicker('hide');
        })
            .change(); 
    
   
   var validator_contact_us = $('form.form-faq').validate({
        onfocusout: false,
        onkeyup: false,
        onclick: true,
        onsubmit: true,
        focusInvalid: false,
        focusCleanup: false,
        debug: false,
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
        'captcha': {
            required: true,
        },
        messages: {
            'captcha': "Invalid CAPTCHA.", // The CAPTCHA field is empty.
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
            if($('form.form-faq span.info').length)
                $('form.form-faq span.info').html( " " ).hide();
            
            if($('form.form-faq .fatal-error').length)
                $('form.form-faq .fatal-error').html( " " ).hide();
            
            if($('form.form-faq label.error, form.form-faq label.invalid').length)
                    $('form.form-faq label.error, form.form-faq label.invalid').remove();
        },
        // управление ошибками
        showErrors: function(errorMap, errorList) {
            var _form = $('form.form-faq');
            var msg = null;

            $.each(errorList, function(key, value){
                if(value.element) {
                    var name = _form.find( value.element ).attr('name');
                    // console.log( name );
                    _form.find(value.element).after( '<label id="'+name+'-error" for="'+name+'" class="invalid">'+value.message+'</label>' );
                    _form.find(value.element).next().show();
                }
             });
        },
        submitHandler: function( form ) {
            if($('form.form-faq span.info').length)
                $('form.form-faq span.info').html( " " ).hide();
            
            if($('form.form-faq .fatal-error').length)
                $('form.form-faq .fatal-error').html( " " ).hide();
            
            if($('form.form-faq label.error, form.form-faq label.invalid').length)
                    $('form.form-faq label.error, form.form-faq label.invalid').remove();

            var $form = $(form);
            var _params = parseQuery($form.serializeArray());
            
            
            var _response = getAjaxForm('/faq.html', _params);
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
                      
                      reloadCaptcha( $form.find('.box-captcha > img'), true ); // reload captcha 
                      return false;
                  } else if(_res.success) {
                      
                      $('form.form-faq span.info')
                              .html( _res.success )
                              .css({'display':'inline-block'});
                      
                      // scrollTo block info
                      var target_top = $('form.form-faq span.info').offset().top;
                      $('html, body').animate( { 
                            scrollTop: Math.ceil((target_top * $(window).outerHeight(true)) / $('html, body').height())
                       },'linear');
                               
                      // google analitycs
                      ga('send', 'event', 'form', 'submit', 'contact-request-success');

                  } else {
                      $('form.form-faq .fatal-error').html('Your email was not sent');
                      reloadCaptcha( $form.find('.box-captcha > img'), true ); // reload captcha 
                      return false;
                  }    

              } else {
                  $('form.form-faq .fatal-error').html('Your email was not sent'); 
                  reloadCaptcha( $form.find('.box-captcha > img'), true ); // reload captcha 
                  return false;
              }
              
              reloadCaptcha( $form.find('.box-captcha > img')); // reload captcha     
              $form.trigger("reset");
        }
    }); 
    
      
   // validate form
   //if($(".box-form").length) {
   //    $(".box-form").validate();
  // }
   /* ------- form login ------ */
   if($('form[name="form-login"]').length) {
       $('form[name="form-login"]').validate({ 
             onfocusout: false,
             onkeyup: false,
             onclick: true,
             onsubmit: true,
             focusInvalid: false,
             focusCleanup: false,
             messages: {
                'password': "The Password field is empty.",
                'email': {
                    required: "The Email field is empty.",
                    email: "Invalid email format."
                },
                errorClass: "error",
            },
            invalidHandler: function(event, validator) {
                if($('form[name="form-login"] label.error').length)
                    $('form[name="form-login"] label.error').remove();
                
                if($('form[name="form-login"] div.box-error')) {
                    $('form[name="form-login"] div.box-error').addClass('hide');
                }
            },
            // управление ошибками
            showErrors: function(errorMap, errorList) {
                var _form = $('form[name="form-login"]');
                var msg = null;
                
                $.each(errorList, function(key, value){
                    if(value.element) {
                        _form.find(value.element).after( '<label class="error">'+value.message+'</label>' );
                        _form.find(value.element).next().show();
                    }
                 });
            },
        });
   }
   
   /* ------- form-registration ------ */
   if($('form[name="form-registration"]').length) {
       $('form[name="form-registration"]').validate({ 
             onfocusout: false,
             onkeyup: false,
             onclick: true,
             onsubmit: true,
             focusInvalid: false,
             focusCleanup: false, 
             messages: {
                'captcha': "Invalid CAPTCHA.", // The CAPTCHA field is empty.
                'email': {
                    required: "The Email field is empty.",
                    email: "Invalid email format."
                },
                errorClass: "error",
            },
            invalidHandler: function(event, validator) {
                if($('form[name="form-registration"] label.error').length)
                    $('form[name="form-registration"] label.error').remove();
                
                if($('form[name="form-registration"] div.box-error')) {
                    $('form[name="form-registration"] div.box-error').addClass('hide');
                }
            },
            // управление ошибками
            showErrors: function(errorMap, errorList) {
                var _form = $('form[name="form-registration"]');
                var msg = null;
                
                $.each(errorList, function(key, value){
                    if(value.element) {
                        _form.find(value.element).after( '<label class="error">'+value.message+'</label>' );
                        _form.find(value.element).next().show();
                    }
                 });
            },
        });
   }
   
   /* ------- form-free-trial-registration ------ */
   if($('form[name="free_trial_registration"]').length) {
       $('form[name="free_trial_registration"]').validate({
             onfocusout: false,
             onkeyup: false,
             onclick: true,
             onsubmit: true,
             focusInvalid: false,
             focusCleanup: false, 
             messages: {
                'captcha': "Invalid CAPTCHA.", // The CAPTCHA field is empty.
                'name': {
                    required: "The Name field is empty.",
                },
                'email': {
                    required: "The Email field is empty.",
                    email: "Invalid email format."
                },
                errorClass: "error",
            },
            invalidHandler: function(event, validator) {
                if($('form[name="free_trial_registration"] #block-fields label.error').length)
                    $('form[name="free_trial_registration"] #block-fields label.error').remove();
                
                if($('form[name="free_trial_registration"] div.box-error')) {
                    $('form[name="free_trial_registration"] div.box-error').addClass('hide');
                }
            },
            // управление ошибками
            showErrors: function(errorMap, errorList) {
                var fileds = $('form[name="free_trial_registration"] #block-fields');
                var msg = null;
                
                $.each(errorList, function(key, value){
                    // console.log(key, value);
                    if(value.element) {
                        fileds.find(value.element).after( '<label class="error">'+value.message+'</label>' ).show();
                    }
                 });
            },
        });
   }
   
   /* ------- form-restore ------ */
   if($('form[name="form-restore"]').length) {
       $('form[name="form-restore"]').validate({ 
             onfocusout: false,
             onkeyup: false,
             onclick: true,
             onsubmit: true,
             focusInvalid: false,
             focusCleanup: false,
             debug: false,
             messages: {
                'email': {
                    required: "The Email field is empty.",
                    email: "Invalid email format."
                },
                errorClass: "error",
            },
            invalidHandler: function(event, validator) {
                if($('form[name="form-restore"] label.error').length)
                    $('form[name="form-restore"] label.error').remove();
                
                if($('form[name="form-restore"] div.box-error')) {
                    $('form[name="form-restore"] div.box-error').addClass('hide');
                }
            },
            // управление ошибками
            showErrors: function(errorMap, errorList) {
                var _form = $('form[name="form-restore"]');
                var msg = null;
                
                $.each(errorList, function(key, value){
                    if(value.element) {
                        _form.find(value.element).after( '<label class="error">'+value.message+'</label>' );
                        _form.find(value.element).next().show();
                    }
                 });
            },
        });
   }
   
   /* ----- form discount ----- */
   if($('#form-discount').length) {
       $('#form-discount').validate({ 
             onfocusout: false,
             onkeyup: false,
             onclick: true,
             onsubmit: true,
             focusInvalid: false,
             focusCleanup: false,
             messages: {
                'captcha': "Invalid CAPTCHA.", // The CAPTCHA field is empty. 
                'discount[name]': "The Name field is empty.",
                'discount[email]': {
                    required: "The Password field is empty.",
                    email: "Invalid email format."
                },
                errorClass: "error",
            },
            invalidHandler: function(event, validator) {
                if($('#form-discount label.error').length)
                    $('#form-discount label.error').remove();
                
                if($('#form-discount div.box-error')) {
                    $('#form-discount div.box-error').addClass('hide');
                }
            },
            // управление ошибками
            showErrors: function(errorMap, errorList) {
                var _form = $('#form-discount');
                var msg = null;
                
                $.each(errorList, function(key, value){
                    if(value.element) {
                        _form.find(value.element).after( '<label class="error">'+value.message+'</label>' );
                        _form.find(value.element).next().show();
                    }
                 });
            },
        });
   } 
   
   /**
    * CAPACHA 
    */
   if($('.box-captcha').length) {
       $('.update-captcha, .a-update-captcha').on('click', function(event) {
           event.preventDefault();
           reloadCaptcha( $(this), true );
//           var _src = '/captcha.html?'+Math.random();
//           if($(this).attr('attr-width') && $(this).attr('attr-height')) {
//               _src = '/captcha.html?width='+$(this).attr('attr-width')+'&height='+$(this).attr('attr-height')+'&'+Math.random();
//           }
//           
//           $('.box-captcha').find('#img-captcha').attr('src', _src);
//           $('form[name="form-registration"], form[name="free_trial_registration"]').find('input[name="captcha"]').focus();
           return false;
       });
   }
    

   /* Pricing */
  if($('form[name="price_basic"]').length) {
      var _basic = $('form[name="price_basic"]');
      var _basic_b = $('form[name="price_basic_bottom"]');
      var _input_basic = _basic.find('#product_price_basic');
      
      var _input_basic_b = _basic_b.find('#product_price_basic');
      
          _input_basic.val(''); 
          _input_basic_b.val('');

          _basic.find('.label_radio').on('click', function() { 
                  var  _val = $(this).children('input').val();
                  var curr = $(this);

                  _basic.find('.label_radio').each(function(){
                   $(this).removeClass('r_on'); 
                   $(this).addClass('r_off');
                  });
                  curr.removeClass('r_off'); 
                  curr.addClass('r_on');
                  _input_basic.val(_val); 
           });
           
          _basic_b.find('.label_radio').on('click', function() { 
                  var  _val = $(this).children('input').val();
                  var curr = $(this);

                  _basic_b.find('.label_radio').each(function(){
                   $(this).removeClass('r_on'); 
                   $(this).addClass('r_off');
                  });
                  curr.removeClass('r_off'); 
                  curr.addClass('r_on');
                  _input_basic_b.val(_val); 
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
      var _premium_b = $('form[name="price_premium_bottom"]');
      var _input_premium_b = _premium_b.find('#product_price_premium');
      
        _input_premium.val('');
        _input_premium_b.val('');
             
      // radio
      _premium.find('.label_radio').on('click', function() {
          var  _val = $(this).children('input').val();
          var curr = $(this);
          
          _premium.find('.label_radio').each(function(){
              $(this).removeClass('r_on'); 
              $(this).addClass('r_off');
          });
          
          curr.removeClass('r_off'); 
          curr.addClass('r_on');
          
         _input_premium.val(_val);
        }); 
        
        _premium_b.find('.label_radio').on('click', function() {
          var  _val = $(this).children('input').val();
          var curr = $(this);
          _premium_b.find('.label_radio').each(function(){
              $(this).removeClass('r_on'); 
              $(this).addClass('r_off');
          });
          curr.removeClass('r_off'); 
          curr.addClass('r_on');
         _input_premium_b.val(_val);
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
$("input[name='optionsRadios']").each(function(){
    //console.log(this.getAttribute("checked"));
    if(this.getAttribute("checked")){
       // alert($(this).val());
        
       $(this).parent('.label_radio').addClass('r_on');
       $(this).parent('.label_radio').removeClass('r_off');
       $(this).parents('form').children('.product_price').val($(this).val());
    }
});

    /*$("input[name='optionsRadios']").filter(':checked').each(function(){
    
    var curr  = $(this);
    
       

       curr.parent('.label_radio').removeClass('r_off');
       curr.parent('.label_radio').addClass('r_on');
       
       curr.parents('form').children('.product_price').val(curr.val());
   
});   */      
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
  
// ga click 
// faq
$('form[name="form-faq"] button.event-submit').click(function(){
    ga('send', 'event', 'form', 'submit', 'faq-request');
}); 
 
// login
$('form[name="form-login"] .button-sumbit button').click(function(){
    ga('send', 'event', 'form', 'submit', 'login');
}); 

// restore
$('form[name="form-restore"] .button-sumbit button').click(function(){
    ga('send', 'event', 'form', 'submit', 'restore');
});

// registration
$('form[name="form-registration"] .button-sumbit button').click(function(){
    ga('send', 'event', 'form', 'submit', 'registration');
});

// contact-us
$('form[name="send-mail-contact-us"] button.event-submit').click(function(){
    ga('send', 'event', 'form', 'submit', 'contact-request');
});

// compatibility
$('form[name="send_find_phone"] button.event-submit').click(function(){
    ga('send', 'event', 'form', 'submit', 'compatibility-request');
});


  
  // scroll (fly-box)
   if($('.fly-box').length) {
        $('.fly-box').scrollPumpic({ 
            'start': 1000, 
            'stop': 0,
            'animate': {
                'type': 'visible', // fade, visible, blinking
                'timeShow': 50,
                'timeHide': 50
            }
        }); //"coeff":1.15
   }
  
  // fly block
  if($('.fly-box-buttons').length) {
      $(window).on('load resize', function() { 
          var $offcetTop = Math.round( $('.fly-position').offset().top );
          if(typeof $.data(document, '_scrollButtons_'+$(this).width()) == "undefined"
                  || $.data(document, '_scrollButtons_'+$(this).width()) != $offcetTop) {
              $.data(document, '_scrollButtons_'+$(this).width(), $offcetTop);
          }
          
          // console.log( $offcetTop, $.data(document, '_scrollButtons_'+$(this).width()) );
          
          if( $.data(document, '_scrollButtons_'+$(this).width()) ) {
              $('.fly-box-buttons').scrollPumpic({ 
                   '_objFly': '.block-fly',
                   'start': $.data(document, '_scrollButtons_'+$(this).width()),
                   'stop': 0,
                   'right': 300,
                   '_settings': {
                       '_responce': false,
                       '_validate': false
                   },
                   'animate': {
                        'type': 'blinking', // fade, visible, blinking
                        'timeShow': 30,
                        'timeHide': 50
                    }
                }); //"coeff":1.15
          }
          
      });      
   }
   
   // tabs compatibility
   $('#temp-1 .bc-tabs .item-tab a, #temp-1 .bc-tabs .item-tab span, #temp-2 > ul > li > a, #temp-2 > ul > li > span').on('click', function() {
      // clear all active
      var _itab = $(this).parent(),
          _this = $(this),
          _data_cat_id = _itab.attr('data-cat-id');
      $.each($('#temp-1 .bc-tabs .item-tab, #temp-2 > ul > li, #temp-1 #tab-content > div'), function(key, val) {
         if($(val).hasClass('active')) $(val).removeClass('active');
      }); 
      
      if(!_itab.hasClass('active')) {
        $('#temp-1 .bc-tabs section > div[data-cat-id="'+_data_cat_id+'"], #temp-2 > ul > li[data-cat-id="'+_data_cat_id+'"]').addClass('active');
        $('#temp-1 #tab-content > div[data-cat-id="'+_data_cat_id+'"]').addClass('active');
      }  
      
      // clear all items
//            $.each($('#temp-2 > ul > li ul'), function(key, value) {
//                $(value).slideUp();
//            });
      
//      if($('#temp-2 > ul > li ul').is(':visible')) {
//          $('#temp-2 > ul > li ul').slideUp('slow');
//      } 
      
      if(_itab.children('ul').is(':not(visible)')) {
          _itab.children('ul').slideDown('slow', function() {
              
                $.each($('#temp-2 > ul > li').not(':eq('+ $(this).parent().index() +')').children('ul'), function(key, value) {
                $(value).slideUp();
                });

                // scroll to active
                $('html, body').stop().animate({
                    scrollTop: _this.offset().top
                }, 1000);
          });
      }
      
      
     
   });
   
   
   // mobile operators
   if($('.toggle-mobile-operators').length) {
       $('.toggle-mobile-operators').on('click', function(event) {
           event.preventDefault();
           $.each( $('#mobile-operators .item-operators'), function(key, value) {
               if($(value).hasClass('hide')) {
                   $(value).removeClass('hide').addClass('show');
               }
           });
           $(this).parent().hide();
           return false;
       });
   }
   
   
   
   // hovers
   $('.box-video-constructors .block-video-button > .box-hover').hover(
      function() {
          // console.log( $rs_width );
          if($rs_width > 992) // !$rs_width || 
             $(this).find('.hover-video-buttons').show();
      }, function() {
          if($rs_width > 992) // !$rs_width || 
            $(this).find('.hover-video-buttons').hide();  
      }
    );
    
        
    // bootstrap clic popUp
    if($(".youtube").length) {
        $(".youtube").YouTubeModal({
            autoplay:1, 
            autohide: 1,
            width:820, 
            height:520, 
            theme: 'darck'
        });
    }
    
    // sticky
    if($('.sticky').length) {
        
        $(window).on('scroll', function() {
            var windowTop = $(window).scrollTop();
            if(windowTop > 68) {
                $('.sticky').addClass('fixed');
            } else {
                $('.sticky').removeClass('fixed');
            }
        });
        
        
//        var sticky = document.querySelector('.sticky');
//        var origOffsetY = (!sticky.offsetTop) ? 68 : sticky.offsetTop;
//
//        function onScroll(e) {
//            window.scrollY >= origOffsetY ? sticky.classList.add('fixed') :
//                                          sticky.classList.remove('fixed');
//                                  
//            console.log(window.scrollY+' = '+ origOffsetY);                      
//        }
//
//        document.addEventListener('scroll', onScroll);
    }
    /*$(".blocks-sticky").autofix_anything({
      customOffset: false, // You can define custom offset for when you want the container to be fixed. This option takes the number of pixels from the top of the page. The default value is false which the plugin will automatically fix the container when the it is in the viewport
      manual: false, // Toggle this to true if you wish to manually fix containers with the public method. Default value is false
      onlyInContainer: true // Set this to false if you don't want the fixed container to limit itself to the parent's container.
    });
    */
    
    /*
    if($(".phone-sticky").length) {
        
        if($(".phone-sticky").is(':visible')) {
            
            $(window).on('scroll', function() {
                var windowTop = $(window).scrollTop();
                if(windowTop > 68) {
                    $(".phone-sticky").css({'position': 'fixed'});
                } else {
                    $(".phone-sticky").css({'position': 'static'});
                }
            });
            
        }
        
    }
    */
    
   /*
   $('a#openBtnVideo').click(function(e){
        e.preventDefault();
        var src = $(this).attr('data-src');
        var height = $(this).attr('data-height') || 520;
        var width = $(this).attr('data-width') || 820;
        
        var p_w = parseInt( width ) + 15;
        var p_h = parseInt( height ) + 25;
       
        // $("#myModal .modal-dialog").css({'max-width': p_w+'px'}); // 'height': p_h+'px'
        $("#myModal .modal-body").css({'max-width': width+'px', 'height': height+'px'});
        
        $("#myModal iframe").attr({ 'height': height,
                                    'width': width});
        
        $('#myModal').on('shown.bs.modal', function (e) {
            $("#myModal iframe").attr({'src':src});
        });
        
        $('#myModal').on('hidden.bs.modal', function (e) { 
            $("#myModal iframe").attr({'src': '#'});
        });
        
        $('#myModal').modal({show:true});
        return false;
    });
    
    $('#myModal').on('shown.bs.modal', function (e) {
    });
    $('#myModal').on('hidden.bs.modal', function (e) { 
    });
    */
    

//    $('a#openBtnVideo').on('click', function(e) {
//        var src = $(this).attr('data-src');
//        var height = $(this).attr('data-height') || 520;
//        var width = $(this).attr('data-width') || 820;
//        
//        var p_w = parseInt( width ) + 15;
//        var p_h = parseInt( height ) + 25;
//        
//        $("#myModal .modal-dialog").css({'width': p_w+'px', 'height': p_h+'px'});
//        $("#myModal .modal-body").css({'width': width+'px', 'height': height+'px'});
//        $("#myModal iframe").attr({'src':src,
//                               'height': height,
//                               'width': width});
//    });



//    $(window).on('load resize', function() {
//         console.log($(this).width());
//    });    


    // countries
    $("#c-features .row-list > li, .b-how-it-work h3.weight-normal, #block-compatibility-table .table-body > div > p").matchHeight();
    
    if($('.match-height').length)
        $('.match-height').matchHeight();
    
//    if($('#b-recommended-by .main-block > .b-item').length)
//        $('#b-recommended-by .main-block > .b-item').matchHeight();
    
    $.fn.matchHeight._beforeUpdate = function(event, groups) {
        
        // do something before any updates are applied
    }

    $.fn.matchHeight._afterUpdate = function(event, groups) {
        /*
        if($('#b-recommended-by .main-block > .b-item').length)
            $('#b-recommended-by .main-block > .b-item').find('lable.title').css({'line-height': $('#b-recommended-by .main-block > .b-item').height()+'px'});
            */
        // do something after all updates are applied
    }
    
    if($('.box_category .minus, .box_category .plus').length) {
        $('.box_category .minus, .box_category .plus').on('click', function() {
            
            var _class = $(this).attr('class');
            if(_class == 'plus') {
                $(this).removeClass('plus').addClass('minus');
            } else if(_class == 'minus') {
                $(this).removeClass('minus').addClass('plus');
            }
            
            $(this).children('.collapse').collapse('toggle');
        });
    }
    
    $(document).on('click.bs.collapse.data-api', '[data-toggle="collapse"]', function(e) {
       if($(this).parent('.plus').length) {
           $(this).parent('.plus').removeClass('plus').addClass('minus');
       } else if($(this).parent('.minus').length) {
           $(this).parent('.minus').removeClass('minus').addClass('plus');
       }
    });

}); 
