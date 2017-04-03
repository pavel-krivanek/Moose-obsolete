private
emitArgumentSeparator
	self previousArgument isNull
		ifFalse: [self emitAll: ', ']