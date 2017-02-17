tests
testCollectThenSelect
	| list |

	list := self listWithItems.
	self
		assertList:
			(list
				collect: [:each | self changedListItem: each]
				thenSelect: [:each | each ~= self changedSingleListItem])
		copiedFrom: list
		equals:
			(self listClass newFrom:
				(self changedListItems copyWithout: self changedSingleListItem)).