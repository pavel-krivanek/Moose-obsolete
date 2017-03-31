tests
testCopyWith
	| list |

	list := self emptyList.
	self
		assertList: (list copyWith: self singleListItem)
		copiedFrom: list
		equals: self listWithSingleItem.

	list := self listWithItems.
	self
		assertList: (list copyWith: self newListItem)
		copiedFrom: list
		equals: (self listClass newFrom: (self listItems copyWith: self newListItem)).