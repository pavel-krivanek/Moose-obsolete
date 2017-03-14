adding
addLast: anObject
	collection addLast: anObject.
	self afterAddingLast: anObject.
	^ anObject.