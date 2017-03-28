accessing
byName: name ifAbsent: exceptionBlock

	^values
			detect: [ :each | each name asString = name asString ]
			ifNone: exceptionBlock
	 