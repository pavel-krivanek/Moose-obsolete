enumerating
on: aNodeSet childAxis: aNodeTestStringOrBlock
	| copy nodeTest |

	aNodeSet isEmpty
		ifTrue: [^ aNodeSet copyEmpty].
	nodeTest := aNodeTestStringOrBlock asXPathNodeTest.
	copy := aNodeSet last childAxis: nodeTest.
	aNodeSet allButLastReverseDo: [:each |
		each
			childAxisSelect: nodeTest
			into: copy].
	^ copy sortOrder: self asReversedSortOrder.