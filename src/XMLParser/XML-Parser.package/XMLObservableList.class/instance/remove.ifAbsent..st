removing
remove: anObject ifAbsent: aBlock
	collection remove: anObject ifAbsent: [^ aBlock value].
	self afterRemoving: anObject.
	^ anObject.