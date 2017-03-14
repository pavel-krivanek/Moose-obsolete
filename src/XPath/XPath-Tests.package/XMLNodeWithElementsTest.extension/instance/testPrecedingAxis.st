*XPath-Tests
testPrecedingAxis
	| nodeWithElements |

	super testPrecedingAxis.

	nodeWithElements := self newNodeWithElements.
	nodeWithElements allNodesDo: [:each | | list precedingNodes |
		list := each << 'node()'.
		precedingNodes :=
			each hasParent
				ifTrue: [(each parent descendantNodes copyUpTo: each) reversed]
				ifFalse: [self newNodeSet].
		self
			assert: list = precedingNodes;
			assertList: list hasSortOrder: XPathReverseDocumentSortOrder.

		list := each << '*'.
		self
			assert: list = precedingNodes elements;
			assertList: list hasSortOrder: XPathReverseDocumentSortOrder].