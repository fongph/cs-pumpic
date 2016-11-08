
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
			if(hash.indexOf('#jailbreak') != -1) {
				if($iosJbBtn.length) {
				$('.filter_list li.filter-active').removeClass('filter-active');
				$iosJbBtn.addClass('filter-active');
				var iosJbBlock = $('th').find('[data-info-block='+ prods.iosJb +']')
				toggleProdList(prodList.iosJb);
				toggleProdList(iosJbBlock);
				}
			}
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

$(function () {
	var $filterBtns = $('._filter-btn'),
			featuresList = $('._filter-feature'),
			thumbnail = $('.thumbnail');
	var featuresIos = featuresList.filter(function () {
		return $(this).data('filter') === 'icloud'
	});
	var featuresJb = featuresList.filter(function () {
		return $(this).data('filter') === 'jailbreak'
	});
	var jbInThumbnails = thumbnail.find('[data-filter=jailbreak]');
	var iosInThumbnails = thumbnail.find('[data-filter=icloud]');
	function changeHref() {
		var buyBtn = $('#buy-btn'),
				demoBtn = $('#demo-btn'),
				domain = window.location.hostname;
		buyBtn.attr('href', function (i, origValue) {
			var result;
			origValue == '/store.html' ? result='/store.html#jailbreak' : result='/store.html';
			return result;
		});
		demoBtn.attr('href', function(i, origValue) {
			var result;
			this.pathname == '/setDevice/126' ? result='http://demo.'+domain+'/setDevice/5059?redirect_url=cp/calls' : result='http://demo.'+domain+'/setDevice/126?redirect_url=cp/calls';
			return origValue.pathname = result;
		});
	}
		featuresJb.hide();
		jbInThumbnails.hide();
		$filterBtns.on('click', function () {
			if(!$(this).hasClass('filter-active')) {
				changeHref();
				featuresJb.toggle();
				featuresIos.toggle();
				jbInThumbnails.toggle();
				iosInThumbnails.toggle();
		}
	});
});