tests
testNewElementNamedNamespaceURI
	| element |

	super testNewElementNamedNamespaceURI.

	element :=
		self newFactoryWithClasses
			newElementNamed: 'prefix:test'
			namespaceURI: 'prefixNS'.
	self
		assert: element class == self elementClass;
		assert: element name = 'prefix:test';
		assert: element namespaceURI = 'prefixNS'.