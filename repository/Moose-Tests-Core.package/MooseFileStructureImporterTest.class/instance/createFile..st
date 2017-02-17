setup
createFile: aString
	self toDelete addFirst: aString.
	^ (self filesystem open: aString writable: true)