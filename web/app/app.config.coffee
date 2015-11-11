'use strict'

window.app = angular.module 'app', [
	require 'angular-animate'
	require 'angular-sanitize'
	require 'angular-ui-router'
]

# require './views/components.collection.coffee'
require './views/views.collection.coffee'

app.config([
	'$stateProvider'
	'$urlRouterProvider'
	($stateProvider, $urlRouterProvider) ->
		$urlRouterProvider.otherwise('/main')
])
