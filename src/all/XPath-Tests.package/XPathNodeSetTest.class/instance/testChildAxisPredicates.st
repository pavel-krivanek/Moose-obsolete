tests
testChildAxisPredicates
	| list result |

	list := self listClass with: self singleListItem parent.
	result := list / ('*' ?? 3).
	self
		assertList: result
		copiedFrom: list
		hasNode: self listElements third.
	self
		assertList: result
		hasSortOrder: XPathLevelDocumentSortOrder.
	self assert: (result / ('*' ?? 3)) isEmpty.

	result := list / ('three' ?? 1).
	self
		assertList: result
		copiedFrom: list
		hasNode: self listElements third.
	self
		assertList: result
		hasSortOrder: XPathLevelDocumentSortOrder.
	self assert: (result / ('three' ?? 1)) isEmpty.