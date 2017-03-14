drawing
capStyle: aStyle
	self assert: [ aStyle isNil or: [ #(capRound capButt capSquare) includes: aStyle ] ].
	capStyle := aStyle