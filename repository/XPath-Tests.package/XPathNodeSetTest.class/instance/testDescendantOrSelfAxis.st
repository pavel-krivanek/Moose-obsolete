tests
testDescendantOrSelfAxis
	| root list result |

	root := self singleListItem documentRoot.
	list := self listClass with: root.
	result := list //~ '*'.
	self
		assertList: result
		copiedFrom: list
		equals: (self listClass withAll: root allElements).
	self
		assertList: result
		hasSortOrder: XPathDocumentSortOrder.
	self assert: (result //~ 'absent') isEmpty.

	result := list //~ 'three'.
	self
		assertList: result
		copiedFrom: list
		equals: (self listClass with: root allElements fourth).
	self
		assertList: result
		hasSortOrder: XPathDocumentSortOrder.
	self assert: (result //~ 'absent') isEmpty.