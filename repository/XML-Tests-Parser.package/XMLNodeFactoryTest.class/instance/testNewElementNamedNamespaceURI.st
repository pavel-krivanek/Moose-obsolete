tests
testNewElementNamedNamespaceURI
	| element |

	element :=
		self newFactory
			newElementNamed: 'prefix:test'
			namespaceURI: 'prefixNS'.
	self
		assert: element class == XMLElement;
		assert: element name = 'prefix:test';
		assert: element namespaceURI = 'prefixNS'.