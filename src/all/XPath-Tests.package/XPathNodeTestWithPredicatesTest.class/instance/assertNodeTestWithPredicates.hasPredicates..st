asserting
assertNodeTestWithPredicates: aNodeTestWithPredicates hasPredicates: aPredicateOrPredicateCollection
	self assert:
		aNodeTestWithPredicates predicates asArray =
			(aPredicateOrPredicateCollection isCollection
				ifTrue: [aPredicateOrPredicateCollection asArray]
				ifFalse: [Array with: aPredicateOrPredicateCollection])