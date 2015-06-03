/* ========================================================================
 * Bootstrap: affix.js v3.2.0
 * http://getbootstrap.com/javascript/#affix
 * ========================================================================
 * Copyright 2011-2014 Twitter, Inc.
 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
 * ======================================================================== */


+ function($) {
	'use strict';

	// AFFIX CLASS DEFINITION
	// ======================

	var Affix = function(element, options) {
		this.options = $.extend({}, Affix.DEFAULTS, options)

		this.$target = $(this.options.target)
			.on('scroll.bs.affix.data-api', $.proxy(this.checkPosition, this))
			.on('click.bs.affix.data-api', $.proxy(this.checkPositionWithEventLoop, this))

		this.$element = $(element)
		this.affixed =
			this.unpin =
			this.pinnedOffset = null

		this.checkPosition()
	}

	Affix.VERSION = '3.2.0'

	Affix.RESET = 'affix affix-top affix-bottom'

	Affix.DEFAULTS = {
		offset: 0,
		target: window
	}

	Affix.prototype.getPinnedOffset = function() {
		if (this.pinnedOffset) return this.pinnedOffset
		this.$element.removeClass(Affix.RESET).addClass('affix')
		var scrollTop = this.$target.scrollTop()
		var position = this.$element.offset()
		return (this.pinnedOffset = position.top - scrollTop)
	}

	Affix.prototype.checkPositionWithEventLoop = function() {
		setTimeout($.proxy(this.checkPosition, this), 1)
	}

	Affix.prototype.checkPosition = function() {
		if (!this.$element.is(':visible')) return

		var scrollHeight = $(document).height()
		var scrollTop = this.$target.scrollTop()
		var position = this.$element.offset()
		var offset = this.options.offset
		var offsetTop = offset.top
		var offsetBottom = offset.bottom

		if (typeof offset != 'object') offsetBottom = offsetTop = offset
		if (typeof offsetTop == 'function') offsetTop = offset.top(this.$element)
		if (typeof offsetBottom == 'function') offsetBottom = offset.bottom(this.$element)

		var affix = this.unpin != null && (scrollTop + this.unpin <= position.top) ? false :
			offsetBottom != null && (position.top + this.$element.height() >= scrollHeight - offsetBottom) ? 'bottom' :
			offsetTop != null && (scrollTop <= offsetTop) ? 'top' : false

		if (this.affixed === affix) return
		if (this.unpin != null) this.$element.css('top', '')

		var affixType = 'affix' + (affix ? '-' + affix : '')
		var e = $.Event(affixType + '.bs.affix')

		this.$element.trigger(e)

		if (e.isDefaultPrevented()) return

		this.affixed = affix
		this.unpin = affix == 'bottom' ? this.getPinnedOffset() : null

		this.$element
			.removeClass(Affix.RESET)
			.addClass(affixType)
			.trigger($.Event(affixType.replace('affix', 'affixed')))

		if (affix == 'bottom') {
			this.$element.offset({
				top: scrollHeight - this.$element.height() - offsetBottom
			})
		}
	}


	// AFFIX PLUGIN DEFINITION
	// =======================

	function Plugin(option) {
		return this.each(function() {
			var $this = $(this)
			var data = $this.data('bs.affix')
			var options = typeof option == 'object' && option

			if (!data) $this.data('bs.affix', (data = new Affix(this, options)))
			if (typeof option == 'string') data[option]()
		})
	}

	var old = $.fn.affix

	$.fn.affix = Plugin
	$.fn.affix.Constructor = Affix


	// AFFIX NO CONFLICT
	// =================

	$.fn.affix.noConflict = function() {
		$.fn.affix = old
		return this
	}


	// AFFIX DATA-API
	// ==============

	$(window).on('load', function() {
		$('[data-spy="affix"]').each(function() {
			var $spy = $(this)
			var data = $spy.data()

			data.offset = data.offset || {}

			if (data.offsetBottom) data.offset.bottom = data.offsetBottom
			if (data.offsetTop) data.offset.top = data.offsetTop

			Plugin.call($spy, data)
		})
	})

}(jQuery);

/* ========================================================================
 * Bootstrap: alert.js v3.2.0
 * http://getbootstrap.com/javascript/#alerts
 * ========================================================================
 * Copyright 2011-2014 Twitter, Inc.
 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
 * ======================================================================== */


+ function($) {
	'use strict';

	// ALERT CLASS DEFINITION
	// ======================

	var dismiss = '[data-dismiss="alert"]'
	var Alert = function(el) {
		$(el).on('click', dismiss, this.close)
	}

	Alert.VERSION = '3.2.0'

	Alert.prototype.close = function(e) {
		var $this = $(this)
		var selector = $this.attr('data-target')

		if (!selector) {
			selector = $this.attr('href')
			selector = selector && selector.replace(/.*(?=#[^\s]*$)/, '') // strip for ie7
		}

		var $parent = $(selector)

		if (e) e.preventDefault()

		if (!$parent.length) {
			$parent = $this.hasClass('alert') ? $this : $this.parent()
		}

		$parent.trigger(e = $.Event('close.bs.alert'))

		if (e.isDefaultPrevented()) return

		$parent.removeClass('in')

		function removeElement() {
			// detach from parent, fire event then clean up data
			$parent.detach().trigger('closed.bs.alert').remove()
		}

		$.support.transition && $parent.hasClass('fade') ?
			$parent
			.one('bsTransitionEnd', removeElement)
			.emulateTransitionEnd(150) :
			removeElement()
	}


	// ALERT PLUGIN DEFINITION
	// =======================

	function Plugin(option) {
		return this.each(function() {
			var $this = $(this)
			var data = $this.data('bs.alert')

			if (!data) $this.data('bs.alert', (data = new Alert(this)))
			if (typeof option == 'string') data[option].call($this)
		})
	}

	var old = $.fn.alert

	$.fn.alert = Plugin
	$.fn.alert.Constructor = Alert


	// ALERT NO CONFLICT
	// =================

	$.fn.alert.noConflict = function() {
		$.fn.alert = old
		return this
	}


	// ALERT DATA-API
	// ==============

	$(document).on('click.bs.alert.data-api', dismiss, Alert.prototype.close)

}(jQuery);

/* ========================================================================
 * Bootstrap: button.js v3.2.0
 * http://getbootstrap.com/javascript/#buttons
 * ========================================================================
 * Copyright 2011-2014 Twitter, Inc.
 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
 * ======================================================================== */


+ function($) {
	'use strict';

	// BUTTON PUBLIC CLASS DEFINITION
	// ==============================

	var Button = function(element, options) {
		this.$element = $(element)
		this.options = $.extend({}, Button.DEFAULTS, options)
		this.isLoading = false
	}

	Button.VERSION = '3.2.0'

	Button.DEFAULTS = {
		loadingText: 'loading...'
	}

	Button.prototype.setState = function(state) {
		var d = 'disabled'
		var $el = this.$element
		var val = $el.is('input') ? 'val' : 'html'
		var data = $el.data()

		state = state + 'Text'

		if (data.resetText == null) $el.data('resetText', $el[val]())

		$el[val](data[state] == null ? this.options[state] : data[state])

		// push to event loop to allow forms to submit
		setTimeout($.proxy(function() {
			if (state == 'loadingText') {
				this.isLoading = true
				$el.addClass(d).attr(d, d)
			} else if (this.isLoading) {
				this.isLoading = false
				$el.removeClass(d).removeAttr(d)
			}
		}, this), 0)
	}

	Button.prototype.toggle = function() {
		var changed = true
		var $parent = this.$element.closest('[data-toggle="buttons"]')

		if ($parent.length) {
			var $input = this.$element.find('input')
			if ($input.prop('type') == 'radio') {
				if ($input.prop('checked') && this.$element.hasClass('active')) changed = false
				else $parent.find('.active').removeClass('active')
			}
			if (changed) $input.prop('checked', !this.$element.hasClass('active')).trigger('change')
		}

		if (changed) this.$element.toggleClass('active')
	}


	// BUTTON PLUGIN DEFINITION
	// ========================

	function Plugin(option) {
		return this.each(function() {
			var $this = $(this)
			var data = $this.data('bs.button')
			var options = typeof option == 'object' && option

			if (!data) $this.data('bs.button', (data = new Button(this, options)))

			if (option == 'toggle') data.toggle()
			else if (option) data.setState(option)
		})
	}

	var old = $.fn.button

	$.fn.button = Plugin
	$.fn.button.Constructor = Button


	// BUTTON NO CONFLICT
	// ==================

	$.fn.button.noConflict = function() {
		$.fn.button = old
		return this
	}


	// BUTTON DATA-API
	// ===============

	$(document).on('click.bs.button.data-api', '[data-toggle^="button"]', function(e) {
		var $btn = $(e.target)
		if (!$btn.hasClass('btn')) $btn = $btn.closest('.btn')
		Plugin.call($btn, 'toggle')
		e.preventDefault()
	})

}(jQuery);

/* ========================================================================
 * Bootstrap: carousel.js v3.2.0
 * http://getbootstrap.com/javascript/#carousel
 * ========================================================================
 * Copyright 2011-2014 Twitter, Inc.
 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
 * ======================================================================== */


+ function($) {
	'use strict';

	// CAROUSEL CLASS DEFINITION
	// =========================

	var Carousel = function(element, options) {
		this.$element = $(element).on('keydown.bs.carousel', $.proxy(this.keydown, this))
		this.$indicators = this.$element.find('.carousel-indicators')
		this.options = options
		this.paused =
			this.sliding =
			this.interval =
			this.$active =
			this.$items = null

		this.options.pause == 'hover' && this.$element
			.on('mouseenter.bs.carousel', $.proxy(this.pause, this))
			.on('mouseleave.bs.carousel', $.proxy(this.cycle, this))
	}

	Carousel.VERSION = '3.2.0'

	Carousel.DEFAULTS = {
		interval: 5000,
		pause: 'hover',
		wrap: true
	}

	Carousel.prototype.keydown = function(e) {
		switch (e.which) {
			case 37:
				this.prev();
				break
			case 39:
				this.next();
				break
			default:
				return
		}

		e.preventDefault()
	}

	Carousel.prototype.cycle = function(e) {
		e || (this.paused = false)

		this.interval && clearInterval(this.interval)

		this.options.interval && !this.paused && (this.interval = setInterval($.proxy(this.next, this), this.options.interval))

		return this
	}

	Carousel.prototype.getItemIndex = function(item) {
		this.$items = item.parent().children('.item')
		return this.$items.index(item || this.$active)
	}

	Carousel.prototype.to = function(pos) {
		var that = this
		var activeIndex = this.getItemIndex(this.$active = this.$element.find('.item.active'))

		if (pos > (this.$items.length - 1) || pos < 0) return

		if (this.sliding) return this.$element.one('slid.bs.carousel', function() {
				that.to(pos)
			}) // yes, "slid"
		if (activeIndex == pos) return this.pause().cycle()

		return this.slide(pos > activeIndex ? 'next' : 'prev', $(this.$items[pos]))
	}

	Carousel.prototype.pause = function(e) {
		e || (this.paused = true)

		if (this.$element.find('.next, .prev').length && $.support.transition) {
			this.$element.trigger($.support.transition.end)
			this.cycle(true)
		}

		this.interval = clearInterval(this.interval)

		return this
	}

	Carousel.prototype.next = function() {
		if (this.sliding) return
		return this.slide('next')
	}

	Carousel.prototype.prev = function() {
		if (this.sliding) return
		return this.slide('prev')
	}

	Carousel.prototype.slide = function(type, next) {
		var $active = this.$element.find('.item.active')
		var $next = next || $active[type]()
		var isCycling = this.interval
		var direction = type == 'next' ? 'left' : 'right'
		var fallback = type == 'next' ? 'first' : 'last'
		var that = this

		if (!$next.length) {
			if (!this.options.wrap) return
			$next = this.$element.find('.item')[fallback]()
		}

		if ($next.hasClass('active')) return (this.sliding = false)

		var relatedTarget = $next[0]
		var slideEvent = $.Event('slide.bs.carousel', {
			relatedTarget: relatedTarget,
			direction: direction
		})
		this.$element.trigger(slideEvent)
		if (slideEvent.isDefaultPrevented()) return

		this.sliding = true

		isCycling && this.pause()

		if (this.$indicators.length) {
			this.$indicators.find('.active').removeClass('active')
			var $nextIndicator = $(this.$indicators.children()[this.getItemIndex($next)])
			$nextIndicator && $nextIndicator.addClass('active')
		}

		var slidEvent = $.Event('slid.bs.carousel', {
				relatedTarget: relatedTarget,
				direction: direction
			}) // yes, "slid"
		if ($.support.transition && this.$element.hasClass('slide')) {
			$next.addClass(type)
			$next[0].offsetWidth // force reflow
			$active.addClass(direction)
			$next.addClass(direction)
			$active
				.one('bsTransitionEnd', function() {
					$next.removeClass([type, direction].join(' ')).addClass('active')
					$active.removeClass(['active', direction].join(' '))
					that.sliding = false
					setTimeout(function() {
						that.$element.trigger(slidEvent)
					}, 0)
				})
				.emulateTransitionEnd($active.css('transition-duration').slice(0, -1) * 1000)
		} else {
			$active.removeClass('active')
			$next.addClass('active')
			this.sliding = false
			this.$element.trigger(slidEvent)
		}

		isCycling && this.cycle()

		return this
	}


	// CAROUSEL PLUGIN DEFINITION
	// ==========================

	function Plugin(option) {
		return this.each(function() {
			var $this = $(this)
			var data = $this.data('bs.carousel')
			var options = $.extend({}, Carousel.DEFAULTS, $this.data(), typeof option == 'object' && option)
			var action = typeof option == 'string' ? option : options.slide

			if (!data) $this.data('bs.carousel', (data = new Carousel(this, options)))
			if (typeof option == 'number') data.to(option)
			else if (action) data[action]()
			else if (options.interval) data.pause().cycle()
		})
	}

	var old = $.fn.carousel

	$.fn.carousel = Plugin
	$.fn.carousel.Constructor = Carousel


	// CAROUSEL NO CONFLICT
	// ====================

	$.fn.carousel.noConflict = function() {
		$.fn.carousel = old
		return this
	}


	// CAROUSEL DATA-API
	// =================

	$(document).on('click.bs.carousel.data-api', '[data-slide], [data-slide-to]', function(e) {
		var href
		var $this = $(this)
		var $target = $($this.attr('data-target') || (href = $this.attr('href')) && href.replace(/.*(?=#[^\s]+$)/, '')) // strip for ie7
		if (!$target.hasClass('carousel')) return
		var options = $.extend({}, $target.data(), $this.data())
		var slideIndex = $this.attr('data-slide-to')
		if (slideIndex) options.interval = false

		Plugin.call($target, options)

		if (slideIndex) {
			$target.data('bs.carousel').to(slideIndex)
		}

		e.preventDefault()
	})

	$(window).on('load', function() {
		$('[data-ride="carousel"]').each(function() {
			var $carousel = $(this)
			Plugin.call($carousel, $carousel.data())
		})
	})

}(jQuery);

/* ========================================================================
 * Bootstrap: collapse.js v3.2.0
 * http://getbootstrap.com/javascript/#collapse
 * ========================================================================
 * Copyright 2011-2014 Twitter, Inc.
 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
 * ======================================================================== */


+ function($) {
	'use strict';

	// COLLAPSE PUBLIC CLASS DEFINITION
	// ================================

	var Collapse = function(element, options) {
		this.$element = $(element)
		this.options = $.extend({}, Collapse.DEFAULTS, options)
		this.transitioning = null

		if (this.options.parent) this.$parent = $(this.options.parent)
		if (this.options.toggle) this.toggle()
	}

	Collapse.VERSION = '3.2.0'

	Collapse.DEFAULTS = {
		toggle: true
	}

	Collapse.prototype.dimension = function() {
		var hasWidth = this.$element.hasClass('width')
		return hasWidth ? 'width' : 'height'
	}

	Collapse.prototype.show = function() {
		if (this.transitioning || this.$element.hasClass('in')) return

		var startEvent = $.Event('show.bs.collapse')
		this.$element.trigger(startEvent)
		if (startEvent.isDefaultPrevented()) return

		var actives = this.$parent && this.$parent.find('> .panel > .in')

		if (actives && actives.length) {
			var hasData = actives.data('bs.collapse')
			if (hasData && hasData.transitioning) return
			Plugin.call(actives, 'hide')
			hasData || actives.data('bs.collapse', null)
		}

		var dimension = this.dimension()

		this.$element
			.removeClass('collapse')
			.addClass('collapsing')[dimension](0)

		this.transitioning = 1

		var complete = function() {
			this.$element
				.removeClass('collapsing')
				.addClass('collapse in')[dimension]('')
			this.transitioning = 0
			this.$element
				.trigger('shown.bs.collapse')
		}

		if (!$.support.transition) return complete.call(this)

		var scrollSize = $.camelCase(['scroll', dimension].join('-'))

		this.$element
			.one('bsTransitionEnd', $.proxy(complete, this))
			.emulateTransitionEnd(350)[dimension](this.$element[0][scrollSize])
	}

	Collapse.prototype.hide = function() {
		if (this.transitioning || !this.$element.hasClass('in')) return

		var startEvent = $.Event('hide.bs.collapse')
		this.$element.trigger(startEvent)
		if (startEvent.isDefaultPrevented()) return

		var dimension = this.dimension()

		this.$element[dimension](this.$element[dimension]())[0].offsetHeight

		this.$element
			.addClass('collapsing')
			.removeClass('collapse')
			.removeClass('in')

		this.transitioning = 1

		var complete = function() {
			this.transitioning = 0
			this.$element
				.trigger('hidden.bs.collapse')
				.removeClass('collapsing')
				.addClass('collapse')
		}

		if (!$.support.transition) return complete.call(this)

		this.$element[dimension](0)
			.one('bsTransitionEnd', $.proxy(complete, this))
			.emulateTransitionEnd(350)
	}

	Collapse.prototype.toggle = function() {
		this[this.$element.hasClass('in') ? 'hide' : 'show']()
	}


	// COLLAPSE PLUGIN DEFINITION
	// ==========================

	function Plugin(option) {
		return this.each(function() {
			var $this = $(this)
			var data = $this.data('bs.collapse')
			var options = $.extend({}, Collapse.DEFAULTS, $this.data(), typeof option == 'object' && option)

			if (!data && options.toggle && option == 'show') option = !option
			if (!data) $this.data('bs.collapse', (data = new Collapse(this, options)))
			if (typeof option == 'string') data[option]()
		})
	}

	var old = $.fn.collapse

	$.fn.collapse = Plugin
	$.fn.collapse.Constructor = Collapse


	// COLLAPSE NO CONFLICT
	// ====================

	$.fn.collapse.noConflict = function() {
		$.fn.collapse = old
		return this
	}


	// COLLAPSE DATA-API
	// =================

	$(document).on('click.bs.collapse.data-api', '[data-toggle="collapse"]', function(e) {
		var href
		var $this = $(this)
		var target = $this.attr('data-target') || e.preventDefault() || (href = $this.attr('href')) && href.replace(/.*(?=#[^\s]+$)/, '') // strip for ie7
		var $target = $(target)
		var data = $target.data('bs.collapse')
		var option = data ? 'toggle' : $this.data()
		var parent = $this.attr('data-parent')
		var $parent = parent && $(parent)

		if (!data || !data.transitioning) {
			if ($parent) $parent.find('[data-toggle="collapse"][data-parent="' + parent + '"]').not($this).addClass('collapsed')
			$this[$target.hasClass('in') ? 'addClass' : 'removeClass']('collapsed')
		}

		Plugin.call($target, option)
	})

}(jQuery);

/* ========================================================================
 * Bootstrap: dropdown.js v3.2.0
 * http://getbootstrap.com/javascript/#dropdowns
 * ========================================================================
 * Copyright 2011-2014 Twitter, Inc.
 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
 * ======================================================================== */


+ function($) {
	'use strict';

	// DROPDOWN CLASS DEFINITION
	// =========================

	var backdrop = '.dropdown-backdrop'
	var toggle = '[data-toggle="dropdown"]'
	var Dropdown = function(element) {
		$(element).on('click.bs.dropdown', this.toggle)
	}

	Dropdown.VERSION = '3.2.0'

	Dropdown.prototype.toggle = function(e) {
		var $this = $(this)

		if ($this.is('.disabled, :disabled')) return

		var $parent = getParent($this)
		var isActive = $parent.hasClass('open')

		clearMenus()

		if (!isActive) {
			if ('ontouchstart' in document.documentElement && !$parent.closest('.navbar-nav').length) {
				// if mobile we use a backdrop because click events don't delegate
				$('<div class="dropdown-backdrop"/>').insertAfter($(this)).on('click', clearMenus)
			}

			var relatedTarget = {
				relatedTarget: this
			}
			$parent.trigger(e = $.Event('show.bs.dropdown', relatedTarget))

			if (e.isDefaultPrevented()) return

			$this.trigger('focus')

			$parent
				.toggleClass('open')
				.trigger('shown.bs.dropdown', relatedTarget)
		}

		return false
	}

	Dropdown.prototype.keydown = function(e) {
		if (!/(38|40|27)/.test(e.keyCode)) return

		var $this = $(this)

		e.preventDefault()
		e.stopPropagation()

		if ($this.is('.disabled, :disabled')) return

		var $parent = getParent($this)
		var isActive = $parent.hasClass('open')

		if (!isActive || (isActive && e.keyCode == 27)) {
			if (e.which == 27) $parent.find(toggle).trigger('focus')
			return $this.trigger('click')
		}

		var desc = ' li:not(.divider):visible a'
		var $items = $parent.find('[role="menu"]' + desc + ', [role="listbox"]' + desc)

		if (!$items.length) return

		var index = $items.index($items.filter(':focus'))

		if (e.keyCode == 38 && index > 0) index-- // up
			if (e.keyCode == 40 && index < $items.length - 1) index++ // down
				if (!~index) index = 0

		$items.eq(index).trigger('focus')
	}

	function clearMenus(e) {
		if (e && e.which === 3) return
		$(backdrop).remove()
		$(toggle).each(function() {
			var $parent = getParent($(this))
			var relatedTarget = {
				relatedTarget: this
			}
			if (!$parent.hasClass('open')) return
			$parent.trigger(e = $.Event('hide.bs.dropdown', relatedTarget))
			if (e.isDefaultPrevented()) return
			$parent.removeClass('open').trigger('hidden.bs.dropdown', relatedTarget)
		})
	}

	function getParent($this) {
		var selector = $this.attr('data-target')

		if (!selector) {
			selector = $this.attr('href')
			selector = selector && /#[A-Za-z]/.test(selector) && selector.replace(/.*(?=#[^\s]*$)/, '') // strip for ie7
		}

		var $parent = selector && $(selector)

		return $parent && $parent.length ? $parent : $this.parent()
	}


	// DROPDOWN PLUGIN DEFINITION
	// ==========================

	function Plugin(option) {
		return this.each(function() {
			var $this = $(this)
			var data = $this.data('bs.dropdown')

			if (!data) $this.data('bs.dropdown', (data = new Dropdown(this)))
			if (typeof option == 'string') data[option].call($this)
		})
	}

	var old = $.fn.dropdown

	$.fn.dropdown = Plugin
	$.fn.dropdown.Constructor = Dropdown


	// DROPDOWN NO CONFLICT
	// ====================

	$.fn.dropdown.noConflict = function() {
		$.fn.dropdown = old
		return this
	}


	// APPLY TO STANDARD DROPDOWN ELEMENTS
	// ===================================

	$(document)
		.on('click.bs.dropdown.data-api', clearMenus)
		.on('click.bs.dropdown.data-api', '.dropdown form', function(e) {
			e.stopPropagation()
		})
		.on('click.bs.dropdown.data-api', toggle, Dropdown.prototype.toggle)
		.on('keydown.bs.dropdown.data-api', toggle + ', [role="menu"], [role="listbox"]', Dropdown.prototype.keydown)

}(jQuery);

/* ========================================================================
 * Bootstrap: tab.js v3.2.0
 * http://getbootstrap.com/javascript/#tabs
 * ========================================================================
 * Copyright 2011-2014 Twitter, Inc.
 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
 * ======================================================================== */


+ function($) {
	'use strict';

	// TAB CLASS DEFINITION
	// ====================

	var Tab = function(element) {
		this.element = $(element)
	}

	Tab.VERSION = '3.2.0'

	Tab.prototype.show = function() {
		var $this = this.element
		var $ul = $this.closest('ul:not(.dropdown-menu)')
		var selector = $this.data('target')

		if (!selector) {
			selector = $this.attr('href')
			selector = selector && selector.replace(/.*(?=#[^\s]*$)/, '') // strip for ie7
		}

		if ($this.parent('li').hasClass('active')) return

		var previous = $ul.find('.active:last a')[0]
		var e = $.Event('show.bs.tab', {
			relatedTarget: previous
		})

		$this.trigger(e)

		if (e.isDefaultPrevented()) return

		var $target = $(selector)

		this.activate($this.closest('li'), $ul)
		this.activate($target, $target.parent(), function() {
			$this.trigger({
				type: 'shown.bs.tab',
				relatedTarget: previous
			})
		})
	}

	Tab.prototype.activate = function(element, container, callback) {
		var $active = container.find('> .active')
		var transition = callback && $.support.transition && $active.hasClass('fade')

		function next() {
			$active
				.removeClass('active')
				.find('> .dropdown-menu > .active')
				.removeClass('active')

			element.addClass('active')

			if (transition) {
				element[0].offsetWidth // reflow for transition
				element.addClass('in')
			} else {
				element.removeClass('fade')
			}

			if (element.parent('.dropdown-menu')) {
				element.closest('li.dropdown').addClass('active')
			}

			callback && callback()
		}

		transition ?
			$active
			.one('bsTransitionEnd', next)
			.emulateTransitionEnd(150) :
			next()

		$active.removeClass('in')
	}


	// TAB PLUGIN DEFINITION
	// =====================

	function Plugin(option) {
		return this.each(function() {
			var $this = $(this)
			var data = $this.data('bs.tab')

			if (!data) $this.data('bs.tab', (data = new Tab(this)))
			if (typeof option == 'string') data[option]()
		})
	}

	var old = $.fn.tab

	$.fn.tab = Plugin
	$.fn.tab.Constructor = Tab


	// TAB NO CONFLICT
	// ===============

	$.fn.tab.noConflict = function() {
		$.fn.tab = old
		return this
	}


	// TAB DATA-API
	// ============

	$(document).on('click.bs.tab.data-api', '[data-toggle="tab"], [data-toggle="pill"]', function(e) {
		e.preventDefault()
		Plugin.call($(this), 'show')
	})

}(jQuery);

/* ========================================================================
 * Bootstrap: transition.js v3.2.0
 * http://getbootstrap.com/javascript/#transitions
 * ========================================================================
 * Copyright 2011-2014 Twitter, Inc.
 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
 * ======================================================================== */


+ function($) {
	'use strict';

	// CSS TRANSITION SUPPORT (Shoutout: http://www.modernizr.com/)
	// ============================================================

	function transitionEnd() {
		var el = document.createElement('bootstrap')

		var transEndEventNames = {
			WebkitTransition: 'webkitTransitionEnd',
			MozTransition: 'transitionend',
			OTransition: 'oTransitionEnd otransitionend',
			transition: 'transitionend'
		}

		for (var name in transEndEventNames) {
			if (el.style[name] !== undefined) {
				return {
					end: transEndEventNames[name]
				}
			}
		}

		return false // explicit for ie8 (  ._.)
	}

	// http://blog.alexmaccaw.com/css-transitions
	$.fn.emulateTransitionEnd = function(duration) {
		var called = false
		var $el = this
		$(this).one('bsTransitionEnd', function() {
			called = true
		})
		var callback = function() {
			if (!called) $($el).trigger($.support.transition.end)
		}
		setTimeout(callback, duration)
		return this
	}

	$(function() {
		$.support.transition = transitionEnd()

		if (!$.support.transition) return

		$.event.special.bsTransitionEnd = {
			bindType: $.support.transition.end,
			delegateType: $.support.transition.end,
			handle: function(e) {
				if ($(e.target).is(this)) return e.handleObj.handler.apply(this, arguments)
			}
		}
	})

}(jQuery);

/* ========================================================================
 * Bootstrap: scrollspy.js v3.2.0
 * http://getbootstrap.com/javascript/#scrollspy
 * ========================================================================
 * Copyright 2011-2014 Twitter, Inc.
 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
 * ======================================================================== */


+ function($) {
	'use strict';

	// SCROLLSPY CLASS DEFINITION
	// ==========================

	function ScrollSpy(element, options) {
		var process = $.proxy(this.process, this)

		this.$body = $('body')
		this.$scrollElement = $(element).is('body') ? $(window) : $(element)
		this.options = $.extend({}, ScrollSpy.DEFAULTS, options)
		this.selector = (this.options.target || '') + ' .nav li > a'
		this.offsets = []
		this.targets = []
		this.activeTarget = null
		this.scrollHeight = 0

		this.$scrollElement.on('scroll.bs.scrollspy', process)
		this.refresh()
		this.process()
	}

	ScrollSpy.VERSION = '3.2.0'

	ScrollSpy.DEFAULTS = {
		offset: 10
	}

	ScrollSpy.prototype.getScrollHeight = function() {
		return this.$scrollElement[0].scrollHeight || Math.max(this.$body[0].scrollHeight, document.documentElement.scrollHeight)
	}

	ScrollSpy.prototype.refresh = function() {
		var offsetMethod = 'offset'
		var offsetBase = 0

		if (!$.isWindow(this.$scrollElement[0])) {
			offsetMethod = 'position'
			offsetBase = this.$scrollElement.scrollTop()
		}

		this.offsets = []
		this.targets = []
		this.scrollHeight = this.getScrollHeight()

		var self = this

		this.$body
			.find(this.selector)
			.map(function() {
				var $el = $(this)
				var href = $el.data('target') || $el.attr('href')
				var $href = /^#./.test(href) && $(href)

				return ($href && $href.length && $href.is(':visible') && [
					[$href[offsetMethod]().top + offsetBase, href]
				]) || null
			})
			.sort(function(a, b) {
				return a[0] - b[0]
			})
			.each(function() {
				self.offsets.push(this[0])
				self.targets.push(this[1])
			})
	}

	ScrollSpy.prototype.process = function() {
		var scrollTop = this.$scrollElement.scrollTop() + this.options.offset
		var scrollHeight = this.getScrollHeight()
		var maxScroll = this.options.offset + scrollHeight - this.$scrollElement.height()
		var offsets = this.offsets
		var targets = this.targets
		var activeTarget = this.activeTarget
		var i

		if (this.scrollHeight != scrollHeight) {
			this.refresh()
		}

		if (scrollTop >= maxScroll) {
			return activeTarget != (i = targets[targets.length - 1]) && this.activate(i)
		}

		if (activeTarget && scrollTop <= offsets[0]) {
			return activeTarget != (i = targets[0]) && this.activate(i)
		}

		for (i = offsets.length; i--;) {
			activeTarget != targets[i] && scrollTop >= offsets[i] && (!offsets[i + 1] || scrollTop <= offsets[i + 1]) && this.activate(targets[i])
		}
	}

	ScrollSpy.prototype.activate = function(target) {
		this.activeTarget = target

		$(this.selector)
			.parentsUntil(this.options.target, '.active')
			.removeClass('active')

		var selector = this.selector +
			'[data-target="' + target + '"],' +
			this.selector + '[href="' + target + '"]'

		var active = $(selector)
			.parents('li')
			.addClass('active')

		if (active.parent('.dropdown-menu').length) {
			active = active
				.closest('li.dropdown')
				.addClass('active')
		}

		active.trigger('activate.bs.scrollspy')
	}


	// SCROLLSPY PLUGIN DEFINITION
	// ===========================

	function Plugin(option) {
		return this.each(function() {
			var $this = $(this)
			var data = $this.data('bs.scrollspy')
			var options = typeof option == 'object' && option

			if (!data) $this.data('bs.scrollspy', (data = new ScrollSpy(this, options)))
			if (typeof option == 'string') data[option]()
		})
	}

	var old = $.fn.scrollspy

	$.fn.scrollspy = Plugin
	$.fn.scrollspy.Constructor = ScrollSpy


	// SCROLLSPY NO CONFLICT
	// =====================

	$.fn.scrollspy.noConflict = function() {
		$.fn.scrollspy = old
		return this
	}


	// SCROLLSPY DATA-API
	// ==================

	$(window).on('load.bs.scrollspy.data-api', function() {
		$('[data-spy="scroll"]').each(function() {
			var $spy = $(this)
			Plugin.call($spy, $spy.data())
		})
	})

}(jQuery);

/* ========================================================================
 * Bootstrap: modal.js v3.2.0
 * http://getbootstrap.com/javascript/#modals
 * ========================================================================
 * Copyright 2011-2014 Twitter, Inc.
 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
 * ======================================================================== */


+ function($) {
	'use strict';

	// MODAL CLASS DEFINITION
	// ======================

	var Modal = function(element, options) {
		this.options = options
		this.$body = $(document.body)
		this.$element = $(element)
		this.$backdrop =
			this.isShown = null
		this.scrollbarWidth = 0

		if (this.options.remote) {
			this.$element
				.find('.modal-content')
				.load(this.options.remote, $.proxy(function() {
					this.$element.trigger('loaded.bs.modal')
				}, this))
		}
	}

	Modal.VERSION = '3.2.0'

	Modal.DEFAULTS = {
		backdrop: true,
		keyboard: true,
		show: true
	}

	Modal.prototype.toggle = function(_relatedTarget) {
		return this.isShown ? this.hide() : this.show(_relatedTarget)
	}

	Modal.prototype.show = function(_relatedTarget) {
		var that = this
		var e = $.Event('show.bs.modal', {
			relatedTarget: _relatedTarget
		})

		this.$element.trigger(e)

		if (this.isShown || e.isDefaultPrevented()) return

		this.isShown = true

		this.checkScrollbar()
		this.$body.addClass('modal-open')

		this.setScrollbar()
		this.escape()

		this.$element.on('click.dismiss.bs.modal', '[data-dismiss="modal"]', $.proxy(this.hide, this))

		this.backdrop(function() {
			var transition = $.support.transition && that.$element.hasClass('fade')

			if (!that.$element.parent().length) {
				that.$element.appendTo(that.$body) // don't move modals dom position
			}

			that.$element
				.show()
				.scrollTop(0)

			if (transition) {
				that.$element[0].offsetWidth // force reflow
			}

			that.$element
				.addClass('in')
				.attr('aria-hidden', false)

			that.enforceFocus()

			var e = $.Event('shown.bs.modal', {
				relatedTarget: _relatedTarget
			})

			transition ?
				that.$element.find('.modal-dialog') // wait for modal to slide in
			.one('bsTransitionEnd', function() {
				that.$element.trigger('focus').trigger(e)
			})
				.emulateTransitionEnd(300) :
				that.$element.trigger('focus').trigger(e)
		})
	}

	Modal.prototype.hide = function(e) {
		if (e) e.preventDefault()

		e = $.Event('hide.bs.modal')

		this.$element.trigger(e)

		if (!this.isShown || e.isDefaultPrevented()) return

		this.isShown = false

		this.$body.removeClass('modal-open')

		this.resetScrollbar()
		this.escape()

		$(document).off('focusin.bs.modal')

		this.$element
			.removeClass('in')
			.attr('aria-hidden', true)
			.off('click.dismiss.bs.modal')

		$.support.transition && this.$element.hasClass('fade') ?
			this.$element
			.one('bsTransitionEnd', $.proxy(this.hideModal, this))
			.emulateTransitionEnd(300) :
			this.hideModal()
	}

	Modal.prototype.enforceFocus = function() {
		$(document)
			.off('focusin.bs.modal') // guard against infinite focus loop
		.on('focusin.bs.modal', $.proxy(function(e) {
			if (this.$element[0] !== e.target && !this.$element.has(e.target).length) {
				this.$element.trigger('focus')
			}
		}, this))
	}

	Modal.prototype.escape = function() {
		if (this.isShown && this.options.keyboard) {
			this.$element.on('keyup.dismiss.bs.modal', $.proxy(function(e) {
				e.which == 27 && this.hide()
			}, this))
		} else if (!this.isShown) {
			this.$element.off('keyup.dismiss.bs.modal')
		}
	}

	Modal.prototype.hideModal = function() {
		var that = this
		this.$element.hide()
		this.backdrop(function() {
			that.$element.trigger('hidden.bs.modal')
		})
	}

	Modal.prototype.removeBackdrop = function() {
		this.$backdrop && this.$backdrop.remove()
		this.$backdrop = null
	}

	Modal.prototype.backdrop = function(callback) {
		var that = this
		var animate = this.$element.hasClass('fade') ? 'fade' : ''

		if (this.isShown && this.options.backdrop) {
			var doAnimate = $.support.transition && animate

			this.$backdrop = $('<div class="modal-backdrop ' + animate + '" />')
				.appendTo(this.$body)

			this.$element.on('click.dismiss.bs.modal', $.proxy(function(e) {
				if (e.target !== e.currentTarget) return
				this.options.backdrop == 'static' ? this.$element[0].focus.call(this.$element[0]) : this.hide.call(this)
			}, this))

			if (doAnimate) this.$backdrop[0].offsetWidth // force reflow

			this.$backdrop.addClass('in')

			if (!callback) return

			doAnimate ?
				this.$backdrop
				.one('bsTransitionEnd', callback)
				.emulateTransitionEnd(150) :
				callback()

		} else if (!this.isShown && this.$backdrop) {
			this.$backdrop.removeClass('in')

			var callbackRemove = function() {
				that.removeBackdrop()
				callback && callback()
			}
			$.support.transition && this.$element.hasClass('fade') ?
				this.$backdrop
				.one('bsTransitionEnd', callbackRemove)
				.emulateTransitionEnd(150) :
				callbackRemove()

		} else if (callback) {
			callback()
		}
	}

	Modal.prototype.checkScrollbar = function() {
		if (document.body.clientWidth >= window.innerWidth) return
		this.scrollbarWidth = this.scrollbarWidth || this.measureScrollbar()
	}

	Modal.prototype.setScrollbar = function() {
		var bodyPad = parseInt((this.$body.css('padding-right') || 0), 10)
		if (this.scrollbarWidth) this.$body.css('padding-right', bodyPad + this.scrollbarWidth)
	}

	Modal.prototype.resetScrollbar = function() {
		this.$body.css('padding-right', '')
	}

	Modal.prototype.measureScrollbar = function() { // thx walsh
		var scrollDiv = document.createElement('div')
		scrollDiv.className = 'modal-scrollbar-measure'
		this.$body.append(scrollDiv)
		var scrollbarWidth = scrollDiv.offsetWidth - scrollDiv.clientWidth
		this.$body[0].removeChild(scrollDiv)
		return scrollbarWidth
	}


	// MODAL PLUGIN DEFINITION
	// =======================

	function Plugin(option, _relatedTarget) {
		return this.each(function() {
			var $this = $(this)
			var data = $this.data('bs.modal')
			var options = $.extend({}, Modal.DEFAULTS, $this.data(), typeof option == 'object' && option)

			if (!data) $this.data('bs.modal', (data = new Modal(this, options)))
			if (typeof option == 'string') data[option](_relatedTarget)
			else if (options.show) data.show(_relatedTarget)
		})
	}

	var old = $.fn.modal

	$.fn.modal = Plugin
	$.fn.modal.Constructor = Modal


	// MODAL NO CONFLICT
	// =================

	$.fn.modal.noConflict = function() {
		$.fn.modal = old
		return this
	}


	// MODAL DATA-API
	// ==============

	$(document).on('click.bs.modal.data-api', '[data-toggle="modal"]', function(e) {
		var $this = $(this)
		var href = $this.attr('href')
		var $target = $($this.attr('data-target') || (href && href.replace(/.*(?=#[^\s]+$)/, ''))) // strip for ie7
		var option = $target.data('bs.modal') ? 'toggle' : $.extend({
			remote: !/#/.test(href) && href
		}, $target.data(), $this.data())

		if ($this.is('a')) e.preventDefault()

		$target.one('show.bs.modal', function(showEvent) {
			if (showEvent.isDefaultPrevented()) return // only register focus restorer if modal will actually get shown
			$target.one('hidden.bs.modal', function() {
				$this.is(':visible') && $this.trigger('focus')
			})
		})
		Plugin.call($target, option, this)
	})

}(jQuery);

/* ========================================================================
 * Bootstrap: tooltip.js v3.2.0
 * http://getbootstrap.com/javascript/#tooltip
 * Inspired by the original jQuery.tipsy by Jason Frame
 * ========================================================================
 * Copyright 2011-2014 Twitter, Inc.
 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
 * ======================================================================== */


+ function($) {
	'use strict';

	// TOOLTIP PUBLIC CLASS DEFINITION
	// ===============================

	var Tooltip = function(element, options) {
		this.type =
			this.options =
			this.enabled =
			this.timeout =
			this.hoverState =
			this.$element = null

		this.init('tooltip', element, options)
	}

	Tooltip.VERSION = '3.2.0'

	Tooltip.DEFAULTS = {
		animation: true,
		placement: 'top',
		selector: false,
		template: '<div class="tooltip" role="tooltip"><div class="tooltip-arrow"></div><div class="tooltip-inner"></div></div>',
		trigger: 'hover focus',
		title: '',
		delay: 0,
		html: false,
		container: false,
		viewport: {
			selector: 'body',
			padding: 0
		}
	}

	Tooltip.prototype.init = function(type, element, options) {
		this.enabled = true
		this.type = type
		this.$element = $(element)
		this.options = this.getOptions(options)
		this.$viewport = this.options.viewport && $(this.options.viewport.selector || this.options.viewport)

		var triggers = this.options.trigger.split(' ')

		for (var i = triggers.length; i--;) {
			var trigger = triggers[i]

			if (trigger == 'click') {
				this.$element.on('click.' + this.type, this.options.selector, $.proxy(this.toggle, this))
			} else if (trigger != 'manual') {
				var eventIn = trigger == 'hover' ? 'mouseenter' : 'focusin'
				var eventOut = trigger == 'hover' ? 'mouseleave' : 'focusout'

				this.$element.on(eventIn + '.' + this.type, this.options.selector, $.proxy(this.enter, this))
				this.$element.on(eventOut + '.' + this.type, this.options.selector, $.proxy(this.leave, this))
			}
		}

		this.options.selector ?
			(this._options = $.extend({}, this.options, {
			trigger: 'manual',
			selector: ''
		})) :
			this.fixTitle()
	}

	Tooltip.prototype.getDefaults = function() {
		return Tooltip.DEFAULTS
	}

	Tooltip.prototype.getOptions = function(options) {
		options = $.extend({}, this.getDefaults(), this.$element.data(), options)

		if (options.delay && typeof options.delay == 'number') {
			options.delay = {
				show: options.delay,
				hide: options.delay
			}
		}

		return options
	}

	Tooltip.prototype.getDelegateOptions = function() {
		var options = {}
		var defaults = this.getDefaults()

		this._options && $.each(this._options, function(key, value) {
			if (defaults[key] != value) options[key] = value
		})

		return options
	}

	Tooltip.prototype.enter = function(obj) {
		var self = obj instanceof this.constructor ?
			obj : $(obj.currentTarget).data('bs.' + this.type)

		if (!self) {
			self = new this.constructor(obj.currentTarget, this.getDelegateOptions())
			$(obj.currentTarget).data('bs.' + this.type, self)
		}

		clearTimeout(self.timeout)

		self.hoverState = 'in'

		if (!self.options.delay || !self.options.delay.show) return self.show()

		self.timeout = setTimeout(function() {
			if (self.hoverState == 'in') self.show()
		}, self.options.delay.show)
	}

	Tooltip.prototype.leave = function(obj) {
		var self = obj instanceof this.constructor ?
			obj : $(obj.currentTarget).data('bs.' + this.type)

		if (!self) {
			self = new this.constructor(obj.currentTarget, this.getDelegateOptions())
			$(obj.currentTarget).data('bs.' + this.type, self)
		}

		clearTimeout(self.timeout)

		self.hoverState = 'out'

		if (!self.options.delay || !self.options.delay.hide) return self.hide()

		self.timeout = setTimeout(function() {
			if (self.hoverState == 'out') self.hide()
		}, self.options.delay.hide)
	}

	Tooltip.prototype.show = function() {
		var e = $.Event('show.bs.' + this.type)

		if (this.hasContent() && this.enabled) {
			this.$element.trigger(e)

			var inDom = $.contains(document.documentElement, this.$element[0])
			if (e.isDefaultPrevented() || !inDom) return
			var that = this

			var $tip = this.tip()

			var tipId = this.getUID(this.type)

			this.setContent()
			$tip.attr('id', tipId)
			this.$element.attr('aria-describedby', tipId)

			if (this.options.animation) $tip.addClass('fade')

			var placement = typeof this.options.placement == 'function' ?
				this.options.placement.call(this, $tip[0], this.$element[0]) :
				this.options.placement

			var autoToken = /\s?auto?\s?/i
			var autoPlace = autoToken.test(placement)
			if (autoPlace) placement = placement.replace(autoToken, '') || 'top'

			$tip
				.detach()
				.css({
					top: 0,
					left: 0,
					display: 'block'
				})
				.addClass(placement)
				.data('bs.' + this.type, this)

			this.options.container ? $tip.appendTo(this.options.container) : $tip.insertAfter(this.$element)

			var pos = this.getPosition()
			var actualWidth = $tip[0].offsetWidth
			var actualHeight = $tip[0].offsetHeight

			if (autoPlace) {
				var orgPlacement = placement
				var $parent = this.$element.parent()
				var parentDim = this.getPosition($parent)

				placement = placement == 'bottom' && pos.top + pos.height + actualHeight - parentDim.scroll > parentDim.height ? 'top' :
					placement == 'top' && pos.top - parentDim.scroll - actualHeight < 0 ? 'bottom' :
					placement == 'right' && pos.right + actualWidth > parentDim.width ? 'left' :
					placement == 'left' && pos.left - actualWidth < parentDim.left ? 'right' :
					placement

				$tip
					.removeClass(orgPlacement)
					.addClass(placement)
			}

			var calculatedOffset = this.getCalculatedOffset(placement, pos, actualWidth, actualHeight)

			this.applyPlacement(calculatedOffset, placement)

			var complete = function() {
				that.$element.trigger('shown.bs.' + that.type)
				that.hoverState = null
			}

			$.support.transition && this.$tip.hasClass('fade') ?
				$tip
				.one('bsTransitionEnd', complete)
				.emulateTransitionEnd(150) :
				complete()
		}
	}

	Tooltip.prototype.applyPlacement = function(offset, placement) {
		var $tip = this.tip()
		var width = $tip[0].offsetWidth
		var height = $tip[0].offsetHeight

		// manually read margins because getBoundingClientRect includes difference
		var marginTop = parseInt($tip.css('margin-top'), 10)
		var marginLeft = parseInt($tip.css('margin-left'), 10)

		// we must check for NaN for ie 8/9
		if (isNaN(marginTop)) marginTop = 0
		if (isNaN(marginLeft)) marginLeft = 0

		offset.top = offset.top + marginTop
		offset.left = offset.left + marginLeft

		// $.fn.offset doesn't round pixel values
		// so we use setOffset directly with our own function B-0
		$.offset.setOffset($tip[0], $.extend({
			using: function(props) {
				$tip.css({
					top: Math.round(props.top),
					left: Math.round(props.left)
				})
			}
		}, offset), 0)

		$tip.addClass('in')

		// check to see if placing tip in new offset caused the tip to resize itself
		var actualWidth = $tip[0].offsetWidth
		var actualHeight = $tip[0].offsetHeight

		if (placement == 'top' && actualHeight != height) {
			offset.top = offset.top + height - actualHeight
		}

		var delta = this.getViewportAdjustedDelta(placement, offset, actualWidth, actualHeight)

		if (delta.left) offset.left += delta.left
		else offset.top += delta.top

		var arrowDelta = delta.left ? delta.left * 2 - width + actualWidth : delta.top * 2 - height + actualHeight
		var arrowPosition = delta.left ? 'left' : 'top'
		var arrowOffsetPosition = delta.left ? 'offsetWidth' : 'offsetHeight'

		$tip.offset(offset)
		this.replaceArrow(arrowDelta, $tip[0][arrowOffsetPosition], arrowPosition)
	}

	Tooltip.prototype.replaceArrow = function(delta, dimension, position) {
		this.arrow().css(position, delta ? (50 * (1 - delta / dimension) + '%') : '')
	}

	Tooltip.prototype.setContent = function() {
		var $tip = this.tip()
		var title = this.getTitle()

		$tip.find('.tooltip-inner')[this.options.html ? 'html' : 'text'](title)
		$tip.removeClass('fade in top bottom left right')
	}

	Tooltip.prototype.hide = function() {
		var that = this
		var $tip = this.tip()
		var e = $.Event('hide.bs.' + this.type)

		this.$element.removeAttr('aria-describedby')

		function complete() {
			if (that.hoverState != 'in') $tip.detach()
			that.$element.trigger('hidden.bs.' + that.type)
		}

		this.$element.trigger(e)

		if (e.isDefaultPrevented()) return

		$tip.removeClass('in')

		$.support.transition && this.$tip.hasClass('fade') ?
			$tip
			.one('bsTransitionEnd', complete)
			.emulateTransitionEnd(150) :
			complete()

		this.hoverState = null

		return this
	}

	Tooltip.prototype.fixTitle = function() {
		var $e = this.$element
		if ($e.attr('title') || typeof($e.attr('data-original-title')) != 'string') {
			$e.attr('data-original-title', $e.attr('title') || '').attr('title', '')
		}
	}

	Tooltip.prototype.hasContent = function() {
		return this.getTitle()
	}

	Tooltip.prototype.getPosition = function($element) {
		$element = $element || this.$element
		var el = $element[0]
		var isBody = el.tagName == 'BODY'
		return $.extend({}, (typeof el.getBoundingClientRect == 'function') ? el.getBoundingClientRect() : null, {
			scroll: isBody ? document.documentElement.scrollTop || document.body.scrollTop : $element.scrollTop(),
			width: isBody ? $(window).width() : $element.outerWidth(),
			height: isBody ? $(window).height() : $element.outerHeight()
		}, isBody ? {
			top: 0,
			left: 0
		} : $element.offset())
	}

	Tooltip.prototype.getCalculatedOffset = function(placement, pos, actualWidth, actualHeight) {
		return placement == 'bottom' ? {
				top: pos.top + pos.height,
				left: pos.left + pos.width / 2 - actualWidth / 2
			} :
			placement == 'top' ? {
				top: pos.top - actualHeight,
				left: pos.left + pos.width / 2 - actualWidth / 2
			} :
			placement == 'left' ? {
				top: pos.top + pos.height / 2 - actualHeight / 2,
				left: pos.left - actualWidth
			} :
			/* placement == 'right' */
			{
				top: pos.top + pos.height / 2 - actualHeight / 2,
				left: pos.left + pos.width
			}

	}

	Tooltip.prototype.getViewportAdjustedDelta = function(placement, pos, actualWidth, actualHeight) {
		var delta = {
			top: 0,
			left: 0
		}
		if (!this.$viewport) return delta

		var viewportPadding = this.options.viewport && this.options.viewport.padding || 0
		var viewportDimensions = this.getPosition(this.$viewport)

		if (/right|left/.test(placement)) {
			var topEdgeOffset = pos.top - viewportPadding - viewportDimensions.scroll
			var bottomEdgeOffset = pos.top + viewportPadding - viewportDimensions.scroll + actualHeight
			if (topEdgeOffset < viewportDimensions.top) { // top overflow
				delta.top = viewportDimensions.top - topEdgeOffset
			} else if (bottomEdgeOffset > viewportDimensions.top + viewportDimensions.height) { // bottom overflow
				delta.top = viewportDimensions.top + viewportDimensions.height - bottomEdgeOffset
			}
		} else {
			var leftEdgeOffset = pos.left - viewportPadding
			var rightEdgeOffset = pos.left + viewportPadding + actualWidth
			if (leftEdgeOffset < viewportDimensions.left) { // left overflow
				delta.left = viewportDimensions.left - leftEdgeOffset
			} else if (rightEdgeOffset > viewportDimensions.width) { // right overflow
				delta.left = viewportDimensions.left + viewportDimensions.width - rightEdgeOffset
			}
		}

		return delta
	}

	Tooltip.prototype.getTitle = function() {
		var title
		var $e = this.$element
		var o = this.options

		title = $e.attr('data-original-title') || (typeof o.title == 'function' ? o.title.call($e[0]) : o.title)

		return title
	}

	Tooltip.prototype.getUID = function(prefix) {
		do prefix += ~~(Math.random() * 1000000)
		while (document.getElementById(prefix))
		return prefix
	}

	Tooltip.prototype.tip = function() {
		return (this.$tip = this.$tip || $(this.options.template))
	}

	Tooltip.prototype.arrow = function() {
		return (this.$arrow = this.$arrow || this.tip().find('.tooltip-arrow'))
	}

	Tooltip.prototype.validate = function() {
		if (!this.$element[0].parentNode) {
			this.hide()
			this.$element = null
			this.options = null
		}
	}

	Tooltip.prototype.enable = function() {
		this.enabled = true
	}

	Tooltip.prototype.disable = function() {
		this.enabled = false
	}

	Tooltip.prototype.toggleEnabled = function() {
		this.enabled = !this.enabled
	}

	Tooltip.prototype.toggle = function(e) {
		var self = this
		if (e) {
			self = $(e.currentTarget).data('bs.' + this.type)
			if (!self) {
				self = new this.constructor(e.currentTarget, this.getDelegateOptions())
				$(e.currentTarget).data('bs.' + this.type, self)
			}
		}

		self.tip().hasClass('in') ? self.leave(self) : self.enter(self)
	}

	Tooltip.prototype.destroy = function() {
		clearTimeout(this.timeout)
		this.hide().$element.off('.' + this.type).removeData('bs.' + this.type)
	}


	// TOOLTIP PLUGIN DEFINITION
	// =========================

	function Plugin(option) {
		return this.each(function() {
			var $this = $(this)
			var data = $this.data('bs.tooltip')
			var options = typeof option == 'object' && option

			if (!data && option == 'destroy') return
			if (!data) $this.data('bs.tooltip', (data = new Tooltip(this, options)))
			if (typeof option == 'string') data[option]()
		})
	}

	var old = $.fn.tooltip

	$.fn.tooltip = Plugin
	$.fn.tooltip.Constructor = Tooltip


	// TOOLTIP NO CONFLICT
	// ===================

	$.fn.tooltip.noConflict = function() {
		$.fn.tooltip = old
		return this
	}

}(jQuery);

/* ========================================================================
 * Bootstrap: popover.js v3.2.0
 * http://getbootstrap.com/javascript/#popovers
 * ========================================================================
 * Copyright 2011-2014 Twitter, Inc.
 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
 * ======================================================================== */


+ function($) {
	'use strict';

	// POPOVER PUBLIC CLASS DEFINITION
	// ===============================

	var Popover = function(element, options) {
		this.init('popover', element, options)
	}

	if (!$.fn.tooltip) throw new Error('Popover requires tooltip.js')

	Popover.VERSION = '3.2.0'

	Popover.DEFAULTS = $.extend({}, $.fn.tooltip.Constructor.DEFAULTS, {
		placement: 'right',
		trigger: 'click',
		content: '',
		template: '<div class="popover" role="tooltip"><div class="arrow"></div><h3 class="popover-title"></h3><div class="popover-content"></div></div>'
	})


	// NOTE: POPOVER EXTENDS tooltip.js
	// ================================

	Popover.prototype = $.extend({}, $.fn.tooltip.Constructor.prototype)

	Popover.prototype.constructor = Popover

	Popover.prototype.getDefaults = function() {
		return Popover.DEFAULTS
	}

	Popover.prototype.setContent = function() {
		var $tip = this.tip()
		var title = this.getTitle()
		var content = this.getContent()

		$tip.find('.popover-title')[this.options.html ? 'html' : 'text'](title)
		$tip.find('.popover-content').empty()[ // we use append for html objects to maintain js events
			this.options.html ? (typeof content == 'string' ? 'html' : 'append') : 'text'
		](content)

		$tip.removeClass('fade top bottom left right in')

		// IE8 doesn't accept hiding via the `:empty` pseudo selector, we have to do
		// this manually by checking the contents.
		if (!$tip.find('.popover-title').html()) $tip.find('.popover-title').hide()
	}

	Popover.prototype.hasContent = function() {
		return this.getTitle() || this.getContent()
	}

	Popover.prototype.getContent = function() {
		var $e = this.$element
		var o = this.options

		return $e.attr('data-content') || (typeof o.content == 'function' ?
			o.content.call($e[0]) :
			o.content)
	}

	Popover.prototype.arrow = function() {
		return (this.$arrow = this.$arrow || this.tip().find('.arrow'))
	}

	Popover.prototype.tip = function() {
		if (!this.$tip) this.$tip = $(this.options.template)
		return this.$tip
	}


	// POPOVER PLUGIN DEFINITION
	// =========================

	function Plugin(option) {
		return this.each(function() {
			var $this = $(this)
			var data = $this.data('bs.popover')
			var options = typeof option == 'object' && option

			if (!data && option == 'destroy') return
			if (!data) $this.data('bs.popover', (data = new Popover(this, options)))
			if (typeof option == 'string') data[option]()
		})
	}

	var old = $.fn.popover

	$.fn.popover = Plugin
	$.fn.popover.Constructor = Popover


	// POPOVER NO CONFLICT
	// ===================

	$.fn.popover.noConflict = function() {
		$.fn.popover = old
		return this
	}

}(jQuery);

/*************************************************************************************************************!
 * Bootstrap-select v1.6.2 (http://silviomoreto.github.io/bootstrap-select/)
 *
 * Copyright 2013-2014 bootstrap-select
 * Licensed under MIT (https://github.com/silviomoreto/bootstrap-select/blob/master/LICENSE)
 */
(function($) {
	'use strict';

	// Case insensitive search
	$.expr[':'].icontains = function(obj, index, meta) {
		return icontains($(obj).text(), meta[3]);
	};

	// Case and accent insensitive search
	$.expr[':'].aicontains = function(obj, index, meta) {
		return icontains($(obj).data('normalizedText') || $(obj).text(), meta[3]);
	};

	/**
	 * Actual implementation of the case insensitive search.
	 * @access private
	 * @param {String} haystack
	 * @param {String} needle
	 * @returns {boolean}
	 */
	function icontains(haystack, needle) {
		return haystack.toUpperCase().indexOf(needle.toUpperCase()) > -1;
	}

	/**
	 * Remove all diatrics from the given text.
	 * @access private
	 * @param {String} text
	 * @returns {String}
	 */
	function normalizeToBase(text) {
		var rExps = [{
			re: /[\xC0-\xC6]/g,
			ch: "A"
		}, {
			re: /[\xE0-\xE6]/g,
			ch: "a"
		}, {
			re: /[\xC8-\xCB]/g,
			ch: "E"
		}, {
			re: /[\xE8-\xEB]/g,
			ch: "e"
		}, {
			re: /[\xCC-\xCF]/g,
			ch: "I"
		}, {
			re: /[\xEC-\xEF]/g,
			ch: "i"
		}, {
			re: /[\xD2-\xD6]/g,
			ch: "O"
		}, {
			re: /[\xF2-\xF6]/g,
			ch: "o"
		}, {
			re: /[\xD9-\xDC]/g,
			ch: "U"
		}, {
			re: /[\xF9-\xFC]/g,
			ch: "u"
		}, {
			re: /[\xC7-\xE7]/g,
			ch: "c"
		}, {
			re: /[\xD1]/g,
			ch: "N"
		}, {
			re: /[\xF1]/g,
			ch: "n"
		}];
		$.each(rExps, function() {
			text = text.replace(this.re, this.ch);
		});
		return text;
	}

	var Selectpicker = function(element, options, e) {
		if (e) {
			e.stopPropagation();
			e.preventDefault();
		}

		this.$element = $(element);
		this.$newElement = null;
		this.$button = null;
		this.$menu = null;
		this.$lis = null;
		this.options = options;

		// If we have no title yet, try to pull it from the html title attribute (jQuery doesnt' pick it up as it's not a
		// data-attribute)
		if (this.options.title === null) {
			this.options.title = this.$element.attr('title');
		}

		//Expose public methods
		this.val = Selectpicker.prototype.val;
		this.render = Selectpicker.prototype.render;
		this.refresh = Selectpicker.prototype.refresh;
		this.setStyle = Selectpicker.prototype.setStyle;
		this.selectAll = Selectpicker.prototype.selectAll;
		this.deselectAll = Selectpicker.prototype.deselectAll;
		this.destroy = Selectpicker.prototype.remove;
		this.remove = Selectpicker.prototype.remove;
		this.show = Selectpicker.prototype.show;
		this.hide = Selectpicker.prototype.hide;

		this.init();
	};

	Selectpicker.VERSION = '1.6.2';

	// part of this is duplicated in i18n/defaults-en_US.js. Make sure to update both.
	Selectpicker.DEFAULTS = {
		noneSelectedText: 'Nothing selected',
		noneResultsText: 'No results match',
		countSelectedText: function(numSelected, numTotal) {
			return (numSelected == 1) ? "{0} item selected" : "{0} items selected";
		},
		maxOptionsText: function(numAll, numGroup) {
			var arr = [];

			arr[0] = (numAll == 1) ? 'Limit reached ({n} item max)' : 'Limit reached ({n} items max)';
			arr[1] = (numGroup == 1) ? 'Group limit reached ({n} item max)' : 'Group limit reached ({n} items max)';

			return arr;
		},
		selectAllText: 'Select All',
		deselectAllText: 'Deselect All',
		multipleSeparator: ', ',
		style: 'btn-select',
		size: 'auto',
		title: 'string',
		selectedTextFormat: 'values',
		width: false,
		container: false,
		hideDisabled: false,
		showSubtext: false,
		showIcon: true,
		showContent: true,
		dropupAuto: true,
		header: false,
		liveSearch: false,
		actionsBox: false,
		iconBase: 'glyphicon',
		tickIcon: 'glyphicon-ok',
		maxOptions: false,
		mobile: false,
		selectOnTab: false,
		dropdownAlignRight: false,
		searchAccentInsensitive: false
	};

	Selectpicker.prototype = {

		constructor: Selectpicker,

		init: function() {
			var that = this,
				id = this.$element.attr('id');

			this.$element.hide();
			this.multiple = this.$element.prop('multiple');
			this.autofocus = this.$element.prop('autofocus');
			this.$newElement = this.createView();
			this.$element.after(this.$newElement);
			this.$menu = this.$newElement.find('> .dropdown-menu');
			this.$button = this.$newElement.find('> button');
			this.$searchbox = this.$newElement.find('input');

			if (this.options.dropdownAlignRight)
				this.$menu.addClass('dropdown-menu-right');

			if (typeof id !== 'undefined') {
				this.$button.attr('data-id', id);
				$('label[for="' + id + '"]').click(function(e) {
					e.preventDefault();
					that.$button.focus();
				});
			}

			this.checkDisabled();
			this.clickListener();
			if (this.options.liveSearch) this.liveSearchListener();
			this.render();
			this.liHeight();
			this.setStyle();
			this.setWidth();
			if (this.options.container) this.selectPosition();
			this.$menu.data('this', this);
			this.$newElement.data('this', this);
			if (this.options.mobile) this.mobile();
		},

		createDropdown: function() {
			// Options
			// If we are multiple, then add the show-tick class by default
			var multiple = this.multiple ? ' show-tick' : '',
				inputGroup = this.$element.parent().hasClass('input-group') ? ' input-group-btn' : '',
				autofocus = this.autofocus ? ' autofocus' : '',
				btnSize = this.$element.parents().hasClass('form-group-lg') ? ' btn-lg' : (this.$element.parents().hasClass('form-group-sm') ? ' btn-sm' : '');
			// Elements
			var header = this.options.header ? '<div class="popover-title"><button type="button" class="close" aria-hidden="true">&times;</button>' + this.options.header + '</div>' : '';
			var searchbox = this.options.liveSearch ? '<div class="bs-searchbox"><input type="text" class="input-block-level form-control" autocomplete="off" /></div>' : '';
			var actionsbox = this.options.actionsBox ? '<div class="bs-actionsbox">' +
				'<div class="btn-group btn-block">' +
				'<button class="actions-btn bs-select-all btn btn-sm btn-default">' +
				this.options.selectAllText +
				'</button>' +
				'<button class="actions-btn bs-deselect-all btn btn-sm btn-default">' +
				this.options.deselectAllText +
				'</button>' +
				'</div>' +
				'</div>' : '';
			var drop =
				'<div class="btn-group bootstrap-select' + multiple + inputGroup + '">' +
				'<button type="button" class="btn dropdown-toggle selectpicker' + btnSize + '" data-toggle="dropdown"' + autofocus + '>' +
				'<span class="filter-option pull-left"></span>&nbsp;' +
				'<span class="caret"></span>' +
				'</button>' +
				'<div class="dropdown-menu open">' +
				header +
				searchbox +
				actionsbox +
				'<ul class="dropdown-menu inner selectpicker" role="menu">' +
				'</ul>' +
				'</div>' +
				'</div>';

			return $(drop);
		},

		createView: function() {
			var $drop = this.createDropdown();
			var $li = this.createLi();
			$drop.find('ul').append($li);
			return $drop;
		},

		reloadLi: function() {
			//Remove all children.
			this.destroyLi();
			//Re build
			var $li = this.createLi();
			this.$menu.find('ul').append($li);
		},

		destroyLi: function() {
			this.$menu.find('li').remove();
		},

		createLi: function() {
			var that = this,
				_li = [],
				optID = 0;

			// Helper functions
			/**
			 * @param content
			 * @param [index]
			 * @param [classes]
			 * @returns {string}
			 */
			var generateLI = function(content, index, classes) {
				return '<li' +
					(typeof classes !== 'undefined' ? ' class="' + classes + '"' : '') +
					(typeof index !== 'undefined' | null === index ? ' data-original-index="' + index + '"' : '') +
					'>' + content + '</li>';
			};

			/**
			 * @param text
			 * @param [classes]
			 * @param [inline]
			 * @param [optgroup]
			 * @returns {string}
			 */
			var generateA = function(text, classes, inline, optgroup) {
				var normText = normalizeToBase($.trim($("<div/>").html(text).text()).replace(/\s\s+/g, ' '));
				return '<a tabindex="0"' +
					(typeof classes !== 'undefined' ? ' class="' + classes + '"' : '') +
					(typeof inline !== 'undefined' ? ' style="' + inline + '"' : '') +
					(typeof optgroup !== 'undefined' ? 'data-optgroup="' + optgroup + '"' : '') +
					' data-normalized-text="' + normText + '"' +
					'>' + text +
					'<span class="' + that.options.iconBase + ' ' + that.options.tickIcon + ' check-mark"></span>' +
					'</a>';
			};

			this.$element.find('option').each(function() {
				var $this = $(this);

				// Get the class and text for the option
				var optionClass = $this.attr('class') || '',
					inline = $this.attr('style'),
					text = $this.data('content') ? $this.data('content') : $this.html(),
					subtext = typeof $this.data('subtext') !== 'undefined' ? '<small class="muted text-muted">' + $this.data('subtext') + '</small>' : '',
					icon = typeof $this.data('icon') !== 'undefined' ? '<span class="' + that.options.iconBase + ' ' + $this.data('icon') + '"></span> ' : '',
					isDisabled = $this.is(':disabled') || $this.parent().is(':disabled'),
					index = $this[0].index;
				if (icon !== '' && isDisabled) {
					icon = '<span>' + icon + '</span>';
				}

				if (!$this.data('content')) {
					// Prepend any icon and append any subtext to the main text.
					text = icon + '<span class="text">' + text + subtext + '</span>';
				}

				if (that.options.hideDisabled && isDisabled) {
					return;
				}

				if ($this.parent().is('optgroup') && $this.data('divider') !== true) {
					if ($this.index() === 0) { // Is it the first option of the optgroup?
						optID += 1;

						// Get the opt group label
						var label = $this.parent().attr('label');
						var labelSubtext = typeof $this.parent().data('subtext') !== 'undefined' ? '<small class="muted text-muted">' + $this.parent().data('subtext') + '</small>' : '';
						var labelIcon = $this.parent().data('icon') ? '<span class="' + that.options.iconBase + ' ' + $this.parent().data('icon') + '"></span> ' : '';
						label = labelIcon + '<span class="text">' + label + labelSubtext + '</span>';

						if (index !== 0 && _li.length > 0) { // Is it NOT the first option of the select && are there elements in the dropdown?
							_li.push(generateLI('', null, 'divider'));
						}

						_li.push(generateLI(label, null, 'dropdown-header'));
					}

					_li.push(generateLI(generateA(text, 'opt ' + optionClass, inline, optID), index));
				} else if ($this.data('divider') === true) {
					_li.push(generateLI('', index, 'divider'));
				} else if ($this.data('hidden') === true) {
					_li.push(generateLI(generateA(text, optionClass, inline), index, 'hide is-hidden'));
				} else {
					_li.push(generateLI(generateA(text, optionClass, inline), index));
				}
			});

			//If we are not multiple, we don't have a selected item, and we don't have a title, select the first element so something is set in the button
			if (!this.multiple && this.$element.find('option:selected').length === 0 && !this.options.title) {
				this.$element.find('option').eq(0).prop('selected', true).attr('selected', 'selected');
			}

			return $(_li.join(''));
		},

		findLis: function() {
			if (this.$lis == null) this.$lis = this.$menu.find('li');
			return this.$lis;
		},

		/**
		 * @param [updateLi] defaults to true
		 */
		render: function(updateLi) {
			var that = this;

			//Update the LI to match the SELECT
			if (updateLi !== false) {
				this.$element.find('option').each(function(index) {
					that.setDisabled(index, $(this).is(':disabled') || $(this).parent().is(':disabled'));
					that.setSelected(index, $(this).is(':selected'));
				});
			}

			this.tabIndex();
			var notDisabled = this.options.hideDisabled ? ':not([disabled])' : '';
			var selectedItems = this.$element.find('option:selected' + notDisabled).map(function() {
				var $this = $(this);
				var icon = $this.data('icon') && that.options.showIcon ? '<i class="' + that.options.iconBase + ' ' + $this.data('icon') + '"></i> ' : '';
				var subtext;
				if (that.options.showSubtext && $this.attr('data-subtext') && !that.multiple) {
					subtext = ' <small class="muted text-muted">' + $this.data('subtext') + '</small>';
				} else {
					subtext = '';
				}
				if ($this.data('content') && that.options.showContent) {
					return $this.data('content');
				} else if (typeof $this.attr('title') !== 'undefined') {
					return $this.attr('title');
				} else {
					return icon + $this.html() + subtext;
				}
			}).toArray();

			//Fixes issue in IE10 occurring when no default option is selected and at least one option is disabled
			//Convert all the values into a comma delimited string
			var title = !this.multiple ? selectedItems[0] : selectedItems.join(this.options.multipleSeparator);

			//If this is multi select, and the selectText type is count, the show 1 of 2 selected etc..
			if (this.multiple && this.options.selectedTextFormat.indexOf('count') > -1) {
				var max = this.options.selectedTextFormat.split('>');
				if ((max.length > 1 && selectedItems.length > max[1]) || (max.length == 1 && selectedItems.length >= 2)) {
					notDisabled = this.options.hideDisabled ? ', [disabled]' : '';
					var totalCount = this.$element.find('option').not('[data-divider="true"], [data-hidden="true"]' + notDisabled).length,
						tr8nText = (typeof this.options.countSelectedText === 'function') ? this.options.countSelectedText(selectedItems.length, totalCount) : this.options.countSelectedText;
					title = tr8nText.replace('{0}', selectedItems.length.toString()).replace('{1}', totalCount.toString());
				}
			}

			this.options.title = this.$element.attr('title');

			if (this.options.selectedTextFormat == 'static') {
				title = this.options.title;
			}

			//If we dont have a title, then use the default, or if nothing is set at all, use the not selected text
			if (!title) {
				title = typeof this.options.title !== 'undefined' ? this.options.title : this.options.noneSelectedText;
			}

			this.$button.attr('title', $.trim($("<div/>").html(title).text()).replace(/\s\s+/g, ' '));
			this.$newElement.find('.filter-option').html(title);
		},

		/**
		 * @param [style]
		 * @param [status]
		 */
		setStyle: function(style, status) {
			if (this.$element.attr('class')) {
				this.$newElement.addClass(this.$element.attr('class').replace(/selectpicker|mobile-device|validate\[.*\]/gi, ''));
			}

			var buttonClass = style ? style : this.options.style;

			if (status == 'add') {
				this.$button.addClass(buttonClass);
			} else if (status == 'remove') {
				this.$button.removeClass(buttonClass);
			} else {
				this.$button.removeClass(this.options.style);
				this.$button.addClass(buttonClass);
			}
		},

		liHeight: function() {
			if (this.options.size === false) return;

			var $selectClone = this.$menu.parent().clone().find('> .dropdown-toggle').prop('autofocus', false).end().appendTo('body'),
				$menuClone = $selectClone.addClass('open').find('> .dropdown-menu'),
				liHeight = $menuClone.find('li').not('.divider').not('.dropdown-header').filter(':visible').children('a').outerHeight(),
				headerHeight = this.options.header ? $menuClone.find('.popover-title').outerHeight() : 0,
				searchHeight = this.options.liveSearch ? $menuClone.find('.bs-searchbox').outerHeight() : 0,
				actionsHeight = this.options.actionsBox ? $menuClone.find('.bs-actionsbox').outerHeight() : 0;

			$selectClone.remove();

			this.$newElement
				.data('liHeight', liHeight)
				.data('headerHeight', headerHeight)
				.data('searchHeight', searchHeight)
				.data('actionsHeight', actionsHeight);
		},

		setSize: function() {
			this.findLis();
			var that = this,
				menu = this.$menu,
				menuInner = menu.find('.inner'),
				selectHeight = this.$newElement.outerHeight(),
				liHeight = this.$newElement.data('liHeight'),
				headerHeight = this.$newElement.data('headerHeight'),
				searchHeight = this.$newElement.data('searchHeight'),
				actionsHeight = this.$newElement.data('actionsHeight'),
				divHeight = this.$lis.filter('.divider').outerHeight(true),
				menuPadding = parseInt(menu.css('padding-top')) +
				parseInt(menu.css('padding-bottom')) +
				parseInt(menu.css('border-top-width')) +
				parseInt(menu.css('border-bottom-width')),
				notDisabled = this.options.hideDisabled ? ', .disabled' : '',
				$window = $(window),
				menuExtras = menuPadding + parseInt(menu.css('margin-top')) + parseInt(menu.css('margin-bottom')) + 2,
				menuHeight,
				selectOffsetTop,
				selectOffsetBot,
				posVert = function() {
					// JQuery defines a scrollTop function, but in pure JS it's a property
					//noinspection JSValidateTypes
					selectOffsetTop = that.$newElement.offset().top - $window.scrollTop();
					selectOffsetBot = $window.height() - selectOffsetTop - selectHeight;
				};
			posVert();
			if (this.options.header) menu.css('padding-top', 0);

			if (this.options.size == 'auto') {
				var getSize = function() {
					var minHeight,
						lisVis = that.$lis.not('.hide');

					posVert();
					menuHeight = selectOffsetBot - menuExtras;

					if (that.options.dropupAuto) {
						that.$newElement.toggleClass('dropup', (selectOffsetTop > selectOffsetBot) && ((menuHeight - menuExtras) < menu.height()));
					}
					if (that.$newElement.hasClass('dropup')) {
						menuHeight = selectOffsetTop - menuExtras;
					}

					if ((lisVis.length + lisVis.filter('.dropdown-header').length) > 3) {
						minHeight = liHeight * 3 + menuExtras - 2;
					} else {
						minHeight = 0;
					}

					menu.css({
						'max-height': menuHeight + 'px',
						'overflow': 'hidden',
						'min-height': minHeight + headerHeight + searchHeight + actionsHeight + 'px'
					});
					menuInner.css({
						'max-height': menuHeight - headerHeight - searchHeight - actionsHeight - menuPadding + 'px',
						'overflow-y': 'auto',
						'min-height': Math.max(minHeight - menuPadding, 0) + 'px'
					});
				};
				getSize();
				this.$searchbox.off('input.getSize propertychange.getSize').on('input.getSize propertychange.getSize', getSize);
				$(window).off('resize.getSize').on('resize.getSize', getSize);
				$(window).off('scroll.getSize').on('scroll.getSize', getSize);
			} else if (this.options.size && this.options.size != 'auto' && menu.find('li' + notDisabled).length > this.options.size) {
				var optIndex = this.$lis.not('.divider' + notDisabled).find(' > *').slice(0, this.options.size).last().parent().index();
				var divLength = this.$lis.slice(0, optIndex + 1).filter('.divider').length;
				menuHeight = liHeight * this.options.size + divLength * divHeight + menuPadding;
				if (that.options.dropupAuto) {
					//noinspection JSUnusedAssignment
					this.$newElement.toggleClass('dropup', (selectOffsetTop > selectOffsetBot) && (menuHeight < menu.height()));
				}
				menu.css({
					'max-height': menuHeight + headerHeight + searchHeight + actionsHeight + 'px',
					'overflow': 'hidden'
				});
				menuInner.css({
					'max-height': menuHeight - menuPadding + 'px',
					'overflow-y': 'auto'
				});
			}
		},

		setWidth: function() {
			if (this.options.width == 'auto') {
				this.$menu.css('min-width', '0');

				// Get correct width if element hidden
				var selectClone = this.$newElement.clone().appendTo('body');
				var ulWidth = selectClone.find('> .dropdown-menu').css('width');
				var btnWidth = selectClone.css('width', 'auto').find('> button').css('width');
				selectClone.remove();

				// Set width to whatever's larger, button title or longest option
				this.$newElement.css('width', Math.max(parseInt(ulWidth), parseInt(btnWidth)) + 'px');
			} else if (this.options.width == 'fit') {
				// Remove inline min-width so width can be changed from 'auto'
				this.$menu.css('min-width', '');
				this.$newElement.css('width', '').addClass('fit-width');
			} else if (this.options.width) {
				// Remove inline min-width so width can be changed from 'auto'
				this.$menu.css('min-width', '');
				this.$newElement.css('width', this.options.width);
			} else {
				// Remove inline min-width/width so width can be changed
				this.$menu.css('min-width', '');
				this.$newElement.css('width', '');
			}
			// Remove fit-width class if width is changed programmatically
			if (this.$newElement.hasClass('fit-width') && this.options.width !== 'fit') {
				this.$newElement.removeClass('fit-width');
			}
		},

		selectPosition: function() {
			var that = this,
				drop = '<div />',
				$drop = $(drop),
				pos,
				actualHeight,
				getPlacement = function($element) {
					$drop.addClass($element.attr('class').replace(/form-control/gi, '')).toggleClass('dropup', $element.hasClass('dropup'));
					pos = $element.offset();
					actualHeight = $element.hasClass('dropup') ? 0 : $element[0].offsetHeight;
					$drop.css({
						'top': pos.top + actualHeight,
						'left': pos.left,
						'width': $element[0].offsetWidth,
						'position': 'absolute'
					});
				};
			this.$newElement.on('click', function() {
				if (that.isDisabled()) {
					return;
				}
				getPlacement($(this));
				$drop.appendTo(that.options.container);
				$drop.toggleClass('open', !$(this).hasClass('open'));
				$drop.append(that.$menu);
			});
			$(window).resize(function() {
				getPlacement(that.$newElement);
			});
			$(window).on('scroll', function() {
				getPlacement(that.$newElement);
			});
			$('html').on('click', function(e) {
				if ($(e.target).closest(that.$newElement).length < 1) {
					$drop.removeClass('open');
				}
			});
		},

		setSelected: function(index, selected) {
			this.findLis();
			this.$lis.filter('[data-original-index="' + index + '"]').toggleClass('selected', selected);
		},

		setDisabled: function(index, disabled) {
			this.findLis();
			if (disabled) {
				this.$lis.filter('[data-original-index="' + index + '"]').addClass('disabled').find('a').attr('href', '#').attr('tabindex', -1);
			} else {
				this.$lis.filter('[data-original-index="' + index + '"]').removeClass('disabled').find('a').removeAttr('href').attr('tabindex', 0);
			}
		},

		isDisabled: function() {
			return this.$element.is(':disabled');
		},

		checkDisabled: function() {
			var that = this;

			if (this.isDisabled()) {
				this.$button.addClass('disabled').attr('tabindex', -1);
			} else {
				if (this.$button.hasClass('disabled')) {
					this.$button.removeClass('disabled');
				}

				if (this.$button.attr('tabindex') == -1) {
					if (!this.$element.data('tabindex')) this.$button.removeAttr('tabindex');
				}
			}

			this.$button.click(function() {
				return !that.isDisabled();
			});
		},

		tabIndex: function() {
			if (this.$element.is('[tabindex]')) {
				this.$element.data('tabindex', this.$element.attr('tabindex'));
				this.$button.attr('tabindex', this.$element.data('tabindex'));
			}
		},

		clickListener: function() {
			var that = this;

			this.$newElement.on('touchstart.dropdown', '.dropdown-menu', function(e) {
				e.stopPropagation();
			});

			this.$newElement.on('click', function() {
				that.setSize();
				if (!that.options.liveSearch && !that.multiple) {
					setTimeout(function() {
						that.$menu.find('.selected a').focus();
					}, 10);
				}
			});

			this.$menu.on('click', 'li a', function(e) {
				var $this = $(this),
					clickedIndex = $this.parent().data('originalIndex'),
					prevValue = that.$element.val(),
					prevIndex = that.$element.prop('selectedIndex');

				// Don't close on multi choice menu
				if (that.multiple) {
					e.stopPropagation();
				}

				e.preventDefault();

				//Don't run if we have been disabled
				if (!that.isDisabled() && !$this.parent().hasClass('disabled')) {
					var $options = that.$element.find('option'),
						$option = $options.eq(clickedIndex),
						state = $option.prop('selected'),
						$optgroup = $option.parent('optgroup'),
						maxOptions = that.options.maxOptions,
						maxOptionsGrp = $optgroup.data('maxOptions') || false;

					if (!that.multiple) { // Deselect all others if not multi select box
						$options.prop('selected', false);
						$option.prop('selected', true);
						that.$menu.find('.selected').removeClass('selected');
						that.setSelected(clickedIndex, true);
					} else { // Toggle the one we have chosen if we are multi select.
						$option.prop('selected', !state);
						that.setSelected(clickedIndex, !state);
						$this.blur();

						if ((maxOptions !== false) || (maxOptionsGrp !== false)) {
							var maxReached = maxOptions < $options.filter(':selected').length,
								maxReachedGrp = maxOptionsGrp < $optgroup.find('option:selected').length;

							if ((maxOptions && maxReached) || (maxOptionsGrp && maxReachedGrp)) {
								if (maxOptions && maxOptions == 1) {
									$options.prop('selected', false);
									$option.prop('selected', true);
									that.$menu.find('.selected').removeClass('selected');
									that.setSelected(clickedIndex, true);
								} else if (maxOptionsGrp && maxOptionsGrp == 1) {
									$optgroup.find('option:selected').prop('selected', false);
									$option.prop('selected', true);
									var optgroupID = $this.data('optgroup');

									that.$menu.find('.selected').has('a[data-optgroup="' + optgroupID + '"]').removeClass('selected');

									that.setSelected(clickedIndex, true);
								} else {
									var maxOptionsArr = (typeof that.options.maxOptionsText === 'function') ?
										that.options.maxOptionsText(maxOptions, maxOptionsGrp) : that.options.maxOptionsText,
										maxTxt = maxOptionsArr[0].replace('{n}', maxOptions),
										maxTxtGrp = maxOptionsArr[1].replace('{n}', maxOptionsGrp),
										$notify = $('<div class="notify"></div>');
									// If {var} is set in array, replace it
									/** @deprecated */
									if (maxOptionsArr[2]) {
										maxTxt = maxTxt.replace('{var}', maxOptionsArr[2][maxOptions > 1 ? 0 : 1]);
										maxTxtGrp = maxTxtGrp.replace('{var}', maxOptionsArr[2][maxOptionsGrp > 1 ? 0 : 1]);
									}

									$option.prop('selected', false);

									that.$menu.append($notify);

									if (maxOptions && maxReached) {
										$notify.append($('<div>' + maxTxt + '</div>'));
										that.$element.trigger('maxReached.bs.select');
									}

									if (maxOptionsGrp && maxReachedGrp) {
										$notify.append($('<div>' + maxTxtGrp + '</div>'));
										that.$element.trigger('maxReachedGrp.bs.select');
									}

									setTimeout(function() {
										that.setSelected(clickedIndex, false);
									}, 10);

									$notify.delay(750).fadeOut(300, function() {
										$(this).remove();
									});
								}
							}
						}
					}

					if (!that.multiple) {
						that.$button.focus();
					} else if (that.options.liveSearch) {
						that.$searchbox.focus();
					}

					// Trigger select 'change'
					if ((prevValue != that.$element.val() && that.multiple) || (prevIndex != that.$element.prop('selectedIndex') && !that.multiple)) {
						that.$element.change();
					}
				}
			});

			this.$menu.on('click', 'li.disabled a, .popover-title, .popover-title :not(.close)', function(e) {
				if (e.target == this) {
					e.preventDefault();
					e.stopPropagation();
					if (!that.options.liveSearch) {
						that.$button.focus();
					} else {
						that.$searchbox.focus();
					}
				}
			});

			this.$menu.on('click', 'li.divider, li.dropdown-header', function(e) {
				e.preventDefault();
				e.stopPropagation();
				if (!that.options.liveSearch) {
					that.$button.focus();
				} else {
					that.$searchbox.focus();
				}
			});

			this.$menu.on('click', '.popover-title .close', function() {
				that.$button.focus();
			});

			this.$searchbox.on('click', function(e) {
				e.stopPropagation();
			});


			this.$menu.on('click', '.actions-btn', function(e) {
				if (that.options.liveSearch) {
					that.$searchbox.focus();
				} else {
					that.$button.focus();
				}

				e.preventDefault();
				e.stopPropagation();

				if ($(this).is('.bs-select-all')) {
					that.selectAll();
				} else {
					that.deselectAll();
				}
				that.$element.change();
			});

			this.$element.change(function() {
				that.render(false);
			});
		},

		liveSearchListener: function() {
			var that = this,
				no_results = $('<li class="no-results"></li>');

			this.$newElement.on('click.dropdown.data-api', function() {
				that.$menu.find('.active').removeClass('active');
				if (!!that.$searchbox.val()) {
					that.$searchbox.val('');
					that.$lis.not('.is-hidden').removeClass('hide');
					if (!!no_results.parent().length) no_results.remove();
				}
				if (!that.multiple) that.$menu.find('.selected').addClass('active');
				setTimeout(function() {
					that.$searchbox.focus();
				}, 10);
			});

			this.$searchbox.on('input propertychange', function() {
				if (that.$searchbox.val()) {

					if (that.options.searchAccentInsensitive) {
						that.$lis.not('.is-hidden').removeClass('hide').find('a').not(':aicontains(' + normalizeToBase(that.$searchbox.val()) + ')').parent().addClass('hide');
					} else {
						that.$lis.not('.is-hidden').removeClass('hide').find('a').not(':icontains(' + that.$searchbox.val() + ')').parent().addClass('hide');
					}

					if (!that.$menu.find('li').filter(':visible:not(.no-results)').length) {
						if (!!no_results.parent().length) no_results.remove();
						no_results.html(that.options.noneResultsText + ' "' + that.$searchbox.val() + '"').show();
						that.$menu.find('li').last().after(no_results);
					} else if (!!no_results.parent().length) {
						no_results.remove();
					}

				} else {
					that.$lis.not('.is-hidden').removeClass('hide');
					if (!!no_results.parent().length) no_results.remove();
				}

				that.$menu.find('li.active').removeClass('active');
				that.$menu.find('li').filter(':visible:not(.divider)').eq(0).addClass('active').find('a').focus();
				$(this).focus();
			});
		},

		val: function(value) {
			if (typeof value !== 'undefined') {
				this.$element.val(value);
				this.render();

				return this.$element;
			} else {
				return this.$element.val();
			}
		},

		selectAll: function() {
			this.findLis();
			this.$lis.not('.divider').not('.disabled').not('.selected').filter(':visible').find('a').click();
		},

		deselectAll: function() {
			this.findLis();
			this.$lis.not('.divider').not('.disabled').filter('.selected').filter(':visible').find('a').click();
		},

		keydown: function(e) {
			var $this = $(this),
				$parent = ($this.is('input')) ? $this.parent().parent() : $this.parent(),
				$items,
				that = $parent.data('this'),
				index,
				next,
				first,
				last,
				prev,
				nextPrev,
				prevIndex,
				isActive,
				keyCodeMap = {
					32: ' ',
					48: '0',
					49: '1',
					50: '2',
					51: '3',
					52: '4',
					53: '5',
					54: '6',
					55: '7',
					56: '8',
					57: '9',
					59: ';',
					65: 'a',
					66: 'b',
					67: 'c',
					68: 'd',
					69: 'e',
					70: 'f',
					71: 'g',
					72: 'h',
					73: 'i',
					74: 'j',
					75: 'k',
					76: 'l',
					77: 'm',
					78: 'n',
					79: 'o',
					80: 'p',
					81: 'q',
					82: 'r',
					83: 's',
					84: 't',
					85: 'u',
					86: 'v',
					87: 'w',
					88: 'x',
					89: 'y',
					90: 'z',
					96: '0',
					97: '1',
					98: '2',
					99: '3',
					100: '4',
					101: '5',
					102: '6',
					103: '7',
					104: '8',
					105: '9'
				};

			if (that.options.liveSearch) $parent = $this.parent().parent();

			if (that.options.container) $parent = that.$menu;

			$items = $('[role=menu] li a', $parent);

			isActive = that.$menu.parent().hasClass('open');

			if (!isActive && /([0-9]|[A-z])/.test(String.fromCharCode(e.keyCode))) {
				if (!that.options.container) {
					that.setSize();
					that.$menu.parent().addClass('open');
					isActive = true;
				} else {
					that.$newElement.trigger('click');
				}
				that.$searchbox.focus();
			}

			if (that.options.liveSearch) {
				if (/(^9$|27)/.test(e.keyCode.toString(10)) && isActive && that.$menu.find('.active').length === 0) {
					e.preventDefault();
					that.$menu.parent().removeClass('open');
					that.$button.focus();
				}
				$items = $('[role=menu] li:not(.divider):not(.dropdown-header):visible', $parent);
				if (!$this.val() && !/(38|40)/.test(e.keyCode.toString(10))) {
					if ($items.filter('.active').length === 0) {
						if (that.options.searchAccentInsensitive) {
							$items = that.$newElement.find('li').filter(':aicontains(' + normalizeToBase(keyCodeMap[e.keyCode]) + ')');
						} else {
							$items = that.$newElement.find('li').filter(':icontains(' + keyCodeMap[e.keyCode] + ')');
						}
					}
				}
			}

			if (!$items.length) return;

			if (/(38|40)/.test(e.keyCode.toString(10))) {
				index = $items.index($items.filter(':focus'));
				first = $items.parent(':not(.disabled):visible').first().index();
				last = $items.parent(':not(.disabled):visible').last().index();
				next = $items.eq(index).parent().nextAll(':not(.disabled):visible').eq(0).index();
				prev = $items.eq(index).parent().prevAll(':not(.disabled):visible').eq(0).index();
				nextPrev = $items.eq(next).parent().prevAll(':not(.disabled):visible').eq(0).index();

				if (that.options.liveSearch) {
					$items.each(function(i) {
						if ($(this).is(':not(.disabled)')) {
							$(this).data('index', i);
						}
					});
					index = $items.index($items.filter('.active'));
					first = $items.filter(':not(.disabled):visible').first().data('index');
					last = $items.filter(':not(.disabled):visible').last().data('index');
					next = $items.eq(index).nextAll(':not(.disabled):visible').eq(0).data('index');
					prev = $items.eq(index).prevAll(':not(.disabled):visible').eq(0).data('index');
					nextPrev = $items.eq(next).prevAll(':not(.disabled):visible').eq(0).data('index');
				}

				prevIndex = $this.data('prevIndex');

				if (e.keyCode == 38) {
					if (that.options.liveSearch) index -= 1;
					if (index != nextPrev && index > prev) index = prev;
					if (index < first) index = first;
					if (index == prevIndex) index = last;
				}

				if (e.keyCode == 40) {
					if (that.options.liveSearch) index += 1;
					if (index == -1) index = 0;
					if (index != nextPrev && index < next) index = next;
					if (index > last) index = last;
					if (index == prevIndex) index = first;
				}

				$this.data('prevIndex', index);

				if (!that.options.liveSearch) {
					$items.eq(index).focus();
				} else {
					e.preventDefault();
					if (!$this.is('.dropdown-toggle')) {
						$items.removeClass('active');
						$items.eq(index).addClass('active').find('a').focus();
						$this.focus();
					}
				}

			} else if (!$this.is('input')) {
				var keyIndex = [],
					count,
					prevKey;

				$items.each(function() {
					if ($(this).parent().is(':not(.disabled)')) {
						if ($.trim($(this).text().toLowerCase()).substring(0, 1) == keyCodeMap[e.keyCode]) {
							keyIndex.push($(this).parent().index());
						}
					}
				});

				count = $(document).data('keycount');
				count++;
				$(document).data('keycount', count);

				prevKey = $.trim($(':focus').text().toLowerCase()).substring(0, 1);

				if (prevKey != keyCodeMap[e.keyCode]) {
					count = 1;
					$(document).data('keycount', count);
				} else if (count >= keyIndex.length) {
					$(document).data('keycount', 0);
					if (count > keyIndex.length) count = 1;
				}

				$items.eq(keyIndex[count - 1]).focus();
			}

			// Select focused option if "Enter", "Spacebar" or "Tab" (when selectOnTab is true) are pressed inside the menu.
			if ((/(13|32)/.test(e.keyCode.toString(10)) || (/(^9$)/.test(e.keyCode.toString(10)) && that.options.selectOnTab)) && isActive) {
				if (!/(32)/.test(e.keyCode.toString(10))) e.preventDefault();
				if (!that.options.liveSearch) {
					$(':focus').click();
				} else if (!/(32)/.test(e.keyCode.toString(10))) {
					that.$menu.find('.active a').click();
					$this.focus();
				}
				$(document).data('keycount', 0);
			}

			if ((/(^9$|27)/.test(e.keyCode.toString(10)) && isActive && (that.multiple || that.options.liveSearch)) || (/(27)/.test(e.keyCode.toString(10)) && !isActive)) {
				that.$menu.parent().removeClass('open');
				that.$button.focus();
			}
		},

		mobile: function() {
			this.$element.addClass('mobile-device').appendTo(this.$newElement);
			if (this.options.container) this.$menu.hide();
		},

		refresh: function() {
			this.$lis = null;
			this.reloadLi();
			this.render();
			this.setWidth();
			this.setStyle();
			this.checkDisabled();
			this.liHeight();
		},

		update: function() {
			this.reloadLi();
			this.setWidth();
			this.setStyle();
			this.checkDisabled();
			this.liHeight();
		},

		hide: function() {
			this.$newElement.hide();
		},

		show: function() {
			this.$newElement.show();
		},

		remove: function() {
			this.$newElement.remove();
			this.$element.remove();
		}
	};

	// SELECTPICKER PLUGIN DEFINITION
	// ==============================
	function Plugin(option, event) {
		// get the args of the outer function..
		var args = arguments;
		// The arguments of the function are explicitly re-defined from the argument list, because the shift causes them
		// to get lost
		//noinspection JSDuplicatedDeclaration
		var _option = option,
			option = args[0],
			event = args[1];
		[].shift.apply(args);

		// This fixes a bug in the js implementation on android 2.3 #715
		if (typeof option == 'undefined') {
			option = _option;
		}

		var value;
		var chain = this.each(function() {
			var $this = $(this);
			if ($this.is('select')) {
				var data = $this.data('selectpicker'),
					options = typeof option == 'object' && option;

				if (!data) {
					var config = $.extend({}, Selectpicker.DEFAULTS, $.fn.selectpicker.defaults || {}, $this.data(), options);
					$this.data('selectpicker', (data = new Selectpicker(this, config, event)));
				} else if (options) {
					for (var i in options) {
						if (options.hasOwnProperty(i)) {
							data.options[i] = options[i];
						}
					}
				}

				if (typeof option == 'string') {
					if (data[option] instanceof Function) {
						value = data[option].apply(data, args);
					} else {
						value = data.options[option];
					}
				}
			}
		});

		if (typeof value !== 'undefined') {
			//noinspection JSUnusedAssignment
			return value;
		} else {
			return chain;
		}
	}

	var old = $.fn.selectpicker;
	$.fn.selectpicker = Plugin;
	$.fn.selectpicker.Constructor = Selectpicker;

	// SELECTPICKER NO CONFLICT
	// ========================
	$.fn.selectpicker.noConflict = function() {
		$.fn.selectpicker = old;
		return this;
	};

	$(document)
		.data('keycount', 0)
		.on('keydown', '.bootstrap-select [data-toggle=dropdown], .bootstrap-select [role=menu], .bs-searchbox input', Selectpicker.prototype.keydown)
		.on('focusin.modal', '.bootstrap-select [data-toggle=dropdown], .bootstrap-select [role=menu], .bs-searchbox input', function(e) {
			e.stopPropagation();
		});

	// SELECTPICKER DATA-API
	// =====================
	$(window).on('load.bs.select.data-api', function() {
		$('.selectpicker').each(function() {
			var $selectpicker = $(this);
			Plugin.call($selectpicker, $selectpicker.data());
		})
	});

})(jQuery);

var d = document;
var safari = (navigator.userAgent.toLowerCase().indexOf('safari') != -1) ? true : false;
var gebtn = function(parEl,child) { return parEl.getElementsByTagName(child); };
onload = function() {
	
	var body = gebtn(d,'body')[0];
	body.className = body.className && body.className != '' ? body.className + ' has-js' : 'has-js';
	
	if (!d.getElementById || !d.createTextNode) return;
	var ls = gebtn(d,'label');
	for (var i = 0; i < ls.length; i++) {
		var l = ls[i];
		if (l.className.indexOf('label_') == -1) continue;
		var inp = gebtn(l,'input')[0];
		if (l.className == 'label_check') {
			l.className = (safari && inp.checked == true || inp.checked) ? 'label_check c_on' : 'label_check c_off';
			l.onclick = check_it;
		};
		if (l.className == 'label_radio') {
			l.className = (safari && inp.checked == true || inp.checked) ? 'label_radio r_on' : 'label_radio r_off';
			l.onclick = turn_radio;
		};
	};
};
var check_it = function() {
	var inp = gebtn(this,'input')[0];
	if (this.className == 'label_check c_off' || (!safari && inp.checked)) {
		this.className = 'label_check c_on';
		if (safari) inp.click();
	} else {
		this.className = 'label_check c_off';
		if (safari) inp.click();
	};
};
var turn_radio = function() {
	var inp = gebtn(this,'input')[0];
	if (this.className == 'label_radio r_off' || inp.checked) {
		var ls = gebtn(this.parentNode,'label');
		for (var i = 0; i < ls.length; i++) {
			var l = ls[i];
			if (l.className.indexOf('label_radio') == -1)  continue;
			l.className = 'label_radio r_off';
		};
		this.className = 'label_radio r_on';
		if (safari) inp.click();
	} else {
		this.className = 'label_radio r_off';
		if (safari) inp.click();
	};
};
$(function() {
        $('.select_inverse, .select').selectpicker();

	$('.dbody > .row > div:first-child').on('click', function(ev) {
		var $this = $(this);
		if ($(ev.target).closest('.popover').length) return;
		if ($this.hasClass('active')) {
			$this.removeClass('active');
		} else {
			$('.dbody > .row > div').removeClass('active');
			$this.addClass('active');
		}
	});

	$(window).scroll(function() {
		if ($(this).scrollTop() > 100) {
			$('.go_up').fadeIn();
		} else {
			$('.go_up').fadeOut();
		}
	});
	// scroll body to 0px on click
	$('.go_up').on("click", function() {
		$('body,html').animate({
			scrollTop: 0
		}, 800);
		return false;
	});
        
        // scroll body on click
        if($('.go_block_scroll').length) {
           $('.go_block_scroll').on('click', function() {
                var id = ($(this).attr('data-go-block')) ? '#'.$(this).attr('data-go-block') : ($(this).attr('href')) ? $(this).attr('href') : false;  
                if(id && $( id ).length) {
                    $('html, body').animate( { 
                        scrollTop: Math.ceil( $( id ).offset().top ) // Math.ceil((target_top * $(window).outerHeight(true)) / $('html, body').height())
                    },'linear');
                    return false;
                } 
           }); 
        }
        
});

//http://stackoverflow.com/questions/12214654/jquery-1-8-find-event-handlers
//http://james.padolsey.com/javascript/debug-jquery-events-with-listhandlers/
// $('*').listHandlers('*');
// $('a').listHandlers('onclick');
$(document).ready(function(){
    $.fn.listHandlers = function(events) {
        this.each(function(i){
            var elem = this,
            // dEvents = $(this).data('events');
            dEvents = $._data($(this).get(0), "events");
            if (!dEvents) {return;}
            $.each(dEvents, function(name, handler){
                if((new RegExp('^(' + (events === '*' ? '.+' : events.replace(',','|').replace(/^on/i,'')) + ')$' ,'i')).test(name)) {
                    $.each(handler,
                        function(i,handler){
                        //console.info(elem);
                        console.info(elem, '\n' + i + ': [' + name + '] : ' + handler.handler );
                    });
                }
            });
        });
    };
    
    $.fn.hasHandlers = function(events,selector) {
        var result=false;
        this.each(function(i){
            var elem = this;
            dEvents = $._data($(this).get(0), "events");
            if (!dEvents) {return false;}
            $.each(dEvents, function(name, handler){
                if((new RegExp('^(' + (events === '*' ? '.+' : events.replace(',','|').replace(/^on/i,'')) + ')$' ,'i')).test(name)) {
                $.each(handler,
                    function(i,handler){
                        if (handler.selector===selector)
                        result=true;
                });
            }
            });
        });
        return result;
    };
}); 
function detectIE() {
    var ua = window.navigator.userAgent;

    var msie = ua.indexOf('MSIE ');
    if (msie > 0) {
        // IE 10 or older => return version number
        return parseInt(ua.substring(msie + 5, ua.indexOf('.', msie)), 10);
    }

    var trident = ua.indexOf('Trident/');
    if (trident > 0) {
        // IE 11 => return version number
        var rv = ua.indexOf('rv:');
        return parseInt(ua.substring(rv + 3, ua.indexOf('.', rv)), 10);
    }

    var edge = ua.indexOf('Edge/');
    if (edge > 0) {
       // IE 12 => return version number
       return parseInt(ua.substring(edge + 5, ua.indexOf('.', edge)), 10);
    }

    // other browser
    return false;
}

(function($){
    $(function(){

        //var $copy = $('div.SPA_printcontact').clone();
        var $body = $('body');

        //$copy.insertAfter('#printdate');

        if($.browser.msie || detectIE()) {
            $body.addClass('msie ie'+detectIE());
            //var userAgent = userAgent.substring(0,userAgent.indexOf('.'));
            //var version = userAgent;
            //$body.addClass('msie ie' + version);
            
            //alert('IE');
        } else if($.browser.webkit) {
            $body.addClass('webkit');
        } else if($.browser.mozilla) {
            $body.addClass('mozilla');
        }

    });
}(jQuery));


/*!
* Detectizr v@VERSION
* http://barisaydinoglu.github.com/Detectizr/
*
* Written by Baris Aydinoglu (http://baris.aydinoglu.info) - Copyright 2012
* Released under the MIT license
*
* Date: @DATE
*/

/**
 * Lightbox v2.7.1
 * by Lokesh Dhakar - http://lokeshdhakar.com/projects/lightbox2/
 *
 * @license http://creativecommons.org/licenses/by/2.5/
 * - Free for use in both personal and commercial projects
 * - Attribution requires leaving author name, author link, and the license info intact
 */

(function() {
  // Use local alias
  var $ = jQuery;

  var LightboxOptions = (function() {
    function LightboxOptions() {
      this.fadeDuration                = 500;
      this.fitImagesInViewport         = true;
      this.resizeDuration              = 700;
      this.positionFromTop             = 50;
      this.showImageNumberLabel        = true;
      this.alwaysShowNavOnTouchDevices = false;
      this.wrapAround                  = false;
    }
    
    // Change to localize to non-english language
    LightboxOptions.prototype.albumLabel = function(curImageNum, albumSize) {
      return "Image " + curImageNum + " of " + albumSize;
    };

    return LightboxOptions;
  })();


  var Lightbox = (function() {
    function Lightbox(options) {
      this.options           = options;
      this.album             = [];
      this.currentImageIndex = void 0;
      this.init();
    }

    Lightbox.prototype.init = function() {
      this.enable();
      this.build();
    };

    // Loop through anchors and areamaps looking for either data-lightbox attributes or rel attributes
    // that contain 'lightbox'. When these are clicked, start lightbox.
    Lightbox.prototype.enable = function() {
      var self = this;
      $('body').on('click', 'a[rel^=lightbox], area[rel^=lightbox], a[data-lightbox], area[data-lightbox]', function(event) {
        self.start($(event.currentTarget));
        return false;
      });
    };

    // Build html for the lightbox and the overlay.
    // Attach event handlers to the new DOM elements. click click click
    Lightbox.prototype.build = function() {
      var self = this;
      $("<div id='lightboxOverlay' class='lightboxOverlay'></div><div id='lightbox' class='lightbox'><div class='lb-outerContainer'><div class='lb-container'><img class='lb-image' src='' /><div class='lb-nav'><a class='lb-prev' href='' ></a><a class='lb-next' href='' ></a></div><div class='lb-loader'><a class='lb-cancel'></a></div></div></div><div class='lb-dataContainer'><div class='lb-data'><div class='lb-details'><span class='lb-caption'></span><span class='lb-number'></span></div><div class='lb-closeContainer'><a class='lb-close'></a></div></div></div></div>").appendTo($('body'));
      
      // Cache jQuery objects
      this.$lightbox       = $('#lightbox');
      this.$overlay        = $('#lightboxOverlay');
      this.$outerContainer = this.$lightbox.find('.lb-outerContainer');
      this.$container      = this.$lightbox.find('.lb-container');

      // Store css values for future lookup
      this.containerTopPadding = parseInt(this.$container.css('padding-top'), 10);
      this.containerRightPadding = parseInt(this.$container.css('padding-right'), 10);
      this.containerBottomPadding = parseInt(this.$container.css('padding-bottom'), 10);
      this.containerLeftPadding = parseInt(this.$container.css('padding-left'), 10);
      
      // Attach event handlers to the newly minted DOM elements
      this.$overlay.hide().on('click', function() {
        self.end();
        return false;
      });

      this.$lightbox.hide().on('click', function(event) {
        if ($(event.target).attr('id') === 'lightbox') {
          self.end();
        }
        return false;
      });

      this.$outerContainer.on('click', function(event) {
        if ($(event.target).attr('id') === 'lightbox') {
          self.end();
        }
        return false;
      });

      this.$lightbox.find('.lb-prev').on('click', function() {
        if (self.currentImageIndex === 0) {
          self.changeImage(self.album.length - 1);
        } else {
          self.changeImage(self.currentImageIndex - 1);
        }
        return false;
      });

      this.$lightbox.find('.lb-next').on('click', function() {
        if (self.currentImageIndex === self.album.length - 1) {
          self.changeImage(0);
        } else {
          self.changeImage(self.currentImageIndex + 1);
        }
        return false;
      });

      this.$lightbox.find('.lb-loader, .lb-close').on('click', function() {
        self.end();
        return false;
      });
    };

    // Show overlay and lightbox. If the image is part of a set, add siblings to album array.
    Lightbox.prototype.start = function($link) {
      var self    = this;
      var $window = $(window);

      $window.on('resize', $.proxy(this.sizeOverlay, this));

      $('select, object, embed').css({
        visibility: "hidden"
      });

      this.sizeOverlay();

      this.album = [];
      var imageNumber = 0;

      function addToAlbum($link) {
        self.album.push({
          link: $link.attr('href'),
          title: $link.attr('data-title') || $link.attr('title')
        });
      }

      // Support both data-lightbox attribute and rel attribute implementations
      var dataLightboxValue = $link.attr('data-lightbox');
      var $links;

      if (dataLightboxValue) {
        $links = $($link.prop("tagName") + '[data-lightbox="' + dataLightboxValue + '"]');
        for (var i = 0; i < $links.length; i = ++i) {
          addToAlbum($($links[i]));
          if ($links[i] === $link[0]) {
            imageNumber = i;
          }
        }
      } else {
        if ($link.attr('rel') === 'lightbox') {
          // If image is not part of a set
          addToAlbum($link);
        } else {
          // If image is part of a set
          $links = $($link.prop("tagName") + '[rel="' + $link.attr('rel') + '"]');
          for (var j = 0; j < $links.length; j = ++j) {
            addToAlbum($($links[j]));
            if ($links[j] === $link[0]) {
              imageNumber = j;
            }
          }
        }
      }
      
      // Position Lightbox
      var top  = $window.scrollTop() + this.options.positionFromTop;
      var left = $window.scrollLeft();
      this.$lightbox.css({
        top: top + 'px',
        left: left + 'px'
      }).fadeIn(this.options.fadeDuration);

      this.changeImage(imageNumber);
    };

    // Hide most UI elements in preparation for the animated resizing of the lightbox.
    Lightbox.prototype.changeImage = function(imageNumber) {
      var self = this;

      this.disableKeyboardNav();
      var $image = this.$lightbox.find('.lb-image');

      this.$overlay.fadeIn(this.options.fadeDuration);

      $('.lb-loader').fadeIn('slow');
      this.$lightbox.find('.lb-image, .lb-nav, .lb-prev, .lb-next, .lb-dataContainer, .lb-numbers, .lb-caption').hide();

      this.$outerContainer.addClass('animating');

      // When image to show is preloaded, we send the width and height to sizeContainer()
      var preloader = new Image();
      preloader.onload = function() {
        var $preloader, imageHeight, imageWidth, maxImageHeight, maxImageWidth, windowHeight, windowWidth;
        $image.attr('src', self.album[imageNumber].link);

        $preloader = $(preloader);

        $image.width(preloader.width);
        $image.height(preloader.height);
        
        if (self.options.fitImagesInViewport) {
          // Fit image inside the viewport.
          // Take into account the border around the image and an additional 10px gutter on each side.

          windowWidth    = $(window).width();
          windowHeight   = $(window).height();
          maxImageWidth  = windowWidth - self.containerLeftPadding - self.containerRightPadding - 20;
          maxImageHeight = windowHeight - self.containerTopPadding - self.containerBottomPadding - 120;

          // Is there a fitting issue?
          if ((preloader.width > maxImageWidth) || (preloader.height > maxImageHeight)) {
            if ((preloader.width / maxImageWidth) > (preloader.height / maxImageHeight)) {
              imageWidth  = maxImageWidth;
              imageHeight = parseInt(preloader.height / (preloader.width / imageWidth), 10);
              $image.width(imageWidth);
              $image.height(imageHeight);
            } else {
              imageHeight = maxImageHeight;
              imageWidth = parseInt(preloader.width / (preloader.height / imageHeight), 10);
              $image.width(imageWidth);
              $image.height(imageHeight);
            }
          }
        }
        self.sizeContainer($image.width(), $image.height());
      };

      preloader.src          = this.album[imageNumber].link;
      this.currentImageIndex = imageNumber;
    };

    // Stretch overlay to fit the viewport
    Lightbox.prototype.sizeOverlay = function() {
      this.$overlay
        .width($(window).width())
        .height($(document).height());
    };

    // Animate the size of the lightbox to fit the image we are showing
    Lightbox.prototype.sizeContainer = function(imageWidth, imageHeight) {
      var self = this;
      
      var oldWidth  = this.$outerContainer.outerWidth();
      var oldHeight = this.$outerContainer.outerHeight();
      var newWidth  = imageWidth + this.containerLeftPadding + this.containerRightPadding;
      var newHeight = imageHeight + this.containerTopPadding + this.containerBottomPadding;
      
      function postResize() {
        self.$lightbox.find('.lb-dataContainer').width(newWidth);
        self.$lightbox.find('.lb-prevLink').height(newHeight);
        self.$lightbox.find('.lb-nextLink').height(newHeight);
        self.showImage();
      }

      if (oldWidth !== newWidth || oldHeight !== newHeight) {
        this.$outerContainer.animate({
          width: newWidth,
          height: newHeight
        }, this.options.resizeDuration, 'swing', function() {
          postResize();
        });
      } else {
        postResize();
      }
    };

    // Display the image and it's details and begin preload neighboring images.
    Lightbox.prototype.showImage = function() {
      this.$lightbox.find('.lb-loader').hide();
      this.$lightbox.find('.lb-image').fadeIn('slow');
    
      this.updateNav();
      this.updateDetails();
      this.preloadNeighboringImages();
      this.enableKeyboardNav();
    };

    // Display previous and next navigation if appropriate.
    Lightbox.prototype.updateNav = function() {
      // Check to see if the browser supports touch events. If so, we take the conservative approach
      // and assume that mouse hover events are not supported and always show prev/next navigation
      // arrows in image sets.
      var alwaysShowNav = false;
      try {
        document.createEvent("TouchEvent");
        alwaysShowNav = (this.options.alwaysShowNavOnTouchDevices)? true: false;
      } catch (e) {}

      this.$lightbox.find('.lb-nav').show();

      if (this.album.length > 1) {
        if (this.options.wrapAround) {
          if (alwaysShowNav) {
            this.$lightbox.find('.lb-prev, .lb-next').css('opacity', '1');
          }
          this.$lightbox.find('.lb-prev, .lb-next').show();
        } else {
          if (this.currentImageIndex > 0) {
            this.$lightbox.find('.lb-prev').show();
            if (alwaysShowNav) {
              this.$lightbox.find('.lb-prev').css('opacity', '1');
            }
          }
          if (this.currentImageIndex < this.album.length - 1) {
            this.$lightbox.find('.lb-next').show();
            if (alwaysShowNav) {
              this.$lightbox.find('.lb-next').css('opacity', '1');
            }
          }
        }
      }
    };

    // Display caption, image number, and closing button.
    Lightbox.prototype.updateDetails = function() {
      var self = this;

      // Enable anchor clicks in the injected caption html.
      // Thanks Nate Wright for the fix. @https://github.com/NateWr
      if (typeof this.album[this.currentImageIndex].title !== 'undefined' && this.album[this.currentImageIndex].title !== "") {
        this.$lightbox.find('.lb-caption')
          .html(this.album[this.currentImageIndex].title)
          .fadeIn('fast')
          .find('a').on('click', function(event){
            location.href = $(this).attr('href');
          });
      }
    
      if (this.album.length > 1 && this.options.showImageNumberLabel) {
        this.$lightbox.find('.lb-number').text(this.options.albumLabel(this.currentImageIndex + 1, this.album.length)).fadeIn('fast');
      } else {
        this.$lightbox.find('.lb-number').hide();
      }
    
      this.$outerContainer.removeClass('animating');
    
      this.$lightbox.find('.lb-dataContainer').fadeIn(this.options.resizeDuration, function() {
        return self.sizeOverlay();
      });
    };

    // Preload previous and next images in set.
    Lightbox.prototype.preloadNeighboringImages = function() {
      if (this.album.length > this.currentImageIndex + 1) {
        var preloadNext = new Image();
        preloadNext.src = this.album[this.currentImageIndex + 1].link;
      }
      if (this.currentImageIndex > 0) {
        var preloadPrev = new Image();
        preloadPrev.src = this.album[this.currentImageIndex - 1].link;
      }
    };

    Lightbox.prototype.enableKeyboardNav = function() {
      $(document).on('keyup.keyboard', $.proxy(this.keyboardAction, this));
    };

    Lightbox.prototype.disableKeyboardNav = function() {
      $(document).off('.keyboard');
    };

    Lightbox.prototype.keyboardAction = function(event) {
      var KEYCODE_ESC        = 27;
      var KEYCODE_LEFTARROW  = 37;
      var KEYCODE_RIGHTARROW = 39;

      var keycode = event.keyCode;
      var key     = String.fromCharCode(keycode).toLowerCase();
      if (keycode === KEYCODE_ESC || key.match(/x|o|c/)) {
        this.end();
      } else if (key === 'p' || keycode === KEYCODE_LEFTARROW) {
        if (this.currentImageIndex !== 0) {
          this.changeImage(this.currentImageIndex - 1);
        } else if (this.options.wrapAround && this.album.length > 1) {
          this.changeImage(this.album.length - 1);
        }
      } else if (key === 'n' || keycode === KEYCODE_RIGHTARROW) {
        if (this.currentImageIndex !== this.album.length - 1) {
          this.changeImage(this.currentImageIndex + 1);
        } else if (this.options.wrapAround && this.album.length > 1) {
          this.changeImage(0);
        }
      }
    };

    // Closing time. :-(
    Lightbox.prototype.end = function() {
      this.disableKeyboardNav();
      $(window).off("resize", this.sizeOverlay);
      this.$lightbox.fadeOut(this.options.fadeDuration);
      this.$overlay.fadeOut(this.options.fadeDuration);
      $('select, object, embed').css({
        visibility: "visible"
      });
    };

    return Lightbox;

  })();

  $(function() {
    var options  = new LightboxOptions();
    var lightbox = new Lightbox(options);
  });

}).call(this);

/*===================================================================================================================
 * @name: bPopup
 * @type: jQuery
 * @author: (c) Bjoern Klinggaard - @bklinggaard
 * @demo: http://dinbror.dk/bpopup
 * @version: 0.10.0
 * @requires jQuery 1.4.3
 *==================================================================================================================*/
;(function($) {
	'use strict';
	
    $.fn.bPopup = function(options, callback) {
        
    	if ($.isFunction(options)) {
            callback 		= options;
            options 		= null;
        }

		// OPTIONS
        var o 				= $.extend({}, $.fn.bPopup.defaults, options);
		
		// HIDE SCROLLBAR?  
        if (!o.scrollBar)
            $('html').css('overflow', 'hidden');
        
		// VARIABLES	
        var $popup 			= this
          ,  $this                       = $(this)
          , d 				= $(document)
          , w 				= window
		  , $w				= $(w)
          , wH				= windowHeight()
		  , wW				= windowWidth()
          , prefix			= '__b-popup'
		  , isIOS6X			= (/OS 6(_\d)+/i).test(navigator.userAgent) // Used for a temporary fix for ios6 timer bug when using zoom/scroll 
          , buffer			= 200
		  , popups			= 0
          , id
          , inside
          , fixedVPos
          , fixedHPos
          , fixedPosStyle
		  , vPos
          , hPos
		  , height
		  , width
		  , debounce
		  , autoCloseTO
		;

        /* PUBLIC FUNCTION - call it: $(element).bPopup().close();*/
        $popup.close = function() {
            _init();
            _close();
        };
		
        $popup.reposition = function(animateSpeed) {
            reposition(animateSpeed);
        };

        return $popup.each(function() {
            if ($(this).data('bPopup')) return; /*POPUP already exists?*/
            init();
        });

        function _init() {
            triggerCall(o.onOpen);
			popups = ($w.data('bPopup') || 0), 
                        id = prefix + popups + '__',
                        fixedVPos = o.position[1] !== 'auto', 
                        fixedHPos = o.position[0] !== 'auto', 
                        fixedPosStyle = o.positionStyle === 'fixed', 
                        height = $popup.outerHeight(true), 
                        width = $popup.outerWidth(true);
                
            // o.loadUrl ? createContent() : open();
        };
        
        function _close() {
            
            // alert(id, $popup.data('id'), $popup.data('bPopup'));
            if (o.modal) {
                $('.b-modal.'+id)
	                .fadeTo(o.speed, 0, function() {
	                    $(this).remove();
	                });
            }
            // Clean up
            unbindEvents();	
            clearTimeout(autoCloseTO);
            // Close trasition
            doTransition();
            
            return false; // Prevent default
        };

        /* HELPER FUNCTIONS - PRIVATE*/
        function init() {
            triggerCall(o.onOpen);
			popups = ($w.data('bPopup') || 0) + 1, id = prefix + popups + '__',fixedVPos = o.position[1] !== 'auto', fixedHPos = o.position[0] !== 'auto', fixedPosStyle = o.positionStyle === 'fixed', height = $popup.outerHeight(true), width = $popup.outerWidth(true);
            o.loadUrl ? createContent() : open();
        };
		
		function createContent() {
            o.contentContainer = $(o.contentContainer || $popup);
            switch (o.content) {
                case ('iframe'):
					var iframe = $('<iframe class="b-iframe" ' + o.iframeAttr +'></iframe>');
					iframe.appendTo(o.contentContainer);
					height = $popup.outerHeight(true);
					width = $popup.outerWidth(true);
					open();
					iframe.attr('src', o.loadUrl); // setting iframe src after open due IE9 bug
					triggerCall(o.loadCallback);
                    break;
				case ('image'):
					open();
					$('<img />')
						.load(function() {
						    triggerCall(o.loadCallback);
							recenter($(this));
					    }).attr('src', o.loadUrl).hide().appendTo(o.contentContainer);
					break;
                default:
					open();
					$('<div class="b-ajax-wrapper"></div>')
                    	.load(o.loadUrl, o.loadData, function(response, status, xhr) {
						    triggerCall(o.loadCallback, status);
							recenter($(this));
						}).hide().appendTo(o.contentContainer);
                    break;
            }
        };

		function open(){
			// MODAL OVERLAY
            if (o.modal) {
                $('<div class="b-modal '+id+'"></div>')
                .css({backgroundColor: o.modalColor, position: 'fixed', top: 0, right:0, bottom:0, left: 0, opacity: 0, zIndex: o.zIndex + popups})
                .appendTo(o.appendTo)
                .fadeTo(o.speed, o.opacity);
            }
			
			// POPUP
			calcPosition();
            $popup
				.data('bPopup', o).data('id',id)
				.css({ 
					  'left': o.transition == 'slideIn' || o.transition == 'slideBack' ? (o.transition == 'slideBack' ? d.scrollLeft() + wW : (hPos + width) *-1) : getLeftPos(!(!o.follow[0] && fixedHPos || fixedPosStyle))
					, 'position': o.positionStyle || 'absolute'
					, 'top': o.transition == 'slideDown' || o.transition == 'slideUp' ? (o.transition == 'slideUp' ? d.scrollTop() + wH : vPos + height * -1) : getTopPos(!(!o.follow[1] && fixedVPos || fixedPosStyle))
					, 'z-index': o.zIndex + popups + 1 
				}).each(function() {
            		if(o.appending) {
                                $(this).appendTo(o.appendTo);
            		}
        		});
			doTransition(true);	
		};
		
        function close() {
            // console.log(id, $popup.data('id'), $popup.data('bPopup'));
            
            // alert(id, $popup.data('id'), $popup.data('bPopup'));
            if (o.modal) {
                $('.b-modal.'+$popup.data('id'))
	                .fadeTo(o.speed, 0, function() {
	                    $(this).remove();
	                });
            }
            // Clean up
            unbindEvents();	
            clearTimeout(autoCloseTO);
            // Close trasition
            doTransition();
            
            return false; // Prevent default
        };
		
		function reposition(animateSpeed){
            wH = windowHeight();
  		    wW = windowWidth();
			inside = insideWindow();
           	if(inside){
				clearTimeout(debounce);
				debounce = setTimeout(function(){
					calcPosition();
					animateSpeed = animateSpeed || o.followSpeed;
					$popup
                       	.dequeue()
                       	.each(function() {
                           	if(fixedPosStyle) {
                            	$(this).css({ 'left': hPos, 'top': vPos });
                           	}
                           	else {
                               	$(this).animate({ 'left': o.follow[0] ? getLeftPos(true) : 'auto', 'top': o.follow[1] ? getTopPos(true) : 'auto' }, animateSpeed, o.followEasing);
                           	}
                       	});
				}, 50);					
           	}
		};
		
		//Eksperimental
		function recenter(content){
			var _width = content.width(), _height = content.height(), css = {};
			o.contentContainer.css({height:_height,width:_width});
			
			if (_height >= $popup.height()){
				css.height = $popup.height();
			}
			if(_width >= $popup.width()){
				css.width = $popup.width();
			}
			height = $popup.outerHeight(true)
			, width = $popup.outerWidth(true);
				
			calcPosition();
			o.contentContainer.css({height:'auto',width:'auto'});		
			
			css.left = getLeftPos(!(!o.follow[0] && fixedHPos || fixedPosStyle)),
			css.top = getTopPos(!(!o.follow[1] && fixedVPos || fixedPosStyle));
			
			$popup
				.animate(
					css
					, 250
					, function() { 
						content.show();
						inside = insideWindow();
					}
				);
		};
		
        function bindEvents() {
            $w.data('bPopup', popups);
			$popup.delegate('.bClose, .' + o.closeClass, 'click.'+id, close); // legacy, still supporting the close class bClose
            
            if (o.modalClose) {
                $('.b-modal.'+id).css('cursor', 'pointer').bind('click', close);
            }
			
			// Temporary disabling scroll/resize events on devices with IOS6+
			// due to a bug where events are dropped after pinch to zoom
            if (!isIOS6X && (o.follow[0] || o.follow[1])) {
               $w.bind('scroll.'+id, function() {
                	if(inside){
                    	$popup
                        	.dequeue()
                            .animate({ 'left': o.follow[0] ? getLeftPos(!fixedPosStyle) : 'auto', 'top': o.follow[1] ? getTopPos(!fixedPosStyle) : 'auto' }, o.followSpeed, o.followEasing);
					 }  
            	}).bind('resize.'+id, function() {
		            reposition();
                });
            }
            if (o.escClose) {
                d.bind('keydown.'+id, function(e) {
                    if (e.which == 27) {  //escape
                        close();
                    }
                });
            }
        };
		
        function unbindEvents() {
            if (!o.scrollBar) {
                $('html').css('overflow', 'auto');
            }
            $('.b-modal.'+id).unbind('click');
            d.unbind('keydown.'+id);
            $w.unbind('.'+id).data('bPopup', ($w.data('bPopup')-1 > 0) ? $w.data('bPopup')-1 : null);
            $popup.undelegate('.bClose, .' + o.closeClass, 'click.'+id, close).data('bPopup', null);
        };
		
		function doTransition(open) {
			switch (open ? o.transition : o.transitionClose || o.transition) {
			   case "slideIn":
				   	animate({
				   		left: open ? getLeftPos(!(!o.follow[0] && fixedHPos || fixedPosStyle)) : d.scrollLeft() - (width || $popup.outerWidth(true)) - buffer
				   	});
			      	break;
			   case "slideBack":
				   	animate({
				   		left: open ? getLeftPos(!(!o.follow[0] && fixedHPos || fixedPosStyle)) : d.scrollLeft() + wW + buffer
				   	});
			      	break;
			   case "slideDown":
				   	animate({
				   		top: open ? getTopPos(!(!o.follow[1] && fixedVPos || fixedPosStyle)) : d.scrollTop() - (height || $popup.outerHeight(true)) - buffer
				   	});
			      	break;
		   		case "slideUp":
					animate({
						top: open ? getTopPos(!(!o.follow[1] && fixedVPos || fixedPosStyle)) : d.scrollTop() + wH + buffer
					});
		      	  	break;
                                
                        case "fadeOut": 
                                $this.hide();
                                $popup.stop().fadeOut(o.speed);
                            break;
			   default:
			   	  	//Hardtyping 1 and 0 to ensure opacity 1 and not 0.9999998
				  	$popup.stop().fadeTo(o.speed, open ? 1 : 0, function(){onCompleteCallback(open);});
			}
			
			function animate(css){
			  	$popup
					.css({display: 'block',opacity: 1})
					.animate(css, o.speed, o.easing, function(){ onCompleteCallback(open); });
			};
		};
		
		
		function onCompleteCallback(open){
			if(open){
				bindEvents();
	            triggerCall(callback);
				if(o.autoClose){
					autoCloseTO = setTimeout(close, o.autoClose);
				}
			} else {
				$popup.hide();
				triggerCall(o.onClose);
				if (o.loadUrl) {
                    o.contentContainer.empty();
					$popup.css({height: 'auto', width: 'auto'});
                }		
			}
		};
		
		function getLeftPos(includeScroll){
			return includeScroll ? hPos + d.scrollLeft() : hPos;
		};
		
		function getTopPos(includeScroll){
			return includeScroll ? vPos + d.scrollTop() : vPos;
		};
		
		function triggerCall(func, arg) {
			$.isFunction(func) && func.call($popup, arg);
		};
		
       	function calcPosition(){
			vPos 		= fixedVPos ? o.position[1] : Math.max(0, ((wH- $popup.outerHeight(true)) / 2) - o.amsl)
			, hPos 		= fixedHPos ? o.position[0] : (wW - $popup.outerWidth(true)) / 2
			, inside 	= insideWindow();
		};
		
        function insideWindow(){
            return wH > $popup.outerHeight(true) && wW > $popup.outerWidth(true);
        };
		
		function windowHeight(){
			return w.innerHeight || $w.height();
		};
		
		function windowWidth(){
			return w.innerWidth || $w.width();
		};
    };

	/* DEFAULT VALUES */
    $.fn.bPopup.defaults = {
          amsl: 			50
        , appending: 		true
        , appendTo: 		'body'
		, autoClose:		false
        , closeClass: 		'b-close'
        , content: 			'ajax' // ajax, iframe or image
        , contentContainer: false
		, easing: 			'swing'
        , escClose: 		true
        , follow: 			[true, true] // x, y
		, followEasing: 	'swing'
        , followSpeed: 		500
		, iframeAttr: 		'scrolling="no" frameborder="0"'
		, loadCallback: 	false
		, loadData: 		false
        , loadUrl: 			false
        , modal: 			true
        , modalClose: 		true
        , modalColor: 		'#000'
        , onClose: 			false
        , onOpen: 			false
        , opacity: 			0.7
        , position: 		['auto', 'auto'] // x, y,
        , positionStyle: 	'absolute'// absolute or fixed
        , scrollBar: 		true
		, speed: 			250 // open & close speed
		, transition:		'fadeIn' //transitions: fadeIn, slideDown, slideIn, slideBack
		, transitionClose:	false
        , zIndex: 			9997 // popup gets z-index 9999, modal overlay 9998
    };
})(jQuery);

/*!
 * jQuery Cookie Plugin v1.3.1
 * https://github.com/carhartl/jquery-cookie
 *
 * Copyright 2013 Klaus Hartl
 * Released under the MIT license
 */
(function (factory) {
	if (typeof define === 'function' && define.amd) {
		// AMD. Register as anonymous module.
		define(['jquery'], factory);
	} else {
		// Browser globals.
		factory(jQuery);
	}
}(function ($) {

	var pluses = /\+/g;

	function raw(s) {
		return s;
	}

	function decoded(s) {
		return decodeURIComponent(s.replace(pluses, ' '));
	}

	function converted(s) {
		if (s.indexOf('"') === 0) {
			// This is a quoted cookie as according to RFC2068, unescape
			s = s.slice(1, -1).replace(/\\"/g, '"').replace(/\\\\/g, '\\');
		}
		try {
			return config.json ? JSON.parse(s) : s;
		} catch(er) {}
	}

	var config = $.cookie = function (key, value, options) {

		// write
		if (value !== undefined) {
			options = $.extend({}, config.defaults, options);

			if (typeof options.expires === 'number') {
				var days = options.expires, t = options.expires = new Date();
				t.setDate(t.getDate() + days);
			}

			value = config.json ? JSON.stringify(value) : String(value);

			return (document.cookie = [
				config.raw ? key : encodeURIComponent(key),
				'=',
				config.raw ? value : encodeURIComponent(value),
				options.expires ? '; expires=' + options.expires.toUTCString() : '', // use expires attribute, max-age is not supported by IE
				options.path    ? '; path=' + options.path : '',
				options.domain  ? '; domain=' + options.domain : '',
				options.secure  ? '; secure' : ''
			].join(''));
		}

		// read
		var decode = config.raw ? raw : decoded;
		var cookies = document.cookie.split('; ');
		var result = key ? undefined : {};
		for (var i = 0, l = cookies.length; i < l; i++) {
			var parts = cookies[i].split('=');
			var name = decode(parts.shift());
			var cookie = decode(parts.join('='));

			if (key && key === name) {
				result = converted(cookie);
				break;
			}

			if (!key) {
				result[name] = converted(cookie);
			}
		}

		return result;
	};

	config.defaults = {};

	$.removeCookie = function (key, options) {
		if ($.cookie(key) !== undefined) {
			// Must not alter options, thus extending a fresh object...
			$.cookie(key, '', $.extend({}, options, { expires: -1 }));
			return true;
		}
		return false;
	};

}));

/*
 * jQuery hashchange event - v1.3 - 7/21/2010
 * http://benalman.com/projects/jquery-hashchange-plugin/
 * 
 * Copyright (c) 2010 "Cowboy" Ben Alman
 * Dual licensed under the MIT and GPL licenses.
 * http://benalman.com/about/license/
 */
(function($,e,b){var c="hashchange",h=document,f,g=$.event.special,i=h.documentMode,d="on"+c in e&&(i===b||i>7);function a(j){j=j||location.href;return"#"+j.replace(/^[^#]*#?(.*)$/,"$1")}$.fn[c]=function(j){return j?this.bind(c,j):this.trigger(c)};$.fn[c].delay=50;g[c]=$.extend(g[c],{setup:function(){if(d){return false}$(f.start)},teardown:function(){if(d){return false}$(f.stop)}});f=(function(){var j={},p,m=a(),k=function(q){return q},l=k,o=k;j.start=function(){p||n()};j.stop=function(){p&&clearTimeout(p);p=b};function n(){var r=a(),q=o(m);if(r!==m){l(m=r,q);$(e).trigger(c)}else{if(q!==m){location.href=location.href.replace(/#.*/,"")+q}}p=setTimeout(n,$.fn[c].delay)}$.support.msie&&!d&&(function(){var q,r;j.start=function(){if(!q){r=$.fn[c].src;r=r&&r+a();q=$('<iframe tabindex="-1" title="empty"/>').hide().one("load",function(){r||l(a());n()}).attr("src",r||"javascript:0").insertAfter("body")[0].contentWindow;h.onpropertychange=function(){try{if(event.propertyName==="title"){q.document.title=h.title}}catch(s){}}}};j.stop=k;o=function(){return a(q.location.href)};l=function(v,s){var u=q.document,t=$.fn[c].domain;if(v!==s){u.title=h.title;u.open();t&&u.write('<script>document.domain="'+t+'"<\/script>');u.close();q.location.hash=v}}})();return j})()})(jQuery,this);
/*
 * TotalStorage
 *
 * Copyright (c) 2012 Jared Novack & Upstatement (upstatement.com)
 * Dual licensed under the MIT and GPL licenses:
 * http://www.opensource.org/licenses/mit-license.php
 * http://www.gnu.org/licenses/gpl.html
 *
 * Total Storage is the conceptual the love child of jStorage by Andris Reinman, 
 * and Cookie by Klaus Hartl -- though this is not connected to either project.
 *
 * @name $.totalStorage
 * @cat Plugins/Cookie
 * @author Jared Novack/jared@upstatement.com
 * @version 1.1.2
 * @url http://upstatement.com/blog/2012/01/jquery-local-storage-done-right-and-easy/
 */

(function(c){var e=window.localStorage,f;f="undefined"==typeof e||"undefined"==typeof window.JSON?!1:!0;c.totalStorage=function(b,a){return c.totalStorage.impl.init(b,a)};c.totalStorage.setItem=function(b,a){return c.totalStorage.impl.setItem(b,a)};c.totalStorage.getItem=function(b){return c.totalStorage.impl.getItem(b)};c.totalStorage.getAll=function(){return c.totalStorage.impl.getAll()};c.totalStorage.deleteItem=function(b){return c.totalStorage.impl.deleteItem(b)};c.totalStorage.impl={init:function(b, a){return"undefined"!=typeof a?this.setItem(b,a):this.getItem(b)},setItem:function(b,a){if(!f)try{return c.cookie(b,a),a}catch(d){console.log("Local Storage not supported by this browser. Install the cookie plugin on your site to take advantage of the same functionality. You can get it at https://github.com/carhartl/jquery-cookie")}var g=JSON.stringify(a);e.setItem(b,g);return this.parseResult(g)},getItem:function(b){if(!f)try{return this.parseResult(c.cookie(b))}catch(a){return null}return this.parseResult(e.getItem(b))}, deleteItem:function(b){if(!f)try{return c.cookie(b,null),!0}catch(a){return!1}e.removeItem(b);return!0},getAll:function(){var b=[];if(f)for(d in e)d.length&&b.push({key:d,value:this.parseResult(e.getItem(d))});else try{for(var a=document.cookie.split(";"),d=0;d<a.length;d++){var g=a[d].split("=")[0];b.push({key:g,value:this.parseResult(c.cookie(g))})}}catch(h){return null}return b},parseResult:function(b){var a;try{a=JSON.parse(b),"true"==a&&(a=!0),"false"==a&&(a=!1),parseFloat(a)==a&&"object"!=typeof a&& (a=parseFloat(a))}catch(c){}return a}}})(jQuery);
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
			yOffset: 25,
			tooltipId: "easyTooltip",
			clickRemove: false,
			content: "",
			useElement: ""
		}; 
			
		var options = $.extend(defaults, options);  
		var content;
				
		this.each(function() {  				
			var title = $(this).attr("title");				
			$(this).hover(function(e){											 							   
				content = (options.content != "") ? options.content : title;
				content = (options.useElement != "") ? $("#" + options.useElement).html() : content;
				$(this).attr("title","");									  				
				if (content != "" && content != undefined){			
					$("body").append("<div id='"+ options.tooltipId +"'>"+ content +"</div>");		
					$("#" + options.tooltipId)
						.css("position","absolute")
						.css("top",(e.pageY - options.yOffset) + "px")
						.css("left",(e.pageX + options.xOffset) + "px")						
						.css("display","none")
						.fadeIn("fast")
				}
			},
			function(){	
				$("#" + options.tooltipId).remove();
				$(this).attr("title",title);
			});	
			$(this).mousemove(function(e){
				$("#" + options.tooltipId)
					.css("top",(e.pageY - options.yOffset) + "px")
					.css("left",(e.pageX + options.xOffset) + "px")					
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

/**
* simplePagination.js v1.6
* A simple jQuery pagination plugin.
* http://flaviusmatis.github.com/simplePagination.js/
*
* Copyright 2012, Flavius Matis
* Released under the MIT license.
* http://flaviusmatis.github.com/license.html
*/

(function($){

	var methods = {
		init: function(options) {
			var o = $.extend({
				items: 1,
				itemsOnPage: 1,
				pages: 0,
				displayedPages: 5,
				edges: 2,
				currentPage: 0,
				hrefTextPrefix: '#page=',
				hrefTextSuffix: '',
				prevText: 'Prev',
				nextText: 'Next',
				ellipseText: '&hellip;',
				cssStyle: 'light-theme',
				labelMap: [],
				selectOnClick: true,
				nextAtFront: false,
				invertPageOrder: false,
				useStartEdge : true,
				useEndEdge : true,
				onPageClick: function(pageNumber, event) {
					// Callback triggered when a page is clicked
					// Page number is given as an optional parameter
				},
				onInit: function() {
					// Callback triggered immediately after initialization
				}
			}, options || {});

			var self = this;

			o.pages = o.pages ? o.pages : Math.ceil(o.items / o.itemsOnPage) ? Math.ceil(o.items / o.itemsOnPage) : 1;
			if (o.currentPage)
				o.currentPage = o.currentPage - 1;
			else
				o.currentPage = !o.invertPageOrder ? 0 : o.pages - 1;
			o.halfDisplayed = o.displayedPages / 2;

			this.each(function() {
				self.addClass(o.cssStyle + ' simple-pagination').data('pagination', o);
				methods._draw.call(self);
			});

			o.onInit();

			return this;
		},

		selectPage: function(page) {
			methods._selectPage.call(this, page - 1);
			return this;
		},

		prevPage: function() {
			var o = this.data('pagination');
			if (!o.invertPageOrder) {
				if (o.currentPage > 0) {
					methods._selectPage.call(this, o.currentPage - 1);
				}
			} else {
				if (o.currentPage < o.pages - 1) {
					methods._selectPage.call(this, o.currentPage + 1);
				}
			}
			return this;
		},

		nextPage: function() {
			var o = this.data('pagination');
			if (!o.invertPageOrder) {
				if (o.currentPage < o.pages - 1) {
					methods._selectPage.call(this, o.currentPage + 1);
				}
			} else {
				if (o.currentPage > 0) {
					methods._selectPage.call(this, o.currentPage - 1);
				}
			}
			return this;
		},

		getPagesCount: function() {
			return this.data('pagination').pages;
		},

		getCurrentPage: function () {
			return this.data('pagination').currentPage + 1;
		},

		destroy: function(){
			this.empty();
			return this;
		},

		drawPage: function (page) {
			var o = this.data('pagination');
			o.currentPage = page - 1;
			this.data('pagination', o);
			methods._draw.call(this);
			return this;
		},

		redraw: function(){
			methods._draw.call(this);
			return this;
		},

		disable: function(){
			var o = this.data('pagination');
			o.disabled = true;
			this.data('pagination', o);
			methods._draw.call(this);
			return this;
		},

		enable: function(){
			var o = this.data('pagination');
			o.disabled = false;
			this.data('pagination', o);
			methods._draw.call(this);
			return this;
		},

		updateItems: function (newItems) {
			var o = this.data('pagination');
			o.items = newItems;
			o.pages = methods._getPages(o);
			this.data('pagination', o);
			methods._draw.call(this);
		},

		updateItemsOnPage: function (itemsOnPage) {
			var o = this.data('pagination');
			o.itemsOnPage = itemsOnPage;
			o.pages = methods._getPages(o);
			this.data('pagination', o);
			methods._selectPage.call(this, 0);
			return this;
		},

		_draw: function() {
			var	o = this.data('pagination'),
				interval = methods._getInterval(o),
				i,
				tagName;

			methods.destroy.call(this);
			
			tagName = (typeof this.prop === 'function') ? this.prop('tagName') : this.attr('tagName');

			var $panel = tagName === 'UL' ? this : $('<ul class="pagination"></ul>').appendTo(this);

			// Generate Prev link
			if (o.prevText) {
				methods._appendItem.call(this, !o.invertPageOrder ? o.currentPage - 1 : o.currentPage + 1, {text: o.prevText, classes: 'prev'});
			}

			// Generate Next link (if option set for at front)
			if (o.nextText && o.nextAtFront) {
				methods._appendItem.call(this, !o.invertPageOrder ? o.currentPage + 1 : o.currentPage - 1, {text: o.nextText, classes: 'next'});
			}

			// Generate start edges
			if (!o.invertPageOrder) {
				if (interval.start > 0 && o.edges > 0) {
					if(o.useStartEdge) {
						var end = Math.min(o.edges, interval.start);
						for (i = 0; i < end; i++) {
							methods._appendItem.call(this, i);
						}
					}
					if (o.edges < interval.start && (interval.start - o.edges != 1)) {
						$panel.append('<li class="disabled"><span class="ellipse">' + o.ellipseText + '</span></li>');
					} else if (interval.start - o.edges == 1) {
						methods._appendItem.call(this, o.edges);
					}
				}
			} else {
				if (interval.end < o.pages && o.edges > 0) {
					if(o.useStartEdge) {
						var begin = Math.max(o.pages - o.edges, interval.end);
						for (i = o.pages - 1; i >= begin; i--) {
							methods._appendItem.call(this, i);
						}
					}

					if (o.pages - o.edges > interval.end && (o.pages - o.edges - interval.end != 1)) {
						$panel.append('<li class="disabled"><span class="ellipse">' + o.ellipseText + '</span></li>');
					} else if (o.pages - o.edges - interval.end == 1) {
						methods._appendItem.call(this, interval.end);
					}
				}
			}

			// Generate interval links
			if (!o.invertPageOrder) {
				for (i = interval.start; i < interval.end; i++) {
					methods._appendItem.call(this, i);
				}
			} else {
				for (i = interval.end - 1; i >= interval.start; i--) {
					methods._appendItem.call(this, i);
				}
			}

			// Generate end edges
			if (!o.invertPageOrder) {
				if (interval.end < o.pages && o.edges > 0) {
					if (o.pages - o.edges > interval.end && (o.pages - o.edges - interval.end != 1)) {
						$panel.append('<li class="disabled"><span class="ellipse">' + o.ellipseText + '</span></li>');
					} else if (o.pages - o.edges - interval.end == 1) {
						methods._appendItem.call(this, interval.end);
					}
					if(o.useEndEdge) {
						var begin = Math.max(o.pages - o.edges, interval.end);
						for (i = begin; i < o.pages; i++) {
							methods._appendItem.call(this, i);
						}
					}
				}
			} else {
				if (interval.start > 0 && o.edges > 0) {
					if (o.edges < interval.start && (interval.start - o.edges != 1)) {
						$panel.append('<li class="disabled"><span class="ellipse">' + o.ellipseText + '</span></li>');
					} else if (interval.start - o.edges == 1) {
						methods._appendItem.call(this, o.edges);
					}

					if(o.useEndEdge) {
						var end = Math.min(o.edges, interval.start);
						for (i = end - 1; i >= 0; i--) {
							methods._appendItem.call(this, i);
						}
					}
				}
			}

			// Generate Next link (unless option is set for at front)
			if (o.nextText && !o.nextAtFront) {
				methods._appendItem.call(this, !o.invertPageOrder ? o.currentPage + 1 : o.currentPage - 1, {text: o.nextText, classes: 'next'});
			}
		},

		_getPages: function(o) {
			var pages = Math.ceil(o.items / o.itemsOnPage);
			return pages || 1;
		},

		_getInterval: function(o) {
			return {
				start: Math.ceil(o.currentPage > o.halfDisplayed ? Math.max(Math.min(o.currentPage - o.halfDisplayed, (o.pages - o.displayedPages)), 0) : 0),
				end: Math.ceil(o.currentPage > o.halfDisplayed ? Math.min(o.currentPage + o.halfDisplayed, o.pages) : Math.min(o.displayedPages, o.pages))
			};
		},

		_appendItem: function(pageIndex, opts) {
			var self = this, options, $link, o = self.data('pagination'), $linkWrapper = $('<li></li>'), $ul = self.find('ul');

			pageIndex = pageIndex < 0 ? 0 : (pageIndex < o.pages ? pageIndex : o.pages - 1);

			options = {
				text: pageIndex + 1,
				classes: ''
			};

			if (o.labelMap.length && o.labelMap[pageIndex]) {
				options.text = o.labelMap[pageIndex];
			}

			options = $.extend(options, opts || {});

			if (pageIndex == o.currentPage || o.disabled) {
				if (o.disabled) {
					$linkWrapper.addClass('disabled');
				} else {
					$linkWrapper.addClass('active');
				}
				$link = $('<span class="current">' + (options.text) + '</span>');
			} else {
				$link = $('<a href="' + o.hrefTextPrefix + (pageIndex + 1) + o.hrefTextSuffix + '" class="page-link">' + (options.text) + '</a>');
				$link.click(function(event){
					return methods._selectPage.call(self, pageIndex, event);
				});
			}

			if (options.classes) {
				$link.addClass(options.classes);
			}

			$linkWrapper.append($link);

			if ($ul.length) {
				$ul.append($linkWrapper);
			} else {
				self.append($linkWrapper);
			}
		},

		_selectPage: function(pageIndex, event) {
			var o = this.data('pagination');
			o.currentPage = pageIndex;
			if (o.selectOnClick) {
				methods._draw.call(this);
			}
			return o.onPageClick(pageIndex + 1, event);
		}

	};

	$.fn.pagination = function(method) {

		// Method calling logic
		if (methods[method] && method.charAt(0) != '_') {
			return methods[method].apply(this, Array.prototype.slice.call(arguments, 1));
		} else if (typeof method === 'object' || !method) {
			return methods.init.apply(this, arguments);
		} else {
			$.error('Method ' +  method + ' does not exist on jQuery.pagination');
		}

	};

})(jQuery);

/*!
 * jQuery Validation Plugin v1.13.1
 *
 * http://jqueryvalidation.org/
 *
 * Copyright (c) 2014 Jörn Zaefferer
 * Released under the MIT license
 */
(function( factory ) {
	if ( typeof define === "function" && define.amd ) {
		define( ["jquery"], factory );
	} else {
		factory( jQuery );
	}
}(function( $ ) {

$.extend($.fn, {
	// http://jqueryvalidation.org/validate/
	validate: function( options ) {

		// if nothing is selected, return nothing; can't chain anyway
		if ( !this.length ) {
			if ( options && options.debug && window.console ) {
				console.warn( "Nothing selected, can't validate, returning nothing." );
			}
			return;
		}

		// check if a validator for this form was already created
		var validator = $.data( this[ 0 ], "validator" );
		if ( validator ) {
			return validator;
		}

		// Add novalidate tag if HTML5.
		this.attr( "novalidate", "novalidate" );

		validator = new $.validator( options, this[ 0 ] );
		$.data( this[ 0 ], "validator", validator );

		if ( validator.settings.onsubmit ) {

			this.validateDelegate( ":submit", "click", function( event ) {
				if ( validator.settings.submitHandler ) {
					validator.submitButton = event.target;
				}
				// allow suppressing validation by adding a cancel class to the submit button
				if ( $( event.target ).hasClass( "cancel" ) ) {
					validator.cancelSubmit = true;
				}

				// allow suppressing validation by adding the html5 formnovalidate attribute to the submit button
				if ( $( event.target ).attr( "formnovalidate" ) !== undefined ) {
					validator.cancelSubmit = true;
				}
			});

			// validate the form on submit
			this.submit( function( event ) {
				if ( validator.settings.debug ) {
					// prevent form submit to be able to see console output
					event.preventDefault();
				}
				function handle() {
					var hidden, result;
					if ( validator.settings.submitHandler ) {
						if ( validator.submitButton ) {
							// insert a hidden input as a replacement for the missing submit button
							hidden = $( "<input type='hidden'/>" )
								.attr( "name", validator.submitButton.name )
								.val( $( validator.submitButton ).val() )
								.appendTo( validator.currentForm );
						}
						result = validator.settings.submitHandler.call( validator, validator.currentForm, event );
						if ( validator.submitButton ) {
							// and clean up afterwards; thanks to no-block-scope, hidden can be referenced
							hidden.remove();
						}
						if ( result !== undefined ) {
							return result;
						}
						return false;
					}
					return true;
				}

				// prevent submit for invalid forms or custom submit handlers
				if ( validator.cancelSubmit ) {
					validator.cancelSubmit = false;
					return handle();
				}
				if ( validator.form() ) {
					if ( validator.pendingRequest ) {
						validator.formSubmitted = true;
						return false;
					}
					return handle();
				} else {
					validator.focusInvalid();
					return false;
				}
			});
		}

		return validator;
	},
	// http://jqueryvalidation.org/valid/
	valid: function() {
		var valid, validator;

		if ( $( this[ 0 ] ).is( "form" ) ) {
			valid = this.validate().form();
		} else {
			valid = true;
			validator = $( this[ 0 ].form ).validate();
			this.each( function() {
				valid = validator.element( this ) && valid;
			});
		}
		return valid;
	},
	// attributes: space separated list of attributes to retrieve and remove
	removeAttrs: function( attributes ) {
		var result = {},
			$element = this;
		$.each( attributes.split( /\s/ ), function( index, value ) {
			result[ value ] = $element.attr( value );
			$element.removeAttr( value );
		});
		return result;
	},
	// http://jqueryvalidation.org/rules/
	rules: function( command, argument ) {
		var element = this[ 0 ],
			settings, staticRules, existingRules, data, param, filtered;

		if ( command ) {
			settings = $.data( element.form, "validator" ).settings;
			staticRules = settings.rules;
			existingRules = $.validator.staticRules( element );
			switch ( command ) {
			case "add":
				$.extend( existingRules, $.validator.normalizeRule( argument ) );
				// remove messages from rules, but allow them to be set separately
				delete existingRules.messages;
				staticRules[ element.name ] = existingRules;
				if ( argument.messages ) {
					settings.messages[ element.name ] = $.extend( settings.messages[ element.name ], argument.messages );
				}
				break;
			case "remove":
				if ( !argument ) {
					delete staticRules[ element.name ];
					return existingRules;
				}
				filtered = {};
				$.each( argument.split( /\s/ ), function( index, method ) {
					filtered[ method ] = existingRules[ method ];
					delete existingRules[ method ];
					if ( method === "required" ) {
						$( element ).removeAttr( "aria-required" );
					}
				});
				return filtered;
			}
		}

		data = $.validator.normalizeRules(
		$.extend(
			{},
			$.validator.classRules( element ),
			$.validator.attributeRules( element ),
			$.validator.dataRules( element ),
			$.validator.staticRules( element )
		), element );

		// make sure required is at front
		if ( data.required ) {
			param = data.required;
			delete data.required;
			data = $.extend( { required: param }, data );
			$( element ).attr( "aria-required", "true" );
		}

		// make sure remote is at back
		if ( data.remote ) {
			param = data.remote;
			delete data.remote;
			data = $.extend( data, { remote: param });
		}

		return data;
	}
});

// Custom selectors
$.extend( $.expr[ ":" ], {
	// http://jqueryvalidation.org/blank-selector/
	blank: function( a ) {
		return !$.trim( "" + $( a ).val() );
	},
	// http://jqueryvalidation.org/filled-selector/
	filled: function( a ) {
		return !!$.trim( "" + $( a ).val() );
	},
	// http://jqueryvalidation.org/unchecked-selector/
	unchecked: function( a ) {
		return !$( a ).prop( "checked" );
	}
});

// constructor for validator
$.validator = function( options, form ) {
	this.settings = $.extend( true, {}, $.validator.defaults, options );
	this.currentForm = form;
	this.init();
};

// http://jqueryvalidation.org/jQuery.validator.format/
$.validator.format = function( source, params ) {
	if ( arguments.length === 1 ) {
		return function() {
			var args = $.makeArray( arguments );
			args.unshift( source );
			return $.validator.format.apply( this, args );
		};
	}
	if ( arguments.length > 2 && params.constructor !== Array  ) {
		params = $.makeArray( arguments ).slice( 1 );
	}
	if ( params.constructor !== Array ) {
		params = [ params ];
	}
	$.each( params, function( i, n ) {
		source = source.replace( new RegExp( "\\{" + i + "\\}", "g" ), function() {
			return n;
		});
	});
	return source;
};

$.extend( $.validator, {

	defaults: {
		messages: {},
		groups: {},
		rules: {},
		errorClass: "error",
		validClass: "valid",
		errorElement: "label",
		focusCleanup: false,
		focusInvalid: true,
		errorContainer: $( [] ),
		errorLabelContainer: $( [] ),
		onsubmit: true,
		ignore: ":hidden",
		ignoreTitle: false,
		onfocusin: function( element ) {
			this.lastActive = element;

			// Hide error label and remove error class on focus if enabled
			if ( this.settings.focusCleanup ) {
				if ( this.settings.unhighlight ) {
					this.settings.unhighlight.call( this, element, this.settings.errorClass, this.settings.validClass );
				}
				this.hideThese( this.errorsFor( element ) );
			}
		},
		onfocusout: function( element ) {
			if ( !this.checkable( element ) && ( element.name in this.submitted || !this.optional( element ) ) ) {
				this.element( element );
			}
		},
		onkeyup: function( element, event ) {
			if ( event.which === 9 && this.elementValue( element ) === "" ) {
				return;
			} else if ( element.name in this.submitted || element === this.lastElement ) {
				this.element( element );
			}
		},
		onclick: function( element ) {
			// click on selects, radiobuttons and checkboxes
			if ( element.name in this.submitted ) {
				this.element( element );

			// or option elements, check parent select in that case
			} else if ( element.parentNode.name in this.submitted ) {
				this.element( element.parentNode );
			}
		},
		highlight: function( element, errorClass, validClass ) {
			if ( element.type === "radio" ) {
				this.findByName( element.name ).addClass( errorClass ).removeClass( validClass );
			} else {
				$( element ).addClass( errorClass ).removeClass( validClass );
			}
		},
		unhighlight: function( element, errorClass, validClass ) {
			if ( element.type === "radio" ) {
				this.findByName( element.name ).removeClass( errorClass ).addClass( validClass );
			} else {
				$( element ).removeClass( errorClass ).addClass( validClass );
			}
		}
	},

	// http://jqueryvalidation.org/jQuery.validator.setDefaults/
	setDefaults: function( settings ) {
		$.extend( $.validator.defaults, settings );
	},

	messages: {
		required: "This field is required.",
		remote: "Please fix this field.",
		email: "Please enter a valid email address.",
		url: "Please enter a valid URL.",
		date: "Please enter a valid date.",
		dateISO: "Please enter a valid date ( ISO ).",
		number: "Please enter a valid number.",
		digits: "Please enter only digits.",
		creditcard: "Please enter a valid credit card number.",
		equalTo: "Please enter the same value again.",
		maxlength: $.validator.format( "Please enter no more than {0} characters." ),
		minlength: $.validator.format( "Please enter at least {0} characters." ),
		rangelength: $.validator.format( "Please enter a value between {0} and {1} characters long." ),
		range: $.validator.format( "Please enter a value between {0} and {1}." ),
		max: $.validator.format( "Please enter a value less than or equal to {0}." ),
		min: $.validator.format( "Please enter a value greater than or equal to {0}." )
	},

	autoCreateRanges: false,

	prototype: {

		init: function() {
			this.labelContainer = $( this.settings.errorLabelContainer );
			this.errorContext = this.labelContainer.length && this.labelContainer || $( this.currentForm );
			this.containers = $( this.settings.errorContainer ).add( this.settings.errorLabelContainer );
			this.submitted = {};
			this.valueCache = {};
			this.pendingRequest = 0;
			this.pending = {};
			this.invalid = {};
			this.reset();

			var groups = ( this.groups = {} ),
				rules;
			$.each( this.settings.groups, function( key, value ) {
				if ( typeof value === "string" ) {
					value = value.split( /\s/ );
				}
				$.each( value, function( index, name ) {
					groups[ name ] = key;
				});
			});
			rules = this.settings.rules;
			$.each( rules, function( key, value ) {
				rules[ key ] = $.validator.normalizeRule( value );
			});

			function delegate( event ) {
				var validator = $.data( this[ 0 ].form, "validator" ),
					eventType = "on" + event.type.replace( /^validate/, "" ),
					settings = validator.settings;
				if ( settings[ eventType ] && !this.is( settings.ignore ) ) {
					settings[ eventType ].call( validator, this[ 0 ], event );
				}
			}
			$( this.currentForm )
				.validateDelegate( ":text, [type='password'], [type='file'], select, textarea, " +
					"[type='number'], [type='search'] ,[type='tel'], [type='url'], " +
					"[type='email'], [type='datetime'], [type='date'], [type='month'], " +
					"[type='week'], [type='time'], [type='datetime-local'], " +
					"[type='range'], [type='color'], [type='radio'], [type='checkbox']",
					"focusin focusout keyup", delegate)
				// Support: Chrome, oldIE
				// "select" is provided as event.target when clicking a option
				.validateDelegate("select, option, [type='radio'], [type='checkbox']", "click", delegate);

			if ( this.settings.invalidHandler ) {
				$( this.currentForm ).bind( "invalid-form.validate", this.settings.invalidHandler );
			}

			// Add aria-required to any Static/Data/Class required fields before first validation
			// Screen readers require this attribute to be present before the initial submission http://www.w3.org/TR/WCAG-TECHS/ARIA2.html
			$( this.currentForm ).find( "[required], [data-rule-required], .required" ).attr( "aria-required", "true" );
		},

		// http://jqueryvalidation.org/Validator.form/
		form: function() {
			this.checkForm();
			$.extend( this.submitted, this.errorMap );
			this.invalid = $.extend({}, this.errorMap );
			if ( !this.valid() ) {
				$( this.currentForm ).triggerHandler( "invalid-form", [ this ]);
			}
			this.showErrors();
			return this.valid();
		},

		checkForm: function() {
			this.prepareForm();
			for ( var i = 0, elements = ( this.currentElements = this.elements() ); elements[ i ]; i++ ) {
				this.check( elements[ i ] );
			}
			return this.valid();
		},

		// http://jqueryvalidation.org/Validator.element/
		element: function( element ) {
			var cleanElement = this.clean( element ),
				checkElement = this.validationTargetFor( cleanElement ),
				result = true;

			this.lastElement = checkElement;

			if ( checkElement === undefined ) {
				delete this.invalid[ cleanElement.name ];
			} else {
				this.prepareElement( checkElement );
				this.currentElements = $( checkElement );

				result = this.check( checkElement ) !== false;
				if ( result ) {
					delete this.invalid[ checkElement.name ];
				} else {
					this.invalid[ checkElement.name ] = true;
				}
			}
			// Add aria-invalid status for screen readers
			$( element ).attr( "aria-invalid", !result );

			if ( !this.numberOfInvalids() ) {
				// Hide error containers on last error
				this.toHide = this.toHide.add( this.containers );
			}
			this.showErrors();
			return result;
		},

		// http://jqueryvalidation.org/Validator.showErrors/
		showErrors: function( errors ) {
			if ( errors ) {
				// add items to error list and map
				$.extend( this.errorMap, errors );
				this.errorList = [];
				for ( var name in errors ) {
					this.errorList.push({
						message: errors[ name ],
						element: this.findByName( name )[ 0 ]
					});
				}
				// remove items from success list
				this.successList = $.grep( this.successList, function( element ) {
					return !( element.name in errors );
				});
			}
			if ( this.settings.showErrors ) {
				this.settings.showErrors.call( this, this.errorMap, this.errorList );
			} else {
				this.defaultShowErrors();
			}
		},

		// http://jqueryvalidation.org/Validator.resetForm/
		resetForm: function() {
			if ( $.fn.resetForm ) {
				$( this.currentForm ).resetForm();
			}
			this.submitted = {};
			this.lastElement = null;
			this.prepareForm();
			this.hideErrors();
			this.elements()
					.removeClass( this.settings.errorClass )
					.removeData( "previousValue" )
					.removeAttr( "aria-invalid" );
		},

		numberOfInvalids: function() {
			return this.objectLength( this.invalid );
		},

		objectLength: function( obj ) {
			/* jshint unused: false */
			var count = 0,
				i;
			for ( i in obj ) {
				count++;
			}
			return count;
		},

		hideErrors: function() {
			this.hideThese( this.toHide );
		},

		hideThese: function( errors ) {
			errors.not( this.containers ).text( "" );
			this.addWrapper( errors ).hide();
		},

		valid: function() {
			return this.size() === 0;
		},

		size: function() {
			return this.errorList.length;
		},

		focusInvalid: function() {
			if ( this.settings.focusInvalid ) {
				try {
					$( this.findLastActive() || this.errorList.length && this.errorList[ 0 ].element || [])
					.filter( ":visible" )
					.focus()
					// manually trigger focusin event; without it, focusin handler isn't called, findLastActive won't have anything to find
					.trigger( "focusin" );
				} catch ( e ) {
					// ignore IE throwing errors when focusing hidden elements
				}
			}
		},

		findLastActive: function() {
			var lastActive = this.lastActive;
			return lastActive && $.grep( this.errorList, function( n ) {
				return n.element.name === lastActive.name;
			}).length === 1 && lastActive;
		},

		elements: function() {
			var validator = this,
				rulesCache = {};

			// select all valid inputs inside the form (no submit or reset buttons)
			return $( this.currentForm )
			.find( "input, select, textarea" )
			.not( ":submit, :reset, :image, [disabled], [readonly]" )
			.not( this.settings.ignore )
			.filter( function() {
				if ( !this.name && validator.settings.debug && window.console ) {
					console.error( "%o has no name assigned", this );
				}

				// select only the first element for each name, and only those with rules specified
				if ( this.name in rulesCache || !validator.objectLength( $( this ).rules() ) ) {
					return false;
				}

				rulesCache[ this.name ] = true;
				return true;
			});
		},

		clean: function( selector ) {
			return $( selector )[ 0 ];
		},

		errors: function() {
			var errorClass = this.settings.errorClass.split( " " ).join( "." );
			return $( this.settings.errorElement + "." + errorClass, this.errorContext );
		},

		reset: function() {
			this.successList = [];
			this.errorList = [];
			this.errorMap = {};
			this.toShow = $( [] );
			this.toHide = $( [] );
			this.currentElements = $( [] );
		},

		prepareForm: function() {
			this.reset();
			this.toHide = this.errors().add( this.containers );
		},

		prepareElement: function( element ) {
			this.reset();
			this.toHide = this.errorsFor( element );
		},

		elementValue: function( element ) {
			var val,
				$element = $( element ),
				type = element.type;

			if ( type === "radio" || type === "checkbox" ) {
				return $( "input[name='" + element.name + "']:checked" ).val();
			} else if ( type === "number" && typeof element.validity !== "undefined" ) {
				return element.validity.badInput ? false : $element.val();
			}

			val = $element.val();
			if ( typeof val === "string" ) {
				return val.replace(/\r/g, "" );
			}
			return val;
		},

		check: function( element ) {
			element = this.validationTargetFor( this.clean( element ) );

			var rules = $( element ).rules(),
				rulesCount = $.map( rules, function( n, i ) {
					return i;
				}).length,
				dependencyMismatch = false,
				val = this.elementValue( element ),
				result, method, rule;

			for ( method in rules ) {
				rule = { method: method, parameters: rules[ method ] };
				try {

					result = $.validator.methods[ method ].call( this, val, element, rule.parameters );

					// if a method indicates that the field is optional and therefore valid,
					// don't mark it as valid when there are no other rules
					if ( result === "dependency-mismatch" && rulesCount === 1 ) {
						dependencyMismatch = true;
						continue;
					}
					dependencyMismatch = false;

					if ( result === "pending" ) {
						this.toHide = this.toHide.not( this.errorsFor( element ) );
						return;
					}

					if ( !result ) {
						this.formatAndAdd( element, rule );
						return false;
					}
				} catch ( e ) {
					if ( this.settings.debug && window.console ) {
						console.log( "Exception occurred when checking element " + element.id + ", check the '" + rule.method + "' method.", e );
					}
					throw e;
				}
			}
			if ( dependencyMismatch ) {
				return;
			}
			if ( this.objectLength( rules ) ) {
				this.successList.push( element );
			}
			return true;
		},

		// return the custom message for the given element and validation method
		// specified in the element's HTML5 data attribute
		// return the generic message if present and no method specific message is present
		customDataMessage: function( element, method ) {
			return $( element ).data( "msg" + method.charAt( 0 ).toUpperCase() +
				method.substring( 1 ).toLowerCase() ) || $( element ).data( "msg" );
		},

		// return the custom message for the given element name and validation method
		customMessage: function( name, method ) {
			var m = this.settings.messages[ name ];
			return m && ( m.constructor === String ? m : m[ method ]);
		},

		// return the first defined argument, allowing empty strings
		findDefined: function() {
			for ( var i = 0; i < arguments.length; i++) {
				if ( arguments[ i ] !== undefined ) {
					return arguments[ i ];
				}
			}
			return undefined;
		},

		defaultMessage: function( element, method ) {
			return this.findDefined(
				this.customMessage( element.name, method ),
				this.customDataMessage( element, method ),
				// title is never undefined, so handle empty string as undefined
				!this.settings.ignoreTitle && element.title || undefined,
				$.validator.messages[ method ],
				"<strong>Warning: No message defined for " + element.name + "</strong>"
			);
		},

		formatAndAdd: function( element, rule ) {
			var message = this.defaultMessage( element, rule.method ),
				theregex = /\$?\{(\d+)\}/g;
			if ( typeof message === "function" ) {
				message = message.call( this, rule.parameters, element );
			} else if ( theregex.test( message ) ) {
				message = $.validator.format( message.replace( theregex, "{$1}" ), rule.parameters );
			}
			this.errorList.push({
				message: message,
				element: element,
				method: rule.method
			});

			this.errorMap[ element.name ] = message;
			this.submitted[ element.name ] = message;
		},

		addWrapper: function( toToggle ) {
			if ( this.settings.wrapper ) {
				toToggle = toToggle.add( toToggle.parent( this.settings.wrapper ) );
			}
			return toToggle;
		},

		defaultShowErrors: function() {
			var i, elements, error;
			for ( i = 0; this.errorList[ i ]; i++ ) {
				error = this.errorList[ i ];
				if ( this.settings.highlight ) {
					this.settings.highlight.call( this, error.element, this.settings.errorClass, this.settings.validClass );
				}
				this.showLabel( error.element, error.message );
			}
			if ( this.errorList.length ) {
				this.toShow = this.toShow.add( this.containers );
			}
			if ( this.settings.success ) {
				for ( i = 0; this.successList[ i ]; i++ ) {
					this.showLabel( this.successList[ i ] );
				}
			}
			if ( this.settings.unhighlight ) {
				for ( i = 0, elements = this.validElements(); elements[ i ]; i++ ) {
					this.settings.unhighlight.call( this, elements[ i ], this.settings.errorClass, this.settings.validClass );
				}
			}
			this.toHide = this.toHide.not( this.toShow );
			this.hideErrors();
			this.addWrapper( this.toShow ).show();
		},

		validElements: function() {
			return this.currentElements.not( this.invalidElements() );
		},

		invalidElements: function() {
			return $( this.errorList ).map(function() {
				return this.element;
			});
		},

		showLabel: function( element, message ) {
			var place, group, errorID,
				error = this.errorsFor( element ),
				elementID = this.idOrName( element ),
				describedBy = $( element ).attr( "aria-describedby" );
			if ( error.length ) {
				// refresh error/success class
				error.removeClass( this.settings.validClass ).addClass( this.settings.errorClass );
				// replace message on existing label
				error.html( message );
			} else {
				// create error element
				error = $( "<" + this.settings.errorElement + ">" )
					.attr( "id", elementID + "-error" )
					.addClass( this.settings.errorClass )
					.html( message || "" );

				// Maintain reference to the element to be placed into the DOM
				place = error;
				if ( this.settings.wrapper ) {
					// make sure the element is visible, even in IE
					// actually showing the wrapped element is handled elsewhere
					place = error.hide().show().wrap( "<" + this.settings.wrapper + "/>" ).parent();
				}
				if ( this.labelContainer.length ) {
					this.labelContainer.append( place );
				} else if ( this.settings.errorPlacement ) {
					this.settings.errorPlacement( place, $( element ) );
				} else {
					place.insertAfter( element );
				}

				// Link error back to the element
				if ( error.is( "label" ) ) {
					// If the error is a label, then associate using 'for'
					error.attr( "for", elementID );
				} else if ( error.parents( "label[for='" + elementID + "']" ).length === 0 ) {
					// If the element is not a child of an associated label, then it's necessary
					// to explicitly apply aria-describedby

					errorID = error.attr( "id" ).replace( /(:|\.|\[|\])/g, "\\$1");
					// Respect existing non-error aria-describedby
					if ( !describedBy ) {
						describedBy = errorID;
					} else if ( !describedBy.match( new RegExp( "\\b" + errorID + "\\b" ) ) ) {
						// Add to end of list if not already present
						describedBy += " " + errorID;
					}
					$( element ).attr( "aria-describedby", describedBy );

					// If this element is grouped, then assign to all elements in the same group
					group = this.groups[ element.name ];
					if ( group ) {
						$.each( this.groups, function( name, testgroup ) {
							if ( testgroup === group ) {
								$( "[name='" + name + "']", this.currentForm )
									.attr( "aria-describedby", error.attr( "id" ) );
							}
						});
					}
				}
			}
			if ( !message && this.settings.success ) {
				error.text( "" );
				if ( typeof this.settings.success === "string" ) {
					error.addClass( this.settings.success );
				} else {
					this.settings.success( error, element );
				}
			}
			this.toShow = this.toShow.add( error );
		},

		errorsFor: function( element ) {
			var name = this.idOrName( element ),
				describer = $( element ).attr( "aria-describedby" ),
				selector = "label[for='" + name + "'], label[for='" + name + "'] *";

			// aria-describedby should directly reference the error element
			if ( describer ) {
				selector = selector + ", #" + describer.replace( /\s+/g, ", #" );
			}
			return this
				.errors()
				.filter( selector );
		},

		idOrName: function( element ) {
			return this.groups[ element.name ] || ( this.checkable( element ) ? element.name : element.id || element.name );
		},

		validationTargetFor: function( element ) {

			// If radio/checkbox, validate first element in group instead
			if ( this.checkable( element ) ) {
				element = this.findByName( element.name );
			}

			// Always apply ignore filter
			return $( element ).not( this.settings.ignore )[ 0 ];
		},

		checkable: function( element ) {
			return ( /radio|checkbox/i ).test( element.type );
		},

		findByName: function( name ) {
			return $( this.currentForm ).find( "[name='" + name + "']" );
		},

		getLength: function( value, element ) {
			switch ( element.nodeName.toLowerCase() ) {
			case "select":
				return $( "option:selected", element ).length;
			case "input":
				if ( this.checkable( element ) ) {
					return this.findByName( element.name ).filter( ":checked" ).length;
				}
			}
			return value.length;
		},

		depend: function( param, element ) {
			return this.dependTypes[typeof param] ? this.dependTypes[typeof param]( param, element ) : true;
		},

		dependTypes: {
			"boolean": function( param ) {
				return param;
			},
			"string": function( param, element ) {
				return !!$( param, element.form ).length;
			},
			"function": function( param, element ) {
				return param( element );
			}
		},

		optional: function( element ) {
			var val = this.elementValue( element );
			return !$.validator.methods.required.call( this, val, element ) && "dependency-mismatch";
		},

		startRequest: function( element ) {
			if ( !this.pending[ element.name ] ) {
				this.pendingRequest++;
				this.pending[ element.name ] = true;
			}
		},

		stopRequest: function( element, valid ) {
			this.pendingRequest--;
			// sometimes synchronization fails, make sure pendingRequest is never < 0
			if ( this.pendingRequest < 0 ) {
				this.pendingRequest = 0;
			}
			delete this.pending[ element.name ];
			if ( valid && this.pendingRequest === 0 && this.formSubmitted && this.form() ) {
				$( this.currentForm ).submit();
				this.formSubmitted = false;
			} else if (!valid && this.pendingRequest === 0 && this.formSubmitted ) {
				$( this.currentForm ).triggerHandler( "invalid-form", [ this ]);
				this.formSubmitted = false;
			}
		},

		previousValue: function( element ) {
			return $.data( element, "previousValue" ) || $.data( element, "previousValue", {
				old: null,
				valid: true,
				message: this.defaultMessage( element, "remote" )
			});
		}

	},

	classRuleSettings: {
		required: { required: true },
		email: { email: true },
		url: { url: true },
		date: { date: true },
		dateISO: { dateISO: true },
		number: { number: true },
		digits: { digits: true },
		creditcard: { creditcard: true }
	},

	addClassRules: function( className, rules ) {
		if ( className.constructor === String ) {
			this.classRuleSettings[ className ] = rules;
		} else {
			$.extend( this.classRuleSettings, className );
		}
	},

	classRules: function( element ) {
		var rules = {},
			classes = $( element ).attr( "class" );

		if ( classes ) {
			$.each( classes.split( " " ), function() {
				if ( this in $.validator.classRuleSettings ) {
					$.extend( rules, $.validator.classRuleSettings[ this ]);
				}
			});
		}
		return rules;
	},

	attributeRules: function( element ) {
		var rules = {},
			$element = $( element ),
			type = element.getAttribute( "type" ),
			method, value;

		for ( method in $.validator.methods ) {

			// support for <input required> in both html5 and older browsers
			if ( method === "required" ) {
				value = element.getAttribute( method );
				// Some browsers return an empty string for the required attribute
				// and non-HTML5 browsers might have required="" markup
				if ( value === "" ) {
					value = true;
				}
				// force non-HTML5 browsers to return bool
				value = !!value;
			} else {
				value = $element.attr( method );
			}

			// convert the value to a number for number inputs, and for text for backwards compability
			// allows type="date" and others to be compared as strings
			if ( /min|max/.test( method ) && ( type === null || /number|range|text/.test( type ) ) ) {
				value = Number( value );
			}

			if ( value || value === 0 ) {
				rules[ method ] = value;
			} else if ( type === method && type !== "range" ) {
				// exception: the jquery validate 'range' method
				// does not test for the html5 'range' type
				rules[ method ] = true;
			}
		}

		// maxlength may be returned as -1, 2147483647 ( IE ) and 524288 ( safari ) for text inputs
		if ( rules.maxlength && /-1|2147483647|524288/.test( rules.maxlength ) ) {
			delete rules.maxlength;
		}

		return rules;
	},

	dataRules: function( element ) {
		var method, value,
			rules = {}, $element = $( element );
		for ( method in $.validator.methods ) {
			value = $element.data( "rule" + method.charAt( 0 ).toUpperCase() + method.substring( 1 ).toLowerCase() );
			if ( value !== undefined ) {
				rules[ method ] = value;
			}
		}
		return rules;
	},

	staticRules: function( element ) {
		var rules = {},
			validator = $.data( element.form, "validator" );

		if ( validator.settings.rules ) {
			rules = $.validator.normalizeRule( validator.settings.rules[ element.name ] ) || {};
		}
		return rules;
	},

	normalizeRules: function( rules, element ) {
		// handle dependency check
		$.each( rules, function( prop, val ) {
			// ignore rule when param is explicitly false, eg. required:false
			if ( val === false ) {
				delete rules[ prop ];
				return;
			}
			if ( val.param || val.depends ) {
				var keepRule = true;
				switch ( typeof val.depends ) {
				case "string":
					keepRule = !!$( val.depends, element.form ).length;
					break;
				case "function":
					keepRule = val.depends.call( element, element );
					break;
				}
				if ( keepRule ) {
					rules[ prop ] = val.param !== undefined ? val.param : true;
				} else {
					delete rules[ prop ];
				}
			}
		});

		// evaluate parameters
		$.each( rules, function( rule, parameter ) {
			rules[ rule ] = $.isFunction( parameter ) ? parameter( element ) : parameter;
		});

		// clean number parameters
		$.each([ "minlength", "maxlength" ], function() {
			if ( rules[ this ] ) {
				rules[ this ] = Number( rules[ this ] );
			}
		});
		$.each([ "rangelength", "range" ], function() {
			var parts;
			if ( rules[ this ] ) {
				if ( $.isArray( rules[ this ] ) ) {
					rules[ this ] = [ Number( rules[ this ][ 0 ]), Number( rules[ this ][ 1 ] ) ];
				} else if ( typeof rules[ this ] === "string" ) {
					parts = rules[ this ].replace(/[\[\]]/g, "" ).split( /[\s,]+/ );
					rules[ this ] = [ Number( parts[ 0 ]), Number( parts[ 1 ] ) ];
				}
			}
		});

		if ( $.validator.autoCreateRanges ) {
			// auto-create ranges
			if ( rules.min != null && rules.max != null ) {
				rules.range = [ rules.min, rules.max ];
				delete rules.min;
				delete rules.max;
			}
			if ( rules.minlength != null && rules.maxlength != null ) {
				rules.rangelength = [ rules.minlength, rules.maxlength ];
				delete rules.minlength;
				delete rules.maxlength;
			}
		}

		return rules;
	},

	// Converts a simple string to a {string: true} rule, e.g., "required" to {required:true}
	normalizeRule: function( data ) {
		if ( typeof data === "string" ) {
			var transformed = {};
			$.each( data.split( /\s/ ), function() {
				transformed[ this ] = true;
			});
			data = transformed;
		}
		return data;
	},

	// http://jqueryvalidation.org/jQuery.validator.addMethod/
	addMethod: function( name, method, message ) {
		$.validator.methods[ name ] = method;
		$.validator.messages[ name ] = message !== undefined ? message : $.validator.messages[ name ];
		if ( method.length < 3 ) {
			$.validator.addClassRules( name, $.validator.normalizeRule( name ) );
		}
	},

	methods: {

		// http://jqueryvalidation.org/required-method/
		required: function( value, element, param ) {
			// check if dependency is met
			if ( !this.depend( param, element ) ) {
				return "dependency-mismatch";
			}
			if ( element.nodeName.toLowerCase() === "select" ) {
				// could be an array for select-multiple or a string, both are fine this way
				var val = $( element ).val();
				return val && val.length > 0;
			}
			if ( this.checkable( element ) ) {
				return this.getLength( value, element ) > 0;
			}
			return $.trim( value ).length > 0;
		},

		// http://jqueryvalidation.org/email-method/
		email: function( value, element ) {
			// From http://www.whatwg.org/specs/web-apps/current-work/multipage/states-of-the-type-attribute.html#e-mail-state-%28type=email%29
			// Retrieved 2014-01-14
			// If you have a problem with this implementation, report a bug against the above spec
			// Or use custom methods to implement your own email validation
			return this.optional( element ) || /^[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/.test( value );
		},

		// http://jqueryvalidation.org/url-method/
		url: function( value, element ) {
			// contributed by Scott Gonzalez: http://projects.scottsplayground.com/iri/
			return this.optional( element ) || /^(https?|s?ftp):\/\/(((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:)*@)?(((\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5]))|((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?)(:\d*)?)(\/((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)+(\/(([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)*)*)?)?(\?((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)|[\uE000-\uF8FF]|\/|\?)*)?(#((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)|\/|\?)*)?$/i.test( value );
		},

		// http://jqueryvalidation.org/date-method/
		date: function( value, element ) {
			return this.optional( element ) || !/Invalid|NaN/.test( new Date( value ).toString() );
		},

		// http://jqueryvalidation.org/dateISO-method/
		dateISO: function( value, element ) {
			return this.optional( element ) || /^\d{4}[\/\-](0?[1-9]|1[012])[\/\-](0?[1-9]|[12][0-9]|3[01])$/.test( value );
		},

		// http://jqueryvalidation.org/number-method/
		number: function( value, element ) {
			return this.optional( element ) || /^-?(?:\d+|\d{1,3}(?:,\d{3})+)?(?:\.\d+)?$/.test( value );
		},

		// http://jqueryvalidation.org/digits-method/
		digits: function( value, element ) {
			return this.optional( element ) || /^\d+$/.test( value );
		},

		// http://jqueryvalidation.org/creditcard-method/
		// based on http://en.wikipedia.org/wiki/Luhn/
		creditcard: function( value, element ) {
			if ( this.optional( element ) ) {
				return "dependency-mismatch";
			}
			// accept only spaces, digits and dashes
			if ( /[^0-9 \-]+/.test( value ) ) {
				return false;
			}
			var nCheck = 0,
				nDigit = 0,
				bEven = false,
				n, cDigit;

			value = value.replace( /\D/g, "" );

			// Basing min and max length on
			// http://developer.ean.com/general_info/Valid_Credit_Card_Types
			if ( value.length < 13 || value.length > 19 ) {
				return false;
			}

			for ( n = value.length - 1; n >= 0; n--) {
				cDigit = value.charAt( n );
				nDigit = parseInt( cDigit, 10 );
				if ( bEven ) {
					if ( ( nDigit *= 2 ) > 9 ) {
						nDigit -= 9;
					}
				}
				nCheck += nDigit;
				bEven = !bEven;
			}

			return ( nCheck % 10 ) === 0;
		},

		// http://jqueryvalidation.org/minlength-method/
		minlength: function( value, element, param ) {
			var length = $.isArray( value ) ? value.length : this.getLength( value, element );
			return this.optional( element ) || length >= param;
		},

		// http://jqueryvalidation.org/maxlength-method/
		maxlength: function( value, element, param ) {
			var length = $.isArray( value ) ? value.length : this.getLength( value, element );
			return this.optional( element ) || length <= param;
		},

		// http://jqueryvalidation.org/rangelength-method/
		rangelength: function( value, element, param ) {
			var length = $.isArray( value ) ? value.length : this.getLength( value, element );
			return this.optional( element ) || ( length >= param[ 0 ] && length <= param[ 1 ] );
		},

		// http://jqueryvalidation.org/min-method/
		min: function( value, element, param ) {
			return this.optional( element ) || value >= param;
		},

		// http://jqueryvalidation.org/max-method/
		max: function( value, element, param ) {
			return this.optional( element ) || value <= param;
		},

		// http://jqueryvalidation.org/range-method/
		range: function( value, element, param ) {
			return this.optional( element ) || ( value >= param[ 0 ] && value <= param[ 1 ] );
		},

		// http://jqueryvalidation.org/equalTo-method/
		equalTo: function( value, element, param ) {
			// bind to the blur event of the target in order to revalidate whenever the target field is updated
			// TODO find a way to bind the event just once, avoiding the unbind-rebind overhead
			var target = $( param );
			if ( this.settings.onfocusout ) {
				target.unbind( ".validate-equalTo" ).bind( "blur.validate-equalTo", function() {
					$( element ).valid();
				});
			}
			return value === target.val();
		},

		// http://jqueryvalidation.org/remote-method/
		remote: function( value, element, param ) {
			if ( this.optional( element ) ) {
				return "dependency-mismatch";
			}

			var previous = this.previousValue( element ),
				validator, data;

			if (!this.settings.messages[ element.name ] ) {
				this.settings.messages[ element.name ] = {};
			}
			previous.originalMessage = this.settings.messages[ element.name ].remote;
			this.settings.messages[ element.name ].remote = previous.message;

			param = typeof param === "string" && { url: param } || param;

			if ( previous.old === value ) {
				return previous.valid;
			}

			previous.old = value;
			validator = this;
			this.startRequest( element );
			data = {};
			data[ element.name ] = value;
			$.ajax( $.extend( true, {
				url: param,
				mode: "abort",
				port: "validate" + element.name,
				dataType: "json",
				data: data,
				context: validator.currentForm,
				success: function( response ) {
					var valid = response === true || response === "true",
						errors, message, submitted;

					validator.settings.messages[ element.name ].remote = previous.originalMessage;
					if ( valid ) {
						submitted = validator.formSubmitted;
						validator.prepareElement( element );
						validator.formSubmitted = submitted;
						validator.successList.push( element );
						delete validator.invalid[ element.name ];
						validator.showErrors();
					} else {
						errors = {};
						message = response || validator.defaultMessage( element, "remote" );
						errors[ element.name ] = previous.message = $.isFunction( message ) ? message( value ) : message;
						validator.invalid[ element.name ] = true;
						validator.showErrors( errors );
					}
					previous.valid = valid;
					validator.stopRequest( element, valid );
				}
			}, param ) );
			return "pending";
		}

	}

});

$.format = function deprecated() {
	throw "$.format has been deprecated. Please use $.validator.format instead.";
};

// ajax mode: abort
// usage: $.ajax({ mode: "abort"[, port: "uniqueport"]});
// if mode:"abort" is used, the previous request on that port (port can be undefined) is aborted via XMLHttpRequest.abort()

var pendingRequests = {},
	ajax;
// Use a prefilter if available (1.5+)
if ( $.ajaxPrefilter ) {
	$.ajaxPrefilter(function( settings, _, xhr ) {
		var port = settings.port;
		if ( settings.mode === "abort" ) {
			if ( pendingRequests[port] ) {
				pendingRequests[port].abort();
			}
			pendingRequests[port] = xhr;
		}
	});
} else {
	// Proxy ajax
	ajax = $.ajax;
	$.ajax = function( settings ) {
		var mode = ( "mode" in settings ? settings : $.ajaxSettings ).mode,
			port = ( "port" in settings ? settings : $.ajaxSettings ).port;
		if ( mode === "abort" ) {
			if ( pendingRequests[port] ) {
				pendingRequests[port].abort();
			}
			pendingRequests[port] = ajax.apply(this, arguments);
			return pendingRequests[port];
		}
		return ajax.apply(this, arguments);
	};
}

// provides delegate(type: String, delegate: Selector, handler: Callback) plugin for easier event delegation
// handler is only called when $(event.target).is(delegate), in the scope of the jquery-object for event.target

$.extend($.fn, {
	validateDelegate: function( delegate, type, handler ) {
		return this.bind(type, function( event ) {
			var target = $(event.target);
			if ( target.is(delegate) ) {
				return handler.apply(target, arguments);
			}
		});
	}
});

}));
/**
 * jQuery syncTranslit plugin
 *
 * Copyright (c) 2009 Snitko Roman
 * Dual licensed under the MIT (MIT-LICENSE.txt)
 * and GPL (GPL-LICENSE.txt) licenses.
 *
 * @author 	Roman Snitko snowcore.net@gmail.com
 * @link http://snowcore.net/
 * @version 0.0.7
 */
;(function($){
    $.fn.syncTranslit = function(options) {
        var opts = $.extend({}, $.fn.syncTranslit.defaults, options);
        if(opts.strtr) {
            return $.fn.syncTranslit.strtr( opts );
        }
        
        return this.each(function() {
            $this = $(this);
            var o = $.meta ? $.extend({}, opts, $this.data()) : opts;
            var $destination = $('#' + opts.destination);
            o.destinationObject = $destination;
            
            // IE always sucks :)
            if (!Array.indexOf) {
                Array.prototype.indexOf = function(obj) {
                    for (var i = 0; i < this.length; i++) {
                        if (this[i] == obj) {
                            return i;
                        }
                    }
                    return -1;
                }
            }
            
            $this.keyup(function(){
            	var str = $(this).val();
            	var result = '';
            	for (var i = 0; i < str.length; i++) {
            		result += $.fn.syncTranslit.transliterate(str.charAt(i), o)
            	}
            	var regExp = new RegExp('[' + o.urlSeparator + ']{2,}', 'g');
            	result = result.replace(regExp, o.urlSeparator);
            	$destination.val(result);
            })
        });
    };
    
    
    $.fn.syncTranslit.strtr = function(opts) {
        var text = (opts._text) ? opts._text : '';

        var result = '';
        for (var i = 0; i < text.length; i++) {
                result += $.fn.syncTranslit.transliterate(text.charAt(i), opts);
        }
        var regExp = new RegExp('[' + opts.urlSeparator + ']{2,}', 'g');
        result = result.replace(regExp, opts.urlSeparator);
        return result;
    }
    
    /**
     * Transliterate character
     * @param {String} character
     * @param {Object} opts
     */
    $.fn.syncTranslit.transliterate = function(char, opts) {
    	var charIsLowerCase = true, trChar;
    	if (char.toLowerCase() != char) {
    		charIsLowerCase = false;
    	}
    	
    	char = char.toLowerCase();
    	
    	var index = opts.dictOriginal.indexOf(char);
    	if (index == -1) {
    		trChar = char;
    	} else {
    		trChar = opts.dictTranslate[index];
    	}
    	
    	if (opts.type == 'url') {
	    	var code = trChar.charCodeAt(0);
                
                if(trChar == '.') { return '.'; } // fix точка
                
	    	if (code >= 33  && code <= 47 && code != 45
	    		|| code >= 58  && code <= 64
	    		|| code >= 91  && code <= 96
	    		|| code >= 123 && code <= 126
	    		|| code >= 1072
	    	) {
	    		return '';
	    	}
	    	if (trChar == ' ' || trChar == '-') {
	    		return opts.urlSeparator;
	    	}
    	}
    	
    	if (opts.caseStyle == 'upper') {
    		return trChar.toUpperCase();
    	} else if (opts.caseStyle == 'normal') {
    		if (charIsLowerCase) {
    			return trChar.toLowerCase();
    		} else {
    			return trChar.toUpperCase();
    		}
    	}
	    return trChar;
    };
    
    /**
     * Default options
     */
    $.fn.syncTranslit.defaults = {
        /**
         * Dictionaries
         */
        dictOriginal:  ['а', 'б', 'в', 'г', 'д', 'е',
                        'ё', 'ж', 'з', 'и', 'й', 'к',
                        'л', 'м', 'н', 'о', 'п', 'р',
                        'с', 'т', 'у', 'ф', 'х', 'ц',
                        'ч', 'ш', 'щ', 'ъ', 'ы', 'ь',
                        'э', 'ю', 'я',
                        'і', 'є', 'ї', 'ґ'
                        ],
        dictTranslate: ['a', 'b', 'v', 'g', 'd', 'e',
                        'e', 'zh','z', 'i', 'j', 'k',
                        'l', 'm', 'n', 'o', 'p', 'r',
                        's', 't', 'u', 'f', 'h', 'ts',
                        'ch','sh','sch', '', 'y', '',
                        'e', 'ju', 'ja',
                        'i', 'je', 'ji', 'g'
                        ],
        
        /*
         * Case transformation: normal, lower, upper
         */
        caseStyle: 'lower',
        
        /*
         * Words separator in url
         */
        urlSeparator: '-',
        
        /*
         * Transliteration type: raw or url
         *    url - used for transliterating text into url slug
         *    raw - raw transliteration (with special characters)
         */
        type: 'url'
    };
})(jQuery);
/*!
 * money.js / fx() v0.2
 * Copyright 2014 Open Exchange Rates
 *
 * JavaScript library for realtime currency conversion and exchange rate calculation.
 *
 * Freely distributable under the MIT license.
 * Portions of money.js are inspired by or borrowed from underscore.js
 *
 * For details, examples and documentation:
 * http://openexchangerates.github.io/money.js/
 */
(function(root, undefined) {

	// Create a safe reference to the money.js object for use below.
	var fx = function(obj) {
		return new fxWrapper(obj);
	};

	// Current version.
	fx.version = '0.2';


	/* --- Setup --- */

	// fxSetup can be defined before loading money.js, to set the exchange rates and the base
	// (and default from/to) currencies - or the rates can be loaded in later if needed.
	var fxSetup = root.fxSetup || {
		rates : {},
		base : ""
	};

	// Object containing exchange rates relative to the fx.base currency, eg { "GBP" : "0.64" }
	fx.rates = fxSetup.rates;

	// Default exchange rate base currency (eg "USD"), which all the exchange rates are relative to
	fx.base = fxSetup.base;

	// Default from / to currencies for conversion via fx.convert():
	fx.settings = {
		from : fxSetup.from || fx.base,
		to : fxSetup.to || fx.base
	};


	/* --- Conversion --- */

	// The base function of the library: converts a value from one currency to another
	var convert = fx.convert = function(val, opts) {
		// Convert arrays recursively
		if (typeof val === 'object' && val.length) {
			for (var i = 0; i< val.length; i++ ) {
				val[i] = convert(val[i], opts);
			}
			return val;
		}

		// Make sure we gots some opts
		opts = opts || {};

		// We need to know the `from` and `to` currencies
		if( !opts.from ) opts.from = fx.settings.from;
		if( !opts.to ) opts.to = fx.settings.to;

		// Multiple the value by the exchange rate
		return val * getRate( opts.to, opts.from );
	};

	// Returns the exchange rate to `target` currency from `base` currency
	var getRate = function(to, from) {
		// Save bytes in minified version
		var rates = fx.rates;

		// Make sure the base rate is in the rates object:
		rates[fx.base] = 1;

		// Throw an error if either rate isn't in the rates array
		if ( !rates[to] || !rates[from] ) throw "fx error";

		// If `from` currency === fx.base, return the basic exchange rate for the `to` currency
		if ( from === fx.base ) {
			return rates[to];
		}

		// If `to` currency === fx.base, return the basic inverse rate of the `from` currency
		if ( to === fx.base ) {
			return 1 / rates[from];
		}

		// Otherwise, return the `to` rate multipled by the inverse of the `from` rate to get the
		// relative exchange rate between the two currencies
		return rates[to] * (1 / rates[from]);
	};


	/* --- OOP wrapper and chaining --- */

	// If fx(val) is called as a function, it returns a wrapped object that can be used OO-style
	var fxWrapper = function(val) {
		// Experimental: parse strings to pull out currency code and value:
		if ( typeof	val === "string" ) {
			this._v = parseFloat(val.replace(/[^0-9-.]/g, ""));
			this._fx = val.replace(/([^A-Za-z])/g, "");
		} else {
			this._v = val;
		}
	};

	// Expose `wrapper.prototype` as `fx.prototype`
	var fxProto = fx.prototype = fxWrapper.prototype;

	// fx(val).convert(opts) does the same thing as fx.convert(val, opts)
	fxProto.convert = function() {
		var args = Array.prototype.slice.call(arguments);
		args.unshift(this._v);
		return convert.apply(fx, args);
	};

	// fx(val).from(currency) returns a wrapped `fx` where the value has been converted from
	// `currency` to the `fx.base` currency. Should be followed by `.to(otherCurrency)`
	fxProto.from = function(currency) {
		var wrapped = fx(convert(this._v, {from: currency, to: fx.base}));
		wrapped._fx = fx.base;
		return wrapped;
	};

	// fx(val).to(currency) returns the value, converted from `fx.base` to `currency`
	fxProto.to = function(currency) {
		return convert(this._v, {from: this._fx ? this._fx : fx.settings.from, to: currency});
	};


	/* --- Module Definition --- */

	// Export the fx object for CommonJS. If being loaded as an AMD module, define it as such.
	// Otherwise, just add `fx` to the global object
	if (typeof exports !== 'undefined') {
		if (typeof module !== 'undefined' && module.exports) {
			exports = module.exports = fx;
		}
		exports.fx = fx;
	} else if (typeof define === 'function' && define.amd) {
		// Return the library as an AMD module:
		define([], function() {
			return fx;
		});
	} else {
		// Use fx.noConflict to restore `fx` back to its original value before money.js loaded.
		// Returns a reference to the library's `fx` object; e.g. `var money = fx.noConflict();`
		fx.noConflict = (function(previousFx) {
			return function() {
				// Reset the value of the root's `fx` variable:
				root.fx = previousFx;
				// Delete the noConflict function:
				fx.noConflict = undefined;
				// Return reference to the library to re-assign it:
				return fx;
			};
		})(root.fx);

		// Declare `fx` on the root (global/window) object:
		root['fx'] = fx;
	}

	// Root will be `window` in browser or `global` on the server:
}(this));

currencyHandler = {
    afterLoad: function(rates){
        $.each($('input.data-price'), function(i, priceTag){
            
            var usdPrice = $(priceTag).data('price-usd');
            
            if(typeof usdPrice !== 'undefined')

                $.each(['gbp', 'eur', 'cad', 'aud'], function(i, currency){

                    if(rates[currency.toUpperCase()]){
                        var priceInCurrency = Number(rates[currency.toUpperCase()]*usdPrice).toFixed(2);
                        $(priceTag).attr('data-price-'+currency, priceInCurrency);
                    }

                });
            
        });
        $('input.data-price:checked').change();
    },
    onChange: function(currentCurrency){
        $('input.data-price')
            .attr('data-cur', currentCurrency)
            .filter(':checked')
            .change();
    }
};

(function( $ ){
      
      var $this = {}, $rates = {}, $_html = "";
      
      var $_settings = {
          'api_key': '', // app_id=
          'host': '/currency.html',
          'currBase': 'USD',
          'currCode': { 'usd' : '$', 
                        'eur' :'€', 
                        'gbp' : '£',
                        'cad' : '$',
                        'aud' : '$'},
          'filter': {
              'iso': ['USD','EUR','GBP','CAD','AUD']
           },
          'rates': {}, // list currance rates
          'convert': {
              'from': false,
              'to': false,
          },
          'ajax': {
              'dataType': 'json',
              'type': 'POST',
              'crossDomain': true,
              'data': {
              }
          }, 
          'onOpen': false,
      }  
    
      // detected method
      var methods = {
        init : function( options ) { 
            methods._die('Load init! *Curr');
            
            $this = $(this);
            // set filters
            methods.setSettings( options );
            
            // set rates
            methods.setRates();
                
            methods._die('Rates ...');    
            methods._die( $_settings.rates );   
            
            // init money
            var rates = methods._initMoney();
            
            methods.triggerCall($_settings.onOpen, rates);
            return $(this);
        }, // set init
        
        setSettings: function(options) {
            if(typeof options !== "undefined") {
                $_settings = $.extend( $_settings, options || {});
            }
        },
        
        setRates: function( $_obj ) {
            if(typeof $_obj !== "undefined" ) {
                $_settings.rates = $_obj;
            } else if($rates = methods._json()) {
                $_settings.rates = $rates; 
            }
        },
        
        triggerCall: function(func, arg) {
                $.isFunction(func) && func.call(this, arg);
        },
        
        _die: function(msg) {
            //console.log( msg );
        },
        
        /* ==== init cookie ====== */
        _clearCookie: function( key ) {
            if($.cookie( key )) {
                $.removeCookie( key, { path: '/' });
            }
        },

        setCookie: function(key, value) {
            $.cookie(key, value, { expires: 7, path: '/' });
        },

        getCookie: function( key ) {
            if($.cookie(key)) {
                return $.cookie(key); 
            } else
                return false;
        },
        
        /* ==== init data cahce ====== */
        _clearCach: function(key) {
            if(key) {
                jQuery.data( window, key, false);
            } else {
                jQuery.data( window, '_result', false);
            }    
                
        },
        setCach: function(key, params) {
            key = (!key) ? "_result" : key;
            if(params) {
                return jQuery.data( window, key, params);
            } else {
                return jQuery.data( window, key);
            }
        }, // set cahce
        
        getCach: function(key) {
            if(jQuery.data( window, key))
                return jQuery.data( window, key);
            else
                return false;
        },
        
        /* ajax */
        _json: function(_data) {
            methods._die('Load json curr..');
            var _url = '';
            _data = (_data) ? _data : {
                '_base': $_settings.currBase, // set Base currance
                '_filter': $_settings.filter // set filter in iso
            }; 
            
            var result = {};
            $.ajax({ 
                type: $_settings.ajax.type,
                async: false,
                url: $_settings.host,
                data: $.extend(_data, $_settings.ajax.data),
                dataType: $_settings.ajax.dataType,
                crossDomain: $_settings.ajax.crossDomain
            }).done(function(responce) {
                if(responce) {
                    methods.setCach('_ajax', responce); // .responseJSON 
                }
            });
            
            return result = methods.getCach('_ajax');
            
        },
        
        // money math
        _initMoney: function( data ) {
            var _rates = {};
            if($_settings.rates) {
                $.each($_settings.rates, function(key, val) {
                    if(val.iso)
                        _rates[ val.iso.toUpperCase() ] = parseFloat( val.rates );
                });
            }
            
            methods._die(  _rates   );
            
            // init money
            fx.rates = (_rates) ? _rates : data.rates;
            fx.base = ($_settings.currBase) ? $_settings.currBase : data.base;
            return _rates;
        },
        
        _convert: function( pricing, from, to ) {
            if(!pricing) return null;
            
            var _settings = {
                from: (from) ? from.toUpperCase() : false,
                to: (to) ? to.toUpperCase() : false,
            };
            
            return fx.convert(pricing, _settings);
        },
        
        bindEvent: function() {
            // click 
            if($this.find('.store-flags, .store-link-currancy-flag').length)
                $this.find('.store-flags, .store-link-currancy-flag').on('click', function(event) {
                   event.preventDefault();
                   var curr_convert = $(this).attr('attr-rates-iso');
                   
                   
                   if(methods.getCach('currISO')) {
                       if(methods.getCach('currISO') != curr_convert) {
                           methods.setCach('currISO', curr_convert);
                       } 
                   } else
                        methods.setCach('currISO', curr_convert);
                   
                   // status
                   $this.find('.store-flags, .store-link-currancy-flag').each(function() {
                       if($(this).hasClass('active')) {
                         $(this).removeClass('active');
                       } 
                   }); 
                   
                   $(this).addClass('active'); 
                    
                   // event 
                    methods.afterEvent();
                    // alert( methods._convert(100, $_settings.currBase, curr_convert || $_settings.currBase) ); // 'USD', 'EUR' 
                   return false;
                });
        },
        
        unbindEvent: function() {
            $this.find('.store-flags, .store-link-currancy-flag').off('click');
        },
        
        // show create html list rates
        show: function() {
            var status = [];
            if($_settings.rates) {
                $_html += '<span>Currency:</span>';
                //$_html += '<ul class="clearfix">'; 
                $.each($_settings.rates, function(key, val) {
                    status[ key ] = (val.iso.toUpperCase() == $_settings.currBase) ? 'active' : ''; 
                    //$_html += '<li><span class="store-flags flag-'+val.iso+' '+status[ key ]+'" attr-rates-iso="'+val.iso+'" attr-rates-id="'+val.id+'"></span></li>'; // '+val.iso.toUpperCase()+'
                    $_html += '<a class="store-link-currancy-flag '+status[ key ]+'" attr-rates-iso="'+val.iso+'" attr-rates-id="'+val.id+'" href="#"><i class="ico-flag-'+val.iso+'"></i><span>'+val.iso.toUpperCase()+'</span></a>';
                });
                //$_html += '</ul>';
                
                $this.html( $_html );
                
                methods.beforeEvent(); // setup default
                methods.bindEvent();
            }
            
            // console.log();
        },
        
        // beforeEvent
        beforeEvent: function() {
            $('.box-currence').each(function() {
                var _symbol = $(this).find('symbol'),
                    _iso = _symbol.attr('attr-iso');
               if(!_iso) _symbol.attr('attr-iso', $_settings.currBase);
               if(!_symbol.text()) _symbol.text( $_settings.currCode[ $_settings.currBase.toLowerCase() ] );
            });
        },
        
        // afterEvent
        afterEvent: function() {
            currencyHandler.onChange(methods.getCach('currISO'));
            
          // body generate price
            //$_settings.currCode[ methods.getCach('currISO').toLowerCase() ]
          $('.list_price .box-currence').each(function() {
              var _symbol = $(this).find('symbol'), 
                  _price = $(this).find('curr'),
                  symbol = _symbol.text(), 
                  price = _price.text(),
                  iso = _symbol.attr('attr-iso');
                  
              if(price) {
                  _price.html( methods._convert( parseFloat(price), 
                                                iso, 
                                                methods.getCach('currISO') || $_settings.currBase
                                            ).toFixed(2)  ); // ).toFixed(2)
                  _symbol.attr('attr-iso', methods.getCach('currISO'));   
                  _symbol.text( $_settings.currCode[ methods.getCach('currISO').toLowerCase() ] )
              }
          });  
        },
        
        run : function( params ) {
            methods._die( params );
            methods._die( 'Rates init' );
            methods._die( $_settings.rates );
        },
      };

      // constructor
      $.fn.currancy = function( method, type ) {
         
        // логика вызова метода
        if ( methods[method] ) {
            return methods[ method ].apply( this, Array.prototype.slice.call( arguments, 1 ));
        } else if ( typeof method === 'object' || ! method ) {
          methods.init.apply( this, arguments ); 
          if(typeof type !== "undefined" && methods[type]) {
              return methods[type].apply( this, Array.prototype.slice.call( arguments, 1 ));
          } 
//          else {
//              return methods.init.apply( this, arguments );
//          }
        } else {
          $.error( 'Метод с именем ' +  method + ' не существует для jQuery.tooltip' );
        }
        
        
      };

})( jQuery ); 

$(document).ready(function(){ 
    
   if($('.list-currencies').length) {
      $('.list-currencies').currancy({
          onOpen: function(rates) {
              currencyHandler.afterLoad(rates);
          }
      },'show');
   } 
});
// The plugin code
(function($){
    $.fn.scrollPumpic = function(options){
        var $this = $(this);
            offset = $this.offset();
        var _stop = false, 
            _objFly = false, 
            dedug = false; // debuging code
        
        var defaults = {
            "start": 0,
            "stop": offset.top + $this.height(),
            "_objFly": '.box-fly-discount',
            "right": 0,
            "_show": true,
            "_settings" : {
                '_responce': true,
                '_validate': true,
                '_validateObj': "#form-discount-fly"
            },
            "animate": {
                'type': '', // fade, visible, blinking
                'timeShow': 200,
                'timeHide': 100
            }
            //"coeff": 0.95
        };
        
        if(dedug)
            console.log( '---------------------------- // INIT PLUGIN SCROLL ----------------------------' );
        
        var opts = $.extend(defaults, options);
            _objFly = (opts._objFly) ? opts._objFly : false;
        
//        $(window).on('resize', function() { 
//           if($(this).width() > 800) {
//                $this.find( _objFly ).css({'margin-right': opts.right+'px'});
//            } else {
//                $this.find( _objFly ).css({'margin-right': '0px'});
//            }
//        }); 

        if(dedug) {
            console.log( 'SCROLL SETTINGS: ', opts );
            console.log( 'start = '+opts.start, 'stop = '+opts.stop );
        }
        
        
        var _animate = {
            init: function( show ) {
                if(show) {
                    $this.find( _objFly ).addClass('fixed');
                } else {
                    $this.find( _objFly ).removeClass('fixed');
                }
                
                switch ( opts.animate.type ) {
                    // fadeIn/Out
                    case  "fade":
                        if(dedug)
                            console.log( show );
                        
                        if(show && $this.not(':visible')) {
                            $this.stop(true).queue('fx', function(){
                                $(this).fadeIn( opts.animate.timeShow ).dequeue('fx');

                                 if(opts._settings._validate)
                                    $( opts._settings._validateObj ).validate(); // init validate
                            });
                        } else if(!show && $this.is(':visible')) {
                            $this.stop(true).queue('fx', function(){
                                $(this).fadeOut( opts.animate.timeHide ).dequeue('fx');
                            });
                        }
                    break;
                    
                    // show/hide
                    case  "visible":
                        
                        if(dedug)
                            console.log( show );
                        
                        if(show && $this.not(':visible')) {
                            $this.stop(true).queue('fx', function(){
                                $(this).show( opts.animate.timeShow ).dequeue('fx');

                                 if(opts._settings._validate)
                                    $( opts._settings._validateObj ).validate(); // init validate
                            });
                        } else if(!show && $this.is(':visible')) {
                            $this.stop(true).queue('fx', function(){
                                $(this).hide( opts.animate.timeHide ).dequeue('fx');
                            });
                        }
                        
                    break;
                    
                    // opacity
                    case  "blinking":
                        if(dedug)
                            console.log( show );
                        
                        if(show && $this.not(':visible')) {
                            $this.stop(true).queue('fx', function(){
                                $(this).animate({opacity: 1}, opts.animate.timeShow ).dequeue('fx');

                                 if(opts._settings._validate)
                                    $( opts._settings._validateObj ).validate(); // init validate
                            });
                        } else if(!show && $this.is(':visible')) {
                            $this.stop(true).queue('fx', function(){
                                $(this).animate({opacity: 0}, opts.animate.timeHide ).dequeue('fx');
                            });
                        }
                        
                        
                    break;
                    
                    default:
                        
                        if(dedug)
                            console.log( show );
                        
                        if(show && $this.not(':visible')) {
                            $this.stop(true).queue('fx', function(){
                                $(this).animate({opacity: 1}, opts.animate.timeShow ).dequeue('fx');

                                 if(opts._settings._validate)
                                    $( opts._settings._validateObj ).validate(); // init validate
                            });
                        } else if(!show && $this.is(':visible')) {
                            $this.stop(true).queue('fx', function(){
                                $(this).animate({opacity: 0}, opts.animate.timeHide ).dequeue('fx');
                            });
                        }
                        
                    break;    
                }
            }
        };
        
        // clear cache
        if($(window).hasHandlers('scroll')) 
            $(window).off('scroll');
        
        $(window).on('scroll', function() {
            windowTop = $(window).scrollTop();
            _stop = (opts.stop) ? (windowTop <= opts.stop) ? true : false : false;
            
            if(dedug)
                console.log('windowTop = '+ windowTop, '_stop = '+_stop+' opts.start = '+opts.start);
            
             if((windowTop >= opts.start) && !_stop) {
                 //newCoord = windowTop * opts.coeff;
                 // box right
                if(opts.right > 0) {
                    if($(window).width() > 800) {
                        $this.find( _objFly ).css({'margin-right': opts.right+'px'});
                    } else {
                        $this.find( _objFly ).css({'margin-right': '0px'});
                    }
                }
               
                // run animate
                opts._show = true;
                
             } else if((windowTop < opts.start) || _stop) { 
                 // run animate
                 opts._show = false;   
             }
             
             _animate.init( opts._show ); // animate
            
        });
        
        
        /*
        return this.each(function(){
            
            $(window).on('scroll', function() {
                
                // console.log( opts.start );
                if(opts._settings._responce) {
                    if($(window).width() <= 480)  {
                        $this.find( _objFly ).removeClass('fixed');
                        $this.hide(500);
                        return;
                    }
                }
                
                windowTop = $(window).scrollTop();
                _stop = (opts.stop) ? (windowTop <= opts.stop) ? true : false : false; 
                
                if((windowTop >= opts.start) && !_stop) {
                    //newCoord = windowTop * opts.coeff;
                    
                    // box right
                    if(opts.right > 0) {
                        
                        if($(window).width() > 800) {
                            $this.find( _objFly ).css({'margin-right': opts.right+'px'});
                        } else {
                            $this.find( _objFly ).css({'margin-right': '0px'});
                        }
                    }
                    
                    if(opts._show) {
                        if(dedug)
                            console.log( opts._show );
                        $this.find( _objFly ).addClass('fixed');
                        $this.stop(true).queue('fx', function(){
                            $(this).animate({opacity: 1}, 200 ).dequeue('fx');
                             if(opts._settings._validate)
                                $( opts._settings._validateObj ).validate(); // init validate
                        });
                      opts._show = false;  
                    }
                    
                } else if((windowTop < opts.start) || _stop) {
                    if(!opts._show) {
                        if(dedug)
                            console.log( opts._show );
                        $this.find( _objFly ).removeClass('fixed');
                        $this.stop(true).queue('fx', function(){
                            $(this).animate({opacity: 0}, 100 ).dequeue('fx');
                        });
                        opts._show = true;
                    }
                    
                }
                
                if(dedug)
                    console.log( 'widow_width = '+$(window).width()+' windowTop ='+ windowTop+' start = '+opts.start );
                
                
                
                    
            });
        });
        
        */
        
        
    };
})(jQuery);
(function( $ ){
      var $_result = {
          '_plans': false,
          '_mobile': false
      };  
      var $this = {};
    
      var _settings = {
          'plan': false,
          'mobile': false
      }  
    
      // detected method
      var methods = {
        init : function( options ) { 
           
            // set filters
            if(typeof options.filters !== "undefined") {
                _settings.plans = (options.filters.plans) ? options.filters.plans : null;
                _settings.mobile = (options.filters.mobile) ? options.filters.mobile : null;
            }
            
            return $(this);
        }, // set init
        
        _clearCach: function(key) {
            if(key) {
                jQuery.data( window, key, false);
            } else {
                jQuery.data( window, '_result', false);
                jQuery.data( window, '_plans', false);
                jQuery.data( window, '_mobile', false);
            }    
                
        },
        _cach: function(params, key) {
            key = (!key) ? "_result" : key;
            if(params) {
                return jQuery.data( window, key, params);
            } else {
                return jQuery.data( window, key);
            }
        }, // set cahce
        
        _plans: function( ) {
            if(_settings.plans) {
               var _res = []; 
               $.each($this, function(key, item_obj) {
                   var $_item = $(item_obj);
                   var $use_plans = $_item.attr('attr-use-plan').split('|');
                   
                   if($.inArray(_settings.plans, $use_plans) != -1) {
                       _res[$_item.index()] = $_item.index();
                   } 
               });
               
               methods._cach(_res, "_plans");
            } else {
                methods._clearCach('_plans');
                console.log('Not enter filters Plans (*settings)!');
            }
                
           
        }, // set plans filters
        
        _mobile: function() {
            if(_settings.mobile) {
                var _res = [];
                if(!$_result._plans) {
                    $.each(_settings.mobile, function(_type, _status) {
                        if(_status == true) {
                            $.each($this, function(key, item_obj) {
                                var $_item = $(item_obj);
                                if($_item.find('.box-filter-mobile i.icon-'+_type+'').is('.supported')) {
                                    _res[ $_item.index() ] = $_item.index();
                                }
                            
                            });
                        }
                    }); 
                } else {
                     $.each($this, function(key, item_obj) {
                        var $_item = $(item_obj);
                        if($.inArray($_item.index(), $_result._plans) != -1) {
                            $.each(_settings.mobile, function(_type, _status) {
                                if(_status == true) {
                                    if($_item.find('.box-filter-mobile i.icon-'+_type+'').is('.supported')) 
                                        _res[ $_item.index() ] = $_item.index();
                                }
                            });
                        }
                    });
                }
                
                methods._cach(_res, "_mobile");
            } else {
                methods._clearCach('_mobile');
                console.log('Not enter filters mobile (*settings)!');
            }
                
        }, // set mobile filters
        _run : function( obj ) {
             if(!obj.length) {
                 console.log('Not detected Objects!');
                 return;
             }
             
             $this = obj;   
             
             methods._plans(); // detected plans
             $_result._plans = methods._cach(false, "_plans"); // get params plans in cache
             
             if(typeof $_result._plans === "undefined") console.log('Not enter plans filters!');
             methods._mobile(); // detected filters mobile
             $_result._mobile = methods._cach(false, "_mobile"); // get params mobile in cache
             if(typeof $_result._mobile === "undefined") console.log('Not enter mobile filter!');
             methods._visible($_result); // show/hide elements
        },
        
        _visible: function( arr_index ) {
            if($this.length > 0) {
                if(typeof arr_index._plans !== "undefined" && arr_index._plans.length > 0) {
                    $.each($this, function(key, item_obj) {
                        var $_item = $(item_obj);
                        if(arr_index._plans.length > 0) {
                            // set plans
                            if($.inArray($_item.index(), arr_index._plans) != -1) {
                                if($_item.hasClass('hide'))
                                    $_item.removeClass('hide');
                                $_item.addClass('show');
                            } else {
                                if($_item.hasClass('show'))
                                    $_item.removeClass('show')
                                $_item.addClass('hide');
                            }
                        }
                        
                    }); // show/hide elements plans
                    
                    // filter mobile in plans
                    if(arr_index._mobile.length > 0 && typeof arr_index._mobile !== "undefined") {
                        $.each($this, function(key, item_obj) {
                            var $_item = $(item_obj);
                            if($.inArray($_item.index(), arr_index._mobile) != -1) {
                                if($_item.hasClass('hide'))
                                    $_item.removeClass('hide');
                                $_item.addClass('show');
                            } else {
                                if($_item.hasClass('show'))
                                    $_item.removeClass('show')
                                $_item.addClass('hide');
                            }
                        });
                    } // show/hide mobile in plans
                    
                    
                } // filters plans
                
                else if(!arr_index._plans.length 
                        && typeof arr_index._mobile !== "undefined"
                        && arr_index._mobile.length > 0) {
                    
                    $.each($this, function(key, item_obj) {
                        var $_item = $(item_obj);
                        if($.inArray($_item.index(), arr_index._mobile) != -1) {
                            if($_item.hasClass('hide'))
                                $_item.removeClass('hide');
                            $_item.addClass('show');
                        } else {
                            if($_item.hasClass('show'))
                                $_item.removeClass('show')
                            $_item.addClass('hide');
                        }
                    });    
                } // all mobile filters
                 else {
                     
                      $.each($this, function(key, item_obj) {
                          var $_item = $(item_obj);
                          if($_item.hasClass('hide'))
                                $_item.removeClass('hide');
                            $_item.addClass('show');
                      });
                 }
                
            }
        },
        
        show : function() {
            return methods._run( $(this) );
        },
        update : function( content ) {
          // !!!
        }
      };

      // constructor
      $.fn.tabPumpic = function( method ) {

        // логика вызова метода
        if ( methods[method] ) {
          return methods[ method ].apply( this, Array.prototype.slice.call( arguments, 1 ));
        } else if ( typeof method === 'object' || ! method ) {
          return methods.init.apply( this, arguments );
        } else {
          $.error( 'Метод с именем ' +  method + ' не существует для jQuery.tooltip' );
        }
        
        
      };

})( jQuery ); 

// globa variable
$data_hash = [];

var _htmlPopUp = {
    'boxStatusAuth': '<div id="box-status-auth" class="popUp"><div><label class="title gold">Hello!<i class="close small"></i></label></div>'
        +'<p class="info">You have just logged into Pumpic.com, enjoy your time with us or go straight to your <a class="a-default" href="http://cp.pumpic.com">account</a>.</p>'
        +'</div>',
    'boxStatusRegistration': '<div id="box-status-registration" class="popUp">'
        +'<div><label class="title gold">Hello!<i class="close small"></i></label></div>'
        +'<p class="info">You have just registered in Pumpic.com, enjoy your time with us or go straight to your <a class="a-default" href="http://cp.pumpic.com">account</a>.</p>'
        +'</div>',
    'boxStatusFreeTrialRegistration' : '<div id="box-status-free-trial-registration" class="popUp">'
        +'<div><label class="title gold">Thank you for signing up!<i class="close small"></i></label></div>'
        +'<p class="info">The email with registration details was sent to '+UserLogin+'.<br /> You can go straight to your <a class="a-default" href="http://cp.pumpic.com">Personal Account</a> now.</p>'
        +'</div>',
    'email_success' : '<div id="box-email-success" class="popUp">'
        +'<div><label class="title gold"> Thank you! <i class="close small"></i></label></div>'
        +'<div class="info text-center"> Your discount code will be sent to you soon.'
        +'<form><div><a href="#" class="button-red btn-default block-popUp-close">Close</a></div></form>'
        +'</div></div>',
    'box_email' : '<div id="box-email" class="popUp">'
        +'<div><label class="title gold"> <b>10%</b> off<i class="close small"></i></label></div>'
        +'<div class="info text-center">Want to get <a class="a-default" href="#">10% discount</a> right now?<br />Subscribe to our specail promo!'
        +'<form class="block-popup-form text-center">'
        +'<div><input id="email" class="required" type="email" name="email" value="" placeholder="email" />'
        +'<div id="email-error" class="error"></div></div><div><button class="button-red btn-default">Save 10% today</button></div>'
        +'</form></div></div>',    
};
    
// anchor
jQuery(function(){
    jQuery(window).hashchange(function(){ 
		if(document.location.hash == '') return;
                var hash = location.hash.split('#');
                if(hash.length > 1) {
                    $data_hash = hash[1];
                    hashchange_onLoadInit();
                    
                    // if($('.box-anchor #'+hash[1]).length)
                    //if(typeof $('.box-anchor #'+hash[1]) == "object")
                    //    $('html, body').animate({scrollTop: $('.box-anchor #'+hash[1]).offset().top}, 800);
                }
                
    });
    jQuery(window).hashchange();
});

// init cookies
function cookie_init() {
//    if(!getCookie('popUp')) {
//        $.cookie('popUp', false, { 
//                        expires: 7, 
//                        path: '/' 
//                    });
//    }         

    // save cookie screen window
    if(!getCookie('_screen')) {
        console.log('Save Cookie!');
        $.cookie('_screen', $(window).width()+'x'+$(window).height(), { expires: 7, path: '/', domain: '.pumpic.com' });
    }

}

function cookie_clear() {
    if($.cookie('popUp')) {
        $.removeCookie('popUp', { path: '/' });
    }
}

function setCookie(name, value) {
    $.cookie(name, value, { expires: 7, path: '/' });
}

function getCookie( name ) {
    if($.cookie(name)) {
        return $.cookie(name); 
    } else
        return false;
}

// init hashchange ( init bPopUp )
function hashchange_onLoadInit() {
    
}

function hashchange_AfterInit() { 
    var _data = _parceHash( $data_hash );
    var $_popUp = $('.box-popUp'),
        $auth = $_popUp.find('#box-status-auth'),
        $registration = $_popUp.find('#box-status-registration'),
        $trial_registration = $_popUp.find('#box-status-free-trial-registration');
         
    // init bPopUp
    if(isset(_data['popUp']) && _hasUser == 'true') {
        
        if(_data['popUp'] == "auth") { // && !getCookie('popUp')
            // google analitycs
            ga('send', 'event', 'form', 'submit', 'login-success');
           
            if(!$auth.length) { 
                $auth = $_popUp
                        .append( _htmlPopUp.boxStatusAuth )
                        .find('#box-status-auth'); 
            }
            
            // login status ok
            if(isset($auth)) {
                var title = $auth.find('.title') 
                , content = $auth.find('.info'); 
                $auth.bPopup({
                    modalClose: true,
                    opacity: 0.6,
                    follow: [false, false], 
                    positionStyle: 'fixed', //'fixed' or 'absolute'
                    onOpen: function() {
                        //content.html('TEST POPUP element!');
                    },
                    closeClass: 'close',
                    onClose: function() {
                        // setCookie('popUp', true);
                        //content.empty();
                    },

                });
            } 
        }
        
        if(_data['popUp'] == "registration") { // && !getCookie('popUp')
            // google analitycs
            ga('send', 'event', 'form', 'submit', 'registration-success');
            
            if(!$registration.length) { 
                $registration = $_popUp
                        .append( _htmlPopUp.boxStatusRegistration )
                        .find('#box-status-registration'); 
            }
            
            // login status ok
            if(isset($registration)) {
                var title = $registration.find('.title') 
                , content = $registration.find('.info'); 
                $registration.bPopup({
                    modalClose: true,
                    opacity: 0.6,
                    follow: [false, false], 
                    positionStyle: 'fixed', //'fixed' or 'absolute'
                    onOpen: function() {
                        //content.html('TEST POPUP element!');
                    },
                    closeClass: 'close',
                    onClose: function() {
                        // setCookie('popUp', true);
                        //content.empty();
                    },

                });
            } 
        }
        
        //free-trial-registration
        if(_data['popUp'] == "free-trial-registration") { // && !getCookie('popUp')
            if(!$trial_registration.length) { 
                $trial_registration = $_popUp
                        .append( _htmlPopUp.boxStatusFreeTrialRegistration )
                        .find('#box-status-free-trial-registration'); 
            }
            // login status ok
            if(isset($trial_registration)) {
                var title = $trial_registration.find('.title') 
                , content = $trial_registration.find('.info'); 

                $trial_registration.bPopup({
                    modalClose: true,
                    opacity: 0.6,
                    follow: [false, false], 
                    positionStyle: 'fixed',
                    onOpen: function() {
                        
                        // google analitycs
                        ga('send', 'event', 'trial', 'popup', 'free-trial-registration-success');
                        
                    },
                    closeClass: 'close',
                    onClose: function() {
                    },

                });
            } 
        }
        
    }
}

function _parceHash( hash ) {
    var _data = {};
    if(hash.length) {
        var pair = (hash).split('&');
        for(var i = 0; i < pair.length; i ++) {
            var param = pair[i].split('=');
           _data[param[0]] = param[1];
        }
    }
    return _data;
}


function isset(element) {
    if(typeof element != 'undefined') {
        return element.length > 0;
    } else
        return false;
}

// toggleClicked
jQuery.fn.clickToggle = function(a,b) {
  var ab=[b,a];
  function cb(){ ab[this._tog^=1].call(this); return false; }
  return this.on("click", cb);
};

/*
(function($) {
    $.fn.clickToggle = function(func1, func2) {
        var funcs = [func1, func2];
        this.data('toggleclicked', 0);
        this.click(function(event) {
            event.preventDefault();
            var data = $(this).data();
            var tc = data.toggleclicked;
            $.proxy(funcs[tc], this)();
            data.toggleclicked = (tc + 1) % 2;
            return false;
        });
        return this;
    };
}(jQuery));
*/

/*
 * parce url
 **/
function parseUrlQuery() {
    var data = {};
    if(location.search) {
        var pair = (location.search.substr(1)).split('&');
        for(var i = 0; i < pair.length; i ++) {
            var param = pair[i].split('=');
            data[param[0]] = param[1];
        }
    }
    return data;
}


function clickActive(obj, _this) {
    if($(obj).length > 0) {
        $.each($(obj), function(key, val) {
            if($(val).hasClass('active'))
                $(val).removeClass('active');
        }); // clear all active
         _this.addClass('active');
    }
}

/*
 * parce string serilize
 **/
function parseQuery( str ) {
    var data = {};
    if(typeof str == 'string') {
        var pair = (str).split('&');
        for(var i = 0; i < pair.length; i ++) {
            var param = pair[i].split('=');
            data[param[0]] = param[1];
        }
    } else if(typeof str == 'object') {
        $.each(str, function(_k, _val) {
            if(_val.name)
                data[ _val.name ] = (_val.value) ? _val.value : null;
        });
    }
    return data;
}


/*
 * Ajax function.
 * return json result
 **/
function getAjaxForm(path, params, options) {
  
    if(!options) options = {};
    
    var settings = $.extend( {
        'dataType': 'json',
        'async': false,
        'crossDomain': false,
        'type': 'POST',
        'cache': true
    }, options || {});
    
    console.log( settings );
    
    if(!path) {
        console.log('enter url AJAX!');
        return null;
    }
    var res = $.ajax({
                    url: path,
                    dataType: settings.dataType,
                    async: settings.async,
                    crossDomain: settings.crossDomain,
                    type: settings.type,
                    cache: settings.cache,
                    success: function() {
                        
                    },
                    complete: function(){
                    },
                    data: {
                        params: params 
                    }
		}).responseText;
                
    console.log(res);            
                
    res = eval('['+res+']');
    var obj = res[0];
    return obj;
}

/*
 * JSONP
 * 
 */
function _getAJAX( path, params, options ) {
   if(!options) options = {};
    
    var settings = $.extend( {
        'dataType': 'jsonp',
        'jsonp': "callback",
        'async': false,
        'crossDomain': false,
        'type': 'POST',
        'cache': true
    }, options || {});
    
    console.log( settings );
    
    if(!path) {
        console.log('enter url AJAX!');
        return null;
    }   

    return $.ajax({ 
        type: settings.type,
        async: settings.async,
        url: path,
        data: { 
           params: params 
        },
        dataType: settings.dataType,
        jsonp: settings.jsonp,
        crossDomain: settings.crossDomain,
        cache: settings.cache,
    });
}

/*
 * 
 * @param {type} $_msg
 * @returns {undefined}
 */
function getJsonp( _data ) {
    if(typeof _data != 'object') {
        die('Data not object!');
        return;
    }    
    var baseUrl = "http://a.pumpic.dev/index.php";
    return $.ajax({ 
        type: "GET",
        async: false,
        url: baseUrl,
        data:_data,
        dataType: "jsonp",
        jsonp: "callback",
        crossDomain: true
    });
    
}


/*
 * 
 * @param {type} $_msg
 * @returns {undefined}
 */
function reloadCaptcha( obj, error ) {
   if(!obj.length) return false;
   var _form = obj.parents('form');
   var _src = '/captcha.html?'+Math.random();
   if($(obj).attr('attr-width') && $(obj).attr('attr-height')) {
       _src = '/captcha.html?width='+$(obj).attr('attr-width')+'&height='+$(obj).attr('attr-height')+'&'+Math.random();
   }
   $('.box-captcha').find('#img-captcha').attr('src', _src);
   
   if(error)
    _form.find('input[name="captcha"]').focus();
}

/*
 * Display error massenge
 * @param {type} $_msg
 * @returns {undefined}
 */
function die( $_msg ) {
    console.log( $_msg );
}

$(document).ready(function(){ 
    
   $rs_width = false;
   $( window ).resize(function() { 
      $rs_width = $(window).width()
   });
    
    cookie_init();
    
    $.data( window, "filters", false); // init clear cache
    
    var filters = {
        'plans': false,
        'mobile': {
            'apple': false,
            'android': false,
            'blackberry': false
        }
    }; // init settings
    
    $('.box-plans, .box-phone').on('click', function(event) {
        event.preventDefault();
        filters = (!$.data( window, "filters")) ? filters : $.data( window, "filters");
        var _rel  = $(this).attr('rel');
        
        if($(this).hasClass('active')) {
            $(this).removeClass('active');
            
            if($(this).is('.box-plans')) {
                filters.plans = false;
            } else if( $(this).is('.box-phone') ) {
                for(key in filters.mobile) {
                    filters.mobile[key] = false;
                }
            }
            
        } else {
            if($(this).is('.box-plans')) {
                clickActive('.box-plans', $(this));
                filters.plans = _rel;
            } else if( $(this).is('.box-phone') ) {
                clickActive('.box-phone', $(this));
                // clear all params (after click in mobile)
                for(key in filters.mobile) {
                    filters.mobile[key] = false;
                }

                if(typeof filters.mobile[_rel] !== "undefined")
                    filters.mobile[_rel] = true;
            }
        }
        
        console.log( 'save cashe filter...' );
        $.data( window, "filters", filters); // save in result locale cache
        console.log( 'end...' );
        
        console.log('init Plugins Tabs...');
        $('.box-body-filters').tabPumpic({
            'filters' : filters
        }).tabPumpic('show');
        console.log('end...');
        
        return false;
    });

    // choose categoey
    $('.list_category > li > a').on('click', function(event){
        event.preventDefault();
        var _hash = $(this).attr('href').split('#'), 
            _index = $(this).closest('li').index();
        
        // console.log('index = '+_index);
         
        // clear all active 
        $.each($('.list_category > li').not(":eq("+ _index +")"), function() {
            if($(this).hasClass('active'))
                $(this).removeClass('active');
            
            if($(this).children('a').attr('data-toggled') == 'on') {
                $(this).children('a').attr('data-toggled', 'off');
            }
        }); // clear active 
        
        // all add attr off
         
        if (!$(this).attr('data-toggled') || $(this).attr('data-toggled') == 'off'){
           // alert('off > on');
               $(this).attr('data-toggled','on');
               
            $(this).parent().addClass('active');
            $('.box_category > ul > li').hide();
            
            if(_hash.length > 1) {
                if(_hash[1] == 'all') {
                    $('.box_category > ul > li').show();
                } else {
                    $('.box_category > ul > li').find('#'+_hash[1]).closest('li').show();
                }
            }
               
        }
        else if ($(this).attr('data-toggled') == 'on'){
           // alert('on > off');
               $(this).attr('data-toggled','off');
               
                //if($(this).parent().hasClass('active'))
                    $(this).parent().removeClass('active');
               $('.box_category > ul > li').show();
        }
        
        return false;
    });
    
//    
//     $('.list_category > li > a').on('click', function(event) {
//         event.preventDefault();
//         var _hash = $(this).attr('href').split('#');
//         
//         $.each($('.list_category > li'), function() {
//            if($(this).hasClass('active'))
//                $(this).removeClass('active');
//         }); // clear active
//         
//         if($(this).parent().hasClass('active')) {
//             $(this).parent().removeClass('active');
//             $('.box_category > ul > li').show();
//         } else {
//             $(this).parent().addClass('active');
//             $('.box_category > ul > li').hide();
//             if(_hash.length > 1) {
//                if(_hash[1] == 'all') {
//                    $('.box_category > ul > li').show();
//                } else {
//                    $('.box_category > ul > li').find('#'+_hash[1]).closest('li').show();
//                }
//                 
//                
//             }
//         }     
//         
//         return false;
//     });
    
    // якори
    $('a.anchor').on("click", function(e){
      e.preventDefault();  
      var anchor = $(this).attr('href').split('#');
      if(anchor.length > 1) {
          $('html, body').stop().animate({
            scrollTop: $('.box-anchor #'+anchor[1]).offset().top
          }, 1000);
      }
      
      
      return false;
   });
   
   
//   $('.search-category').on('click', function(e) {
//       e.preventDefault();
//       var _os = $(this).attr('attr_os'); 
//       if( _os) {
//           $.fn.PumpicList('search', {
//               'search_method': 'getPhonesByOS',
//               '_method': 'getCountOS',
//               '_query': _os
//           });
//       }
//       
//       return false;
//   });
   
   // compatibility tooltip in device
   if($('.mobile_tooltip').length) {
       $('.mobile_tooltip').easyTooltip();
   }
   
   // focus
   if($('.form-discount').length) {
       var elements = $(".form-discount input[type!='submit'], .form-discount textarea, .form-discount select");
        elements.focus(function() {
                $(this).addClass('highlight');
        });
        elements.blur(function() {
                $(this).removeClass('highlight');
        });
   }
   
   if($('.box-form').length) {
       var elements = $(".box-form input[type!='submit'], .box-form textarea, .box-form select");
        elements.focus(function() {
                $(this).addClass('highlight');
        });
        elements.blur(function() {
                $(this).removeClass('highlight');
        });
   }
   
   
   // compatibility_form
   var validator_send_find_phone = $('form[name="send_find_phone"]').validate({
         onfocusout: false,
         onkeyup: false,
         onclick: true,
         onsubmit: true,
         focusInvalid: false,
         focusCleanup: false,
         debug: true,
       'device-model': {
            required: true
        },
        'captcha': {
            required: true
        },
        email: {
            required: true,
            email: true
        },
        messages: {
           'captcha': "Invalid CAPTCHA.", // The CAPTCHA field is empty.
            name: "The Device Model field is empty",
            email: {
                required: "The Email field is empty",
                email: "Invalid email format"
            }
        },
       
        errorClass: "invalid",
        validClass: "success",
        invalidHandler: function(event, validator) {
            if($('form[name="send_find_phone"] span.info').length)
                $('form[name="send_find_phone"] span.info').html( " " ).hide();
            
            if($('form[name="send_find_phone"] .fatal-error').length)
                $('form[name="send_find_phone"] .fatal-error').html( " " ).hide();
            
            if($('form[name="send_find_phone"] label.error, form[name="send_find_phone"] label.invalid').length)
                    $('form[name="send_find_phone"] label.error, form[name="send_find_phone"] label.invalid').remove();
        },
        // управление ошибками
        showErrors: function(errorMap, errorList) {
            var _form = $('form[name="send_find_phone"]');
            var msg = null;

            $.each(errorList, function(key, value){
                if(value.element) {
                    var name = _form.find( value.element ).attr('name');
                    // console.log( name );
                    _form.find(value.element).after( '<label id="'+name+'-error" for="'+name+'" class="invalid">'+value.message+'</label>' );
                    _form.find(value.element).next().show();
                }
             });
        },
        submitHandler: function( form ) {
            if($('form[name="send_find_phone"] span.info').length)
                $('form[name="send_find_phone"] span.info').html( " " ).hide();
            
            if($('form[name="send_find_phone"] .fatal-error').length)
                $('form[name="send_find_phone"] .fatal-error').html( " " ).hide();

            if($('form[name="send_find_phone"] label.error, form[name="send_find_phone"] label.invalid').length)
                    $('form[name="send_find_phone"] label.error, form[name="send_find_phone"] label.invalid').remove();    

            var $form = $(form);
            var _params = parseQuery($form.serializeArray());

            var _response = getAjaxForm('/compatibility_send.html', _params);
              if(_response.result) {
                  var _res = _response.result;
                  if(_res.error) {
                      
                      if(typeof _res.error === 'object') {
                          $.each(_res.error, function(name, text) {
                              var _obj = $form.find('input[name="'+name+'"]');
                              
                              if(_obj.length) {
                                 
                                if(_obj.next('label').length) {
                                    _obj.next().html( text ).show();
                                 } else {
                                     $('<label id="'+name+'-error" for="'+name+'" class="invalid">'+text+'</label>').insertAfter(_obj); 
                                 }   
                              }
                          });
                      } else {
                          $('form[name="send_find_phone"] .fatal-error').html( _res.error );
                      }
                      
                      reloadCaptcha( $form.find('.box-captcha > img'), true ); // reload captcha 
                      return false;
                  } else if(_res.success) {
                      $('form[name="send_find_phone"] span.info').html( _res.success ).css({'display':'inline-block'});
                      
                      // scrollTo block info
                      var target_top = $('form[name="send_find_phone"] span.info').offset().top;
                      $('html, body').animate( { 
                            scrollTop: Math.ceil(target_top) // Math.ceil((target_top * $(window).outerHeight(true)) / $('html, body').height())
                       },'linear');
                      
                      console.log( target_top, Math.ceil((target_top * $(window).outerHeight(true)) / $('html, body').height()) );
                      
                      // google analitycs
                      ga('send', 'event', 'form', 'submit', 'compatibility-request-success');

                  } else {
                      $('form[name="send_find_phone"] .fatal-error').html('Your email was not sent');
                      reloadCaptcha( $form.find('.box-captcha > img'), true ); // reload captcha 
                      return false;
                  }    

              } else {
                  $('form[name="send_find_phone"] .fatal-error').html('Your email was not sent'); 
                  reloadCaptcha( $form.find('.box-captcha > img'), true ); // reload captcha 
                  return false;
              }
                  
              reloadCaptcha( $form.find('.box-captcha > img'), false ); // reload captcha        
              $form.trigger("reset");
              
            // return false;  
        }
    });
      
   // clear info in focus   
   $('form[name="send_find_phone"] input, form[name="send_find_phone"] textarea').focus(function() {
        //if($('form[name="send_find_phone"] span.info').length)
        //    $('form[name="send_find_phone"] span.info').html( " " ).hide();
        //if($('form[name="send_find_phone"] .fatal-error').length)
        //    $('form[name="send_find_phone"] .fatal-error').html( " " ).hide();
        //if($('form[name="send_find_phone"] label.error, form[name="send_find_phone"] label.invalid').length)
        //    $('form[name="send_find_phone"] label.error, form[name="send_find_phone"] label.invalid').remove();
    });   
    
    // compatibility_form
   var validator_send_mobile_operators_find_phone = $('form[name="send_mobile_operators_find_phone"]').validate({
         onfocusout: false,
         onkeyup: false,
         onclick: true,
         onsubmit: true,
         focusInvalid: false,
         focusCleanup: false,
         debug: true,
       'carrier': {
            required: true
        },
        'captcha': {
            required: true
        },
        email: {
            required: true,
            email: true
        },
        messages: {
           'captcha': "Invalid CAPTCHA.", // The CAPTCHA field is empty.
            name: "The Device Model field is empty",
            email: {
                required: "The Email field is empty",
                email: "Invalid email format"
            }
        },
       
        errorClass: "invalid",
        validClass: "success",
        invalidHandler: function(event, validator) {
            if($('form[name="send_mobile_operators_find_phone"] span.info').length)
                $('form[name="send_mobile_operators_find_phone"] span.info').html( " " ).hide();
            
            if($('form[name="send_mobile_operators_find_phone"] .fatal-error').length)
                $('form[name="send_mobile_operators_find_phone"] .fatal-error').html( " " ).hide();
            
            if($('form[name="send_mobile_operators_find_phone"] label.error, form[name="send_mobile_operators_find_phone"] label.invalid').length)
                    $('form[name="send_mobile_operators_find_phone"] label.error, form[name="send_mobile_operators_find_phone"] label.invalid').remove();
        },
        // управление ошибками
        showErrors: function(errorMap, errorList) {
            var _form = $('form[name="send_mobile_operators_find_phone"]');
            var msg = null;

            $.each(errorList, function(key, value){
                if(value.element) {
                    var name = _form.find( value.element ).attr('name');
                    // console.log( name );
                    _form.find(value.element).after( '<label id="'+name+'-error" for="'+name+'" class="invalid">'+value.message+'</label>' );
                    _form.find(value.element).next().show();
                }
             });
        },
        submitHandler: function( form ) {
            if($('form[name="send_mobile_operators_find_phone"] span.info').length)
                $('form[name="send_mobile_operators_find_phone"] span.info').html( " " ).hide();
            
            if($('form[name="send_mobile_operators_find_phone"] .fatal-error').length)
                $('form[name="send_mobile_operators_find_phone"] .fatal-error').html( " " ).hide();

            if($('form[name="send_mobile_operators_find_phone"] label.error, form[name="send_mobile_operators_find_phone"] label.invalid').length)
                    $('form[name="send_mobile_operators_find_phone"] label.error, form[name="send_mobile_operators_find_phone"] label.invalid').remove();    

            var $form = $(form);
            var _params = parseQuery($form.serializeArray());

            var _response = getAjaxForm('/mobile_operators_send.html', _params);
              if(_response.result) {
                  var _res = _response.result;
                  if(_res.error) {
                      
                      if(typeof _res.error === 'object') {
                          $.each(_res.error, function(name, text) {
                              var _obj = $form.find('input[name="'+name+'"]');
                              
                              if(_obj.length) {
                                 
                                if(_obj.next('label').length) {
                                    _obj.next().html( text ).show();
                                 } else {
                                     $('<label id="'+name+'-error" for="'+name+'" class="invalid">'+text+'</label>').insertAfter(_obj); 
                                 }   
                              }
                          });
                      } else {
                          $('form[name="send_mobile_operators_find_phone"] .fatal-error').html( _res.error );
                      }
                      
                      reloadCaptcha( $form.find('.box-captcha > img'), true ); // reload captcha 
                      return false;
                  } else if(_res.success) {
                      $('form[name="send_mobile_operators_find_phone"] span.info').html( _res.success ).css({'display':'inline-block'});
                      
                      // scrollTo block info
                      var target_top = $('form[name="send_mobile_operators_find_phone"] span.info').offset().top;
                      $('html, body').animate( { 
                            scrollTop: Math.ceil(target_top) // Math.ceil((target_top * $(window).outerHeight(true)) / $('html, body').height())
                       },'linear');
                      
                      // console.log( target_top, Math.ceil((target_top * $(window).outerHeight(true)) / $('html, body').height()) );
                      
                      // google analitycs
                      ga('send', 'event', 'form', 'submit', 'mobile-operators-request-success');

                  } else {
                      $('form[name="send_mobile_operators_find_phone"] .fatal-error').html('Your email was not sent');
                      reloadCaptcha( $form.find('.box-captcha > img'), true ); // reload captcha 
                      return false;
                  }    

              } else {
                  $('form[name="send_mobile_operators_find_phone"] .fatal-error').html('Your email was not sent'); 
                  reloadCaptcha( $form.find('.box-captcha > img'), true ); // reload captcha 
                  return false;
              }
                  
              reloadCaptcha( $form.find('.box-captcha > img'), false ); // reload captcha        
              $form.trigger("reset");
              
            // return false;  
        }
    });
      
   // clear info in focus   
   $('form[name="send_mobile_operators_find_phone"] input, form[name="send_mobile_operators_find_phone"] textarea').focus(function() {
        //if($('form[name="send_mobile_operators_find_phone"] span.info').length)
        //    $('form[name="send_mobile_operators_find_phone"] span.info').html( " " ).hide();
        //if($('form[name="send_mobile_operators_find_phone"] .fatal-error').length)
        //    $('form[name="send_mobile_operators_find_phone"] .fatal-error').html( " " ).hide();
        //if($('form[name="send_mobile_operators_find_phone"] label.error, form[name="send_mobile_operators_find_phone"] label.invalid').length)
        //    $('form[name="send_mobile_operators_find_phone"] label.error, form[name="send_mobile_operators_find_phone"] label.invalid').remove();
    });   
    
      
   // validator faq (form-faq)
   var validator_form_faq = $('form.form-faq').validate({
        onfocusout: false,
        focusInvalid: false,
       'name': {
            required: true
        },
        'question': {
            required: true
        },
        email: {
            required: true,
            email: true
        },
        messages: {
            name: "The Name field is empty",
            question: 'The Question field is empty',
            email: {
                required: "The Email field is empty",
                email: "Invalid email format"
            },
        },
       
        errorClass: "invalid",
        validClass: "success",
        invalidHandler: function(event, validator) {
            if($('form.form-faq span.info').length)
                $('form.form-faq span.info').html( " " ).hide();
            
            if($('form.form-faq .fatal-error').length)
                $('form.form-faq .fatal-error').html( " " ).hide();
        },

        submitHandler: function( form ) {
            if($('form.form-faq span.info').length)
                $('form.form-faq span.info').html( " " ).hide();
            
            if($('form.form-faq .fatal-error').length)
                $('form.form-faq .fatal-error').html( " " ).hide();

            var $form = $(form);
            var _params = parseQuery($form.serializeArray());

            var _response = getAjaxForm('/faq_send.html', _params);
              if(_response.result) {
                  var _res = _response.result;
                  if(_res.error) {
                      if(typeof _res.error === 'object') {
                          $.each(_res.error, function(name, text) {
                              var _obj = $form.find('input[name="'+name+'"]');
                              if(_obj.length) {
                                  if(_obj.next('label').length)
                                    _obj.next().html( text ).show();
                                  else
                                     $('<label id="'+name+'-error" for="'+name+'" class="invalid">'+text+'</label>').insertAfter(_obj); 
                              }
                          });
                      } else {
                          $('form.form-faq .fatal-error').html( _res.error );
                      }
                      
                      
                      return false;
                  } else if(_res.success) {
                      $('form.form-faq span.info').html( _res.success ).css({'display':'inline-block'});
                      
                      // google analitycs
                      ga('send', 'event', 'form', 'submit', 'faq-request-success');

                  } else {
                      $('form.form-faq .fatal-error').html('Your email was not sent');
                      console.log('System error!');
                      return false;
                  }    

              } else {
                  $('form.form-faq .fatal-error').html('Your email was not sent'); 
                  console.log('Can not get params in ajax!');
                  return false;
              }
                  

              $form.trigger("reset"); 
        }
    });
    
   // clear info in focus 
   $('form.form-faq input, form.form-faq textarea').focus(function() {
//        if($('form.form-faq span.info').length)
//            $('form.form-faq span.info').html( " " ).hide();
//        if($('form.form-faq .fatal-error').length)
//            $('form.form-faq .fatal-error').html( " " ).hide();
//        if($('form.form-faq label.error, form.form-faq label.invalid').length)
//            $('form.form-faq label.error, form.form-faq label.invalid').remove();
    });
    
   /* validate contact us */
   $( 'form.form-contact-us select' )
        .change(function () {
            var _selected = false;
            $('form.form-contact-us #wos').val('');
            $(this).find( "option:selected" ).each(function() {
                _selected = $( this ).val();
            });
            
            if(_selected && _selected != '0') {
                $('form.form-contact-us #wos').val( _selected ).valid();
            }
            // $(this).selectpicker('hide');
        })
            .change(); 
    
   
   var validator_contact_us = $('form.form-contact-us').validate({
        onfocusout: false,
        onkeyup: false,
        onclick: true,
        onsubmit: true,
        focusInvalid: false,
        focusCleanup: false,
        debug: false,
        ignore: "not:hidden",
       'name': {
            required: true
        },
        'description': {
            required: true
        },
        wos: {
            required: true
        },
        email: {
            required: true,
            email: true
        },
        'captcha': {
            required: true,
        },
        messages: {
            'captcha': "Invalid CAPTCHA.", // The CAPTCHA field is empty.
            name: "The Name field is empty",
            description: 'The Question field is empty',
            wos: 'The field Choose your OS is empty',
            email: {
                required: "The Email field is empty",
                email: "Invalid email format"
            },
        },
       
        errorClass: "invalid",
        validClass: "success",
        invalidHandler: function(event, validator) {
            if($('form.form-contact-us span.info').length)
                $('form.form-contact-us span.info').html( " " ).hide();
            
            if($('form.form-contact-us .fatal-error').length)
                $('form.form-contact-us .fatal-error').html( " " ).hide();
            
            if($('form.form-contact-us label.error, form.form-contact-us label.invalid').length)
                    $('form.form-contact-us label.error, form.form-contact-us label.invalid').remove();
        },
        // управление ошибками
        showErrors: function(errorMap, errorList) {
            var _form = $('form.form-contact-us');
            var msg = null;

            $.each(errorList, function(key, value){
                if(value.element) {
                    var name = _form.find( value.element ).attr('name');
                    // console.log( name );
                    _form.find(value.element).after( '<label id="'+name+'-error" for="'+name+'" class="invalid">'+value.message+'</label>' );
                    _form.find(value.element).next().show();
                }
             });
        },
        submitHandler: function( form ) {
            if($('form.form-contact-us span.info').length)
                $('form.form-contact-us span.info').html( " " ).hide();
            
            if($('form.form-contact-us .fatal-error').length)
                $('form.form-contact-us .fatal-error').html( " " ).hide();
            
            if($('form.form-contact-us label.error, form.form-contact-us label.invalid').length)
                    $('form.form-contact-us label.error, form.form-contact-us label.invalid').remove();

            var $form = $(form);
            var _params = parseQuery($form.serializeArray());
            
            
            var _response = getAjaxForm('/contact_us_send.html', _params);
              if(_response.result) {
                  
                  var _res = _response.result;
                  if(_res.error) {
                      
                      if(typeof _res.error === 'object') {
                          $.each(_res.error, function(name, text) {
                              var _obj = $form.find('input[name="'+name+'"]');
                              if(_obj.length) {
                                  if(_obj.next('label').length)
                                    _obj.next().html( text ).show();
                                  else
                                     $('<label id="'+name+'-error" for="'+name+'" class="invalid">'+text+'</label>').insertAfter(_obj); 
                              }
                          });
                      } else {
                          $('form.form-contact-us .fatal-error').html( _res.error );
                      }
                      
                      reloadCaptcha( $form.find('.box-captcha > img'), true ); // reload captcha 
                      return false;
                  } else if(_res.success) {
                      
                      $('form.form-contact-us span.info')
                              .html( _res.success )
                              .css({'display':'inline-block'});
                      
                      // scrollTo block info
                      var target_top = $('form.form-contact-us span.info').offset().top;
                      $('html, body').animate( { 
                            scrollTop: Math.ceil((target_top * $(window).outerHeight(true)) / $('html, body').height())
                       },'linear');
                               
                      // google analitycs
                      ga('send', 'event', 'form', 'submit', 'contact-request-success');

                  } else {
                      $('form.form-contact-us .fatal-error').html('Your email was not sent');
                      reloadCaptcha( $form.find('.box-captcha > img'), true ); // reload captcha 
                      return false;
                  }    

              } else {
                  $('form.form-contact-us .fatal-error').html('Your email was not sent'); 
                  reloadCaptcha( $form.find('.box-captcha > img'), true ); // reload captcha 
                  return false;
              }
              
              reloadCaptcha( $form.find('.box-captcha > img')); // reload captcha     
              $form.trigger("reset");
        }
    }); 
    
//    $('form.form-contact-us"]').on('submit', function() {
//       alert('ok!');
//        return false;
//    });
    
    $('form.form-contact-us input, form.form-contact-us textarea').focus(function() {
//        if($('form.form-contact-us span.info').length)
//            $('form.form-contact-us span.info').html( " " ).hide();
//        if($('form.form-contact-us .fatal-error').length)
//            $('form.form-contact-us .fatal-error').html( " " ).hide();
//        if($('form.form-contact-us label.error, form.form-contact-us label.invalid').length)
//            $('form.form-contact-us label.error, form.form-contact-us label.invalid').remove();
    });
    
      
   // validate form
   //if($(".box-form").length) {
   //    $(".box-form").validate();
  // }
   /* ------- form login ------ */
   if($('form[name="form-login"]').length) {
       $('form[name="form-login"]').validate({ 
             onfocusout: false,
             onkeyup: false,
             onclick: true,
             onsubmit: true,
             focusInvalid: false,
             focusCleanup: false,
             messages: {
                'password': "The Password field is empty.",
                'email': {
                    required: "The Email field is empty.",
                    email: "Invalid email format."
                },
                errorClass: "error",
            },
            invalidHandler: function(event, validator) {
                if($('form[name="form-login"] label.error').length)
                    $('form[name="form-login"] label.error').remove();
                
                if($('form[name="form-login"] div.box-error')) {
                    $('form[name="form-login"] div.box-error').addClass('hide');
                }
            },
            // управление ошибками
            showErrors: function(errorMap, errorList) {
                var _form = $('form[name="form-login"]');
                var msg = null;
                
                $.each(errorList, function(key, value){
                    if(value.element) {
                        _form.find(value.element).after( '<label class="error">'+value.message+'</label>' );
                        _form.find(value.element).next().show();
                    }
                 });
            },
        });
   }
   
   /* ------- form-registration ------ */
   if($('form[name="form-registration"]').length) {
       $('form[name="form-registration"]').validate({ 
             onfocusout: false,
             onkeyup: false,
             onclick: true,
             onsubmit: true,
             focusInvalid: false,
             focusCleanup: false, 
             messages: {
                'captcha': "Invalid CAPTCHA.", // The CAPTCHA field is empty.
                'email': {
                    required: "The Email field is empty.",
                    email: "Invalid email format."
                },
                errorClass: "error",
            },
            invalidHandler: function(event, validator) {
                if($('form[name="form-registration"] label.error').length)
                    $('form[name="form-registration"] label.error').remove();
                
                if($('form[name="form-registration"] div.box-error')) {
                    $('form[name="form-registration"] div.box-error').addClass('hide');
                }
            },
            // управление ошибками
            showErrors: function(errorMap, errorList) {
                var _form = $('form[name="form-registration"]');
                var msg = null;
                
                $.each(errorList, function(key, value){
                    if(value.element) {
                        _form.find(value.element).after( '<label class="error">'+value.message+'</label>' );
                        _form.find(value.element).next().show();
                    }
                 });
            },
        });
   }
   
   /* ------- form-free-trial-registration ------ */
   if($('form[name="free_trial_registration"]').length) {
       $('form[name="free_trial_registration"]').validate({
             onfocusout: false,
             onkeyup: false,
             onclick: true,
             onsubmit: true,
             focusInvalid: false,
             focusCleanup: false, 
             messages: {
                'captcha': "Invalid CAPTCHA.", // The CAPTCHA field is empty.
                'name': {
                    required: "The Name field is empty.",
                },
                'email': {
                    required: "The Email field is empty.",
                    email: "Invalid email format."
                },
                errorClass: "error",
            },
            invalidHandler: function(event, validator) {
                if($('form[name="free_trial_registration"] #block-fields label.error').length)
                    $('form[name="free_trial_registration"] #block-fields label.error').remove();
                
                if($('form[name="free_trial_registration"] div.box-error')) {
                    $('form[name="free_trial_registration"] div.box-error').addClass('hide');
                }
            },
            // управление ошибками
            showErrors: function(errorMap, errorList) {
                var fileds = $('form[name="free_trial_registration"] #block-fields');
                var msg = null;
                
                $.each(errorList, function(key, value){
                    // console.log(key, value);
                    if(value.element) {
                        fileds.find(value.element).after( '<label class="error">'+value.message+'</label>' ).show();
                    }
                 });
            },
        });
   }
   
   /* ------- form-restore ------ */
   if($('form[name="form-restore"]').length) {
       $('form[name="form-restore"]').validate({ 
             onfocusout: false,
             onkeyup: false,
             onclick: true,
             onsubmit: true,
             focusInvalid: false,
             focusCleanup: false, 
             messages: {
                'email': {
                    required: "The Email field is empty.",
                    email: "Invalid email format."
                },
                errorClass: "error",
            },
            invalidHandler: function(event, validator) {
                if($('form[name="form-restore"] label.error').length)
                    $('form[name="form-restore"] label.error').remove();
                
                if($('form[name="form-restore"] div.box-error')) {
                    $('form[name="form-restore"] div.box-error').addClass('hide');
                }
            },
            // управление ошибками
            showErrors: function(errorMap, errorList) {
                var _form = $('form[name="form-restore"]');
                var msg = null;
                
                $.each(errorList, function(key, value){
                    if(value.element) {
                        _form.find(value.element).after( '<label class="error">'+value.message+'</label>' );
                        _form.find(value.element).next().show();
                    }
                 });
            },
        });
   }
   
   /* ----- form discount ----- */
   if($('#form-discount').length) {
       $('#form-discount').validate({ 
             onfocusout: false,
             onkeyup: false,
             onclick: true,
             onsubmit: true,
             focusInvalid: false,
             focusCleanup: false,
             messages: {
                'captcha': "Invalid CAPTCHA.", // The CAPTCHA field is empty. 
                'discount[name]': "The Name field is empty.",
                'discount[email]': {
                    required: "The Password field is empty.",
                    email: "Invalid email format."
                },
                errorClass: "error",
            },
            invalidHandler: function(event, validator) {
                if($('#form-discount label.error').length)
                    $('#form-discount label.error').remove();
                
                if($('#form-discount div.box-error')) {
                    $('#form-discount div.box-error').addClass('hide');
                }
            },
            // управление ошибками
            showErrors: function(errorMap, errorList) {
                var _form = $('#form-discount');
                var msg = null;
                
                $.each(errorList, function(key, value){
                    if(value.element) {
                        _form.find(value.element).after( '<label class="error">'+value.message+'</label>' );
                        _form.find(value.element).next().show();
                    }
                 });
            },
        });
   } 
   
   /**
    * CAPACHA 
    */
   if($('.box-captcha').length) {
       $('.update-captcha, .a-update-captcha').on('click', function(event) {
           event.preventDefault();
           reloadCaptcha( $(this), true );
//           var _src = '/captcha.html?'+Math.random();
//           if($(this).attr('attr-width') && $(this).attr('attr-height')) {
//               _src = '/captcha.html?width='+$(this).attr('attr-width')+'&height='+$(this).attr('attr-height')+'&'+Math.random();
//           }
//           
//           $('.box-captcha').find('#img-captcha').attr('src', _src);
//           $('form[name="form-registration"], form[name="free_trial_registration"]').find('input[name="captcha"]').focus();
           return false;
       });
   }
    

   /* Pricing */
  if($('form[name="price_basic"]').length) {
      var _basic = $('form[name="price_basic"]');
      var _basic_b = $('form[name="price_basic_bottom"]');
      var _input_basic = _basic.find('#product_price_basic');
      
      var _input_basic_b = _basic_b.find('#product_price_basic');
      
          _input_basic.val(''); 
          _input_basic_b.val('');

          _basic.find('.label_radio').on('click', function() { 
                  var  _val = $(this).children('input').val();
                  var curr = $(this);

                  _basic.find('.label_radio').each(function(){
                   $(this).removeClass('r_on'); 
                   $(this).addClass('r_off');
                  });
                  curr.removeClass('r_off'); 
                  curr.addClass('r_on');
                  _input_basic.val(_val); 
           });
           
          _basic_b.find('.label_radio').on('click', function() { 
                  var  _val = $(this).children('input').val();
                  var curr = $(this);

                  _basic_b.find('.label_radio').each(function(){
                   $(this).removeClass('r_on'); 
                   $(this).addClass('r_off');
                  });
                  curr.removeClass('r_off'); 
                  curr.addClass('r_on');
                  _input_basic_b.val(_val); 
           });
       // select  
       _basic.find('select').change(function () {
                _input_basic.val('');
                var _selected = false;

                $(this).find( "option:selected" ).each(function() {
                    _selected = $( this ).val();
                });

                if(_selected && _selected != '0') {
                    _input_basic.val( _selected );
                }
            })
                    .change();   
         
      if(_basic.find('.label_radio input[type="radio"]:visible')) {
          // scan all checked
          _basic.find('.label_radio input[type="radio"]:visible').each(function(k, val) {        
              if($(val).attr('checked')) {
                  _input_basic.val( $(val).val() );
              }
          });

           
      } else {
         
          
          _basic.find('select option').each(function(){
              var _val = $( this ).val();
              if($(this).attr('selected')) {
                  _input_basic.val( _val );
              }
          });
          
         
      }
      
        
       
  }
  
  
  if($('form[name="price_premium"]').length) {
      var _premium = $('form[name="price_premium"]');
      var _input_premium = _premium.find('#product_price_premium');
      var _premium_b = $('form[name="price_premium_bottom"]');
      var _input_premium_b = _premium_b.find('#product_price_premium');
      
        _input_premium.val('');
        _input_premium_b.val('');
             
      // radio
      _premium.find('.label_radio').on('click', function() {
          var  _val = $(this).children('input').val();
          var curr = $(this);
          _premium.find('.label_radio').each(function(){
              $(this).removeClass('r_on'); 
              $(this).addClass('r_off');
          });
          curr.removeClass('r_off'); 
          curr.addClass('r_on');
         _input_premium.val(_val);
        }); 
        
        _premium_b.find('.label_radio').on('click', function() {
          var  _val = $(this).children('input').val();
          var curr = $(this);
          _premium_b.find('.label_radio').each(function(){
              $(this).removeClass('r_on'); 
              $(this).addClass('r_off');
          });
          curr.removeClass('r_off'); 
          curr.addClass('r_on');
         _input_premium_b.val(_val);
        });
        
       // select 
      _premium.find('select').change(function () {
          _input_premium.val('');
            var _selected = false;

            $(this).find( "option:selected" ).each(function() {
                _selected = $( this ).val();
            });

            if(_selected && _selected != '0') {
                _input_premium.val( _selected );
            }
        })
        .change();
             
      if(_premium.find('.label_radio input[type="radio"]:visible')) {
          // scan all checked
          _premium.find('.label_radio input[type="radio"]:visible').each(function(k, val) {        
              if($(val).attr('checked')) {
                  _input_premium.val( $(val).val() );
              }
          });    
      } else {
          
          _premium.find('select option').each(function(){
              var _val = $( this ).val();
              if($(this).attr('selected')) {
                  _input_premium.val( _val );
              }
          });
         
      }
      
      
       
  } 
  // switch features
  $('.show_basic_features a').toggle(
    function(event) {
        event.preventDefault();
        $('.basic_fe').css( "margin-top", "10px" );
        $('.basic_fe').show();
    }, function(event) {
        event.preventDefault(); 
        $('.basic_fe').css( "margin-top", "90px" ); 
        $('.basic_fe').hide();
    }
);
  $('.show_premium_features a').toggle(
    function(event) {
        event.preventDefault();
        $('.premium_fe').css( "margin-top", "10px" );
        $('.premium_fe').show();
    }, function(event) {
        event.preventDefault();
        $('.premium_fe').css( "margin-top", "90px" );   
        $('.premium_fe').hide();
    }
);   
$("input[name='optionsRadios']").each(function(){
    //console.log(this.getAttribute("checked"));
    if(this.getAttribute("checked")){
       // alert($(this).val());
        
       $(this).parent('.label_radio').addClass('r_on');
       $(this).parent('.label_radio').removeClass('r_off');
       $(this).parents('form').children('.product_price').val($(this).val());
    }
});

    /*$("input[name='optionsRadios']").filter(':checked').each(function(){
    
    var curr  = $(this);
    
       

       curr.parent('.label_radio').removeClass('r_off');
       curr.parent('.label_radio').addClass('r_on');
       
       curr.parents('form').children('.product_price').val(curr.val());
   
});   */      
  /* hashchange_AfterInit */

  hashchange_AfterInit();
  
  /* fix features desine chrome */
  if($('#viber-whatsapp-skype').length) {
       if ( $.browser.webkit ) {
           $('#viber-whatsapp-skype').removeClass('w30p').addClass('w16p');
            // alert( "This is WebKit!" );
        } else
           $('#viber-whatsapp-skype').removeClass('w16p').addClass('w30p'); 
  }
  
// ga click 
// faq
$('form[name="form-faq"] button.event-submit').click(function(){
    ga('send', 'event', 'form', 'submit', 'faq-request');
}); 
 
// login
$('form[name="form-login"] .button-sumbit button').click(function(){
    ga('send', 'event', 'form', 'submit', 'login');
}); 

// restore
$('form[name="form-restore"] .button-sumbit button').click(function(){
    ga('send', 'event', 'form', 'submit', 'restore');
});

// registration
$('form[name="form-registration"] .button-sumbit button').click(function(){
    ga('send', 'event', 'form', 'submit', 'registration');
});

// contact-us
$('form[name="send-mail-contact-us"] button.event-submit').click(function(){
    ga('send', 'event', 'form', 'submit', 'contact-request');
});

// compatibility
$('form[name="send_find_phone"] button.event-submit').click(function(){
    ga('send', 'event', 'form', 'submit', 'compatibility-request');
});


  
  // scroll (fly-box)
   if($('.fly-box').length) {
        $('.fly-box').scrollPumpic({ 
            'start': 1000, 
            'stop': 0,
            'animate': {
                'type': 'visible', // fade, visible, blinking
                'timeShow': 50,
                'timeHide': 50
            }
        }); //"coeff":1.15
   }
  
  // fly block
  if($('.fly-box-buttons').length) {
      $(window).on('load resize', function() { 
          var $offcetTop = Math.round( $('.fly-position').offset().top );
          if(typeof $.data(document, '_scrollButtons_'+$(this).width()) == "undefined"
                  || $.data(document, '_scrollButtons_'+$(this).width()) != $offcetTop) {
              $.data(document, '_scrollButtons_'+$(this).width(), $offcetTop);
          }
          
          // console.log( $offcetTop, $.data(document, '_scrollButtons_'+$(this).width()) );
          
          if( $.data(document, '_scrollButtons_'+$(this).width()) ) {
              $('.fly-box-buttons').scrollPumpic({ 
                   '_objFly': '.block-fly',
                   'start': $.data(document, '_scrollButtons_'+$(this).width()),
                   'stop': 0,
                   'right': 300,
                   '_settings': {
                       '_responce': false,
                       '_validate': false
                   },
                   'animate': {
                        'type': 'blinking', // fade, visible, blinking
                        'timeShow': 30,
                        'timeHide': 50
                    }
                }); //"coeff":1.15
          }
          
      });      
   }
   
   // tabs compatibility
   $('#temp-1 .bc-tabs .item-tab a, #temp-1 .bc-tabs .item-tab span, #temp-2 > ul > li > a, #temp-2 > ul > li > span').on('click', function() {
      // clear all active
      var _itab = $(this).parent(),
          _this = $(this),
          _data_cat_id = _itab.attr('data-cat-id');
      $.each($('#temp-1 .bc-tabs .item-tab, #temp-2 > ul > li, #temp-1 #tab-content > div'), function(key, val) {
         if($(val).hasClass('active')) $(val).removeClass('active');
      }); 
      
      if(!_itab.hasClass('active')) {
        $('#temp-1 .bc-tabs section > div[data-cat-id="'+_data_cat_id+'"], #temp-2 > ul > li[data-cat-id="'+_data_cat_id+'"]').addClass('active');
        $('#temp-1 #tab-content > div[data-cat-id="'+_data_cat_id+'"]').addClass('active');
      }  
      
      // clear all items
//            $.each($('#temp-2 > ul > li ul'), function(key, value) {
//                $(value).slideUp();
//            });
      
//      if($('#temp-2 > ul > li ul').is(':visible')) {
//          $('#temp-2 > ul > li ul').slideUp('slow');
//      } 
      
      if(_itab.children('ul').is(':not(visible)')) {
          _itab.children('ul').slideDown('slow', function() {
              
                $.each($('#temp-2 > ul > li').not(':eq('+ $(this).parent().index() +')').children('ul'), function(key, value) {
                $(value).slideUp();
                });

                // scroll to active
                $('html, body').stop().animate({
                    scrollTop: _this.offset().top
                }, 1000);
          });
      }
      
      
     
   });
   
   
   // mobile operators
   if($('.toggle-mobile-operators').length) {
       $('.toggle-mobile-operators').on('click', function(event) {
           event.preventDefault();
           $.each( $('#mobile-operators .item-operators'), function(key, value) {
               if($(value).hasClass('hide')) {
                   $(value).removeClass('hide').addClass('show');
               }
           });
           $(this).parent().hide();
           return false;
       });
   }
   
   
   
   // hovers
   $('.box-video-constructors .block-video-button > .box-hover').hover(
      function() {
          // console.log( $rs_width );
          if(!$rs_width || $rs_width > 992)
             $(this).find('.hover-video-buttons').show();
      }, function() {
          if(!$rs_width || $rs_width > 992)
            $(this).find('.hover-video-buttons').hide();  
      }
    );
    
        
    // bootstrap clic popUp
   $('a#openBtnVideo').click(function(e){
        e.preventDefault();
        var src = $(this).attr('data-src');
        var height = $(this).attr('data-height') || 520;
        var width = $(this).attr('data-width') || 820;
        
        var p_w = parseInt( width ) + 15;
        var p_h = parseInt( height ) + 25;
       
        // $("#myModal .modal-dialog").css({'max-width': p_w+'px'}); // 'height': p_h+'px'
        $("#myModal .modal-body").css({'max-width': width+'px', 'height': height+'px'});
        
        $("#myModal iframe").attr({ 'height': height,
                                    'width': width});
        
        $('#myModal').on('shown.bs.modal', function (e) {
            $("#myModal iframe").attr({'src':src});
        });
        
        $('#myModal').modal({show:true});
        return false;
    });
    
    $('#myModal').on('shown.bs.modal', function (e) {
    });
    $('#myModal').on('hidden.bs.modal', function (e) { 
    });

//    $('a#openBtnVideo').on('click', function(e) {
//        var src = $(this).attr('data-src');
//        var height = $(this).attr('data-height') || 520;
//        var width = $(this).attr('data-width') || 820;
//        
//        var p_w = parseInt( width ) + 15;
//        var p_h = parseInt( height ) + 25;
//        
//        $("#myModal .modal-dialog").css({'width': p_w+'px', 'height': p_h+'px'});
//        $("#myModal .modal-body").css({'width': width+'px', 'height': height+'px'});
//        $("#myModal iframe").attr({'src':src,
//                               'height': height,
//                               'width': width});
//    });

}); 

$(document).ready(function(){ 

    // create cookie
    if(typeof $.cookie('popUp_email') == "undefined") {
        $.cookie('popUp_email', 0, {  
            expires: 1 // установить на сутки  
        });
    }
    
    /*
    $('html').mouseleave(function(){
        // console.log( 'Out windows! ', $.cookie('popUp_email'), typeof($.cookie('popUp_email')) );
        if(typeof $.cookie('popUp_email') !== "undefined" 
                && !parseInt( $.cookie('popUp_email') )) {
            
            var $_popUp = $('.box-popUp'),
                $box_email = $_popUp.find('#box-email');

            if(!$box_email.length) { 
                $box_email = $_popUp
                        .append( _htmlPopUp.box_email )
                        .find('#box-email'); 
            } 
            
            $box_email.bPopup({
                    modalClose: true,
                    appending: false,
                    opacity: 0.6,
                    follow: [false, false], 
                    positionStyle: 'fixed', //'fixed' or 'absolute'
                    onOpen: function() {
                        popUpValidate();
                    },
                    closeClass: 'close',
                    onClose: function() {
                    },

            });
            
            $.cookie('popUp_email', 1); // popUp inout put one.
        }
        
    });
    */
    
    // form popUp
    $('.block-popUp-close').on('click', function() {
        var _popUp = $(this).parents('.popUp'), $this = $(this);
        _popUp.bPopup().close();
    });

});

function popUpValidate() {
    
    $('form.block-popup-form').validate({
        onfocusout: false,
        onkeyup: false,
        onclick: true,
        onsubmit: true,
        focusInvalid: false,
        focusCleanup: false,
        email: {
            required: true,
            email: true
        },
        messages: {
            email: {
                required: "The Email field is empty",
                email: "Please enter correct email"
            }
        },
       
        errorClass: "error",
        validClass: "success",
        invalidHandler: function(event, validator) {
            if($('form.block-popup-form div.error').length)
                $('form.block-popup-form div.error').html( " " ).hide();
        },
        // управление ошибками
        showErrors: function(errorMap, errorList) {
            var msg = null;
            $.each(errorList, function(){
                 msg = this.message + '<br />'; });
             
            if(msg !== null) 
                $("form.block-popup-form div.error").html(msg).show();
        },

        submitHandler: function( form ) { // submitHandler
            var $form = $(form), _params = parseQuery($form.serializeArray());
            
            if($('form.block-popup-form div.error').length)
                $('form.block-popup-form div.error').html( " " ).hide();
            
            // disabled button
            $form.find('button').prop( "disabled", true );
            
            
            var jqXHR = _getAJAX( 
                'http://pumpic.com/popup_email_send.html', 
                _params, {
                    'dataType': 'jsonp',
                    'crossDomain': true,
                } 
            );
    
            if(typeof jqXHR == 'object') {
                jqXHR
                .done(function(data, textStatus, jqXHR) {
                    if(textStatus == 'success') {
                        console.log( data );
                
                        if(data.error) { 
                    
                            if(typeof data.error === 'object') {
                                $.each(data.error, function(name, text) {
                                    var _obj = $form.find('input[name="'+name+'"]');
                                    if(_obj.length) {
                                        if(_obj.next('label').length)
                                            _obj.next().html( text ).show();
                                        else
                                            $('form.block-popup-form div.error').html( text ).show();
                                            //$('<label id="'+name+'-error" for="'+name+'" class="error">'+text+'</label>').insertAfter(_obj); 
                                    }
                                  });
                            } else {
                                $('form.block-popup-form div.error').html( data.error ).show();
                            }

                            // disabled button
                            $form.find('button').prop( "disabled", false );
                            return false;
                        } else if(data.success) {
                            // google analitycs
                            // ga('send', 'event', 'form', 'submit', 'compatibility-request-success');
                            var $_popUp = $('.box-popUp'),
                                $email_success = $_popUp.find('#box-email-success');
                                
                            if(!$email_success.length) { 
                                $email_success = $_popUp
                                        .append( _htmlPopUp.email_success )
                                        .find('#box-email-success'); 
                            }
                            
                            // close popUp
                            if($('.box-popUp > .popUp').is(':visible')) {
                                $('.box-popUp > .popUp').bPopup({
                                    transition: 'fadeOut'
                                }).close();
                            }

                            $email_success.bPopup({
                                    modalClose: true,
                                    appending: false,
                                    opacity: 0.6,
                                    follow: [false, false], 
                                    positionStyle: 'fixed', //'fixed' or 'absolute'
                                    onOpen: function() {
                                    },
                                    closeClass: 'close',
                                    onClose: function() {
                                    },
                            });
                        }
                        
                    } else {
                        $('form.block-popup-form div.error').html('Your email was not sent').show();
                        console.log('System error '+ textStatus +'!');
                        // disabled button
                        $form.find('button').prop( "disabled", false );
                         return false;
                        }
                })
                .fail  (function(jqXHR, textStatus, errorThrown) { 
                    $('form.block-popup-form div.error').html('Your email was not sent').show();
                     console.log('System error (JSOP:REQUEST)!');
                    // disabled button
                    $form.find('button').prop( "disabled", false );
                    return false;
                });
            } else {
                $('form.block-popup-form div.error').html('Your email was not sent').show();
                 console.log('System error (CREATE:OBJECT)!');
                // disabled button
                $form.find('button').prop( "disabled", false );
                return false;
            }
            
            /* json
            var _res = getAjaxForm('http://pumpic.com/popup_email_send.html', _params, {
                'dataType': 'json',
                'crossDomain': true,
            });
            if(typeof _res === 'object') {
                if(_res.error) { 
                    
                    if(typeof _res.error === 'object') {
                        $.each(_res.error, function(name, text) {
                            var _obj = $form.find('input[name="'+name+'"]');
                            if(_obj.length) {
                                if(_obj.next('label').length)
                                    _obj.next().html( text ).show();
                                else
                                    $('form.block-popup-form div.error').html( text ).show();
                                    //$('<label id="'+name+'-error" for="'+name+'" class="error">'+text+'</label>').insertAfter(_obj); 
                            }
                          });
                    } else {
                        $('form.block-popup-form div.error').html( _res.error ).show();
                    }
                    
                    // disabled button
                    $form.find('button').prop( "disabled", false );
                    return false;
                } else if(_res.success) {
                    // google analitycs
                    // ga('send', 'event', 'form', 'submit', 'compatibility-request-success');

                    

                    // close popUp
                    if($('.box-popUp > .popUp').is(':visible')) {
                        $('.box-popUp > #box-email').bPopup({
                            transition: 'fadeOut'
                        }).close();
                    }        

                    $('.box-popUp > #box-email-success').bPopup({
                            modalClose: true,
                            appending: false,
                            opacity: 0.6,
                            follow: [false, false], 
                            positionStyle: 'fixed', //'fixed' or 'absolute'
                            onOpen: function() {
                            },
                            closeClass: 'close',
                            onClose: function() {
                            },
                    });
                } else {
                    $('form.block-popup-form div.error').html('Your email was not sent').show();
                    console.log('System error!');
                    
                    // disabled button
                    $form.find('button').prop( "disabled", false );
                     return false;
                }
            } else {
                $('form.block-popup-form div.error').html('Your email was not sent').show();
                
                // disabled button
                $form.find('button').prop( "disabled", false );
                return false;
            }
            */
            $form.trigger("reset"); 
        }
    });
    
}
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
$(document).ready(function(){ 
    // create cookie
    if(typeof $.cookie('fly_features') == "undefined") {
        $.cookie('fly_features', 0, {  
            expires: 1 // установить на сутки  
        });
    }
    
    
    $(window).scroll(function() {
            if ($(this).scrollTop() > 100 && 
                    typeof $.cookie('fly_features') !== "undefined" &&
                    !parseInt( $.cookie('fly_features') ) ) {
                    $('#fly_features').fadeIn();
            } else {
                    $('#fly_features').fadeOut();
            }
    });
    
//    if(typeof $.cookie('fly_features') !== "undefined" 
//                && !parseInt( $.cookie('fly_features') )) {
//            $('#fly_features').css({'display': 'inline-block'});
//    }
    
    if($('#fly_features > span.close').length) {
        $('#fly_features > span.close').on('click', function() {
            $(this).parent().hide();
            if(typeof $.cookie('fly_features') !== "undefined" 
                && !parseInt( $.cookie('fly_features') )) {
                $.cookie('fly_features', 1);
            }
            
            return false;
        });
    }
});


$(document).ready(function(){ 
//    var $bth = $("#block-technological-header .box-hedaer-body"),
//        _biW = $bth.find('.block-images').width(true),
//        _biH = $bth.find('.block-images').height(true);
//        
//    if($("#box-img-lines").is(':visible'))    
//        $("#box-img-lines img").css({'width': _biW +'px', 'margin-left': '-'+(_biW / 2 )+'px'});

});

//// .wp-caption
$( window ).resize(function() {
//    var $_wW = $(window).width(),
//        $_hH = $(window).height(),
//        $bth = $("#block-technological-header .box-hedaer-body"),
//        _biW = $bth.find('.block-images').outerWidth(true),
//        _biH = $bth.find('.block-images').outerHeight(true),
//        
//        _biIW = false, _biIH = false,
//        
//        _ml = (42 / _biW) * 100,
//        _mt = (16 / _biH) * 100;
//    
//        if($("#box-img-lines").is(':visible'))
//            $("#box-img-lines img").css({'width': (_biW - 30) +'px', 'margin-left': '-'+(_biW / 2 )+'px'});
    
//    console.log( 'Ww = '+$_wW+' hH = '+ $_hH +' _biW = '+ _biW + ' _biH = '+ _biH +' _biIW = '+ _biIW + ' _biIH = '+ _biIH );
//    
//    if($bth.find('#box-image-element .box-img-middle').is(':visible')) {
//      _biIW = $bth.find('#box-image-element .box-img-middle img').outerWidth(true);
//      _biIH = $bth.find('#box-image-element .box-img-middle img').outerHeight(true);
//      
//      $bth.find('#box-image-element .box-img-middle img').css({
//          'margin-left': _ml+'%',
//          'margin-top': _mt+'%'
//      });
//      
//    } else if($bth.find('#box-image-element .box-img-big').is(':visible')) {
//      _biIW = $bth.find('#box-image-element .box-img-big img').outerWidth(true); 
//      _biIH = $bth.find('#box-image-element .box-img-big img').outerHeight(true);
//    } 
    
    
    
    
});
/***
 * BxSlider v4.2.3 - Fully loaded, responsive content slider
 * http://bxslider.com
 *
 * Copyright 2014, Steven Wanderski - http://stevenwanderski.com - http://bxcreative.com
 * Written while drinking Belgian ales and listening to jazz
 *
 * Released under the MIT license - http://opensource.org/licenses/MIT
 ***/

;(function($){

	var defaults = {

		// GENERAL
		mode: 'horizontal',
		slideSelector: '',
		infiniteLoop: true,
		hideControlOnEnd: false,
		speed: 500,
		easing: null,
		slideMargin: 0,
		startSlide: 0,
		randomStart: false,
		captions: false,
		ticker: false,
		tickerHover: false,
		adaptiveHeight: false,
		adaptiveHeightSpeed: 500,
		video: false,
		useCSS: true,
		preloadImages: 'visible',
		responsive: true,
		slideZIndex: 50,
		wrapperClass: 'bx-wrapper',

		// TOUCH
		touchEnabled: true,
		swipeThreshold: 50,
		oneToOneTouch: true,
		preventDefaultSwipeX: true,
		preventDefaultSwipeY: false,

		// KEYBOARD
		keyboardEnabled: false,

		// PAGER
		pager: true,
		pagerType: 'full',
		pagerShortSeparator: ' / ',
		pagerSelector: null,
		buildPager: null,
		pagerCustom: null,

		// CONTROLS
		controls: true,
		nextText: 'Next',
		prevText: 'Prev',
		nextSelector: null,
		prevSelector: null,
		autoControls: false,
		startText: 'Start',
		stopText: 'Stop',
		autoControlsCombine: false,
		autoControlsSelector: null,

		// AUTO
		auto: false,
		pause: 4000,
		autoStart: true,
		autoDirection: 'next',
		autoHover: false,
		autoDelay: 0,
		autoSlideForOnePage: false,

		// CAROUSEL
		minSlides: 1,
		maxSlides: 1,
		moveSlides: 0,
		slideWidth: 0,

		// CALLBACKS
		onSliderLoad: function(){ return true },
		onSlideBefore: function(){ return true },
		onSlideAfter: function(){ return true },
		onSlideNext: function(){ return true },
		onSlidePrev: function(){ return true },
		onSliderResize: function(){ return true }
	};

	$.fn.bxSlider = function(options){

		if(this.length === 0){
			return this;
		} 

		// support multiple elements
		if(this.length > 1){
			this.each(function(){
				$(this).bxSlider(options);
			});
			return this;
		}

		// create a namespace to be used throughout the plugin
		var slider = {};
		// set a reference to our slider element
		var el = this;

		/**
		 * Makes slideshow responsive
		 */
		// first get the original window dimens (thanks a lot IE)
		var windowWidth = $(window).width();
		var windowHeight = $(window).height();



		/**
		 * ===================================================================================
		 * = PRIVATE FUNCTIONS
		 * ===================================================================================
		 */

		/**
		 * Initializes namespace settings to be used throughout plugin
		 */
		var init = function(){
			// merge user-supplied options with the defaults
			slider.settings = $.extend({}, defaults, options);
			// parse slideWidth setting
			slider.settings.slideWidth = parseInt(slider.settings.slideWidth);
			// store the original children
			slider.children = el.children(slider.settings.slideSelector);
			// check if actual number of slides is less than minSlides / maxSlides
			if(slider.children.length < slider.settings.minSlides){ slider.settings.minSlides = slider.children.length; } 
			if(slider.children.length < slider.settings.maxSlides){ slider.settings.maxSlides = slider.children.length; }
			// if random start, set the startSlide setting to random number
			if(slider.settings.randomStart){ slider.settings.startSlide = Math.floor(Math.random() * slider.children.length); }
			// store active slide information
			slider.active = { index: slider.settings.startSlide };
			// store if the slider is in carousel mode (displaying / moving multiple slides)
			slider.carousel = slider.settings.minSlides > 1 || slider.settings.maxSlides > 1 ? true : false;
			// if carousel, force preloadImages = 'all'
			if(slider.carousel){ slider.settings.preloadImages = 'all'; }
			// calculate the min / max width thresholds based on min / max number of slides
			// used to setup and update carousel slides dimensions
			slider.minThreshold = (slider.settings.minSlides * slider.settings.slideWidth) + ((slider.settings.minSlides - 1) * slider.settings.slideMargin);
			slider.maxThreshold = (slider.settings.maxSlides * slider.settings.slideWidth) + ((slider.settings.maxSlides - 1) * slider.settings.slideMargin);
			// store the current state of the slider (if currently animating, working is true)
			slider.working = false;
			// initialize the controls object
			slider.controls = {};
			// initialize an auto interval
			slider.interval = null;
			// determine which property to use for transitions
			slider.animProp = slider.settings.mode === 'vertical' ? 'top' : 'left';
			// determine if hardware acceleration can be used
			slider.usingCSS = slider.settings.useCSS && slider.settings.mode !== 'fade' && (function(){
				// create our test div element
				var div = document.createElement('div');
				// css transition properties
				var props = ['WebkitPerspective', 'MozPerspective', 'OPerspective', 'msPerspective'];
				// test for each property
				for(var i in props){
					if(div.style[props[i]] !== undefined){
						slider.cssPrefix = props[i].replace('Perspective', '').toLowerCase();
						slider.animProp = '-' + slider.cssPrefix + '-transform';
						return true;
					}
				}
				return false;
			}());
			// if vertical mode always make maxSlides and minSlides equal
			if(slider.settings.mode === 'vertical'){ slider.settings.maxSlides = slider.settings.minSlides; }
			// save original style data
			el.data("origStyle", el.attr("style"));
			el.children(slider.settings.slideSelector).each(function(){
			  $(this).data("origStyle", $(this).attr("style"));
			});
			// perform all DOM / CSS modifications
			setup();
		};

		/**
		 * Performs all DOM and CSS modifications
		 */
		var setup = function(){
			// wrap el in a wrapper
			el.wrap('<div class="' + slider.settings.wrapperClass + '"><div class="bx-viewport"></div></div>');
			// store a namespace reference to .bx-viewport
			slider.viewport = el.parent();
			// add a loading div to display while images are loading
			slider.loader = $('<div class="bx-loading" />');
			slider.viewport.prepend(slider.loader);
			// set el to a massive width, to hold any needed slides
			// also strip any margin and padding from el
			el.css({
				width: slider.settings.mode === 'horizontal' ? (slider.children.length * 1000 + 215) + '%' : 'auto',
				position: 'absolute'
			});
			// if using CSS, add the easing property
			if(slider.usingCSS && slider.settings.easing){
				el.css('-' + slider.cssPrefix + '-transition-timing-function', slider.settings.easing);
			// if not using CSS and no easing value was supplied, use the default JS animation easing (swing)
			}else if(!slider.settings.easing){
				slider.settings.easing = 'swing';
			}
			var slidesShowing = getNumberSlidesShowing();
			// make modifications to the viewport (.bx-viewport)
			slider.viewport.css({
				width: '100%',
				overflow: 'hidden',
				position: 'relative'
			});
			slider.viewport.parent().css({
				maxWidth: getViewportMaxWidth()
			});
			// make modification to the wrapper (.bx-wrapper)
			if(!slider.settings.pager && !slider.settings.controls){
				slider.viewport.parent().css({
					margin: '0 auto 0px'
				});
			}
			// apply css to all slider children
			slider.children.css({
				'float': slider.settings.mode === 'horizontal' ? 'left' : 'none',
				listStyle: 'none',
				position: 'relative'
			});
			// apply the calculated width after the float is applied to prevent scrollbar interference
			slider.children.css('width', getSlideWidth());
			// if slideMargin is supplied, add the css
			if(slider.settings.mode === 'horizontal' && slider.settings.slideMargin > 0){ slider.children.css('marginRight', slider.settings.slideMargin); }
			if(slider.settings.mode === 'vertical' && slider.settings.slideMargin > 0){ slider.children.css('marginBottom', slider.settings.slideMargin); }
			// if "fade" mode, add positioning and z-index CSS
			if(slider.settings.mode === 'fade'){
				slider.children.css({
					position: 'absolute',
					zIndex: 0,
					display: 'none'
				});
				// prepare the z-index on the showing element
				slider.children.eq(slider.settings.startSlide).css({zIndex: slider.settings.slideZIndex, display: 'block'});
			}
			// create an element to contain all slider controls (pager, start / stop, etc)
			slider.controls.el = $('<div class="bx-controls" />');
			// if captions are requested, add them
			if(slider.settings.captions){ appendCaptions(); }
			// check if startSlide is last slide
			slider.active.last = slider.settings.startSlide === getPagerQty() - 1;
			// if video is true, set up the fitVids plugin
			if(slider.settings.video){ el.fitVids(); }
			// set the default preload selector (visible)
			var preloadSelector = slider.children.eq(slider.settings.startSlide);
			if(slider.settings.preloadImages === "all" || slider.settings.ticker){ preloadSelector = slider.children; }
			// only check for control addition if not in "ticker" mode
			if(!slider.settings.ticker){
				// if controls are requested, add them
				if(slider.settings.controls){ appendControls(); }
				// if auto is true, and auto controls are requested, add them
				if(slider.settings.auto && slider.settings.autoControls){ appendControlsAuto(); }
				// if pager is requested, add it
				if(slider.settings.pager){ appendPager(); }
				// if any control option is requested, add the controls wrapper
				if(slider.settings.controls || slider.settings.autoControls || slider.settings.pager){ slider.viewport.after(slider.controls.el); }
			// if ticker mode, do not allow a pager
			} else {
				slider.settings.pager = false;
			}
			loadElements(preloadSelector, start);
		};

		var loadElements = function(selector, callback){
			var total = selector.find('img:not([src=""]), iframe').length;
			if(total === 0){
				callback();
				return;
			}
			var count = 0;
			selector.find('img:not([src=""]), iframe').each(function(){
				$(this).one('load error', function(){
				  if(++count === total){ callback(); }
				}).each(function(){
				  if(this.complete){ $(this).load(); }
				});
			});
		};

		/**
		 * Start the slider
		 */
		var start = function(){
			// if infinite loop, prepare additional slides
			if(slider.settings.infiniteLoop && slider.settings.mode !== 'fade' && !slider.settings.ticker){
				var slice = slider.settings.mode === 'vertical' ? slider.settings.minSlides : slider.settings.maxSlides;
				var sliceAppend = slider.children.slice(0, slice).clone(true).addClass('bx-clone');
				var slicePrepend = slider.children.slice(-slice).clone(true).addClass('bx-clone');
				el.append(sliceAppend).prepend(slicePrepend);
			}
			// remove the loading DOM element
			slider.loader.remove();
			// set the left / top position of "el"
			setSlidePosition();
			// if "vertical" mode, always use adaptiveHeight to prevent odd behavior
			if(slider.settings.mode === 'vertical'){ slider.settings.adaptiveHeight = true; }
			// set the viewport height
			slider.viewport.height(getViewportHeight());
			// make sure everything is positioned just right (same as a window resize)
			el.redrawSlider();
			// onSliderLoad callback
			slider.settings.onSliderLoad(slider,slider.active.index);
			// slider has been fully initialized
			slider.initialized = true;
			// bind the resize call to the window
			if(slider.settings.responsive){ $(window).bind('resize', resizeWindow); }
			// if auto is true and has more than 1 page, start the show
			if(slider.settings.auto && slider.settings.autoStart && (getPagerQty() > 1 || slider.settings.autoSlideForOnePage)){ initAuto(); }
			// if ticker is true, start the ticker
			if(slider.settings.ticker){ initTicker(); }
			// if pager is requested, make the appropriate pager link active
			if(slider.settings.pager){ updatePagerActive(slider.settings.startSlide); }
			// check for any updates to the controls (like hideControlOnEnd updates)
			if(slider.settings.controls){ updateDirectionControls(); }
			// if touchEnabled is true, setup the touch events
			if(slider.settings.touchEnabled && !slider.settings.ticker){ initTouch(); }
			// if keyboardEnabled is true, setup the keyboard events
			if (slider.settings.keyboardEnabled && !slider.settings.ticker) { 
				$(document).keydown(keyPress);
			}
		};

		/**
		 * Returns the calculated height of the viewport, used to determine either adaptiveHeight or the maxHeight value
		 */
		var getViewportHeight = function(){
			var height = 0;
			// first determine which children (slides) should be used in our height calculation
			var children = $();
			// if mode is not "vertical" and adaptiveHeight is false, include all children
			if(slider.settings.mode !== 'vertical' && !slider.settings.adaptiveHeight){
				children = slider.children;
			}else{
				// if not carousel, return the single active child
				if(!slider.carousel){
					children = slider.children.eq(slider.active.index);
				// if carousel, return a slice of children
				}else{
					// get the individual slide index
					var currentIndex = slider.settings.moveSlides === 1 ? slider.active.index : slider.active.index * getMoveBy();
					// add the current slide to the children
					children = slider.children.eq(currentIndex);
					// cycle through the remaining "showing" slides
					for (i = 1; i <= slider.settings.maxSlides - 1; i++){
						// if looped back to the start
						if(currentIndex + i >= slider.children.length){
							children = children.add(slider.children.eq(i - 1));
						}else{
							children = children.add(slider.children.eq(currentIndex + i));
						}
					}
				}
			}
			// if "vertical" mode, calculate the sum of the heights of the children
			if(slider.settings.mode === 'vertical'){
				children.each(function(index){
				  height += $(this).outerHeight();
				});
				// add user-supplied margins
				if(slider.settings.slideMargin > 0){
					height += slider.settings.slideMargin * (slider.settings.minSlides - 1);
				}
			// if not "vertical" mode, calculate the max height of the children
			}else{
				height = Math.max.apply(Math, children.map(function(){
					return $(this).outerHeight(false);
				}).get());
			}

			if(slider.viewport.css('box-sizing') === 'border-box'){
				height +=	parseFloat(slider.viewport.css('padding-top')) + parseFloat(slider.viewport.css('padding-bottom')) +
							parseFloat(slider.viewport.css('border-top-width')) + parseFloat(slider.viewport.css('border-bottom-width'));
			}else if(slider.viewport.css('box-sizing') === 'padding-box'){
				height +=	parseFloat(slider.viewport.css('padding-top')) + parseFloat(slider.viewport.css('padding-bottom'));
			}

			return height;
		};

		/**
		 * Returns the calculated width to be used for the outer wrapper / viewport
		 */
		var getViewportMaxWidth = function(){
			var width = '100%';
			if(slider.settings.slideWidth > 0){
				if(slider.settings.mode === 'horizontal'){
					width = (slider.settings.maxSlides * slider.settings.slideWidth) + ((slider.settings.maxSlides - 1) * slider.settings.slideMargin);
				}else{
					width = slider.settings.slideWidth;
				}
			}
			return width;
		};

		/**
		 * Returns the calculated width to be applied to each slide
		 */
		var getSlideWidth = function(){
			// start with any user-supplied slide width
			var newElWidth = slider.settings.slideWidth;
			// get the current viewport width
			var wrapWidth = slider.viewport.width();
			// if slide width was not supplied, or is larger than the viewport use the viewport width
			if(slider.settings.slideWidth === 0 ||
				(slider.settings.slideWidth > wrapWidth && !slider.carousel) ||
				slider.settings.mode === 'vertical'){
				newElWidth = wrapWidth;
			// if carousel, use the thresholds to determine the width
			}else if(slider.settings.maxSlides > 1 && slider.settings.mode === 'horizontal'){
				if(wrapWidth > slider.maxThreshold){
					// newElWidth = (wrapWidth - (slider.settings.slideMargin * (slider.settings.maxSlides - 1))) / slider.settings.maxSlides;
				}else if(wrapWidth < slider.minThreshold){
					newElWidth = (wrapWidth - (slider.settings.slideMargin * (slider.settings.minSlides - 1))) / slider.settings.minSlides;
				}
			}
			return newElWidth;
		};

		/**
		 * Returns the number of slides currently visible in the viewport (includes partially visible slides)
		 */
		var getNumberSlidesShowing = function(){
			var slidesShowing = 1;
			if(slider.settings.mode === 'horizontal' && slider.settings.slideWidth > 0){
				// if viewport is smaller than minThreshold, return minSlides
				if(slider.viewport.width() < slider.minThreshold){
					slidesShowing = slider.settings.minSlides;
				// if viewport is larger than maxThreshold, return maxSlides
				}else if(slider.viewport.width() > slider.maxThreshold){
					slidesShowing = slider.settings.maxSlides;
				// if viewport is between min / max thresholds, divide viewport width by first child width
				}else{
					var childWidth = slider.children.first().width() + slider.settings.slideMargin;
					slidesShowing = Math.floor((slider.viewport.width() +
						slider.settings.slideMargin) / childWidth);
				}
			// if "vertical" mode, slides showing will always be minSlides
			}else if(slider.settings.mode === 'vertical'){
				slidesShowing = slider.settings.minSlides;
			}
			return slidesShowing;
		};

		/**
		 * Returns the number of pages (one full viewport of slides is one "page")
		 */
		var getPagerQty = function(){
			var pagerQty = 0;
			// if moveSlides is specified by the user
			if(slider.settings.moveSlides > 0){
				if(slider.settings.infiniteLoop){
					pagerQty = Math.ceil(slider.children.length / getMoveBy());
				}else{
					// use a while loop to determine pages
					var breakPoint = 0;
					var counter = 0;
					// when breakpoint goes above children length, counter is the number of pages
					while (breakPoint < slider.children.length){
						++pagerQty;
						breakPoint = counter + getNumberSlidesShowing();
						counter += slider.settings.moveSlides <= getNumberSlidesShowing() ? slider.settings.moveSlides : getNumberSlidesShowing();
					}
				}
			// if moveSlides is 0 (auto) divide children length by sides showing, then round up
			}else{
				pagerQty = Math.ceil(slider.children.length / getNumberSlidesShowing());
			}
			return pagerQty;
		};

		/**
		 * Returns the number of individual slides by which to shift the slider
		 */
		var getMoveBy = function(){
			// if moveSlides was set by the user and moveSlides is less than number of slides showing
			if(slider.settings.moveSlides > 0 && slider.settings.moveSlides <= getNumberSlidesShowing()){
				return slider.settings.moveSlides;
			}
			// if moveSlides is 0 (auto)
			return getNumberSlidesShowing();
		};

		/**
		 * Sets the slider's (el) left or top position
		 */
		var setSlidePosition = function(){
			var position;
			// if last slide, not infinite loop, and number of children is larger than specified maxSlides
			if(slider.children.length > slider.settings.maxSlides && slider.active.last && !slider.settings.infiniteLoop){
				if(slider.settings.mode === 'horizontal'){
					// get the last child's position
					var lastChild = slider.children.last();
					position = lastChild.position();
					// set the left position
					setPositionProperty(-(position.left - (slider.viewport.width() - lastChild.outerWidth())), 'reset', 0);
				}else if(slider.settings.mode === 'vertical'){
					// get the last showing index's position
					var lastShowingIndex = slider.children.length - slider.settings.minSlides;
					position = slider.children.eq(lastShowingIndex).position();
					// set the top position
					setPositionProperty(-position.top, 'reset', 0);
				}
			// if not last slide
			}else{
				// get the position of the first showing slide
				position = slider.children.eq(slider.active.index * getMoveBy()).position();
				// check for last slide
				if(slider.active.index === getPagerQty() - 1){ slider.active.last = true; }
				// set the respective position
				if(position !== undefined){
					if(slider.settings.mode === 'horizontal'){ setPositionProperty(-position.left, 'reset', 0); }
					else if(slider.settings.mode === 'vertical'){ setPositionProperty(-position.top, 'reset', 0); }
				}
			}
		};

		/**
		 * Sets the el's animating property position (which in turn will sometimes animate el).
		 * If using CSS, sets the transform property. If not using CSS, sets the top / left property.
		 *
		 * @param value (int)
		 *  - the animating property's value
		 *
		 * @param type (string) 'slide', 'reset', 'ticker'
		 *  - the type of instance for which the function is being
		 *
		 * @param duration (int)
		 *  - the amount of time (in ms) the transition should occupy
		 *
		 * @param params (array) optional
		 *  - an optional parameter containing any variables that need to be passed in
		 */
		var setPositionProperty = function(value, type, duration, params){
			// use CSS transform
			if(slider.usingCSS){
				// determine the translate3d value
				var propValue = slider.settings.mode === 'vertical' ? 'translate3d(0, ' + value + 'px, 0)' : 'translate3d(' + value + 'px, 0, 0)';
				// add the CSS transition-duration
				el.css('-' + slider.cssPrefix + '-transition-duration', duration / 1000 + 's');
				if(type === 'slide'){
					setTimeout(function() {
						// set the property value
						el.css(slider.animProp, propValue);
						// if value 0, just update
						if(value === 0) {
							updateAfterSlideTransition();
						} else {
							// bind a callback method - executes when CSS transition completes
							el.bind('transitionend webkitTransitionEnd oTransitionEnd MSTransitionEnd', function(){
								// unbind the callback
								el.unbind('transitionend webkitTransitionEnd oTransitionEnd MSTransitionEnd');
								updateAfterSlideTransition();
							});
						}
					}, 0);
				}else if(type === 'reset'){
					el.css(slider.animProp, propValue);
				}else if(type === 'ticker'){
					// make the transition use 'linear'
					el.css('-' + slider.cssPrefix + '-transition-timing-function', 'linear');
					el.css(slider.animProp, propValue);
					// bind a callback method - executes when CSS transition completes
					el.bind('transitionend webkitTransitionEnd oTransitionEnd MSTransitionEnd', function(){
						// unbind the callback
						el.unbind('transitionend webkitTransitionEnd oTransitionEnd MSTransitionEnd');
						// reset the position
						setPositionProperty(params.resetValue, 'reset', 0);
						// start the loop again
						tickerLoop();
					});
				}
			// use JS animate
			}else{
				var animateObj = {};
				animateObj[slider.animProp] = value;
				if(type === 'slide'){
					el.animate(animateObj, duration, slider.settings.easing, function(){
						updateAfterSlideTransition();
					});
				}else if(type === 'reset'){
					el.css(slider.animProp, value);
				}else if(type === 'ticker'){
					el.animate(animateObj, speed, 'linear', function(){
						setPositionProperty(params.resetValue, 'reset', 0);
						// run the recursive loop after animation
						tickerLoop();
					});
				}
			}
		};

		/**
		 * Populates the pager with proper amount of pages
		 */
		var populatePager = function(){
			var pagerHtml = '';
			var pagerQty = getPagerQty();
			// loop through each pager item
			for(var i=0; i < pagerQty; i++){
				var linkContent = '';
				// if a buildPager function is supplied, use it to get pager link value, else use index + 1
				if(slider.settings.buildPager && $.isFunction(slider.settings.buildPager) || slider.settings.pagerCustom){
					linkContent = slider.settings.buildPager(i);
					slider.pagerEl.addClass('bx-custom-pager');
				}else{
					linkContent = i + 1;
					slider.pagerEl.addClass('bx-default-pager');
				}
				// var linkContent = slider.settings.buildPager && $.isFunction(slider.settings.buildPager) ? slider.settings.buildPager(i) : i + 1;
				// add the markup to the string
				pagerHtml += '<div class="bx-pager-item"><a href="" data-slide-index="' + i + '" class="bx-pager-link">' + linkContent + '</a></div>';
			}
			// populate the pager element with pager links
			slider.pagerEl.html(pagerHtml);
		};

		/**
		 * Appends the pager to the controls element
		 */
		var appendPager = function(){
			if(!slider.settings.pagerCustom){
				// create the pager DOM element
				slider.pagerEl = $('<div class="bx-pager" />');
				// if a pager selector was supplied, populate it with the pager
				if(slider.settings.pagerSelector){
					$(slider.settings.pagerSelector).html(slider.pagerEl);
				// if no pager selector was supplied, add it after the wrapper
				}else{
					slider.controls.el.addClass('bx-has-pager').append(slider.pagerEl);
				}
				// populate the pager
				populatePager();
			}else{
				slider.pagerEl = $(slider.settings.pagerCustom);
			}
			// assign the pager click binding
			slider.pagerEl.on('click touchend', 'a', clickPagerBind);
		};

		/**
		 * Appends prev / next controls to the controls element
		 */
		var appendControls = function(){
			slider.controls.next = $('<a class="bx-next" href="">' + slider.settings.nextText + '</a>');
			slider.controls.prev = $('<a class="bx-prev" href="">' + slider.settings.prevText + '</a>');
			// bind click actions to the controls
			slider.controls.next.bind('click touchend', clickNextBind);
			slider.controls.prev.bind('click touchend', clickPrevBind);
			// if nextSelector was supplied, populate it
			if(slider.settings.nextSelector){
				$(slider.settings.nextSelector).append(slider.controls.next);
			}
			// if prevSelector was supplied, populate it
			if(slider.settings.prevSelector){
				$(slider.settings.prevSelector).append(slider.controls.prev);
			}
			// if no custom selectors were supplied
			if(!slider.settings.nextSelector && !slider.settings.prevSelector){
				// add the controls to the DOM
				slider.controls.directionEl = $('<div class="bx-controls-direction" />');
				// add the control elements to the directionEl
				slider.controls.directionEl.append(slider.controls.prev).append(slider.controls.next);
				// slider.viewport.append(slider.controls.directionEl);
				slider.controls.el.addClass('bx-has-controls-direction').append(slider.controls.directionEl);
			}
		};

		/**
		 * Appends start / stop auto controls to the controls element
		 */
		var appendControlsAuto = function(){
			slider.controls.start = $('<div class="bx-controls-auto-item"><a class="bx-start" href="">' + slider.settings.startText + '</a></div>');
			slider.controls.stop = $('<div class="bx-controls-auto-item"><a class="bx-stop" href="">' + slider.settings.stopText + '</a></div>');
			// add the controls to the DOM
			slider.controls.autoEl = $('<div class="bx-controls-auto" />');
			// bind click actions to the controls
			slider.controls.autoEl.on('click', '.bx-start', clickStartBind);
			slider.controls.autoEl.on('click', '.bx-stop', clickStopBind);
			// if autoControlsCombine, insert only the "start" control
			if(slider.settings.autoControlsCombine){
				slider.controls.autoEl.append(slider.controls.start);
			// if autoControlsCombine is false, insert both controls
			}else{
				slider.controls.autoEl.append(slider.controls.start).append(slider.controls.stop);
			}
			// if auto controls selector was supplied, populate it with the controls
			if(slider.settings.autoControlsSelector){
				$(slider.settings.autoControlsSelector).html(slider.controls.autoEl);
			// if auto controls selector was not supplied, add it after the wrapper
			}else{
				slider.controls.el.addClass('bx-has-controls-auto').append(slider.controls.autoEl);
			}
			// update the auto controls
			updateAutoControls(slider.settings.autoStart ? 'stop' : 'start');
		};

		/**
		 * Appends image captions to the DOM
		 */
		var appendCaptions = function(){
			// cycle through each child
			slider.children.each(function(index){
				// get the image title attribute
				var title = $(this).find('img:first').attr('title');
				// append the caption
				if(title !== undefined && ('' + title).length){
					$(this).append('<div class="bx-caption"><span>' + title + '</span></div>');
				}
			});
		};

		/**
		 * Click next binding
		 *
		 * @param e (event)
		 *  - DOM event object
		 */
		var clickNextBind = function(e){
			e.preventDefault();
			if (slider.controls.el.hasClass('disabled')) {
				return;
			}
			// if auto show is running, stop it
			if(slider.settings.auto){ el.stopAuto(); }
			el.goToNextSlide();
		};

		/**
		 * Click prev binding
		 *
		 * @param e (event)
		 *  - DOM event object
		 */
		var clickPrevBind = function(e){
			e.preventDefault();
			if (slider.controls.el.hasClass('disabled')) {
				return;
			}
			// if auto show is running, stop it
			if(slider.settings.auto){ el.stopAuto(); }
			el.goToPrevSlide();
		};

		/**
		 * Click start binding
		 *
		 * @param e (event)
		 *  - DOM event object
		 */
		var clickStartBind = function(e){
			el.startAuto();
			e.preventDefault();
		};

		/**
		 * Click stop binding
		 *
		 * @param e (event)
		 *  - DOM event object
		 */
		var clickStopBind = function(e){
			el.stopAuto();
			e.preventDefault();
		};

		/**
		 * Click pager binding
		 *
		 * @param e (event)
		 *  - DOM event object
		 */
		var clickPagerBind = function(e){
			e.preventDefault();
			if (slider.controls.el.hasClass('disabled')) {
				return;
			}
			// if auto show is running, stop it
			if(slider.settings.auto){ el.stopAuto(); }
			var pagerLink = $(e.currentTarget);
			if(pagerLink.attr('data-slide-index') !== undefined){
				var pagerIndex = parseInt(pagerLink.attr('data-slide-index'));
				// if clicked pager link is not active, continue with the goToSlide call
				if(pagerIndex !== slider.active.index){ el.goToSlide(pagerIndex); }
			}
		};

		/**
		 * Updates the pager links with an active class
		 *
		 * @param slideIndex (int)
		 *  - index of slide to make active
		 */
		var updatePagerActive = function(slideIndex){
			// if "short" pager type
			var len = slider.children.length; // nb of children
			if(slider.settings.pagerType === 'short'){
				if(slider.settings.maxSlides > 1){
					len = Math.ceil(slider.children.length/slider.settings.maxSlides);
				}
				slider.pagerEl.html( (slideIndex + 1) + slider.settings.pagerShortSeparator + len);
				return;
			}
			// remove all pager active classes
			slider.pagerEl.find('a').removeClass('active');
			// apply the active class for all pagers
			slider.pagerEl.each(function(i, el){ $(el).find('a').eq(slideIndex).addClass('active'); });
		};

		/**
		 * Performs needed actions after a slide transition
		 */
		var updateAfterSlideTransition = function(){
			// if infinite loop is true
			if(slider.settings.infiniteLoop){
				var position = '';
				// first slide
				if(slider.active.index === 0){
					// set the new position
					position = slider.children.eq(0).position();
				// carousel, last slide
				}else if(slider.active.index === getPagerQty() - 1 && slider.carousel){
					position = slider.children.eq((getPagerQty() - 1) * getMoveBy()).position();
				// last slide
				}else if(slider.active.index === slider.children.length - 1){
					position = slider.children.eq(slider.children.length - 1).position();
				}
				if(position){
					if(slider.settings.mode === 'horizontal'){ setPositionProperty(-position.left, 'reset', 0); }
					else if(slider.settings.mode === 'vertical'){ setPositionProperty(-position.top, 'reset', 0); }
				}
			}
			// declare that the transition is complete
			slider.working = false;
			// onSlideAfter callback
			slider.settings.onSlideAfter(slider.children.eq(slider.active.index), slider.oldIndex, slider.active.index);
		};

		/**
		 * Updates the auto controls state (either active, or combined switch)
		 *
		 * @param state (string) "start", "stop"
		 *  - the new state of the auto show
		 */
		var updateAutoControls = function(state){
			// if autoControlsCombine is true, replace the current control with the new state
			if(slider.settings.autoControlsCombine){
				slider.controls.autoEl.html(slider.controls[state]);
			// if autoControlsCombine is false, apply the "active" class to the appropriate control
			}else{
				slider.controls.autoEl.find('a').removeClass('active');
				slider.controls.autoEl.find('a:not(.bx-' + state + ')').addClass('active');
			}
		};

		/**
		 * Updates the direction controls (checks if either should be hidden)
		 */
		var updateDirectionControls = function(){
			if(getPagerQty() === 1){
				slider.controls.prev.addClass('disabled');
				slider.controls.next.addClass('disabled');
			}else if(!slider.settings.infiniteLoop && slider.settings.hideControlOnEnd){
				// if first slide
				if(slider.active.index === 0){
					slider.controls.prev.addClass('disabled');
					slider.controls.next.removeClass('disabled');
				// if last slide
				}else if(slider.active.index === getPagerQty() - 1){
					slider.controls.next.addClass('disabled');
					slider.controls.prev.removeClass('disabled');
				// if any slide in the middle
				}else{
					slider.controls.prev.removeClass('disabled');
					slider.controls.next.removeClass('disabled');
				}
			}
		};

		/**
		 * Initializes the auto process
		 */
		var initAuto = function(){
			// if autoDelay was supplied, launch the auto show using a setTimeout() call
			if(slider.settings.autoDelay > 0){
				var timeout = setTimeout(el.startAuto, slider.settings.autoDelay);
			// if autoDelay was not supplied, start the auto show normally
			}else{
				el.startAuto();

				//add focus and blur events to ensure its running if timeout gets paused
				$(window).focus(function() {
					el.startAuto();
				}).blur(function() {
					el.stopAuto();
				});
				

			}
			// if autoHover is requested
			if(slider.settings.autoHover){
				// on el hover
				el.hover(function(){
					// if the auto show is currently playing (has an active interval)
					if(slider.interval){
						// stop the auto show and pass true argument which will prevent control update
						el.stopAuto(true);
						// create a new autoPaused value which will be used by the relative "mouseout" event
						slider.autoPaused = true;
					}
				}, function(){
					// if the autoPaused value was created be the prior "mouseover" event
					if(slider.autoPaused){
						// start the auto show and pass true argument which will prevent control update
						el.startAuto(true);
						// reset the autoPaused value
						slider.autoPaused = null;
					}
				});
			}
		};

		/**
		 * Initializes the ticker process
		 */
		var initTicker = function(){
			var startPosition = 0;
			// if autoDirection is "next", append a clone of the entire slider
			if(slider.settings.autoDirection === 'next'){
				el.append(slider.children.clone().addClass('bx-clone'));
			// if autoDirection is "prev", prepend a clone of the entire slider, and set the left position
			}else{
				el.prepend(slider.children.clone().addClass('bx-clone'));
				var position = slider.children.first().position();
				startPosition = slider.settings.mode === 'horizontal' ? -position.left : -position.top;
			}
			setPositionProperty(startPosition, 'reset', 0);
			// do not allow controls in ticker mode
			slider.settings.pager = false;
			slider.settings.controls = false;
			slider.settings.autoControls = false;
			// if autoHover is requested
			if(slider.settings.tickerHover){
				if(slider.usingCSS){
					var value;
					var idx = slider.settings.mode == 'horizontal' ? 4 : 5;
					slider.viewport.hover(function(){
						var transform = el.css('-' + slider.cssPrefix + '-transform');
						value = parseFloat(transform.split(',')[idx]);
						setPositionProperty(value, 'reset', 0);
					}, function(){
						var totalDimens = 0;
						slider.children.each(function(index){
						  totalDimens += slider.settings.mode == 'horizontal' ? $(this).outerWidth(true) : $(this).outerHeight(true);
						});
						// calculate the speed ratio (used to determine the new speed to finish the paused animation)
						var ratio = slider.settings.speed / totalDimens;
						// determine which property to use
						var property = slider.settings.mode == 'horizontal' ? 'left' : 'top';
						// calculate the new speed
						var newSpeed = ratio * (totalDimens - (Math.abs(parseInt(value))));
						tickerLoop(newSpeed);
					});
				} else {
					// on el hover
					slider.viewport.hover(function(){
						el.stop();
					}, function(){
						// calculate the total width of children (used to calculate the speed ratio)
						var totalDimens = 0;
						slider.children.each(function(index){
						  totalDimens += slider.settings.mode == 'horizontal' ? $(this).outerWidth(true) : $(this).outerHeight(true);
						});
						// calculate the speed ratio (used to determine the new speed to finish the paused animation)
						var ratio = slider.settings.speed / totalDimens;
						// determine which property to use
						var property = slider.settings.mode == 'horizontal' ? 'left' : 'top';
						// calculate the new speed
						var newSpeed = ratio * (totalDimens - (Math.abs(parseInt(el.css(property)))));
						tickerLoop(newSpeed);
					});
				}
			}
			// start the ticker loop
			tickerLoop();
		};

		/**
		 * Runs a continuous loop, news ticker-style
		 */
		var tickerLoop = function(resumeSpeed){
			speed = resumeSpeed ? resumeSpeed : slider.settings.speed;
			var position = {left: 0, top: 0};
			var reset = {left: 0, top: 0};
			// if "next" animate left position to last child, then reset left to 0
			if(slider.settings.autoDirection === 'next'){
				position = el.find('.bx-clone').first().position();
			// if "prev" animate left position to 0, then reset left to first non-clone child
			}else{
				reset = slider.children.first().position();
			}
			var animateProperty = slider.settings.mode === 'horizontal' ? -position.left : -position.top;
			var resetValue = slider.settings.mode === 'horizontal' ? -reset.left : -reset.top;
			var params = {resetValue: resetValue};
			setPositionProperty(animateProperty, 'ticker', speed, params);
		};

		/**
		 * Check if el is on screen
		 */
		var isOnScreen = function(el){
			var win = $(window);
			var viewport = {
				top : win.scrollTop(),
				left : win.scrollLeft()
			};
			viewport.right = viewport.left + win.width();
			viewport.bottom = viewport.top + win.height();

			var bounds = el.offset();
			bounds.right = bounds.left + el.outerWidth();
			bounds.bottom = bounds.top + el.outerHeight();

			return (!(viewport.right < bounds.left || viewport.left > bounds.right || viewport.bottom < bounds.top || viewport.top > bounds.bottom));
		};

		/**
		 * Initializes keyboard events
		 */
		var keyPress = function(e){
			var activeElementTag = document.activeElement.tagName.toLowerCase();
			var tagFilters='input|textarea';
			var p = new RegExp(activeElementTag,["i"]);
			var result = p.exec(tagFilters);
			if (result == null && isOnScreen(el)) {
				if (e.keyCode == 39) {
					clickNextBind(e);
					return false;
				}
				else if (e.keyCode == 37) {
					clickPrevBind(e);
					return false;
				}
			}
		};

		/**
		 * Initializes touch events
		 */
		var initTouch = function(){
			// initialize object to contain all touch values
			slider.touch = {
				start: {x: 0, y: 0},
				end: {x: 0, y: 0}
			};
			slider.viewport.bind('touchstart MSPointerDown pointerdown', onTouchStart);
			
			//for browsers that have implemented pointer events and fire a click after
			//every pointerup regardless of whether pointerup is on same screen location as pointerdown or not
			slider.viewport.on('click', '.bxslider a', function(e) {
				if (slider.viewport.hasClass('click-disabled')) {
					e.preventDefault();
					slider.viewport.removeClass('click-disabled');
				}
			});
		};

		/**
		 * Event handler for "touchstart"
		 *
		 * @param e (event)
		 *  - DOM event object
		 */
		var onTouchStart = function(e){
			//disable slider controls while user is interacting with slides to avoid slider freeze that happens on touch devices when a slide swipe happens immediately after interacting with slider controls
			slider.controls.el.addClass('disabled');

			if(slider.working){
				e.preventDefault();
				slider.controls.el.removeClass('disabled');
			}else{
				// record the original position when touch starts
				slider.touch.originalPos = el.position();
				var orig = e.originalEvent;
				var touchPoints = (typeof orig.changedTouches != 'undefined') ? orig.changedTouches : [orig];
				// record the starting touch x, y coordinates
				slider.touch.start.x = touchPoints[0].pageX;
				slider.touch.start.y = touchPoints[0].pageY;

				if (slider.viewport.get(0).setPointerCapture) {
					slider.pointerId = orig.pointerId;
					slider.viewport.get(0).setPointerCapture(slider.pointerId);
				}
				// bind a "touchmove" event to the viewport
				slider.viewport.bind('touchmove MSPointerMove pointermove', onTouchMove);
				// bind a "touchend" event to the viewport
				slider.viewport.bind('touchend MSPointerUp pointerup', onTouchEnd);
				slider.viewport.bind('MSPointerCancel pointercancel', onPointerCancel);
			}
		};

		/**
		 * Cancel Pointer for Windows Phone
		 *
		 * @param e (event)
		 *  - DOM event object
		 */
		var onPointerCancel = function(e) {
		/* onPointerCancel handler is needed to deal with situations when a touchend
		doesn't fire after a touchstart (this happens on windows phones only) */
			setPositionProperty(slider.touch.originalPos.left, 'reset', 0);

			//remove handlers
			slider.controls.el.removeClass('disabled');
			slider.viewport.unbind('MSPointerCancel pointercancel', onPointerCancel);
			slider.viewport.unbind('touchmove MSPointerMove pointermove', onTouchMove);
			slider.viewport.unbind('touchend MSPointerUp pointerup', onTouchEnd);
			if (slider.viewport.get(0).releasePointerCapture) {
				slider.viewport.get(0).releasePointerCapture(slider.pointerId);
 			}
		}

		/**
		 * Event handler for "touchmove"
		 *
		 * @param e (event)
		 *  - DOM event object
		 */
		var onTouchMove = function(e){
			var orig = e.originalEvent;
			var touchPoints = (typeof orig.changedTouches != 'undefined') ? orig.changedTouches : [orig];
			// if scrolling on y axis, do not prevent default
			var xMovement = Math.abs(touchPoints[0].pageX - slider.touch.start.x);
			var yMovement = Math.abs(touchPoints[0].pageY - slider.touch.start.y);
			// x axis swipe
			if((xMovement * 3) > yMovement && slider.settings.preventDefaultSwipeX){
				e.preventDefault();
			// y axis swipe
			}else if((yMovement * 3) > xMovement && slider.settings.preventDefaultSwipeY){
				e.preventDefault();
			}
			if(slider.settings.mode !== 'fade' && slider.settings.oneToOneTouch){
				var value = 0, change = 0;
				// if horizontal, drag along x axis
				if(slider.settings.mode === 'horizontal'){
					change = touchPoints[0].pageX - slider.touch.start.x;
					value = slider.touch.originalPos.left + change;
				// if vertical, drag along y axis
				}else{
					change = touchPoints[0].pageY - slider.touch.start.y;
					value = slider.touch.originalPos.top + change;
				}
				setPositionProperty(value, 'reset', 0);
			}
		};

		/**
		 * Event handler for "touchend"
		 *
		 * @param e (event)
		 *  - DOM event object
		 */
		var onTouchEnd = function(e){
			slider.viewport.unbind('touchmove MSPointerMove pointermove', onTouchMove);
			//enable slider controls as soon as user stops interacing with slides
			slider.controls.el.removeClass('disabled');
			var orig = e.originalEvent;
			var touchPoints = (typeof orig.changedTouches != 'undefined') ? orig.changedTouches : [orig];
			var value = 0;
			var distance = 0;
			// record end x, y positions
			slider.touch.end.x = touchPoints[0].pageX;
			slider.touch.end.y = touchPoints[0].pageY;
			// if fade mode, check if absolute x distance clears the threshold
			if(slider.settings.mode === 'fade'){
				distance = Math.abs(slider.touch.start.x - slider.touch.end.x);
				if(distance >= slider.settings.swipeThreshold){
					if(slider.touch.start.x > slider.touch.end.x){
						el.goToNextSlide();
					} else {
						el.goToPrevSlide();
					} 
					el.stopAuto();
				}
			// not fade mode
			}else{
				// calculate distance and el's animate property
				if(slider.settings.mode === 'horizontal'){
					distance = slider.touch.end.x - slider.touch.start.x;
					value = slider.touch.originalPos.left;
				}else{
					distance = slider.touch.end.y - slider.touch.start.y;
					value = slider.touch.originalPos.top;
				}
				// if not infinite loop and first / last slide, do not attempt a slide transition
				if(!slider.settings.infiniteLoop && ((slider.active.index === 0 && distance > 0) || (slider.active.last && distance < 0))){
					setPositionProperty(value, 'reset', 200);
				}else{
					// check if distance clears threshold
					if(Math.abs(distance) >= slider.settings.swipeThreshold){
						if(distance < 0){
							el.goToNextSlide();
						} else {
							el.goToPrevSlide();
						} 
						el.stopAuto();
					}else{
						// el.animate(property, 200);
						setPositionProperty(value, 'reset', 200);
					}
				}
			}
			slider.viewport.unbind('touchend MSPointerUp pointerup', onTouchEnd);
			if (slider.viewport.get(0).releasePointerCapture) {
				slider.viewport.get(0).releasePointerCapture(slider.pointerId);
			}
		};

		/**
		 * Window resize event callback
		 */
		var resizeWindow = function(e){
			// don't do anything if slider isn't initialized.
			if(!slider.initialized){ return; }
			// Delay if slider working.
			if (slider.working) {
				window.setTimeout(resizeWindow, 10);
			} else {
				// get the new window dimens (again, thank you IE)
				var windowWidthNew = $(window).width();
				var windowHeightNew = $(window).height();
				// make sure that it is a true window resize
				// *we must check this because our dinosaur friend IE fires a window resize event when certain DOM elements
				// are resized. Can you just die already?*
				if(windowWidth !== windowWidthNew || windowHeight !== windowHeightNew){
					// set the new window dimens
					windowWidth = windowWidthNew;
					windowHeight = windowHeightNew;
					// update all dynamic elements
					el.redrawSlider();
					// Call user resize handler
					slider.settings.onSliderResize.call(el, slider.active.index);
				}
			}
		};

		/**
		 * ===================================================================================
		 * = PUBLIC FUNCTIONS
		 * ===================================================================================
		 */

		/**
		 * Performs slide transition to the specified slide
		 *
		 * @param slideIndex (int)
		 *  - the destination slide's index (zero-based)
		 *
		 * @param direction (string)
		 *  - INTERNAL USE ONLY - the direction of travel ("prev" / "next")
		 */
		el.goToSlide = function(slideIndex, direction){
			// if plugin is currently in motion, ignore request
			if(slider.working || slider.active.index === slideIndex){ return; }
			// declare that plugin is in motion
			slider.working = true;
			// store the old index
			slider.oldIndex = slider.active.index;
			// if slideIndex is less than zero, set active index to last child (this happens during infinite loop)
			if(slideIndex < 0){
				slider.active.index = getPagerQty() - 1;
			// if slideIndex is greater than children length, set active index to 0 (this happens during infinite loop)
			}else if(slideIndex >= getPagerQty()){
				slider.active.index = 0;
			// set active index to requested slide
			}else{
				slider.active.index = slideIndex;
			}
			// onSlideBefore, onSlideNext, onSlidePrev callbacks
			// Allow transition canceling based on returned value
			var performTransition = true;

			performTransition = slider.settings.onSlideBefore(slider.children.eq(slider.active.index), slider.oldIndex, slider.active.index);
			
			if ( typeof(performTransition) !== "undefined" && !performTransition ) {
				slider.active.index = slider.oldIndex; // restore old index
				slider.working = false; // is not in motion
				return;	
			}
			if(direction === 'next'){
				// Prevent canceling in future functions or lack there-of from negating previous commands to cancel
				if(!slider.settings.onSlideNext(slider.children.eq(slider.active.index), slider.oldIndex, slider.active.index)){
					performTransition = false;
				}
			}else if(direction === 'prev'){
				// Prevent canceling in future functions or lack there-of from negating previous commands to cancel
				if(!slider.settings.onSlidePrev(slider.children.eq(slider.active.index), slider.oldIndex, slider.active.index)){
					performTransition = false;
				}
			}

			// If transitions canceled, reset and return
			if ( typeof(performTransition) !== "undefined" && !performTransition ) {
				slider.active.index = slider.oldIndex; // restore old index
				slider.working = false; // is not in motion
				return;	
			}

			// check if last slide
			slider.active.last = slider.active.index >= getPagerQty() - 1;
			// update the pager with active class
			if(slider.settings.pager || slider.settings.pagerCustom){ updatePagerActive(slider.active.index); }
			// // check for direction control update
			if(slider.settings.controls){ updateDirectionControls(); }
			// if slider is set to mode: "fade"
			if(slider.settings.mode === 'fade'){
				// if adaptiveHeight is true and next height is different from current height, animate to the new height
				if(slider.settings.adaptiveHeight && slider.viewport.height() !== getViewportHeight()){
					slider.viewport.animate({height: getViewportHeight()}, slider.settings.adaptiveHeightSpeed);
				}
				// fade out the visible child and reset its z-index value
				slider.children.filter(':visible').fadeOut(slider.settings.speed).css({zIndex: 0});
				// fade in the newly requested slide
				slider.children.eq(slider.active.index).css('zIndex', slider.settings.slideZIndex+1).fadeIn(slider.settings.speed, function(){
					$(this).css('zIndex', slider.settings.slideZIndex);
					updateAfterSlideTransition();
				});
			// slider mode is not "fade"
			}else{
				// if adaptiveHeight is true and next height is different from current height, animate to the new height
				if(slider.settings.adaptiveHeight && slider.viewport.height() !== getViewportHeight()){
					slider.viewport.animate({height: getViewportHeight()}, slider.settings.adaptiveHeightSpeed);
				}
				var moveBy = 0;
				var position = {left: 0, top: 0};
				var lastChild = null;
				// if carousel and not infinite loop
				if(!slider.settings.infiniteLoop && slider.carousel && slider.active.last){
					if(slider.settings.mode === 'horizontal'){
						// get the last child position
						lastChild = slider.children.eq(slider.children.length - 1);
						position = lastChild.position();
						// calculate the position of the last slide
						moveBy = slider.viewport.width() - lastChild.outerWidth();
					}else{
						// get last showing index position
						var lastShowingIndex = slider.children.length - slider.settings.minSlides;
						position = slider.children.eq(lastShowingIndex).position();
					}
					// horizontal carousel, going previous while on first slide (infiniteLoop mode)
				}else if(slider.carousel && slider.active.last && direction === 'prev'){
					// get the last child position
					var eq = slider.settings.moveSlides === 1 ? slider.settings.maxSlides - getMoveBy() : ((getPagerQty() - 1) * getMoveBy()) - (slider.children.length - slider.settings.maxSlides);
					lastChild = el.children('.bx-clone').eq(eq);
					position = lastChild.position();
				// if infinite loop and "Next" is clicked on the last slide
				}else if(direction === 'next' && slider.active.index === 0){
					// get the last clone position
					position = el.find('> .bx-clone').eq(slider.settings.maxSlides).position();
					slider.active.last = false;
				// normal non-zero requests
				}else if(slideIndex >= 0){
					var requestEl = slideIndex * getMoveBy();
					position = slider.children.eq(requestEl).position();
				}

				
				/* If the position doesn't exist
				 * (e.g. if you destroy the slider on a next click),
				 * it doesn't throw an error.
				 */
				if("undefined" !== typeof(position)){
					var value = slider.settings.mode === 'horizontal' ? -(position.left - moveBy) : -position.top;
					// plugin values to be animated
					setPositionProperty(value, 'slide', slider.settings.speed);
				}
			}
		};

		/**
		 * Transitions to the next slide in the show
		 */
		el.goToNextSlide = function(){
			// if infiniteLoop is false and last page is showing, disregard call
			if(!slider.settings.infiniteLoop && slider.active.last){ return; }
			var pagerIndex = parseInt(slider.active.index) + 1;
			el.goToSlide(pagerIndex, 'next');
		};

		/**
		 * Transitions to the prev slide in the show
		 */
		el.goToPrevSlide = function(){
			// if infiniteLoop is false and last page is showing, disregard call
			if(!slider.settings.infiniteLoop && slider.active.index === 0){ return; }
			var pagerIndex = parseInt(slider.active.index) - 1;
			el.goToSlide(pagerIndex, 'prev');
		};

		/**
		 * Starts the auto show
		 *
		 * @param preventControlUpdate (boolean)
		 *  - if true, auto controls state will not be updated
		 */
		el.startAuto = function(preventControlUpdate){
			// if an interval already exists, disregard call
			if(slider.interval){ return; }
			// create an interval
			slider.interval = setInterval(function(){
				if(slider.settings.autoDirection === 'next'){ 
					el.goToNextSlide(); 
				}else{
					el.goToPrevSlide();
				}
			}, slider.settings.pause);
			// if auto controls are displayed and preventControlUpdate is not true
			if(slider.settings.autoControls && preventControlUpdate !== true){ updateAutoControls('stop'); }
		};

		/**
		 * Stops the auto show
		 *
		 * @param preventControlUpdate (boolean)
		 *  - if true, auto controls state will not be updated
		 */
		el.stopAuto = function(preventControlUpdate){
			// if no interval exists, disregard call
			if(!slider.interval){ return; }
			// clear the interval
			clearInterval(slider.interval);
			slider.interval = null;
			// if auto controls are displayed and preventControlUpdate is not true
			if(slider.settings.autoControls && preventControlUpdate !== true){ updateAutoControls('start'); }
		};

		/**
		 * Returns current slide index (zero-based)
		 */
		el.getCurrentSlide = function(){
			return slider.active.index;
		};

		/**
		 * Returns current slide element
		 */
		el.getCurrentSlideElement = function(){
			return slider.children.eq(slider.active.index);
		};

		/**
		 * Returns number of slides in show
		 */
		el.getSlideCount = function(){
			return slider.children.length;
		};

		/**
		 * Return slider.working variable
		 */
		el.isWorking = function() {
			return slider.working;
		}

		/**
		 * Update all dynamic slider elements
		 */
		el.redrawSlider = function(){
			// resize all children in ratio to new screen size
			slider.children.add(el.find('.bx-clone')).outerWidth(getSlideWidth());
			// adjust the height
			slider.viewport.css('height', getViewportHeight());
			// update the slide position
			if(!slider.settings.ticker) { setSlidePosition(); }                 
			// if active.last was true before the screen resize, we want
			// to keep it last no matter what screen size we end on
			if (slider.active.last) { slider.active.index = getPagerQty() - 1; }
			// if the active index (page) no longer exists due to the resize, simply set the index as last
			if (slider.active.index >= getPagerQty()) { slider.active.last = true; }
			// if a pager is being displayed and a custom pager is not being used, update it
			if(slider.settings.pager && !slider.settings.pagerCustom){
				populatePager();
				updatePagerActive(slider.active.index);
			}
		};

		/**
		 * Destroy the current instance of the slider (revert everything back to original state)
		 */
		el.destroySlider = function(){
			// don't do anything if slider has already been destroyed
			if(!slider.initialized){ return; }
			slider.initialized = false;
			$('.bx-clone', this).remove();
			slider.children.each(function(){
				if($(this).data("origStyle") !== undefined){
					$(this).attr("style", $(this).data("origStyle"));
				} else {
					$(this).removeAttr('style');
				}
			});
			if($(this).data("origStyle") !== undefined){
				this.attr("style", $(this).data("origStyle"));
			} else {
				$(this).removeAttr('style');
			}
			$(this).unwrap().unwrap();
			if(slider.controls.el){ slider.controls.el.remove(); }
			if(slider.controls.next){ slider.controls.next.remove(); }
			if(slider.controls.prev){ slider.controls.prev.remove(); }
			if(slider.pagerEl && slider.settings.controls && !slider.settings.pagerCustom){ slider.pagerEl.remove(); }
			$('.bx-caption', this).remove();
			if(slider.controls.autoEl){ slider.controls.autoEl.remove(); }
			clearInterval(slider.interval);
			if(slider.settings.responsive){ $(window).unbind('resize', resizeWindow); }
			if(slider.settings.keyboardEnabled){ $(document).unbind('keydown', keyPress); }
		};

		/**
		 * Reload the slider (revert all DOM changes, and re-initialize)
		 */
		el.reloadSlider = function(settings){
			if(settings !== undefined){ options = settings; }
			el.destroySlider();
			init();
		};

		init();

		// returns the current jQuery object
		return this;
	};

})(jQuery);

$(document).ready(function(){ 
    $('.bxSliders').bxSlider({
        slideWidth: 1170,
        minSlides: 1,
        controls: false,
        // moveSlides: 1,
        // startSlide: 2,
        // maxSlides: 10,
        // slideMargin: 10
        
//        nextSelector: '#slider-next',
//        prevSelector: '#slider-prev',
//        nextText: 'Onward →',
//         prevText: '← Go back'
    }); 
    
    if($('.slider-ipad').length) {
        $('.slider-ipad').bxSlider({
            slideWidth: 385,
            minSlides: 1,
            controls: true,
            // moveSlides: 1,
            // startSlide: 2,
            // maxSlides: 10,
            // slideMargin: 10
            nextSelector: '#slider-next',
            prevSelector: '#slider-prev',
            nextText: '',
            prevText: '',
            
//            buildPager: null,
//            pagerCustom: true,
        }); 
    }
});
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function isset(element) {
    if(typeof element != 'undefined') {
        return element.length > 0;
    } else
        return false;
}

/*
 * parce url
 **/
function parseUrlQuery() {
    var data = {};
    if(location.search) {
        var pair = (location.search.substr(1)).split('&');
        for(var i = 0; i < pair.length; i ++) {
            var param = pair[i].split('=');
            data[param[0]] = param[1];
        }
    }
    return data;
}

/*
 * parce string serilize
 **/
function parseQuery( str ) {
    var data = {};
    if(typeof str == 'string') {
        var pair = (str).split('&');
        for(var i = 0; i < pair.length; i ++) {
            var param = pair[i].split('=');
            data[param[0]] = param[1];
        }
    } else if(typeof str == 'object') {
        $.each(str, function(_k, _val) {
            if(_val.name)
                data[ _val.name ] = (_val.value) ? _val.value : null;
        });
    }
    return data;
}

/*
 * Ajax function.
 * return json result
 **/
function getAjaxForm(path, params, options) {
  
    if(!options) options = {};
    
    var settings = $.extend( {
        'dataType': 'json',
        'async': false,
        'crossDomain': false,
        'type': 'POST',
        'cache': true
    }, options || {});
    
    console.log( settings );
    
    if(!path) {
        console.log('enter url AJAX!');
        return null;
    }
    var res = $.ajax({
                    url: path,
                    dataType: settings.dataType,
                    async: settings.async,
                    crossDomain: settings.crossDomain,
                    type: settings.type,
                    cache: settings.cache,
                    success: function() {
                        
                    },
                    complete: function(){
                    },
                    data: {
                        params: params 
                    }
		}).responseText;
                
    console.log(res);            
                
    res = eval('['+res+']');
    var obj = res[0];
    return obj;
}

/*
 * JSONP
 * 
 */
function _getAJAX( path, params, options ) {
   if(!options) options = {};
    
    var settings = $.extend( {
        'dataType': 'jsonp',
        'jsonp': "callback",
        'async': false,
        'crossDomain': false,
        'type': 'POST',
        'cache': true
    }, options || {});
    
    console.log( settings );
    
    if(!path) {
        console.log('enter url AJAX!');
        return null;
    }   

    return $.ajax({ 
        type: settings.type,
        async: settings.async,
        url: path,
        data: { 
           params: params 
        },
        dataType: settings.dataType,
        jsonp: settings.jsonp,
        crossDomain: settings.crossDomain,
        cache: settings.cache,
    });
}
$(document).ready(function(){ 
    var _email = new String($(".box-form-subscribe > form input.email").attr("name"));
    $('.box-form-subscribe > form').validate({
        onfocusout: false,
        onkeyup: false,
        onclick: true,
        onsubmit: true,
        focusInvalid: false,
        focusCleanup: false,        
        _email: {
            required: true,
            email: true
        },
        messages: {
            _email: {
                required: 'The Email field is empty',
                email: 'We’ll never share your email adress and you can opt out at any time, we promise.'
            }
        },

        errorClass: 'block-error',
        validClass: 'success',
        invalidHandler: function(event, validator) {
            if($('.box-form-subscribe > form .block-error').length)
                $('.box-form-subscribe > form .block-error').html( ' ' ).hide();
        },
        // управление ошибками
        showErrors: function(errorMap, errorList) {
            var msg = '';
            $.each(errorList, function(){
                if(this.message) 
                    msg += this.message + '<br />'; 
             });

            if(msg !== '') 
                $('.box-form-subscribe > form .block-error').html(msg).show();
        },
    });
});    