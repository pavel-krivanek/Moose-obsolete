predicates creation
createStepPredicateForPredicate: aPredicate 

	^ (self createPredicateForBlock: [ self isActive not ]) or: aPredicate
	