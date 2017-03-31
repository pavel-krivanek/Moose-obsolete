tests
testStringNodes
	| list |

	list := self listWithItems.
	self
		assertList: list stringNodes
		copiedFrom: list
		equals: (self listClass newFrom: self listStringNodes).