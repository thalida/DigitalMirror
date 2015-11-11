'use strict'

app.config([
	'$stateProvider'
	'$urlRouterProvider'
	($stateProvider, $urlRouterProvider) ->
		$stateProvider.state('base.mirror', {
			url: '/mirror'
			templateUrl: 'views/mirror/mirror.html'
			controller: 'MirrorCtrl as mirror'
		})
])
