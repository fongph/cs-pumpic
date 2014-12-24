(function( $ ){
      
      var $this = {}, $rates = {}, $_html = "";
      
      var $_settings = {
          'api_key': '', // app_id=
          'host': 'http://pumpic.com/currancy.html',
          'currBase': 'USD',
          'filter': {
              'iso': ['USD','AER','EUR','RUB']
           },
          'rates': {}, // list currance rates
          'convert': {
              'from': false,
              'to': false,
          },
          'ajax': {
              'dataType': 'json',
              'type': 'POST',
              'crossDomain': true,
              'data': {
              }
          }, 
          'onOpen': false,
      }  
    
      // detected method
      var methods = {
        init : function( options ) { 
            methods._die('Load init! *Curr');
            
            $this = $(this);
            // set filters
            methods.setSettings( options );
            
            // set rates
            methods.setRates();
                
            methods._die('Rates ...');    
            methods._die( $_settings.rates );   
            
            // init money
            methods._initMoney();
            
            methods.triggerCall($_settings.onOpen);
            return $(this);
        }, // set init
        
        setSettings: function(options) {
            if(typeof options !== "undefined") {
                $_settings = $.extend( $_settings, options || {});
            }
        },
        
        setRates: function( $_obj ) {
            if(typeof $_obj !== "undefined" ) {
                $_settings.rates = $_obj;
            } else if($rates = methods._json()) {
                $_settings.rates = $rates; 
            }
        },
        
        triggerCall: function(func, arg) {
                $.isFunction(func) && func.call(this, arg);
        },
        
        _die: function(msg) {
            console.log( msg );
        },
        
        /* ==== init cookie ====== */
        _clearCookie: function( key ) {
            if($.cookie( key )) {
                $.removeCookie( key, { path: '/' });
            }
        },

        setCookie: function(key, value) {
            $.cookie(key, value, { expires: 7, path: '/' });
        },

        getCookie: function( key ) {
            if($.cookie(key)) {
                return $.cookie(key); 
            } else
                return false;
        },
        
        /* ==== init data cahce ====== */
        _clearCach: function(key) {
            if(key) {
                jQuery.data( window, key, false);
            } else {
                jQuery.data( window, '_result', false);
            }    
                
        },
        setCach: function(key, params) {
            key = (!key) ? "_result" : key;
            if(params) {
                return jQuery.data( window, key, params);
            } else {
                return jQuery.data( window, key);
            }
        }, // set cahce
        
        getCach: function(key) {
            if(jQuery.data( window, key))
                return jQuery.data( window, key);
            else
                return false;
        },
        
        /* ajax */
        _json: function(_data) {
            methods._die('Load json curr..');
            var _url = '';
            _data = (_data) ? _data : {
                '_base': $_settings.currBase, // set Base currance
                '_filter': $_settings.filter // set filter in iso
            }; 
            
            var result = {};
            $.ajax({ 
                type: $_settings.ajax.type,
                async: false,
                url: $_settings.host,
                data: $.extend(_data, $_settings.ajax.data),
                dataType: $_settings.ajax.dataType,
                crossDomain: $_settings.ajax.crossDomain
            }).done(function(responce) {
                if(responce) {
                    methods.setCach('_ajax', responce); // .responseJSON 
                }
            });
            
            return result = methods.getCach('_ajax');
            
        },
        
        // money math
        _initMoney: function( data ) {
            var _rates = {};
            if($_settings.rates) {
                $.each($_settings.rates, function(key, val) {
                    if(val.iso)
                        _rates[ val.iso.toUpperCase() ] = parseFloat( val.rates );
                });
            }
            
            methods._die(  _rates   );
            
            // init money
            fx.rates = (_rates) ? _rates : data.rates;
            fx.base = ($_settings.currBase) ? $_settings.currBase : data.base;
        },
        
        _convert: function( pricing, from, to ) {
            if(!pricing) return null;
            
            var _settings = {
                from: (from) ? from.toUpperCase() : false,
                to: (to) ? to.toUpperCase() : false,
            };
            
            return fx.convert(pricing, _settings);
        },
        
        bindEvent: function() {
            // click 
            if($this.find('.store-flags').length)
                $this.find('.store-flags').on('click', function(event) {
                   event.preventDefault();
                    alert( methods._convert(100, "usd", "rub") ); // 'USD', 'EUR' 
                   return false;
                });
        },
        
        unbindEvent: function() {
            $this.find('.store-flags').off('click');
        },
        
        // show create html list rates
        show: function() {
            
            if($_settings.rates) {
                $_html += '<ul>'; 
                $.each($_settings.rates, function(key, val) {
                    $_html += '<li><span class="store-flags flag-'+val.iso+'" attr-rates-iso="'+val.iso+'" attr-rates-id="'+val.id+'">'+val.iso+'</span></li>';
                });
                $_html += '</ul>';
                
                $this.html( $_html );
                methods.bindEvent();
            }
        },
        
        run : function( params ) {
            methods._die( params );
            methods._die( 'Rates init' );
            methods._die( $_settings.rates );
        },
      };

      // constructor
      $.fn.currancy = function( method, type ) {
         
        // логика вызова метода
        if ( methods[method] ) {
            return methods[ method ].apply( this, Array.prototype.slice.call( arguments, 1 ));
        } else if ( typeof method === 'object' || ! method ) {
          methods.init.apply( this, arguments ); 
          if(typeof type !== "undefined" && methods[type]) {
              return methods[type].apply( this, Array.prototype.slice.call( arguments, 1 ));
          } 
//          else {
//              return methods.init.apply( this, arguments );
//          }
        } else {
          $.error( 'Метод с именем ' +  method + ' не существует для jQuery.tooltip' );
        }
        
        
      };

})( jQuery ); 

$(document).ready(function(){ 
    
   if($('.box-currancies').length) {
      $('.box-currancies').currancy({
          onOpen: function() {
              
          },
      },'show');
   } 
});