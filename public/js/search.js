(function( $ ){
        // var baseUrl = "http://a.pumpic.dev/index.php";
        $_settings = {
            'hash': false,
            'onPage': 12,
            'items': 12,
            'boxFormSearch': '.form-search',
            'boxResult': '.box-get-search-result',
            'boxPagination': '.box-navigations',
            '_ajax_url': 'http://a.pumpic.com/index.php',
            'server_img': 'http://a.pumpic.com/compatibility/middle/',
            '_ajax_data': {},
            '_method': 'getPhonesByQuery',
            '_query': false,
            'page': 0
        }
    
        /*
      // get hash
        jQuery(window).hashchange(function(){ 
		if(document.location.hash == '') return;
                var hash = location.hash.split('#');
                if(hash.length > 1) {
                    console.log('init hash: '+hash[1]);
                    $_settings.hash = hash[1];
                }
                
        });
        jQuery(window).hashchange();  
        */
    
    
      var $_result = {};  
      var $this = {};
    
    
      // detected method
      var methods = {
        init : function( options ) { 
            $_settings = $.extend( $_settings, options || {});
            var self = this;
            
            methods._die('init load');
           
            var o = {}; // init start params!
            
            if($(this).serializeArray()) {
                $_result = {
                    'query': parseQuery($(this).serializeArray()),
                };
            }
            
            this.each(function() {
                methods._draw.call(self);
            });
            
            return this;
        }, // set init
        
        _die: function(msg) {
            console.log(msg);
        },
        
        _json: function(_data) {
            if(typeof _data != 'object') {
                methods._die('Data not object!');
                return;
            }    
            
            return $.ajax({ 
                type: "GET",
                async: false,
                url: $_settings._ajax_url,
                data: $.extend(_data, $_settings._ajax_data),
                dataType: "json",
                crossDomain: true
            });
        },
        
        // getJson
        _jsonp: function(_data) {
            if(typeof _data != 'object') {
                methods._die('Data not object!');
                return;
            }    
            
            return $.ajax({ 
                type: "GET",
                async: false,
                url: $_settings._ajax_url,
                data: $.extend(_data, $_settings._ajax_data),
                dataType: "jsonp",
                jsonp: "callback",
                crossDomain: true,
                cache: true,
            });
        },
        
        pagination: function( params ) {
            
            // init pagination
            methods._pagination( $( $_settings.boxPagination ), params );
        },
        
       
        // init pagination
        _pagination: function( obj, params ) {
            $_settings = $.extend($_settings, params || {} );
            $(obj).pagination({ // $('.box-navigations')
                items: $_settings.items, // count items
                itemsOnPage: $_settings.onPage,
                cssStyle: false,
                prevText: false,
                nextText: false,
                onPageClick: function(pageNumber, event) {
                    
                    $('.form-search').PumpicList('destroy').PumpicList('pageItems', {
                        '_method': $_settings._method,
                        '_query': ($_settings._query) ? $_settings._query : $_result.query['device-model'],
                        'page': pageNumber - 1
                    });
                },
                onInit: function() {
                    
                }
            });
        },
        
        pageItems: function( params, page  ) { // , event
            // getPhonesByQuery()
            var $_options = $.extend({
                '_method': 'getPhonesByQuery',
                '_query': false,
                'page': (page) ? page : 0,
            }, params || {} );
            
            
            methods._die( $_options );
            
            var jqXHR = methods._jsonp( $_options );
            
            if(typeof jqXHR == 'object') {
                jqXHR
                .done(function(data, textStatus, jqXHR) {
                    if(textStatus == 'success') {
                        if(methods._has(data)) {
                             methods._die(data);
                             
                             $.each(data, function(key, value) {
                                 methods._item.call(this, value, $_settings.boxResult);
                             });
                     
                        } else 
                            methods._die('Empty result!');
                    
                       
                    } else {
                        methods._die('Error success!')
                    }
                })
                .fail  (function(jqXHR, textStatus, errorThrown) { 
                    methods._die('Error: There was a problem processing your request, please refresh the browser and try again');
                    // $('#log').html('Error: There was a problem processing your request, please refresh the browser and try again');
                });;
            }
            
        },
        
        _item: function(params, obj) {
            var html = '';
            if(methods._has(params)) {
                var _img  = params.b_img.split('/'), img_name = '', middle_img = '';
                
                 if(_img.length > 0) {
                    img_name = _img[ (_img.length - 1) ];
                    var _m = img_name.split('.');
                    middle_img = _m[0]+'_medium.'+_m[1];
                 }
                
                html += '<div id="search-result-item" class="col-sm-3 col-md-3 col-xs-6">';
                    html += '<div class="thumbnail">';
                        html += '<a target="_blank" href="/compatibility/'+params.name+'" class="img_thumb">';
                            html += '<img src="'+$_settings.server_img+middle_img+'" height="202" width="90" title="'+params.name+'" alt="'+params.name+'">';
                        html += '</a>';
                        
                        html += '<div class="caption">';
                            html += '<h3><a target="_blank" href="/compatibility/'+params.name+'">'+params.name+'</a></h3>';
                            html += '<span>OS:<strong> '+params.os+'</strong></span>';
                            html += '<span>Versions:<strong> '+params.version+'</strong></span>';
                        html += '</div>';
                        
                    html += '</div>';
                html += '</div>';
            } else
                methods._die('Canot load params!');
            
            if(html != '' && methods._has( $(obj) )) 
                $(obj).append( html );
        },
        
        _has: function(params) {
            if(typeof params == "string") {
                return (params) ? true : false;
            } else if( typeof params == "object") {
                return (Object.keys(params).length) ? true : false;
            } else if( typeof params == "array" ) {
                return (params.length) ? true : false;
            } else
                return false;
        },
        
        _parseUrlQuery: function() {
            var data = {};
            if(location.search) {
                var pair = (location.search.substr(1)).split('&');
                for(var i = 0; i < pair.length; i ++) {
                    var param = pair[i].split('=');
                    data[param[0]] = param[1];
                }
            }
            return data;
        },
        
        _parseQuery: function( str ) {
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
        },
        
        search: function( params, page ) {
            // getPhonesByQuery()
            var $_options = $.extend({
                'search_method': 'getPhonesByQuery',
                '_method': 'getCount',
                '_query': false,
                'page': (page) ? page : 0,
            }, params || {} );
            
            methods.destroy.call(this); // clear box result
            
            var jqXHT = methods._jsonp( $_options );
            if(typeof jqXHT == 'object') {
                jqXHT
                .done(function(data, textStatus, jqXHR) {
                    if(textStatus == 'success') {
                        if(data.count > 0) {
                            // generate pages
                            methods.pageItems.call(this, {
                                '_method': $_options.search_method,
                                '_query': $_options._query
                            }, $_options.page);
                            
                            // init pagination
                            methods.pagination( {
                                'items': data.count,
                                '_method': $_options.search_method,
                                '_query': $_options._query
                            } );
                            
                        } else 
                            methods._die('Empty result!');
                    
                    } else {
                        alert('Error success!')
                    }
                })
                .fail  (function(jqXHR, textStatus, errorThrown) { 
                    $('#log').html('Error: There was a problem processing your request, please refresh the browser and try again');
                });;
            }
            
        },
        
        // logic method
        _draw: function() {
            methods._die('load _draw!');
            
            var o = this.data('_search');
            
            methods.destroy.call(this); // clear box result
            methods._clear.call(this); // clear all params
            
            if(!methods._has($_result.query) 
                    || 
               !$_result.query['device-model'])  {
                methods._die('Not Enter query!');
                return null;
            }
            
            var jqXHT = methods._jsonp( {'getCount':$_result.query['device-model']} );
            if(typeof jqXHT == 'object') {
                jqXHT
                .done(function(data, textStatus, jqXHR) {
                    if(textStatus == 'success') {
                        if(data.count > 0) {
                            methods._die( data.count );
                            // generate pages
                            methods.pageItems.call(this, {
                                '_method': 'getPhonesByQuery',
                                '_query': $_result.query['device-model']
                            }, 0);
                            
                            // init pagination
                            methods.pagination( {
                                'items': data.count,
                            } );
                            
                        } else 
                            methods._die('Empty result!');
                    
                        methods._die(data.count);
                    } else {
                        alert('Error success!')
                    }
                    methods._die(data);
                })
                .fail  (function(jqXHR, textStatus, errorThrown) { 
                    $('#log').html('Error: There was a problem processing your request, please refresh the browser and try again');
                });;
            }
            
        },
        
        _clear: function() {
            // clear form
            if($($_settings.boxFormSearch).length)
                $($_settings.boxFormSearch).trigger('reset');
            
            // clear pagination
            if($($_settings.boxPagination).length)
                $($_settings.boxPagination).html('');
            
            return this;
        },
        
        // __destruct
        destroy: function(){
            
            // clear box result
            if($($_settings.boxResult).length)
                $($_settings.boxResult).html('');
            
            //this.empty();
            return this;
        },
        
      };

      // constructor
      $.fn.PumpicList = function( method ) {

        // логика вызова метода
        if ( methods[method] ) {
          return methods[ method ].apply( this, Array.prototype.slice.call( arguments, 1 ));
        } else if ( typeof method === 'object' || ! method ) {
          return methods.init.apply( this, arguments );
        } else {
          $.error( 'Метод с именем ' +  method + ' не существует для jQuery.PumpicList' );
        }
        
        
      };

})( jQuery ); 


$(document).ready(function(){ 
     
});