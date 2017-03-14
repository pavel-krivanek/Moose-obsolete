*XPath-Tests
testAncestorAxis
	| nodeWithElements |

	super testAncestorAxis.

	nodeWithElements := self newNodeWithElements.
	nodeWithElements allNodesDo: [:each | | list |
		list := each %% 'node()'.
		self
			assert: list = each ancestorNodes;
			assertList: list hasSortOrder: XPathReverseDocumentSortOrder.

		list := each %% '*'.
		self
			assert: list = each ancestorElements;
			assertList: list hasSortOrder: XPathReverseDocumentSortOrder].