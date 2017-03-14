tests
testAttributeAtIfAbsentPut
	| element |

	element := self newElementWithAttributes.
	element attributeNodes do: [:each |
		self assert:
			(element
				attributeAt: each name
				ifAbsentPut: [self fail]) = each value].
	self assert:
		(element
			attributeAt: 'newName'
			ifAbsentPut: ['newValue']) = 'newValue'.
	self assert: (element attributeAt: 'newName') = 'newValue'.