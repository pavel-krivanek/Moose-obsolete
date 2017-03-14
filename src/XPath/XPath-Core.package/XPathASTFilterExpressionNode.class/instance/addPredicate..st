adding
addPredicate: aPredicate
	^ self predicates addLast: (self beParentOf: aPredicate)