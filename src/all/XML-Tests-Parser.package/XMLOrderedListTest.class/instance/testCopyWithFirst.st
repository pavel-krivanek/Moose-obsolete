tests
testCopyWithFirst
	| list |

	list := self emptyList.
	self
		assertList: (list copyWithFirst: self singleListItem)
		copiedFrom: list
		equals: self listWithSingleItem.

	list := self listWithItems.
	self
		assertList: (list copyWithFirst: self newListItem)
		copiedFrom: list
		equals:
			(self listClass newFrom:
				(self listItems copyWithFirst: self newListItem)).