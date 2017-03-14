tests
testAttributeNames
	| list |

	list := self listWithItems.
	self
		assertList: list attributeNames
		collectedFrom: list
		equals: (self listSpecies newFrom: self attributeNames).