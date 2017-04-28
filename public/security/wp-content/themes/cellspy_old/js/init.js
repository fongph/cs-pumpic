/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function(){ 
    $('input[type="radio"], input[type="checkbox"]').iCheck({
        checkboxClass: 'icheckbox_flat',
        radioClass: 'iradio_flat'
    });
    
    $('ul.list-toggle li a').click(function(event) {
        event.preventDefault();
        if($(this).parent().find('> ul').length) {
            $(this).parent().find('> ul').toggle();
            if($(this).hasClass('active')) {
                $(this).removeClass('bold active');
            } else
                $(this).addClass('bold active');
        }
        return false;
    });
});
