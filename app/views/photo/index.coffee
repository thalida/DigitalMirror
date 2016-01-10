'use strict'

require '../../components/bgphoto'
require '../../components/datetime'

require './photo.scss'
require './photo.html'

module.exports = angular.module('app.photo', [])
	.config( require './photo.route.coffee' )
	.controller('PhotoController', require './photo.controller.coffee')

