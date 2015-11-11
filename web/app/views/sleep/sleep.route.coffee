'use strict'

app.config([
	'$stateProvider'
	'$urlRouterProvider'
	($stateProvider, $urlRouterProvider) ->
		$stateProvider.state('base.sleep', {
			url: '/sleep'
			templateUrl: 'views/sleep/sleep.html'
			controller: 'SleepCtrl as sleep'
		})
])
