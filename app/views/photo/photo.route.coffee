'use strict'

route = ($stateProvider) ->
	$stateProvider.state('base.photo', {
		url: '/photo'
		templateUrl: 'views/photo/photo.html'
		controller: 'PhotoController as photo'
	})

module.exports = route
