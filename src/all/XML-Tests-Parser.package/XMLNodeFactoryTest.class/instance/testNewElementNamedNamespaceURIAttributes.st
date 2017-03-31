tests
testNewElementNamedNamespaceURIAttributes
	| element |

	element :=
		self newFactory
			newElementNamed: 'prefix:test'
			namespaceURI: 'prefixNS'
			attributes: self attributeAssociations.
	self
		assert: element class == XMLElement;
		assert: element name = 'prefix:test';
		assert: element namespaceURI = 'prefixNS';
		assert: element attributes = self attributes.