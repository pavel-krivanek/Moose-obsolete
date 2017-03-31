tests
testNewElementNamedNamespaceURI
	| node element |

	node := self newNode.
	element :=
		node
			newElementNamed: 'prefix:test'
			namespaceURI: 'prefixNS'.
	self
		assert: element isElement;
		assert: element name = 'prefix:test';
		assert: element namespaceURI = 'prefixNS'.
	node configuration
		ifNotNil: [
			self
				assert: element configuration == node configuration;
				assert: element nodeFactory == node nodeFactory].