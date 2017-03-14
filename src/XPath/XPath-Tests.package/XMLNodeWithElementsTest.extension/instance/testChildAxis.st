*XPath-Tests
testChildAxis
	| nodeWithElements |

	super testChildAxis.

	nodeWithElements := self newNodeWithElements.
	nodeWithElements allNodesDo: [:each |
		each hasChildren
			ifTrue: [| list |
				list := each / 'node()'.
				self
					assert: list = each nodes;
					assertList: list hasSortOrder: XPathDocumentSortOrder.

				list := each / '*'.
				self
					assert: list = each elements;
					assertList: list hasSortOrder: XPathDocumentSortOrder.]
			ifFalse: [
				self
					assert: (each / 'node()') isEmpty;
					assert: (each / '*') isEmpty]].