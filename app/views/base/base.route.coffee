'use strict'

route = ($stateProvider, $urlRouterProvider) ->
	$stateProvider.state('base', {
		url: ''
		templateUrl: 'views/base/base.html'
		controller: 'BaseController as base'
		abstract: true
	})

	$urlRouterProvider.when( '/', '/photo' )

	return

module.exports = route
