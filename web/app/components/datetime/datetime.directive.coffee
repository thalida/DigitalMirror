'use strict'

require './clock.service.coffee'

app.directive 'datetime', [
	'$rootScope'
	'$state'
	'Clock'
	( $rootScope, $state, Clock ) ->
		restrict: 'E'
		templateUrl: 'components/datetime/datetime.html'
		scope: {}
		bindToController:
			size: '@?'
			position: '@?'
		controllerAs: 'datetime'
		controller: ['$element', '$attrs', ( $el, attrs ) ->
			updateDate = ( date ) ->
				@date =
					moment: moment( date )
					pretty: ''
					format: 'dddd, MMMM DD'

				@date.pretty = @date.moment.format( @date.format )

			@clock = new Clock(
				format: ['hours', 'minutes']
				onTick: updateDate.bind(@)
			)

			@clock.start()
		]
]
