tests
testAllButFirst
	| list |

	self assert: self emptyList allButFirst = self emptyList.

	list := self listWithItems.
	self
		assertList: list allButFirst
		copiedFrom: list
		equals: (self listClass newFrom: self listItems allButFirst).