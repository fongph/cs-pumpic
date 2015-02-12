$(document).ready(function(){ 

    // create cookie
    //if(typeof $.cookie('popUp_email') == "undefined") {
        $.cookie('popUp_email', 0, {  
            expires: 1 // установить на сутки  
        });
    //}
    
    
    $('html').mouseleave(function(){
        // console.log( 'Out windows! ', $.cookie('popUp_email'), typeof($.cookie('popUp_email')) );
        if(typeof $.cookie('popUp_email') !== "undefined" 
                && !parseInt( $.cookie('popUp_email') )) {
            
            $('.box-popUp > #box-email').bPopup({
                    modalClose: true,
                    appending: false,
                    opacity: 0.6,
                    follow: [false, false], 
                    positionStyle: 'fixed', //'fixed' or 'absolute'
                    onOpen: function() {
                        popUpValidate();
                    },
                    closeClass: 'close',
                    onClose: function() {
                    },

            });
            
            $.cookie('popUp_email', 1); // popUp inout put one.
        }
        
    });
    
    // form popUp
    $('.block-popUp-close').on('click', function() {
        var _popUp = $(this).parents('.popUp'), $this = $(this);
        _popUp.bPopup().close();
    });

});

function popUpValidate() {
    
    $('form.block-popup-form').validate({
        onfocusout: false,
        onkeyup: false,
        onclick: true,
        onsubmit: true,
        focusInvalid: false,
        focusCleanup: false,
        email: {
            required: true,
            email: true
        },
        messages: {
            email: {
                required: "The Email field is empty",
                email: "Please enter correct email"
            }
        },
       
        errorClass: "error",
        validClass: "success",
        invalidHandler: function(event, validator) {
            if($('form.block-popup-form div.error').length)
                $('form.block-popup-form div.error').html( " " ).hide();
        },
        // управление ошибками
        showErrors: function(errorMap, errorList) {
            var msg = null;
            $.each(errorList, function(){
                 msg = this.message + '<br />'; });
             
            if(msg !== null) 
                $("form.block-popup-form div.error").html(msg).show();
        },

        submitHandler: function( form ) {
            var $form = $(form), _params = parseQuery($form.serializeArray());
            
            if($('form.block-popup-form div.error').length)
                $('form.block-popup-form div.error').html( " " ).hide();
            
            // disabled button
            $form.find('button').prop( "disabled", true );
            
            var _res = getAjaxForm('/popup_email_send.html', _params);
            if(typeof _res === 'object') {
                if(_res.error) { 
                    
                    if(typeof _res.error === 'object') {
                        $.each(_res.error, function(name, text) {
                            var _obj = $form.find('input[name="'+name+'"]');
                            if(_obj.length) {
                                if(_obj.next('label').length)
                                    _obj.next().html( text ).show();
                                else
                                    $('form.block-popup-form div.error').html( text ).show();
                                    //$('<label id="'+name+'-error" for="'+name+'" class="error">'+text+'</label>').insertAfter(_obj); 
                            }
                          });
                    } else {
                        $('form.block-popup-form div.error').html( _res.error ).show();
                    }
                    
                    // disabled button
                    $form.find('button').prop( "disabled", false );
                    return false;
                } else if(_res.success) {
                    // google analitycs
                    // ga('send', 'event', 'form', 'submit', 'compatibility-request-success');

                    // close popUp
                    $('.box-popUp > #box-email').bPopup({
                        transition: 'fadeOut'
                    }).close();

                    $('.box-popUp > #box-email-success').bPopup({
                            modalClose: true,
                            appending: false,
                            opacity: 0.6,
                            follow: [false, false], 
                            positionStyle: 'fixed', //'fixed' or 'absolute'
                            onOpen: function() {
                            },
                            closeClass: 'close',
                            onClose: function() {
                            },
                    });
                } else {
                    $('form.block-popup-form div.error').html('Your email was not sent').show();
                    console.log('System error!');
                    
                    // disabled button
                    $form.find('button').prop( "disabled", false );
                     return false;
                }
            } else {
                $('form.block-popup-form div.error').html('Your email was not sent').show();
                
                // disabled button
                $form.find('button').prop( "disabled", false );
                return false;
            }
            
            $form.trigger("reset"); 
            
        }
    });
    
}