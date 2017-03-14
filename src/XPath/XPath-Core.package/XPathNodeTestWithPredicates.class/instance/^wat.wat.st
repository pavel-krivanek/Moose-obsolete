copying
?? aPredicateOrPredicateCollection
	^ self copy setPredicates:
		(aPredicateOrPredicateCollection isCollection
			ifTrue: [predicates, aPredicateOrPredicateCollection]
			ifFalse: [predicates copyWith: aPredicateOrPredicateCollection])