enumerating
on: aNodeSet ancestorOrSelfAxis: aNodeTestStringOrBlock predicates: aPredicateCollection
	| copy nodeTest |

	aNodeSet size > 0
		ifFalse: [^ aNodeSet copyEmpty].

	nodeTest := aNodeTestStringOrBlock asXPathNodeTest.
	copy :=
		(aNodeSet at: 1)
			ancestorOrSelfAxis: nodeTest
			predicates: aPredicateCollection.
	2 to: aNodeSet size do: [:i |
		((aNodeSet at: i)
			ancestorOrSelfAxis: nodeTest
			predicates: aPredicateCollection)
				addAllIfNotPresentTo: copy].
	^ copy.