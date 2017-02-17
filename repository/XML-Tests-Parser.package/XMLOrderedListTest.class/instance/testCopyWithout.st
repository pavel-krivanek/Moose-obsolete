tests
testCopyWithout
	| list |

	list := self emptyList.
	self
		assertList: (list copyWithout: self singleListItem)
		copiedFrom: list
		equals: self emptyList.

	list := self listWithItems.
	self
		assertList: (list copyWithout: self singleListItem)
		copiedFrom: list
		equals: (self listClass newFrom: (self listItems copyWithout: self singleListItem)).