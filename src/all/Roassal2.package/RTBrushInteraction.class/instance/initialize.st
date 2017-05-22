initialization
initialize
	super initialize.
	self highlightColor: [ :e | e trachelShape color ].
	self unhighlightColor: Color veryVeryLightGray trans.