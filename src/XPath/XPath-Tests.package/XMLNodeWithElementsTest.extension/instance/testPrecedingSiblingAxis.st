*XPath-Tests
testPrecedingSiblingAxis
	| nodeWithElements |

	super testPrecedingSiblingAxis.

	nodeWithElements := self newNodeWithElements.
	nodeWithElements allNodesDo: [:each | | result precedingSiblings |
		result := each <<< 'node()'.
		precedingSiblings :=
			each hasParent
				ifTrue: [each parent nodes copyUpTo: each]
				ifFalse: [self newNodeSet].
		self
			assertNodeSet: result
			hasNodes: precedingSiblings.
		self
			assertNodeSet: result
			hasSortOrder: XPathLevelDocumentSortOrder.

		result := each <<< '*'.
		self
			assertNodeSet: result
			hasNodes: precedingSiblings elements.
		self
			assertNodeSet: result
			hasSortOrder: XPathLevelDocumentSortOrder].