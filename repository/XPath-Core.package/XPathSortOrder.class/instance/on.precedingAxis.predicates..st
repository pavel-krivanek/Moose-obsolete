enumerating
on: aNodeSet precedingAxis: aNodeTestStringOrBlock predicates: aPredicateCollection
	| copy nodeTest |

	aNodeSet size > 0
		ifFalse: [^ aNodeSet copyEmpty].

	nodeTest := aNodeTestStringOrBlock asXPathNodeTest.
	copy :=
		(aNodeSet at: 1)
			precedingAxis: nodeTest
			predicates: aPredicateCollection.
	2 to: aNodeSet size do: [:i |
		((aNodeSet at: i)
			precedingAxis: nodeTest
			predicates: aPredicateCollection)
				addAllIfNotPresentTo: copy].
	^ copy.