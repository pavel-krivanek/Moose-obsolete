tests
testChildAxis
	| list result |

	list := self listClass with: self singleListItem parent.
	result := list / '*'.
	self
		assertList: result
		copiedFrom: list
		hasNodes: self listElements.
	self
		assertList: result
		hasSortOrder: XPathLevelDocumentSortOrder.
	self assert: (result / '*') isEmpty.

	result := list / 'three'.
	self
		assertList: result
		copiedFrom: list
		hasNode: self listElements third.
	self
		assertList: result
		hasSortOrder: XPathLevelDocumentSortOrder.
	self assert: (result / 'three') isEmpty.