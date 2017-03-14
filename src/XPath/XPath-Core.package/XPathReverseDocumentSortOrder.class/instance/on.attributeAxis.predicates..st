enumerating
on: aNodeSet attributeAxis: aNodeTestStringOrBlock predicates: aPredicateCollection
	| copy attributeAxisNodeTest |

	aNodeSet size > 0
		ifFalse: [^ aNodeSet copyEmpty].

	attributeAxisNodeTest := aNodeTestStringOrBlock asXPathAttributeAxisNodeTest.
	copy :=
		(aNodeSet at: aNodeSet size)
			attributeAxis: attributeAxisNodeTest
			predicates: aPredicateCollection.
	aNodeSet size - 1 to: 1 by: -1 do: [:i |
		((aNodeSet at: i)
			attributeAxis: attributeAxisNodeTest
			predicates: aPredicateCollection)
				addAllTo: copy].
	^ copy sortOrder: XPathDocumentSortOrder new.