tests
testDescendantAxis
	| root list result |

	root := self singleListItem documentRoot.
	list := self listClass with: root.
	result := list // '*'.
	self
		assertList: result
		copiedFrom: list
		equals: (self listClass withAll: root descendantElements).
	self
		assertList: result
		hasSortOrder: XPathDocumentSortOrder.
	self assert: (result // 'absent') isEmpty.

	result := list // 'three'.
	self
		assertList: result
		copiedFrom: list
		equals: (self listClass with: root descendantElements fourth).
	self
		assertList: result
		hasSortOrder: XPathDocumentSortOrder.
	self assert: (result // 'absent') isEmpty.