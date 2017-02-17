tests
testCopyUpTo
	| list |

	list := self listWithItems.
	list do: [:each |
		self
			assertList: (list copyUpTo: each)
			copiedFrom: list
			equals: (self listClass newFrom: (self listItems copyUpTo: each))].
	self
		assertList: (list copyUpTo: self absentListItem)
		copiedFrom: list
		equals: self listWithItems.