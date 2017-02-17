predicates
namedProductionPredicate: anObject
	""
	
	^ self createPredicateForBlock: [ :aContext |
		(self isPPProduction: aContext receiver) and: [ 
			anObject isNil or: [ 
				aContext receiver name = anObject ] ] ]