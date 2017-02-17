tests
testCollect
	| list |

	list := self listWithItems.
	self
		assertList: (list collect: [:each | self changedListItem: each])
		collectedFrom: list
		equals: (self listSpecies newFrom: self changedListItems).