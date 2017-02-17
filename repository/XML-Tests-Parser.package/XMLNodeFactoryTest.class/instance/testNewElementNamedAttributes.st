tests
testNewElementNamedAttributes
	| element |

	element :=
		self newFactory
			newElementNamed: 'test'
			attributes: self attributeAssociations.
	self
		assert: element class == XMLElement;
		assert: element name = 'test';
		assert: element attributes = self attributes