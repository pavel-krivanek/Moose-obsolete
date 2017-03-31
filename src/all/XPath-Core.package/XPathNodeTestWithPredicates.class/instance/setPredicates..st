initialization
setPredicates: aPredicateOrPredicateCollection
	predicates :=
		aPredicateOrPredicateCollection isArray
			ifTrue: [aPredicateOrPredicateCollection]
			ifFalse: [
				aPredicateOrPredicateCollection isCollection
					ifTrue: [
						"avoid #newFrom: for portability"
						Array withAll: aPredicateOrPredicateCollection]
					ifFalse: [Array with: aPredicateOrPredicateCollection]].