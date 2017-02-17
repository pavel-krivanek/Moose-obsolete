enumerating
on: aNodeSet precedingSiblingAxis: aNodeTestStringOrBlock predicates: aPredicateCollection
	| copy nodeTest |

	aNodeSet size > 0
		ifFalse: [^ aNodeSet copyEmpty].

	nodeTest := aNodeTestStringOrBlock asXPathNodeTest.
	copy :=
		(aNodeSet at: 1)
			precedingSiblingAxis: nodeTest
			predicates: aPredicateCollection.
	2 to: aNodeSet size do: [:i |
		((aNodeSet at: i)
			precedingSiblingAxis: nodeTest
			predicates: aPredicateCollection)
				addAllIfNotPresentTo: copy].
	^ copy.