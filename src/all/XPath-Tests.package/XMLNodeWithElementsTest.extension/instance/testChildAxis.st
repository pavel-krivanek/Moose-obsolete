*XPath-Tests
testChildAxis
	| nodeWithElements |

	super testChildAxis.

	nodeWithElements := self newNodeWithElements.
	nodeWithElements allNodesDo: [:each |
		each hasChildren
			ifTrue: [| result |
				result := each / 'node()'.
				self
					assertNodeSet: result
					hasNodes: each nodes.
				self
					assertNodeSet: result
					hasSortOrder: XPathLevelDocumentSortOrder.

				result := each / '*'.
				self
					assertNodeSet: result
					hasNodes: each elements.
				self
					assertNodeSet: result
					hasSortOrder: XPathLevelDocumentSortOrder]
			ifFalse: [
				self
					assert: (each / 'node()') isEmpty;
					assert: (each / '*') isEmpty]].