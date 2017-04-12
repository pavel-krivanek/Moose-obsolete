scoping
toScope: aClassFAMIX
	"I am used to return all the entities at a given famix class scope that are down in the containment tree of the metamodel"

	^ ((self class = aClassFAMIX or: [ self class inheritsFrom: aClassFAMIX ])
		ifTrue: [ self asCollection ]
		ifFalse: [ self childrenSelectors
				select: [ :sel | 
					| childAccessor |
					childAccessor := self perform: sel.
					childAccessor isNotNil and: [ childAccessor asCollection isNotEmpty ] ]
				thenCollect: [ :sel | 
					| childAccessor |
					childAccessor := self perform: sel.	"Halt now."
					childAccessor isCollection
						ifTrue: [ childAccessor flatCollect: [ :c | c toScope: aClassFAMIX ] ]
						ifFalse: [ childAccessor toScope: aClassFAMIX ] ] ]) flattened