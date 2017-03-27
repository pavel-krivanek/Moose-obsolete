enumerating
on: aNodeSet namespaceAxis: aNodeTestStringOrBlock
	| copy namespaceAxisNodeTest |

	aNodeSet isEmpty
		ifTrue: [^ aNodeSet copyEmpty].
	namespaceAxisNodeTest := aNodeTestStringOrBlock asXPathNamespaceAxisNodeTest.
	copy := aNodeSet last namespaceAxis: namespaceAxisNodeTest.
	aNodeSet allButLastReverseDo: [:each |
		each
			namespaceAxisSelect: namespaceAxisNodeTest
			into: copy].
	^ copy sortOrder: self asReversedSortOrder.