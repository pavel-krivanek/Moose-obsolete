*XPath-Tests
testDescendantAxis
	| nodeWithElements |

	super testDescendantAxis.

	nodeWithElements := self newNodeWithElements.
	nodeWithElements allNodesDo: [:each |
		each hasChildren
			ifTrue: [| list |
				list := each // 'node()'.
				self
					assert: list = each descendantNodes;
					assertList: list hasSortOrder: XPathDocumentSortOrder.

				list := each // '*'.
				self
					assert: list = each descendantElements;
					assertList: list hasSortOrder: XPathDocumentSortOrder]
			ifFalse: [
				self
					assert: (each // 'node()') isEmpty;
					assert: (each // '*') isEmpty]].