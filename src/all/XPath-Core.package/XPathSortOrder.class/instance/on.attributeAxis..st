enumerating
on: aNodeSet attributeAxis: aNodeTestStringOrBlock
	| copy attributeAxisNodeTest |

	aNodeSet isEmpty
		ifTrue: [^ aNodeSet copyEmpty].
	attributeAxisNodeTest := aNodeTestStringOrBlock asXPathAttributeAxisNodeTest.
	copy := aNodeSet first attributeAxis: attributeAxisNodeTest.
	aNodeSet allButFirstDo: [:each |
		each
			attributeAxisSelect: attributeAxisNodeTest
			into: copy].
	^ copy.