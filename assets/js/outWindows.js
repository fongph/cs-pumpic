$(document).ready(function(){ 

    // create cookie
    if(typeof $.cookie('popUp_email') == "undefined") {
        $.cookie('popUp_email', 0, {  
            expires: 1 // установить на сутки  
        });
    }
    
    /*
    $('html').mouseleave(function(){
        // console.log( 'Out windows! ', $.cookie('popUp_email'), typeof($.cookie('popUp_email')) );
        if(typeof $.cookie('popUp_email') !== "undefined" 
                && !parseInt( $.cookie('popUp_email') )) {
            
            var $_popUp = $('.box-popUp'),
                $box_email = $_popUp.find('#box-email');

            if(!$box_email.length) { 
                $box_email = $_popUp
                        .append( _htmlPopUp.box_email )
                        .find('#box-email'); 
            } 
            
            $box_email.bPopup({
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
    */
    
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

        submitHandler: function( form ) { // submitHandler
            var $form = $(form), _params = parseQuery($form.serializeArray());
            
            if($('form.block-popup-form div.error').length)
                $('form.block-popup-form div.error').html( " " ).hide();
            
            // disabled button
            $form.find('button').prop( "disabled", true );
            
            
            var jqXHR = _getAJAX( 
                'http://pumpic.com/popup_email_send.html', 
                _params, {
                    'dataType': 'jsonp',
                    'crossDomain': true,
                } 
            );
    
            if(typeof jqXHR == 'object') {
                jqXHR
                .done(function(data, textStatus, jqXHR) {
                    if(textStatus == 'success') {
                        console.log( data );
                
                        if(data.error) { 
                    
                            if(typeof data.error === 'object') {
                                $.each(data.error, function(name, text) {
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
                                $('form.block-popup-form div.error').html( data.error ).show();
                            }

                            // disabled button
                            $form.find('button').prop( "disabled", false );
                            return false;
                        } else if(data.success) {
                            // google analitycs
                            // ga('send', 'event', 'form', 'submit', 'compatibility-request-success');
                            var $_popUp = $('.box-popUp'),
                                $email_success = $_popUp.find('#box-email-success');
                                
                            if(!$email_success.length) { 
                                $email_success = $_popUp
                                        .append( _htmlPopUp.email_success )
                                        .find('#box-email-success'); 
                            }
                            
                            // close popUp
                            if($('.box-popUp > .popUp').is(':visible')) {
                                $('.box-popUp > .popUp').bPopup({
                                    transition: 'fadeOut'
                                }).close();
                            }

                            $email_success.bPopup({
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
                        }
                        
                    } else {
                        $('form.block-popup-form div.error').html('Your email was not sent').show();
                        console.log('System error '+ textStatus +'!');
                        // disabled button
                        $form.find('button').prop( "disabled", false );
                         return false;
                        }
                })
                .fail  (function(jqXHR, textStatus, errorThrown) { 
                    $('form.block-popup-form div.error').html('Your email was not sent').show();
                     console.log('System error (JSOP:REQUEST)!');
                    // disabled button
                    $form.find('button').prop( "disabled", false );
                    return false;
                });
            } else {
                $('form.block-popup-form div.error').html('Your email was not sent').show();
                 console.log('System error (CREATE:OBJECT)!');
                // disabled button
                $form.find('button').prop( "disabled", false );
                return false;
            }
            
            /* json
            var _res = getAjaxForm('http://pumpic.com/popup_email_send.html', _params, {
                'dataType': 'json',
                'crossDomain': true,
            });
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
                    if($('.box-popUp > .popUp').is(':visible')) {
                        $('.box-popUp > #box-email').bPopup({
                            transition: 'fadeOut'
                        }).close();
                    }        

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
            */
            $form.trigger("reset"); 
        }
    });
    
}