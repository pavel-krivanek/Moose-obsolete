tests
testElementNames
	| list |

	list := self listWithItems.
	self
		assertList: list elementNames
		collectedFrom: list
		equals: (self listSpecies newFrom: self listElementNames).