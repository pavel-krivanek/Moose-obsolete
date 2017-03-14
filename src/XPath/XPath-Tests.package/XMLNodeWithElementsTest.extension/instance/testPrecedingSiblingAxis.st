*XPath-Tests
testPrecedingSiblingAxis
	| nodeWithElements |

	super testPrecedingSiblingAxis.

	nodeWithElements := self newNodeWithElements.
	nodeWithElements allNodesDo: [:each | | list precedingSiblings |
		list := each <<< 'node()'.
		precedingSiblings :=
			each hasParent
				ifTrue: [(each parent nodes copyUpTo: each) reversed]
				ifFalse: [self newNodeSet].
		self
			assert: list = precedingSiblings;
			assertList: list hasSortOrder: XPathReverseDocumentSortOrder.

		list := each <<< '*'.
		self
			assert: list = precedingSiblings elements;
			assertList: list hasSortOrder: XPathReverseDocumentSortOrder].