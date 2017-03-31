setup
createDirectory: aString
	self toDelete addFirst: aString.
	^ (self filesystem ensureCreateDirectory: (self filesystem pathFromString: aString))