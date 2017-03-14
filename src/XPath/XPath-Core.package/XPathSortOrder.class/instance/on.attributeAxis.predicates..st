enumerating
on: aNodeSet attributeAxis: aNodeTestStringOrBlock predicates: aPredicateCollection
	| copy attributeAxisNodeTest |

	aNodeSet size > 0
		ifFalse: [^ aNodeSet copyEmpty].

	attributeAxisNodeTest := aNodeTestStringOrBlock asXPathAttributeAxisNodeTest.
	copy :=
		(aNodeSet at: 1)
			attributeAxis: attributeAxisNodeTest
			predicates: aPredicateCollection.
	2 to: aNodeSet size do: [:i |
		((aNodeSet at: i)
			attributeAxis: attributeAxisNodeTest
			predicates: aPredicateCollection)
				addAllTo: copy].
	^ copy.