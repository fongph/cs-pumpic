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
// авто-гритинг чата.


var LC_API = LC_API || {};
function _LC_OPEN() {
    LC_API.open_chat_window();
}

// LC_API.on_after_load = function()
LC_API.on_before_load = function()
{
    
    if(!LC_API.chat_window_maximized()) {
        setTimeout( _LC_OPEN, 1000*60*10); // 1000 - 1cек.
    }
    
//	if(LC_API.chat_window_maximized()) {
//            // LC_API.hide_chat_window();
//            LC_API.minimize_chat_window();
//        }
};

LC_API.on_after_load = function() {
      //  LC_API.close_chat();
    if(LC_API.chat_window_maximized()) {
//            // LC_API.hide_chat_window();
            LC_API.minimize_chat_window();
        }
}

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
        
        // ga form
        // вариант 1
//        ga(function(tracker) {
//          var linkerParam = tracker.get('linkerParam');
//          console.log( linkerParam );
//        });

       if($('form[name="price_premium_bottom"], form[name="price_basic_bottom"], form[name="price_premium"], form[name="price_basic"]').length) {
        $('form[name="price_premium_bottom"], form[name="price_basic_bottom"], form[name="price_premium"], form[name="price_basic"]').submit(function(){
            ga('linker:decorate', this);
        });
       }
});

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
              parent = $(this).closest('.wp-caption'), 
              _caption_text = parent.find('.wp-caption-text'),
                _src = $(this).attr('src'),
                height = $(this).attr('height'),
                outer_width = $(this).outerWidth(true),
                parent_outer_width = parent.outerWidth(true);
          
          $(this).attr('attr-width', width).removeAttr('width');
          $(this).attr('attr-height', height).removeAttr('height');
          //$(this).attr('src', '');
          
          // console.log(width, height);
          
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
          
          //console.log(' ---- Start width -------- ');
          //console.log(parent_outer_width, outer_width);
          //console.log( '-------- end ---------' );
          
          if(_caption_text.length) {
              if(parent_outer_width > 0) {
                _caption_text.css({
                  'width': '100%',  
                  'max-width': parent_outer_width+'px',
                });
              } else if(outer_width > 0) {
                 _caption_text.css({
                     'width': '100%',
                    'max-width': outer_width+'px',
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
                _attachmentW = $(this).closest('#attachment').outerWidth(true),
                _width = $(this).width(),
                _attrW = $(this).attr('attr-width');

          if(_caption.find('.wp-caption-text').length)
            _caption.find('.wp-caption-text').css({
                'width': width+'px',
            });
            
      });
    }  
});
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

//$(function() {
//    
//	$('._forward_pricing').on("click",function(){
//            _ga_generated( $(this) );   
//            // redirect store
//            document.location = domain + '/store.html';	
//	});
//        
//        $('.ga-click').on('click', function(event) {
//            //event.preventDefault();
//            _ga_generated( $(this) );
//            //return true;
//        });
//
//});
//
//function _ga_generated( $(this) ) {
//    var _ga_label_button = false,
//        _ga_type_button = false,
//        _ga_event = false;
//
//    _ga_event = ($(this).attr('ga-event')) ? $(this).attr('ga-event') : false;
//    _ga_type_button = ($(this).attr('ga-type-button')) ? $(this).attr('ga-type-button') : 'buy button';
//    _ga_label_button = ($(this).attr('ga-label-button')) ? $.trim( $(this).attr('ga-label-button').toLowerCase() ).replace(/\s/g,'-') : false;
//
//    if(_ga_event && _ga_type_button && _ga_label_button) {
//        ga('send', 'event', _ga_type_button, _ga_event, _ga_label_button);
//    } 
//}

function google_analitycs_click( category, action, label ) {
    if(action && category && label) {
        ga('send', 'event', category, action, label);
    }
}

function TrackEventGA(Category, Action, Label, Value) {
    "use strict";
    if (typeof (_gaq) !== "undefined") {
        _gaq.push(['_trackEvent', Category, Action, Label, Value]);
    } else if (typeof (ga) !== "undefined") {
        ga('send', 'event', Category, Action, Label, Value);
    }
}

$(function() {
    $('.ga-action-click').on('click', function() {
           var _ga_action = ($(this).attr('ga-action')) ? $(this).attr('ga-action') : false,
               _ga_category = ($(this).attr('ga-category')) ? $(this).attr('ga-category') : false,
               _ga_label = ($(this).attr('ga-label')) ? $.trim( $(this).attr('ga-label').toLowerCase() ).replace(/\s/g,'-') : false;
        
        if(_ga_action && _ga_category && _ga_label) {
            // ga('send', 'event', _ga_category, _ga_action, _ga_label);
            TrackEventGA(_ga_category, _ga_action, _ga_label);
        }
        
    });
    
    $('.ga-action-submit').on('click', function() { // closest('form'). submit
        var _b = $(this), _form = $(this).closest('form');  // .find('.ga-action-submit')
        var _ga_action = (_b.attr('ga-action')) ? _b.attr('ga-action') : false,
           _ga_category = (_b.attr('ga-category')) ? _b.attr('ga-category') : false,
           _ga_page = (_b.attr('ga-page')) ? _b.attr('ga-page') : '',
           _ga_label = (_b.attr('ga-label')) ? $.trim( _b.attr('ga-label').toLowerCase() ).replace(/\s/g,'-') : false;
        
        if(_ga_action && _ga_category && _ga_label) {
            ga('send', 'page', _ga_page);
            ga('send', 'pageview', _ga_page);
            // ga('set', 'referrer', 'http://pumpic.com');
            ga('send', 'event', _ga_category, _ga_action, _ga_label, {
                'page': _ga_page,
                '_trackPageview': _ga_page, 
                'hitCallback': function() {
                    _form.submit();
                }
            });

            return !(ga.hasOwnProperty('loaded') && ga.loaded === true);
        } else {
            return true;
        }
    });
    
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

