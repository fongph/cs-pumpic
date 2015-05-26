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

$(document).ready(function(){ 
    /* capcha resize */
  if($('form .box-captcha > img').length) { 
      $('form .box-captcha > img').bindImageLoad(function() { 
            var _bcaptcha = $(this).parents('.box-captcha'), _bcw = _bcaptcha.width(),
            _width = $(this).width(), width = $(this).outerWidth(true),
            _update = _bcaptcha.find('.update-captcha');
            $(this).css({'width': (_bcw - 54)+'px'});
            _update.attr('attr-width', _bcw - 54);
      });
  }  
    
    /* images mobile */
  if($('#box-content-post img, #block-content img').length) {
      
      
      //$('#box-content-post img').each(function() {
      $('#box-content-post img, #block-content img').bindImageLoad(function() {    
          
          var width = $(this).attr('width'),
              parent = $(this).parents('.wp-caption'), 
              _caption_text = parent.find('.wp-caption-text'),
                _src = $(this).attr('src'),
                height = $(this).attr('height'),
                outer_width = $(this).outerWidth(true),
                parent_outer_width = parent.outerWidth(true);
          
          $(this).attr('attr-width', width).removeAttr('width');
          $(this).attr('attr-height', width).removeAttr('height');
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

// .wp-caption
$( window ).resize(function() {
    var $_wW = $(window).width();
    
    // form.send_find_phone .box-captcha img
    if($('form .box-captcha > img').length) {
        $('form .box-captcha > img').each(function() {
            var _bcaptcha = $(this).parents('.box-captcha'), _bcw = _bcaptcha.width(),
            _width = $(this).width(), width = $(this).outerWidth(true),
            _update = _bcaptcha.find('.update-captcha');
            $(this).css({'width': (_bcw - 54)+'px'});
            _update.attr('attr-width', _bcw - 54);
            
        });
    }
    
    
    // box-content-post
    if($('#box-content-post img, #block-content img').length) {
      $('#box-content-post img, #block-content img').each(function() {
          var _caption = $(this).parents('.wp-caption'), 
                width = $(this).outerWidth(true),
                _attachmentW = $(this).parents('#attachment').outerWidth(true),
                _width = $(this).width(),
                _attrW = $(this).attr('attr-width');

          if(_caption.find('.wp-caption-text').length)
            _caption.find('.wp-caption-text').css({
                'width': width+'px',
            });
            
      });
    }  
});