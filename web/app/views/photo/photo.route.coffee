'use strict'

app.config([
	'$stateProvider'
	'$urlRouterProvider'
	($stateProvider, $urlRouterProvider) ->
		$stateProvider.state('base.photo', {
			url: '/photo'
			templateUrl: 'views/photo/photo.html'
			controller: 'PhotoCtrl as photo'
		})
])
