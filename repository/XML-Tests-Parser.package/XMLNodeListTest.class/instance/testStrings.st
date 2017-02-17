tests
testStrings
	| list |

	list := self listWithItems.
	self
		assertList: list strings
		collectedFrom: list
		equals: (self listSpecies newFrom: self listStrings).