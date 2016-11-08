$(function () {
	var filterButtons = $('._features-filter');
	var filterContent = $('._features-content');
	
	filterButtons.on('click', function (e) {
		var targetFilter = $(this).data('filter');
		//var filterItems = filterContent.find('[data-feature='+targetFilter+']')
		var filterItems = $('[data-feature='+targetFilter+']');
		if(!$(this).hasClass('filter-active')) {
		filterContent.hide();
		filterItems.show();
		}
	});
	
	var toggleAllFeaturesFilter = function() {
	var hash = window.location.hash;
		if(hash.indexOf('#jailbreak') != -1) {
			filterButtons.removeClass('filter-active');
			$('[data-filter=os-jailbreak]').addClass('filter-active');
			filterContent.hide();
			$('[data-feature=os-jailbreak]').show();
		} else if(hash.indexOf('#android') != -1) {
			filterButtons.removeClass('filter-active');
			$('[data-filter=os-android]').addClass('filter-active');
			filterContent.hide();
			$('[data-feature=os-android]').show();
		}
	}
	toggleAllFeaturesFilter();
});