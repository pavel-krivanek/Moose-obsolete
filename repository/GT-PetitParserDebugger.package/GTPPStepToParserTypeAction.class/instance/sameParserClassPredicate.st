predicates
sameParserClassPredicate

	^ self session createPredicateForBlock: [ :aContext |
		aContext receiver class == self parserClass ]