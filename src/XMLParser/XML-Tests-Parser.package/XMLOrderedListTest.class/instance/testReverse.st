tests
testReverse
	| list |

	list := self listWithItems.
	self
		assertList: list reverse
		copiedFrom: list
		equals: (self listClass newFrom: self listItems reverse).