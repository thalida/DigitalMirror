'use strict'

angular
.module('app', [
	require 'angular-animate'
	require 'angular-sanitize'
	require 'angular-ui-router'

	'app.base'
	'app.mirror'
	'app.photo'
	'app.reading'
	'app.sleep'
])
.config( require './app.route.coffee' )
.constant( 'CONFIG', require './app.constant.coffee' )

require './views/base'
require './views/mirror'
require './views/photo'
require './views/reading'
require './views/sleep'
