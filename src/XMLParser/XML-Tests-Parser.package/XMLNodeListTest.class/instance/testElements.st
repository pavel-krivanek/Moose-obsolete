tests
testElements
	| list |

	list := self listWithItems.
	self
		assertList: list elements
		copiedFrom: list
		equals: (self listClass newFrom: self listElements).