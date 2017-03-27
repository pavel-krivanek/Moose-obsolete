enumerating
on: aNodeSet followingAxis: aNodeTestStringOrBlock predicates: aPredicateCollection
	| copy nodeTest |

	aNodeSet isEmpty
		ifTrue: [^ aNodeSet copyEmpty].
	nodeTest := aNodeTestStringOrBlock asXPathNodeTest.
	copy :=
		aNodeSet first
			followingAxis: nodeTest
			predicates: aPredicateCollection.
	aNodeSet allButFirstDo: [:each |
		(each
			followingAxis: nodeTest
			predicates: aPredicateCollection)
				addAllIfNotPresentTo: copy].
	^ copy.