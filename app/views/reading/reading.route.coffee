'use strict'

route = ($stateProvider) ->
	'pngInject'

	$stateProvider.state('base.reading', {
		url: '/reading'
		templateUrl: 'views/reading/reading.html'
		controller: 'ReadingController as reading'
	})

module.exports = route
