enumerating
on: aNodeSet namespaceAxis: aNodeTestStringOrBlock
	| copy namespaceAxisNodeTest |

	aNodeSet size > 0
		ifFalse: [^ aNodeSet copyEmpty].

	namespaceAxisNodeTest := aNodeTestStringOrBlock asXPathNamespaceAxisNodeTest.
	copy := (aNodeSet at: 1) namespaceAxis: namespaceAxisNodeTest.
	2 to: aNodeSet size do: [:i |
		(aNodeSet at: i)
			namespaceAxisSelect: namespaceAxisNodeTest
			into: copy].
	^ copy.