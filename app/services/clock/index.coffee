'use strict'

angular
	.module('app')
	.service('Clock', require './clock.service.coffee')

module.exports = 'Clock'
