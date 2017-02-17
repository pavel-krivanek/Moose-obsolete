visiting - functions
visitArgument: anArgument
	self previousArgument isNull
		ifFalse: [self emitAll: ', '].
	^ super visitArgument: anArgument.