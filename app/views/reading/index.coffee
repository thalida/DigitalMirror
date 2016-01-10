'use strict'

require './reading.scss'
require './reading.html'

module.exports = angular.module('app.reading', [])
	.config( require './reading.route.coffee' )
	.controller('ReadingController', require './reading.controller.coffee')
