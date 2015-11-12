'use strict'

require './app.scss'

window.app = angular.module 'app', [
	require 'angular-animate'
	require 'angular-sanitize'
	require 'angular-ui-router'
]

app.constant('CONFIG', require './app.config.coffee')

app.config([
	'$stateProvider'
	'$urlRouterProvider'
	($stateProvider, $urlRouterProvider) ->
		$urlRouterProvider.otherwise('/')
])

require './components/components.collection.coffee'
require './views/views.collection.coffee'
