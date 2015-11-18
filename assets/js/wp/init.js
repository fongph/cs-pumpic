$(document).ready(function(){ 
    var _email = new String($(".box-form-subscribe > form input.email").attr("name"));
    $('.box-form-subscribe > form').validate({
        onfocusout: false,
        onkeyup: false,
        onclick: true,
        onsubmit: true,
        focusInvalid: false,
        focusCleanup: false,        
        _email: {
            required: true,
            email: true
        },
        messages: {
            _email: {
                required: 'The Email field is empty',
                email: 'We’ll never share your email adress and you can opt out at any time, we promise.'
            }
        },

        errorClass: 'block-error',
        validClass: 'success',
        invalidHandler: function(event, validator) {
            if($('.box-form-subscribe > form .block-error').length)
                $('.box-form-subscribe > form .block-error').html( ' ' ).hide();
        },
        // управление ошибками
        showErrors: function(errorMap, errorList) {
            var msg = '';
            $.each(errorList, function(){
                if(this.message) 
                    msg += this.message + '<br />'; 
             });

            if(msg !== '') 
                $('.box-form-subscribe > form .block-error').html(msg).show();
        },
    });
});    
