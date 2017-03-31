tests
testCopyWithoutAll
	1 to: self listItems size do: [:i | | itemsToRemove list |
		itemsToRemove := self listItems copyFrom: 1 to: i.
		list := self emptyList.
		self
			assertList: (list copyWithoutAll: itemsToRemove)
			copiedFrom: list
			equals: self emptyList.

		list := self listWithItems.
		self
			assertList: (list copyWithoutAll: (Array with: self absentListItem))
			copiedFrom: list
			equals: self listWithItems.
		self
			assertList: (list copyWithoutAll: itemsToRemove)
			copiedFrom: list
			equals:
				(self listClass newFrom:
					(self listItems copyWithoutAll: itemsToRemove))]