tests
testFirstFew
	| list |

	list := self listWithItems.
	1 to: list size do: [:i |
		self
			assertList: (list first: i)
			copiedFrom: list
			equals: (self listClass newFrom: (self listItemsFirst: i)).
		self
			assertList: (list first: list size + i)
			copiedFrom: list
			equals: self listWithItems.
		self
			assertList: (list first: (i * -1))
			copiedFrom: list
			equals: self emptyList].
	self
		assertList: (list first: 0)
		copiedFrom: list
		equals: self emptyList.