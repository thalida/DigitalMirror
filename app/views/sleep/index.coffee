'use strict'

require '../../components/datetime'

require './sleep.scss'
require './sleep.html'

module.exports = angular.module('app.sleep', [])
	.config( require './sleep.route.coffee' )
	.controller('SleepController', require './sleep.controller.coffee')
