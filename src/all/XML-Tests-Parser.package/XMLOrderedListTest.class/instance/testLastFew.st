tests
testLastFew
	| list |

	list := self listWithItems.
	1 to: list size do: [:i |
		self
			assertList: (list last: i)
			copiedFrom: list
			equals: (self listClass newFrom: (self listItemsLast: i)).
		self
			assertList: (list last: list size + i)
			copiedFrom: list
			equals: self listWithItems.
		self
			assertList: (list last: (i * -1))
			copiedFrom: list
			equals: self emptyList].
	self
		assertList: (list last: 0)
		copiedFrom: list
		equals: self emptyList.