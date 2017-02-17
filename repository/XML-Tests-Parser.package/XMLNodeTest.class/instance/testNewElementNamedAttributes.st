tests
testNewElementNamedAttributes
	| node element |

	node := self newNode.
	element :=
		node
			newElementNamed: 'test'
			attributes: self unprefixedAttributeAssociations.
	self
		assert: element isElement;
		assert: element name = 'test';
		assertElement: element hasAttributes: self unprefixedAttributes.
	node configuration
		ifNotNil: [
			self
				assert: element configuration == node configuration;
				assert: element nodeFactory == node nodeFactory].