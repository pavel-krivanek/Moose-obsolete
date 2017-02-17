enumerating
on: aNodeSet followingAxis: aNodeTestStringOrBlock predicates: aPredicateCollection
	| copy nodeTest |

	aNodeSet size > 0
		ifFalse: [^ aNodeSet copyEmpty].

	nodeTest := aNodeTestStringOrBlock asXPathNodeTest.
	copy :=
		(aNodeSet at: 1)
			followingAxis: nodeTest
			predicates: aPredicateCollection.
	2 to: aNodeSet size do: [:i |
		((aNodeSet at: i)
			followingAxis: nodeTest
			predicates: aPredicateCollection)
				addAllIfNotPresentTo: copy].
	^ copy.