'use strict'

ClockService = ( $interval ) ->
	'pngInject'

	class Clock
		constructor: ( opts ) ->
			@defaults =
				time24: true
				format: ['hours', 'minutes']
				seperator: ':'

			@config = angular.extend({}, @defaults, opts)

		start: () ->
			@tick()
			@interval = $interval(@tick, 250)
			return

		tick: () =>
			@time = new Date
			hours = @time.getHours()
			minutes = @time.getMinutes()
			seconds = @time.getSeconds()
			milliseconds = @time.getMilliseconds()

			@hours = @zeroPad( hours )
			@minutes = @zeroPad( minutes )
			@seconds = @zeroPad( seconds )
			@milliseconds = @zeroPad( milliseconds )

			@config.onTick?( @time )

			return

		zeroPad: ( int ) ->
			return (if int < 10 then '0' else '' ) + int

module.exports = ClockService
