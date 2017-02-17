tests
testReversed
	| list |

	list := self listWithItems.
	self
		assertList: list reversed
		copiedFrom: list
		equals: (self listClass newFrom: self listItems reversed).