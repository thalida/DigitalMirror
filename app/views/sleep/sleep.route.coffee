'use strict'

route = ($stateProvider) ->
	'pngInject'

	$stateProvider.state('base.sleep', {
		url: '/sleep'
		templateUrl: 'views/sleep/sleep.html'
		controller: 'SleepController as sleep'
	})

module.exports = route
