predicates
sameParserObjectPredicate

	^ self session createPredicateForBlock: [ :aContext |
		aContext receiver == self parser ]