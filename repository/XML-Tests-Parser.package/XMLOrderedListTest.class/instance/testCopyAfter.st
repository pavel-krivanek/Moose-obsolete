tests
testCopyAfter
	| list |

	list := self listWithItems.
	list do: [:each |
		self
			assertList: (list copyAfter: each)
			copiedFrom: list
			equals: (self listClass newFrom: (self listItems copyAfter: each)).
		self assert: (self emptyList copyAfter: each) = self emptyList].