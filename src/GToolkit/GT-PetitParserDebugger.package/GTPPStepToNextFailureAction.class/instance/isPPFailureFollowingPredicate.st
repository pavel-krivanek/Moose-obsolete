predicates
isPPFailureFollowingPredicate

	^ self session createPredicateForBlock: [ :aContext |
		aContext methodClass = PPFailure class and: [ 
			aContext selector = #message:context: ] ] 