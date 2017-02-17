tests
testSelectThenCollect
	| list |

	list := self listWithItems.
	self
		assertList:
			(list
				select: [:each | each ~= self singleListItem]
				thenCollect: [:each | self changedListItem: each])
		collectedFrom: list
		equals:
			(self listSpecies newFrom:
				(self changedListItems copyWithout: self changedSingleListItem)).