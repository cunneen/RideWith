Template.home.rendered = () ->
	s = new skrollr.init({smoothScrolling: false})
	s.refresh()
	new WOW({
      mobile:       false
    }).init()