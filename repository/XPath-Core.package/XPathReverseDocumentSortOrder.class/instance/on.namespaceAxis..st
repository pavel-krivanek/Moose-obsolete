enumerating
on: aNodeSet namespaceAxis: aNodeTestStringOrBlock
	| copy namespaceAxisNodeTest |

	aNodeSet size > 0
		ifFalse: [^ aNodeSet copyEmpty].

	namespaceAxisNodeTest := aNodeTestStringOrBlock asXPathNamespaceAxisNodeTest.
	copy := (aNodeSet at: aNodeSet size) namespaceAxis: namespaceAxisNodeTest.
	aNodeSet size - 1 to: 1 by: -1 do: [:i |
		(aNodeSet at: i)
			namespaceAxisSelect: namespaceAxisNodeTest
			into: copy].
	^ copy sortOrder: XPathDocumentSortOrder new.