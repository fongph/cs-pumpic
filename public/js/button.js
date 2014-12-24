$(function() {
    
	$('._forward_pricing').on("click",function(){
            
            var _ga_label_button = false,
                _ga_type_button = false,
                _ga_event = false;
            
            _ga_event = ($(this).attr('ga-event')) ? $(this).attr('ga-event') : false;
            _ga_type_button = ($(this).attr('ga-type-button')) ? $(this).attr('ga-type-button') : 'buy button';
            _ga_label_button = ($(this).attr('ga-label-button')) ? $.trim( $(this).attr('ga-label-button').toLowerCase() ).replace(/\s/g,'-') : false;
            
            if(_ga_event && _ga_type_button && _ga_label_button) {
                ga('send', 'event', _ga_type_button, _ga_event, _ga_label_button);
            }    
            // redirect store
            document.location = domain + '/store.html';	
	});

});
