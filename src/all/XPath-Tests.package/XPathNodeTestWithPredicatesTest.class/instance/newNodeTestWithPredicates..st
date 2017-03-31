instance creation
newNodeTestWithPredicates: aPredicateOrPredicateCollection
	^ self classTested
		nodeTest: self nodeTest
		predicates: aPredicateOrPredicateCollection