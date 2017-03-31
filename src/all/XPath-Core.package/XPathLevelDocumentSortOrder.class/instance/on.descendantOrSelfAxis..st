enumerating
on: aNodeSet descendantOrSelfAxis: aNodeTestStringOrBlock
	| copy nodeTest |

	aNodeSet isEmpty
		ifTrue: [^ aNodeSet copyEmpty].
	nodeTest := aNodeTestStringOrBlock asXPathNodeTest.
	copy := aNodeSet first descendantOrSelfAxis: nodeTest.
	aNodeSet allButFirstDo: [:each |
		each
			descendantOrSelfAxisSelect: nodeTest
			into: copy].
	"will be in document order after, but not necessarily level document order"
	^ copy sortOrder: XPathDocumentSortOrder new.