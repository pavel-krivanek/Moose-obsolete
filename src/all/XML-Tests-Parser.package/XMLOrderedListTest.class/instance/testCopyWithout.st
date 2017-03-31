tests
testCopyWithout
	self listItems do: [:each | | list |
		list := self emptyList.
		self
			assertList: (list copyWithout: each)
			copiedFrom: list
			equals: self emptyList.

		list := self listWithItems.
		self
			assertList: (list copyWithout: self absentListItem)
			copiedFrom: list
			equals: self listWithItems.
		self
			assertList: (list copyWithout: each)
			copiedFrom: list
			equals: (self listClass newFrom: (self listItems copyWithout: each))]