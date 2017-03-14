predicates
notDelegateParserClassPredicate

	^ self createPredicateForBlock: [ :aContext |
		(self isPPParser: aContext receiver) and: [ 
			aContext receiver class ~= PPDelegateParser ] ]