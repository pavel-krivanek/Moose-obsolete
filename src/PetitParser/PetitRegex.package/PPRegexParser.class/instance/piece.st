grammar
piece
	^ atom , (self zeroOrOnePiece /  self zeroOrMorePiece / self oneOrMorePiece / self rangePiece) optional map: [ :at :op |
		op isNil
			ifTrue: [ at ]
			ifFalse: [ op setParser: at ] ]