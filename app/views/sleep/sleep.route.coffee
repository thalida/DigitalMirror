'use strict'

route = ($stateProvider) ->
	$stateProvider.state('base.sleep', {
		url: '/sleep'
		templateUrl: 'views/sleep/sleep.html'
		controller: 'SleepController as sleep'
	})

module.exports = route
