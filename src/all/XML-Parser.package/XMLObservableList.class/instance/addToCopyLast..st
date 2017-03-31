private
addToCopyLast: anObject
	collection addLast: anObject.
	self afterAddingToCopyLast: anObject.
	^ anObject.