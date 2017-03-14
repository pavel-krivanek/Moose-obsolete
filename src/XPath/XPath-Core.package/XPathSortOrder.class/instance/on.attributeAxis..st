enumerating
on: aNodeSet attributeAxis: aNodeTestStringOrBlock
	| copy attributeAxisNodeTest |

	aNodeSet size > 0
		ifFalse: [^ aNodeSet copyEmpty].

	attributeAxisNodeTest := aNodeTestStringOrBlock asXPathAttributeAxisNodeTest.
	copy := (aNodeSet at: 1) attributeAxis: attributeAxisNodeTest.
	2 to: aNodeSet size do: [:i |
		(aNodeSet at: i)
			attributeAxisSelect: attributeAxisNodeTest
			into: copy].
	^ copy.