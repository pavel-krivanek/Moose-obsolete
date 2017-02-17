tests
testCopyAfterLast
	| list |

	list := self listWithItems.
	list do: [:each |
		self
			assertList: (list copyAfterLast: each)
			copiedFrom: list
			equals: (self listClass newFrom: (self listItems copyAfterLast: each)).
		self assert: (self emptyList copyAfterLast: each) = self emptyList].