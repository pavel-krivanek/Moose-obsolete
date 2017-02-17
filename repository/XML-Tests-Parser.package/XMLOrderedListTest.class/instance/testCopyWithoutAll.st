tests
testCopyWithoutAll
	| list |

	list := self emptyList.
	self
		assertList: (list copyWithoutAll: self listItems)
		copiedFrom: list
		equals: self emptyList.

	list := self listWithItems.
	self
		assertList: (list copyWithoutAll: (Array with: self absentListItem))
		copiedFrom: list
		equals: self listWithItems.
	self
		assertList: (list copyWithoutAll: self listItems)
		copiedFrom: list
		equals: self emptyList.