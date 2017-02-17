tests
testSorted
	| list |

	list := self listWithItems.
	self
		assertList: list sorted
		copiedFrom: list
		equals: (self listClass newFrom: (self listItems copy sorted: self sortBlock)).
	self
		assertList: (list sorted: self reverseSortBlock)
		copiedFrom: list
		equals: (self listClass newFrom: (self listItems copy sorted: self reverseSortBlock)).