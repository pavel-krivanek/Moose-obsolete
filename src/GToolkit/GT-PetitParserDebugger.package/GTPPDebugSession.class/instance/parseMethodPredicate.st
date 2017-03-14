predicates
parseMethodPredicate

	^ self createPredicateForBlock: [ :aContext |
			(self isPPParser: aContext receiver) and: [ 
				aContext selector = #parseOn: ] ]