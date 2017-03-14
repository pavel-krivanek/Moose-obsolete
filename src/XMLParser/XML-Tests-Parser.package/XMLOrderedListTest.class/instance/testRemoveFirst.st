tests
testRemoveFirst
	| list |

	list := self listWithItems.
	self listItems do: [:each | 
	self
		assert: list removeFirst = each;
		assert: list = (self listClass newFrom: (self listItems copyAfter: each))].
	self should: [list removeFirst] raise: Error.