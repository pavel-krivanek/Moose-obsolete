scoping
atScope: aClassFAMIX
	"I am used to return all the entities at a given famix class scope that are up in the containment tree of the metamodel"

	^ ((self class = aClassFAMIX or: [ self class inheritsFrom: aClassFAMIX ])
		ifTrue: [ self asCollection ]
		ifFalse: [ self class parentSelectors select: [ :sel | (self perform: sel) isNotNil ] thenCollect: [ :sel | (self perform: sel) atScope: aClassFAMIX ] ])
		flattened