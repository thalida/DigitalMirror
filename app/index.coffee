'use strict'

require 'angular'
require './app.scss'
require './app.module.coffee'

isAppBootstrapped = angular.element($('.app')).scope()
if !isAppBootstrapped?
	angular.bootstrap(document, ['app'])
