enumerating
on: aNodeSet attributeAxis: aNodeTestStringOrBlock predicates: aPredicateCollection
	| copy attributeAxisNodeTest |

	aNodeSet isEmpty
		ifTrue: [^ aNodeSet copyEmpty].
	attributeAxisNodeTest := aNodeTestStringOrBlock asXPathAttributeAxisNodeTest.
	copy :=
		aNodeSet last
			attributeAxis: attributeAxisNodeTest
			predicates: aPredicateCollection.
	aNodeSet allButLastReverseDo: [:each |
		(each
			attributeAxis: attributeAxisNodeTest
			predicates: aPredicateCollection)
				addAllTo: copy].
	^ copy sortOrder: self asReversedSortOrder.