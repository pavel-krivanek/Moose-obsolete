predicates
parseMethodEntryPredicate

	^ self createPredicateForBlock: [ :aContext |
			(self isPPParser: aContext receiver) and: [ 
				aContext selector = #parseOn: and: [ 
					aContext isInitialnstruction ] ] ]