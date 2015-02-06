currencyHandler = {
    afterLoad: function(rates){
        $.each($('input.data-price'), function(i, priceTag){
            
            var usdPrice = $(priceTag).data('price-usd');
            
            if(typeof usdPrice !== 'undefined')

                $.each(['gbp', 'eur'], function(i, currency){

                    if(rates[currency.toUpperCase()]){
                        var priceInCurrency = Number(rates[currency.toUpperCase()]*usdPrice).toFixed(2);
                        $(priceTag).attr('data-price-'+currency, priceInCurrency);
                    }

                });
            
        });
        $('input.data-price:checked').change();
    },
    onChange: function(currentCurrency){
        $('input.data-price')
            .attr('data-cur', currentCurrency)
            .filter(':checked')
            .change();
    }
};

(function( $ ){
      
      var $this = {}, $rates = {}, $_html = "";
      
      var $_settings = {
          'api_key': '', // app_id=
          'host': '/currency.html',
          'currBase': 'USD',
          'currCode': { 'usd': '$', 
                        'eur':'€', 
                        'gbp': '£'},
          'filter': {
              'iso': ['USD','EUR','GBP']
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
            var rates = methods._initMoney();
            
            methods.triggerCall($_settings.onOpen, rates);
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
            //console.log( msg );
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
            return _rates;
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
                   var curr_convert = $(this).attr('attr-rates-iso');
                   
                   
                   if(methods.getCach('currISO')) {
                       if(methods.getCach('currISO') != curr_convert) {
                           methods.setCach('currISO', curr_convert);
                       } 
                   } else
                        methods.setCach('currISO', curr_convert);
                   
                   // status
                   $this.find('.store-flags').each(function() {
                       if($(this).hasClass('active')) {
                         $(this).removeClass('active');
                       } 
                   }); 
                   
                   $(this).addClass('active'); 
                    
                   // event 
                    methods.afterEvent();
                    // alert( methods._convert(100, $_settings.currBase, curr_convert || $_settings.currBase) ); // 'USD', 'EUR' 
                   return false;
                });
        },
        
        unbindEvent: function() {
            $this.find('.store-flags').off('click');
        },
        
        // show create html list rates
        show: function() {
            var status = [];
            if($_settings.rates) {
                $_html += '<ul class="clearfix">'; 
                $.each($_settings.rates, function(key, val) {
                    status[ key ] = (val.iso.toUpperCase() == $_settings.currBase) ? 'active' : ''; 
                    $_html += '<li><span class="store-flags flag-'+val.iso+' '+status[ key ]+'" attr-rates-iso="'+val.iso+'" attr-rates-id="'+val.id+'"></span></li>'; // '+val.iso.toUpperCase()+'
                });
                $_html += '</ul>';
                
                $this.html( $_html );
                
                methods.beforeEvent(); // setup default
                methods.bindEvent();
            }
            
            // console.log();
        },
        
        // beforeEvent
        beforeEvent: function() {
            $('.box-currence').each(function() {
                var _symbol = $(this).find('symbol'),
                    _iso = _symbol.attr('attr-iso');
               if(!_iso) _symbol.attr('attr-iso', $_settings.currBase);
               if(!_symbol.text()) _symbol.text( $_settings.currCode[ $_settings.currBase.toLowerCase() ] );
            });
        },
        
        // afterEvent
        afterEvent: function() {
            currencyHandler.onChange(methods.getCach('currISO'));
            
          // body generate price
            //$_settings.currCode[ methods.getCach('currISO').toLowerCase() ]
          $('.list_price .box-currence').each(function() {
              var _symbol = $(this).find('symbol'), 
                  _price = $(this).find('curr'),
                  symbol = _symbol.text(), 
                  price = _price.text(),
                  iso = _symbol.attr('attr-iso');
                  
              if(price) {
                  _price.html( methods._convert( parseFloat(price), 
                                                iso, 
                                                methods.getCach('currISO') || $_settings.currBase
                                            ).toFixed(2)  ); // ).toFixed(2)
                  _symbol.attr('attr-iso', methods.getCach('currISO'));   
                  _symbol.text( $_settings.currCode[ methods.getCach('currISO').toLowerCase() ] )
              }
          });  
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
    
   if($('.list-currencies').length) {
      $('.list-currencies').currancy({
          onOpen: function(rates) {
              currencyHandler.afterLoad(rates);
          }
      },'show');
   } 
});