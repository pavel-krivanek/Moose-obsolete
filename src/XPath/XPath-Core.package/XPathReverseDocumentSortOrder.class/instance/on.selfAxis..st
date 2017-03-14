enumerating
on: aNodeSet selfAxis: aNodeTestStringOrBlock
	| copy nodeTest |

	copy := aNodeSet copyEmpty.
	aNodeSet size > 0
		ifFalse: [^ copy].

	nodeTest := aNodeTestStringOrBlock asXPathNodeTest.
	aNodeSet size to: 1 by: -1 do: [:i |
		(aNodeSet at: i)
			selfAxisSelect: nodeTest
			into: copy].
	^ copy sortOrder: XPathDocumentSortOrder new.