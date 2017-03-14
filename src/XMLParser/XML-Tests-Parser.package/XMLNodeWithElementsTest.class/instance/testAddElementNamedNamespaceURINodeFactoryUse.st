tests
testAddElementNamedNamespaceURINodeFactoryUse
	| nodeWithElements element |

	nodeWithElements := self newNode.
	nodeWithElements nodeFactory:
		(XMLPluggableElementFactory new
			handleElement: 'test'
			namespaceURI: 'defaultNS'
			withClass: self otherElementClass).
	element :=
		nodeWithElements
			addElementNamed: 'test'
			namespaceURI: 'defaultNS'.
	self
		assert: nodeWithElements nodes size = 1;
		assert: element class == self otherElementClass;
		assert: element name = 'test';
		assert: element namespaceURI = 'defaultNS'.