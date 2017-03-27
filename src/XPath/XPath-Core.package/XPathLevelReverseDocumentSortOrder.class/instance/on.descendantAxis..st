enumerating
on: aNodeSet descendantAxis: aNodeTestStringOrBlock
	| copy nodeTest |

	aNodeSet isEmpty
		ifTrue: [^ aNodeSet copyEmpty].
	nodeTest := aNodeTestStringOrBlock asXPathNodeTest.
	copy := aNodeSet last descendantAxis: nodeTest.
	aNodeSet allButLastReverseDo: [:each |
		each
			descendantAxisSelect: nodeTest
			into: copy].
	"will be in document order after, but not necessarily level document order"
	^ copy sortOrder: XPathDocumentSortOrder new.