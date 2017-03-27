enumerating
on: aNodeSet precedingSiblingAxis: aNodeTestStringOrBlock predicates: aPredicateCollection
	| copy nodeTest |

	aNodeSet isEmpty
		ifTrue: [^ aNodeSet copyEmpty].
	nodeTest := aNodeTestStringOrBlock asXPathNodeTest.
	copy :=
		aNodeSet first
			precedingSiblingAxis: nodeTest
			predicates: aPredicateCollection.
	aNodeSet allButFirstDo: [:each |
		(each
			precedingSiblingAxis: nodeTest
			predicates: aPredicateCollection)
				addAllIfNotPresentTo: copy].
	^ copy.