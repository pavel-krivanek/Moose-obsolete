enumerating
on: aNodeSet parentAxis: aNodeTestStringOrBlock
	| copy nodeTest |

	copy := aNodeSet copyEmpty.
	aNodeSet size > 0
		ifFalse: [^ copy].

	nodeTest := aNodeTestStringOrBlock asXPathNodeTest.
	aNodeSet size to: 1 by: -1 do: [:i |
		(aNodeSet at: i)
			parentAxisSelect: nodeTest
			ifNotPresentInto: copy].
	"parent is a document order axis according to the spec"
	^ copy sortOrder: XPathDocumentSortOrder new.