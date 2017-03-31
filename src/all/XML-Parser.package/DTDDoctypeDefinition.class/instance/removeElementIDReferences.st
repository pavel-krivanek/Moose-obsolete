removing
removeElementIDReferences
	self hasElementIDReferences
		ifTrue: [self elementIDValidator removeIDReferences]