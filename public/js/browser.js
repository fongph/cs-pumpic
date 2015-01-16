(function($){
    $(function(){

        //var $copy = $('div.SPA_printcontact').clone();
        var $body = $('body');

        //$copy.insertAfter('#printdate');

        if($.browser.msie) {
            $body.addClass('msie')
            var userAgent = userAgent.substring(0,userAgent.indexOf('.'));
            var version = userAgent;
            $body.addClass('msie' + version)
        }
        if($.browser.webkit) {
            $body.addClass('webkit')
        }
        if($.browser.mozilla) {
            $body.addClass('mozilla')
        }

    });
}(jQuery));


/*!
* Detectizr v@VERSION
* http://barisaydinoglu.github.com/Detectizr/
*
* Written by Baris Aydinoglu (http://baris.aydinoglu.info) - Copyright 2012
* Released under the MIT license
*
* Date: @DATE
*/
