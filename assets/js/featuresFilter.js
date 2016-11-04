$(function () {
	var filterButtons = $('._features-filter');
	var filterContent = $('._features-content');
	
	filterButtons.on('click', function (e) {
		var targetFilter = $(this).data('filter');
		var filterItems = $('[data-feature='+targetFilter+']');
		if(!$(this).hasClass('filter-active')) {
		filterContent.hide();
		filterItems.show();
		}
		//$(body).find('')
	});
	 
});