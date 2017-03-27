enumerating
on: aNodeSet namespaceAxis: aNodeTestStringOrBlock
	| copy namespaceAxisNodeTest |

	aNodeSet isEmpty
		ifTrue: [^ aNodeSet copyEmpty].
	namespaceAxisNodeTest := aNodeTestStringOrBlock asXPathNamespaceAxisNodeTest.
	copy := aNodeSet first namespaceAxis: namespaceAxisNodeTest.
	aNodeSet allButFirstDo: [:each |
		each
			namespaceAxisSelect: namespaceAxisNodeTest
			into: copy].
	^ copy.