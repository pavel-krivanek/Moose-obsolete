tests
testNewElementNamedNamespaceURIAttributes
	| node element |

	node := self newNode.
	element :=
		node
			newElementNamed: 'prefix:test'
			namespaceURI: 'prefixNS'
			attributes: self attributeAssociations.
	self
		assert: element isElement;
		assert: element name = 'prefix:test';
		assert: element namespaceURI = 'prefixNS';
		assertElement: element hasAttributes: self attributes.
	node configuration
		ifNotNil: [
			self
				assert: element configuration == node configuration;
				assert: element nodeFactory == node nodeFactory].