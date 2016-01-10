'use strict'

require '../../components/menu'

require './base.scss'
require './base.html'

module.exports = angular.module('app.base', [])
	.config( require './base.route.coffee' )
	.controller('BaseController', require './base.controller.coffee')
