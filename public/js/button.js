//$(function() {
//    
//	$('._forward_pricing').on("click",function(){
//            _ga_generated( $(this) );   
//            // redirect store
//            document.location = domain + '/store.html';	
//	});
//        
//        $('.ga-click').on('click', function(event) {
//            //event.preventDefault();
//            _ga_generated( $(this) );
//            //return true;
//        });
//
//});
//
//function _ga_generated( $(this) ) {
//    var _ga_label_button = false,
//        _ga_type_button = false,
//        _ga_event = false;
//
//    _ga_event = ($(this).attr('ga-event')) ? $(this).attr('ga-event') : false;
//    _ga_type_button = ($(this).attr('ga-type-button')) ? $(this).attr('ga-type-button') : 'buy button';
//    _ga_label_button = ($(this).attr('ga-label-button')) ? $.trim( $(this).attr('ga-label-button').toLowerCase() ).replace(/\s/g,'-') : false;
//
//    if(_ga_event && _ga_type_button && _ga_label_button) {
//        ga('send', 'event', _ga_type_button, _ga_event, _ga_label_button);
//    } 
//}

function google_analitycs_click( category, action, label ) {
    if(action && category && label) {
        ga('send', 'event', category, action, label);
    }
}

$(function() {
    $('.ga-action-click').on('click', function() {
           var _ga_action = ($(this).attr('ga-action')) ? $(this).attr('ga-action') : false,
               _ga_category = ($(this).attr('ga-category')) ? $(this).attr('ga-category') : false,
               _ga_label = ($(this).attr('ga-label')) ? $.trim( $(this).attr('ga-label').toLowerCase() ).replace(/\s/g,'-') : false;
        
        if(_ga_action && _ga_category && _ga_label) {
            ga('send', 'event', _ga_category, _ga_action, _ga_label);
        }
        
    });
    
    $('.ga-action-submit').closest('form').on('submit', function() {
        var _b = $(this).find('.ga-action-submit'); 
        var _ga_action = (_b.attr('ga-action')) ? _b.attr('ga-action') : false,
           _ga_category = (_b.attr('ga-category')) ? _b.attr('ga-category') : false,
           _ga_label = (_b.attr('ga-label')) ? $.trim( _b.attr('ga-label').toLowerCase() ).replace(/\s/g,'-') : false;
        
        if(_ga_action && _ga_category && _ga_label) {
            if(ga('send', 'event', _ga_category, _ga_action, _ga_label)) {
                $(this).submit();
            }
        } else {
            return true;
        }
    });
    
});

