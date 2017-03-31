scoping
toScope: aClassFAMIX
	^ ((self class = aClassFAMIX
		or: [ self class inheritsFrom: aClassFAMIX ])
		ifTrue: [ self asCollection ]
		ifFalse: [ self childrenSelectors
				select: [ :sel | 
					| childAccessor |
					childAccessor := self perform: sel.
					childAccessor isNotNil and: [ childAccessor isNotEmpty ] ]
				thenCollect: [ :sel | 
					| childAccessor |
					childAccessor := self perform: sel.	"Halt now."
					childAccessor isCollection
						ifTrue: [ childAccessor flatCollect: [ :c | c toScope: aClassFAMIX ] ]
						ifFalse: [ childAccessor toScope: aClassFAMIX ] ] ]) flattened