accessing
width
	width ifNil: [ width := self box width round: 2 ].
	^ width