tests
testAllButLastFew
	| list |

	list := self listWithItems.
	1 to: list size do: [:i |
		self
			assertList: (list allButLast: i)
			copiedFrom: list
			equals: (self listClass newFrom: (self listItems allButLast: i)).
		self
			assertList: (list allButLast: i + list size)
			copiedFrom: list
			equals: self emptyList.
		self
			assertList: (list allButLast: i * -1)
			copiedFrom: list
			equals: list.
		self assert: (self emptyList allButLast: i) = self emptyList].
	self
		assertList: (list allButLast: 0)
		copiedFrom: list
		equals: list.