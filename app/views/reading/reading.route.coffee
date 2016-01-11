'use strict'

route = ($stateProvider) ->
	$stateProvider.state('base.reading', {
		url: '/reading'
		templateUrl: 'views/reading/reading.html'
		controller: 'ReadingController as reading'
	})

module.exports = route
