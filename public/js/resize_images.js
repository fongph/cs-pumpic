// .wp-caption
$( window ).resize(function() {
    
    if($('#box-content-post img').length) {
      $('#box-content-post img').each(function() {
          
          var _caption = $(this).parent('.wp-caption'), width = $(this).outerWidth(true);
          if(_caption.find('.wp-caption-text').length)
              _caption.find('.wp-caption-text').css({
                  'width': width+'px',
              });
              
      });
    }  
});

$(document).ready(function(){ 
    /* images mobile */
  if($('#box-content-post img').length) {
      $('#box-content-post img').each(function() {
          var width = $(this).attr('width'),
              parent = $(this).parent('.wp-caption'), 
              _caption_text = parent.find('.wp-caption-text'),
                _src = $(this).attr('src'),
                height = $(this).attr('height');
          
          $(this).removeAttr('width');
          $(this).removeAttr('height');
          //$(this).attr('src', '');
          
          console.log(width, height);
          
          $(this).css({
              //'background': 'url( "'+_src+'" ) no-repeat',
              'background-size': 'contain',
              //'max-width': width+'px', 
              'height' : 'auto',
              'width': 'auto',
              'max-height': height+'px',
          });
          
          if(parent.length)
              parent.css({
                  'width': 'auto',
              });
          
          if(_caption_text.length) {
              var outer_width = $(this).outerWidth(true);
              _caption_text.css({
                  'width': outer_width+'px',
              });
          }
          
          
          
      });
  }
});