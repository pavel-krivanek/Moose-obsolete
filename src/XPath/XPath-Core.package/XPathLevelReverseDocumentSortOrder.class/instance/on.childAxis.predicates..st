enumerating
on: aNodeSet childAxis: aNodeTestStringOrBlock predicates: aPredicateCollection
	| copy nodeTest |

	aNodeSet isEmpty
		ifTrue: [^ aNodeSet copyEmpty].
	nodeTest := aNodeTestStringOrBlock asXPathNodeTest.
	copy :=
		aNodeSet last
			childAxis: nodeTest
			predicates: aPredicateCollection.
	aNodeSet allButLastReverseDo: [:each |
		(each
			childAxis: nodeTest
			predicates: aPredicateCollection)
				addAllTo: copy].
	^ copy sortOrder: self asReversedSortOrder.