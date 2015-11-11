'use strict'

app.config([
	'$stateProvider'
	'$urlRouterProvider'
	($stateProvider, $urlRouterProvider) ->
		$stateProvider.state('base.reading', {
			url: '/reading'
			templateUrl: 'views/reading/reading.html'
			controller: 'ReadingCtrl as reading'
		})
])
