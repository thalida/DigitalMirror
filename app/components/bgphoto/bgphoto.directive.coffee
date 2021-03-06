'use strict'

require 'assets/images/sunset-1.jpeg'
require 'assets/images/night-1.jpeg'

angular.module('app').directive 'bgphoto', ( $rootScope, $state ) ->
	'ngInject'

	restrict: 'E'
	templateUrl: 'components/bgphoto/bgphoto.html'
	scope: {}
	bindToController:
		size: '@?'
		position: '@?'
	controllerAs: 'bgphoto'
	controller: ['$element', '$attrs', ( $el, attrs ) ->
		@style =
			'background-image': 'url(assets/images/sunset-1.jpeg)'

		return
	]
