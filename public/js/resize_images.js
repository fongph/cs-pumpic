$(document).ready(function(){ 
    /* images mobile */
  if($('#box-content-post img').length) {
      $('#box-content-post img').each(function() {
          var width = $(this).attr('width'),
              parent = $(this).parent('.wp-caption'), 
                _src = $(this).attr('src'),
                height = $(this).attr('height');
          
          $(this).removeAttr('width');
          $(this).removeAttr('height');
          //$(this).attr('src', '');
          
          console.log(width, height);
          
          if(parent.length)
              parent.css({
                  'width': 'auto',
              });
          
          
          $(this).css({
              //'background': 'url( "'+_src+'" ) no-repeat',
              'background-size': 'contain',
              //'max-width': width+'px', 
              'height' : 'auto',
              'width': 'auto',
              'max-height': height+'px',
          });
      });
  }
});