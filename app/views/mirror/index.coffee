'use strict'

require '../../components/datetime'

require './mirror.scss'
require './mirror.html'

module.exports = angular.module('app.mirror', [])
	.config( require './mirror.route.coffee' )
	.controller('MirrorController', require './mirror.controller.coffee')

