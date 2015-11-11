'use strict'

app.config([
	'$stateProvider'
	'$urlRouterProvider'
	($stateProvider, $urlRouterProvider) ->
		$stateProvider.state('main', {
			url: '/main'
			templateUrl: 'views/main/main.html'
			controller: 'MainCtrl as main'
		})
])
