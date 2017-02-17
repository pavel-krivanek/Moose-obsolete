enumerating
on: aNodeSet namespaceAxis: aNodeTestStringOrBlock predicates: aPredicateCollection
	| copy namespaceAxisNodeTest |

	aNodeSet size > 0
		ifFalse: [^ aNodeSet copyEmpty].

	namespaceAxisNodeTest := aNodeTestStringOrBlock asXPathNamespaceAxisNodeTest.
	copy :=
		(aNodeSet at: 1)
			namespaceAxis: namespaceAxisNodeTest
			predicates: aPredicateCollection.
	2 to: aNodeSet size do: [:i |
		((aNodeSet at: i)
			namespaceAxis: namespaceAxisNodeTest
			predicates: aPredicateCollection)
				addAllTo: copy].
	^ copy.