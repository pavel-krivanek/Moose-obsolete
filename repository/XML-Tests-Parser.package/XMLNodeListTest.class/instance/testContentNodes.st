tests
testContentNodes
	| list |

	list := self listWithItems.
	self
		assertList: list contentNodes
		copiedFrom: list
		equals: (self listClass newFrom: self listContentNodes).