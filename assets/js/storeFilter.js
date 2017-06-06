
$(document).ready(function() {
	var prods = { ios: 'ios', android: 'android'},
			$iosBtn = $('#filter-' + prods.ios),
			$andrBtn = $('#filter-' + prods.android);
	var prodList = {
		ios: '#prod-list-' + prods.ios,
		android: '#prod-list-' + prods.android,
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
	
	$andrBtn.click(function() {
		var androidBlock = $('th').find('[data-info-block='+ prods.android +']')
		if (!$(this).hasClass('filter-active')) {
			toggleProdList(prodList.android);
			toggleProdList(androidBlock);
		}
	});
	
	//storeRouter
	// 	//parse URL params
	// 	$.urlParam = function(name) {
	// 		var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
	// 		if(results!== null) {
	// 			return results[1] || 0;
	// 		}
	// 	}
	var toggleStorePages = function() {
	var hash = window.location.hash;
			if(hash.indexOf('#android') != -1 ) {
				if($andrBtn.length) {
				$('.filter_list li.filter-active').removeClass('filter-active');
				$andrBtn.addClass('filter-active');
				var androidBlock = $('th').find('[data-info-block='+ prods.android +']')
				toggleProdList(prodList.android);
				toggleProdList(androidBlock);
				}
			}
	}();
	});
