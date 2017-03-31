enumerating
on: aNodeSet attributeAxis: aNodeTestStringOrBlock
	| copy attributeAxisNodeTest |

	aNodeSet isEmpty
		ifTrue: [^ aNodeSet copyEmpty].
	attributeAxisNodeTest := aNodeTestStringOrBlock asXPathAttributeAxisNodeTest.
	copy := aNodeSet last attributeAxis: attributeAxisNodeTest.
	aNodeSet allButLastReverseDo: [:each |
		each
			attributeAxisSelect: attributeAxisNodeTest
			into: copy].
	^ copy sortOrder: self asReversedSortOrder.