accessing
totalPredicates
	^ predicates
		ifNil: [0]
		ifNotNil: [predicates size]