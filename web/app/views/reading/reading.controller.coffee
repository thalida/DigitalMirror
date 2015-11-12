'use strict'

app.controller 'ReadingCtrl', ['CONFIG'
	(CONFIG) ->
		@view = 'reading'
		console.log( CONFIG )

		return
]
