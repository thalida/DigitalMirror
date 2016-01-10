'use strict'

route = ($stateProvider, $urlRouterProvider, $locationProvider) ->
	'ngInject'
	$urlRouterProvider.otherwise('/')
	$locationProvider.html5Mode(false)

	return

module.exports = route
