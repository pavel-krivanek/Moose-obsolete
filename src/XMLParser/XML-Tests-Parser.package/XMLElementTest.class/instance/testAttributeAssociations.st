tests
testAttributeAssociations
	| element |

	element := self newElementWithAttributes.
	self
		assertList: element attributeAssociations
		collects: (element attributeNodes collect: [:each | each name -> each value]).