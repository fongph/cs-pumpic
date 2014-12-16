(function( $ ){
      
      var $this = {}, $rates = {};
      
      var $_settings = {
          'api_key': '', // app_id=
          'host': 'http://pumpic.com/currancy.html',
          'currBase': 'USD',
          'rates': {}, // list currance rates
          'convert': {
              'from': false,
              'to': false,
          },
          'ajax': {
              'dataType': 'json',
              'type': 'GET',
              'async': true,
              'crossDomain': true,
              'data': {}
          }, 
      }  
    
      // detected method
      var methods = {
        init : function( options ) { 
            $this = $(this);
            
            // set filters
            if(typeof options !== "undefined") {
                $_settings = $.extend( $_settings, options || {});
            }
            
            // default rates
            if($rates = methods._json()) {
                
                console.log( $rates.rates );
                methods._die( $rates );
                
                //$rates = JSON.parse($rates);
                //$_settings.rates = $.extend( $rates.rates, $_settings.rates );
            }
                
            
            methods._die('init load');
            
            return $(this);
        }, // set init
        
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
        setCach: function(params, key) {
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
            var _url = '';
            _data = (_data) ? _data : {}; 
            if($_settings.host) {
                _url = ($_settings.api_key) ? $_settings.host + '?app_id='+$_settings.api_key : $_settings.host;
            }
            
            var result;
             $.ajax({ 
                type: $_settings.ajax.type,
                async: $_settings.ajax.async,
                url: _url,
                data: $.extend(_data, $_settings.ajax.data),
                dataType: $_settings.ajax.dataType,
                crossDomain: $_settings.ajax.crossDomain
            }).done(function(responce) {
                
                console.log( responce );
                
                if(responce.status == 200) {
                   result = responce.responseJSON; 
                }
            });
            
            return result;
            
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
          
          if(typeof type !== "undefined" && methods[type]) {
              methods.init.apply( this, arguments );
              return methods[type].apply( this, Array.prototype.slice.call( arguments, 1 ));
          } else {
              return methods.init.apply( this, arguments );
          }
        } else {
          $.error( 'Метод с именем ' +  method + ' не существует для jQuery.tooltip' );
        }
        
        
      };

})( jQuery ); 