tests
testAllButLast
	| list |

	self assert: self emptyList allButLast = self emptyList.

	list := self listWithItems.
	self
		assertList: list allButLast
		copiedFrom: list
		equals: (self listClass newFrom: self listItems allButLast).