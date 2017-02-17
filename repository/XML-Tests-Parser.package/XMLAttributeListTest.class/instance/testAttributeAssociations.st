tests
testAttributeAssociations
	| list |

	list := self listWithItems.
	self
		assertList: list attributeAssociations
		collectedFrom: list
		equals: (self listSpecies newFrom: self attributeAssociations).