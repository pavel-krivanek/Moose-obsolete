tests
testElementsCollect
	| list |

	list := self listWithItems.
	self
		assertList: (list elementsCollect: [:each | each name])
		collectedFrom: list
		equals: (self listSpecies newFrom: self listElementNames).