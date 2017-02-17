tests
testConcatenation
	| list |

	list := self emptyList.
	self
		assertList: (list, self emptyList) copiedFrom: list equals: self emptyList;
		assertList: (list, self listWithItems) copiedFrom: list equals: self listWithItems.

	list := self listWithItems.
	self assertList: (list, self emptyList) copiedFrom: list equals: self listWithItems.
	self
		assertList: (list, self listWithItems)
		copiedFrom: list
		equals: (self listClass newFrom: (self listItems, self listItems)).