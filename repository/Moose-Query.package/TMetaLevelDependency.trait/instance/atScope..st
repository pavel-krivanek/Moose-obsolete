scoping
atScope: aClassFAMIX
	^ ((self class = aClassFAMIX or: [ self class inheritsFrom: aClassFAMIX ])
		ifTrue: [ self asCollection ]
		ifFalse: [ self class parentSelectors
				select: [ :sel | (self perform: sel) isNotNil ]
				thenCollect: [ :sel | (self perform: sel) atScope: aClassFAMIX ] ]) flattened