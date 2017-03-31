tests
testAttributeAtPut
	| element |

	element := self newElementWithAttributes.
	element attributeNodes do: [:each | | newValue |
		newValue := 'new', each value.
		self
			assert: (element attributeAt: each name put: newValue) = newValue;
			assert: (element attributeAt: each name) = newValue].
	self
		assert: (element attributeAt: 'newName' put: 'newValue') = 'newValue';
		assert: (element attributeAt: 'newName') = 'newValue'.