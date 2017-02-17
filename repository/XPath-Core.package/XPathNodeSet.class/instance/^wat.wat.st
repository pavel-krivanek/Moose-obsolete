enumerating
?? aPredicateOrPredicateCollection
	^ aPredicateOrPredicateCollection isCollection
		ifTrue: [self sorted filterWithAll: aPredicateOrPredicateCollection]
		ifFalse: [self sorted filterWith: aPredicateOrPredicateCollection]