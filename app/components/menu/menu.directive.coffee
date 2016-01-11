'use strict'

angular.module('app').directive 'menu', ( $rootScope, $state ) ->
	restrict: 'E'
	templateUrl: 'components/menu/menu.html'
	scope: {}
	bindToController: {}
	controllerAs: 'menu'
	controller: ['$element', '$attrs', ( $el, attrs ) ->
		onRouteChange = () ->
			console.log( arguments )
			return

		$rootScope.$on('$stateChangeSuccess', onRouteChange)
	]
