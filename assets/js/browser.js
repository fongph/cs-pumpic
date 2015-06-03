function detectIE() {
    var ua = window.navigator.userAgent;

    var msie = ua.indexOf('MSIE ');
    if (msie > 0) {
        // IE 10 or older => return version number
        return parseInt(ua.substring(msie + 5, ua.indexOf('.', msie)), 10);
    }

    var trident = ua.indexOf('Trident/');
    if (trident > 0) {
        // IE 11 => return version number
        var rv = ua.indexOf('rv:');
        return parseInt(ua.substring(rv + 3, ua.indexOf('.', rv)), 10);
    }

    var edge = ua.indexOf('Edge/');
    if (edge > 0) {
       // IE 12 => return version number
       return parseInt(ua.substring(edge + 5, ua.indexOf('.', edge)), 10);
    }

    // other browser
    return false;
}

(function($){
    $(function(){

        //var $copy = $('div.SPA_printcontact').clone();
        var $body = $('body');

        //$copy.insertAfter('#printdate');

        if($.browser.msie || detectIE()) {
            $body.addClass('msie ie'+detectIE());
            //var userAgent = userAgent.substring(0,userAgent.indexOf('.'));
            //var version = userAgent;
            //$body.addClass('msie ie' + version);
            
            //alert('IE');
        } else if($.browser.webkit) {
            $body.addClass('webkit');
        } else if($.browser.mozilla) {
            $body.addClass('mozilla');
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
