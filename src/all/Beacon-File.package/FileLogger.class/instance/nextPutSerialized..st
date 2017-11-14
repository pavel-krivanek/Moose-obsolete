accessing
nextPutSerialized: aString
	super nextPutSerialized: aString.
	self stream nextPutAll: self lineSeparator 