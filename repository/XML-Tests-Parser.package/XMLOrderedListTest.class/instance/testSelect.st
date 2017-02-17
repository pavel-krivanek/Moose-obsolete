tests
testSelect
	| list |

	list := self listWithItems.
	self
		assertList: (list select: [:each | each ~= self singleListItem])
		copiedFrom: list
		equals:
			(self listClass newFrom:
				(self listWithItems copyWithout: self singleListItem)).