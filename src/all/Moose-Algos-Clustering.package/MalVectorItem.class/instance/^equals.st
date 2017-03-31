accessing
= anObject
	
	^super = anObject
		or: [(anObject isKindOf: MalVectorItem) and: [self item = anObject item]]