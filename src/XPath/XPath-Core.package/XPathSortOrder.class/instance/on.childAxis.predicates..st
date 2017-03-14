enumerating
on: aNodeSet childAxis: aNodeTestStringOrBlock predicates: aPredicateCollection
	| copy nodeTest |

	aNodeSet size > 0
		ifFalse: [^ aNodeSet copyEmpty].

	nodeTest := aNodeTestStringOrBlock asXPathNodeTest.
	copy :=
		(aNodeSet at: 1)
			childAxis: nodeTest
			predicates: aPredicateCollection.
	2 to: aNodeSet size do: [:i |
		((aNodeSet at: i)
			childAxis: nodeTest
			predicates: aPredicateCollection)
				addAllTo: copy].
	^ copy.