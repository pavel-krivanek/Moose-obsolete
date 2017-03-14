tests
testChildAxis
	| list result |

	list := self listClass with: self singleListItem parent.
	result := list / '*'.
	self
		assertList: result
		copiedFrom: list
		equals: (self listClass withAll: self listElements).
	self
		assertList: result
		hasSortOrder: XPathDocumentSortOrder.
	self assert: (result / '*') isEmpty.

	result := list / 'three'.
	self
		assertList: result
		copiedFrom: list
		equals: (self listClass with: self listElements third).
	self
		assertList: result
		hasSortOrder: XPathDocumentSortOrder.
	self assert: (result / 'three') isEmpty.