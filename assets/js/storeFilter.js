
$(document).ready(function() {
	var prods = { ios: 'ios', android: 'android', iosJb: 'ios-jb'},
			$iosBtn = $('#filter-' + prods.ios),
			$andrBtn = $('#filter-' + prods.android),
			$iosJbBtn = $('#filter-' + prods.iosJb);
	var prodList = {
		ios: '#prod-list-' + prods.ios,
		android: '#prod-list-' + prods.android,
		iosJb: '#prod-list-' + prods.iosJb
	};
	
	function toggleProdList(prodList) {
		var $prodList = $(prodList)
		$prodList.siblings().fadeOut(120).promise().done(function () {
			$prodList.fadeIn(120)
		})
	}
	
	$('.filter_list').on('click', 'li', function() {
		$('.filter_list li.filter-active').removeClass('filter-active');
		$(this).addClass('filter-active');
		// $('input[type=checkbox][name=android-40off]').prop('checked', false)
	});
	
	$iosBtn.click(function() {
		var iosBlock = $('th').find('[data-info-block='+ prods.ios +']')
		if (!$(this).hasClass('filter-active')) {
			toggleProdList(prodList.ios);
			toggleProdList(iosBlock);
		}
	});
	
	$iosJbBtn.click(function() {
		var iosJbBlock = $('th').find('[data-info-block='+ prods.iosJb +']')
		if (!$(this).hasClass('filter-active')) {
			toggleProdList(prodList.iosJb);
			toggleProdList(iosJbBlock);
		}
	});
	
	$andrBtn.click(function() {
		var androidBlock = $('th').find('[data-info-block='+ prods.android +']')
		if (!$(this).hasClass('filter-active')) {
			toggleProdList(prodList.android);
			toggleProdList(androidBlock);
		}
	});
	
});