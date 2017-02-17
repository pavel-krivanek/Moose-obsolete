tests
testNewElementNamedNamespaceURI
	| nodeWithElements element |

	super testNewElementNamedNamespaceURI.

	(nodeWithElements := self newNode)
		nodeFactory:
			(XMLPluggableElementFactory new
				handleElement: 'prefix:test'
				namespaceURI: 'prefixNS'
				withClass: self otherElementClass).
	element :=
		nodeWithElements
			newElementNamed: 'prefix:test'
			namespaceURI: 'prefixNS'.
	self
		assert: element class == self otherElementClass;
		assert: element name = 'prefix:test';
		assert: element namespaceURI = 'prefixNS';
		assert: element configuration == nodeWithElements configuration;
		assert: element nodeFactory == nodeWithElements nodeFactory.