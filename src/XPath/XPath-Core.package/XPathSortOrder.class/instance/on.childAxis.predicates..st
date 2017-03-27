enumerating
on: aNodeSet childAxis: aNodeTestStringOrBlock predicates: aPredicateCollection
	| copy nodeTest |

	aNodeSet isEmpty
		ifTrue: [^ aNodeSet copyEmpty].
	nodeTest := aNodeTestStringOrBlock asXPathNodeTest.
	copy :=
		aNodeSet first
			childAxis: nodeTest
			predicates: aPredicateCollection.
	aNodeSet allButFirstDo: [:each |
		(each
			childAxis: nodeTest
			predicates: aPredicateCollection)
				addAllTo: copy].
	^ copy.