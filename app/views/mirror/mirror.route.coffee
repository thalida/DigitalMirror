'use strict'

route = ($stateProvider) ->
	'pngInject'

	$stateProvider.state('base.mirror', {
		url: '/mirror'
		templateUrl: 'views/mirror/mirror.html'
		controller: 'MirrorController as mirror'
	})

module.exports = route
