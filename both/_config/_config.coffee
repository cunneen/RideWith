@Config =
	name: 'Ride With Me.'
	title: 'Ride With Me.'
	subtitle: '#IllRideWithYou'
	logo: ->
		'<b>' + @name + '</b>'
	footer: ->
		@name + ' - Copyright ' + new Date().getFullYear()
	emails:
		from: 'noreply@' + Meteor.absoluteUrl()
  blog: 'http://appshop.net.au'
  about: 'http://appshop.net.au'
  aboutText: 'The App Workshop'
	username: false
	homeRoute: '/'
	dashboardRoute: '/dashboard'
	socialMedia:
		facebook:
			url: 'http://facebook.com/cunneen'
			icon: 'facebook'
		twitter:
			url: 'http://twitter.com/app_workshop'
			icon: 'twitter'
		github:
			url: 'http://github.com/cunneen'
			icon: 'github'
	publicRoutes: ['home']