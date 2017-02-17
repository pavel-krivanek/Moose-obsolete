tests
testAttributeNames
	| element |

	element := self newElementWithAttributes.
	self
		assertList: element attributeNames
		collects: (element attributeNodes collect: [:each | each name])