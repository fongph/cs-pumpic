// detected image onload
;(function ($) {
    $.fn.bindImageLoad = function (callback) {
        function isImageLoaded(img) {
            // Во время события load IE и другие браузеры правильно
            // определяют состояние картинки через атрибут complete.
            // Исключение составляют Gecko-based браузеры.
            if (!img.complete) {
                return false;
            }
            // Тем не менее, у них есть два очень полезных свойства: naturalWidth и naturalHeight.
            // Они дают истинный размер изображения. Если какртинка еще не загрузилась,
            // то они должны быть равны нулю.
            if (typeof img.naturalWidth !== "undefined" && img.naturalWidth === 0) {
                return false;
            }
            // Картинка загружена.
            return true;
        }

        return this.each(function () {
            var ele = $(this);
            if (ele.is("img") && $.isFunction(callback)) {
                ele.one("load", callback);
                if (isImageLoaded(this)) {
                    ele.trigger("load");
                }
            }
        });
    };
})(jQuery);

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
      
      
      //$('#box-content-post img').each(function() {
      $('#box-content-post img').bindImageLoad(function() {    
          
          var width = $(this).attr('width'),
              parent = $(this).parent('.wp-caption'), 
              _caption_text = parent.find('.wp-caption-text'),
                _src = $(this).attr('src'),
                height = $(this).attr('height'),
                outer_width = $(this).outerWidth(true);
          
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
                  'clear': 'both',
                  'width': 'auto',
              });
          
          if(_caption_text.length) {
              if(outer_width > 0) {
                _caption_text.css({
                  'width': outer_width+'px',
                });
              } else {
                 _caption_text.css({
                  'width': outer_width+'px',
                }); 
              }
          }
          
          
          
      });
      
      
  }
});