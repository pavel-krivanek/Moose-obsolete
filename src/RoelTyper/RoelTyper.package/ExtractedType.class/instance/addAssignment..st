private-accessing
addAssignment: anObject
	(self assignments includes: anObject)
		ifFalse: [self assignments add: anObject]