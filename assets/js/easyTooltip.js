/*
 * 	Easy Tooltip 1.0 - jQuery plugin
 *	written by Alen Grakalic	
 *	http://cssglobe.com/post/4380/easy-tooltip--jquery-plugin
 *
 *	Copyright (c) 2009 Alen Grakalic (http://cssglobe.com)
 *	Dual licensed under the MIT (MIT-LICENSE.txt)
 *	and GPL (GPL-LICENSE.txt) licenses.
 *
 *	Built for jQuery library
 *	http://jquery.com
 *
 */
 
(function($) {

	$.fn.easyTooltip = function(options){
	  
		// default configuration properties
		var defaults = {	
			xOffset: 10,
			yOffset: 15,
			tooltipId: "easyTooltip",
			clickRemove: false,
			content: "",
			useElement: ""
		}; 
			
		var options = $.extend(defaults, options);  
		var content;
		var deviceWidth = $(window).width();
		this.each(function() {  				
			var title = $(this).attr("title");				
			// $(this).hover(function(e){
			// 	content = (options.content != "") ? options.content : title;
			// 	content = (options.useElement != "") ? $("#" + options.useElement).html() : content;
			// 	$(this).attr("title","");
			// 	var condition = deviceWidth<(e.pageX + options.xOffset+200);
			// 	if (content != "" && content != undefined){
			// 		$("body").append("<div id='"+ options.tooltipId +"'>"+ content +"</div>");
			// 		if(condition) {
			// 			$("#" + options.tooltipId)
			// 					.css("position","absolute")
			// 					.css("top",((deviceWidth<410) ? e.pageY + options.yOffset : e.pageY - options.yOffset) + "px")
			// 					.css("left",((deviceWidth<410 ? ((deviceWidth/2)-100) : e.pageX - options.xOffset - 200)) + "px")
			// 					.css("display","none")
			// 					.fadeIn("fast")
			// 		} else {
			// 		$("#" + options.tooltipId)
			// 			.css("position","absolute")
			// 			.css("top",((deviceWidth<410) ? e.pageY + options.yOffset : e.pageY - options.yOffset) + "px")
			// 			.css("left",((deviceWidth<410) ? ((deviceWidth/2)-100) : e.pageX + options.xOffset) + "px")
			// 			.css("display","none")
			// 			.fadeIn("fast")
			// 		}
			// 	}
			// },
			// function(){
			// 	$("#" + options.tooltipId).remove();
			// 	$(this).attr("title",title);
			// });
			$(this).on('mouseenter touchstart', function(e){
				content = (options.content != "") ? options.content : title;
				content = (options.useElement != "") ? $("#" + options.useElement).html() : content;
				$(this).attr("title","");
				var condition = deviceWidth<(e.pageX + options.xOffset+200);
				if (content != "" && content != undefined){
					$("body").append("<div id='"+ options.tooltipId +"'>"+ content +"</div>");
					if(condition) {
						$("#" + options.tooltipId)
								.css("position","absolute")
								.css("top",((deviceWidth<410) ? e.pageY + options.yOffset : e.pageY - options.yOffset) + "px")
								.css("left",((deviceWidth<410 ? ((deviceWidth/2)-100) : e.pageX - options.xOffset - 200)) + "px")
								.css("display","none")
								.fadeIn("fast")
					} else {
					$("#" + options.tooltipId)
						.css("position","absolute")
						.css("top",((deviceWidth<410) ? e.pageY + options.yOffset : e.pageY - options.yOffset) + "px")
						.css("left",((deviceWidth<410) ? ((deviceWidth/2)-100) : e.pageX + options.xOffset) + "px")
						.css("display","none")
						.fadeIn("fast")
					}
				}
			});
			$(this).on('mouseleave touchend',function(){
				$("#" + options.tooltipId).remove();
				$(this).attr("title",title);
			});
			$(this).mousemove(function(e){
				var condition = deviceWidth<(e.pageX + options.xOffset+200);
				if(condition) {
					$("#" + options.tooltipId)
							.css("top", ((deviceWidth<410) ? e.pageY + options.yOffset : e.pageY - options.yOffset) + "px")
							.css("left",((deviceWidth<410 ? ((deviceWidth/2)-100) : e.pageX - options.xOffset - 200)) + "px")
				} else {
				$("#" + options.tooltipId)
					.css("top",((deviceWidth<410) ? e.pageY + options.yOffset : e.pageY - options.yOffset) + "px")
					.css("left",((deviceWidth<410) ? ((deviceWidth/2)-100) : e.pageX + options.xOffset) + "px")
				}
			});
			if(options.clickRemove){
				$(this).mousedown(function(e){
					$("#" + options.tooltipId).remove();
					$(this).attr("title",title);
				});				
			}
		});
	  
	};

})(jQuery);
