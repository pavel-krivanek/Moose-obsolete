tests
testAncestorAxis
	| list result |

	list := self listWithItems.
	result := list %% '*'.
	self
		assertList: result
		copiedFrom: list
		equals: (self listClass withAll: self singleListItem ancestorElements).
	self
		assertList: result
		hasSortOrder: XPathReverseDocumentSortOrder.
	self assert: (result %% '*') isEmpty.

	result := list %% 'root'.
	self
		assertList: result
		copiedFrom: list
		equals: (self listClass with: self singleListItem ancestorElements first).
	self
		assertList: result
		hasSortOrder: XPathReverseDocumentSortOrder.
	self assert: (result %% 'root') isEmpty.