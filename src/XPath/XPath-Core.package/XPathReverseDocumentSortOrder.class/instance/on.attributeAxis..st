enumerating
on: aNodeSet attributeAxis: aNodeTestStringOrBlock
	| copy attributeAxisNodeTest |

	aNodeSet size > 0
		ifFalse: [^ aNodeSet copyEmpty].

	attributeAxisNodeTest := aNodeTestStringOrBlock asXPathAttributeAxisNodeTest.
	copy := (aNodeSet at: aNodeSet size) attributeAxis: attributeAxisNodeTest.
	aNodeSet size - 1 to: 1 by: -1 do: [:i |
		(aNodeSet at: i)
			attributeAxisSelect: attributeAxisNodeTest
			into: copy].
	^ copy sortOrder: XPathDocumentSortOrder new.