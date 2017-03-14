tests
testAddElementNamedNamespaceURIAttributesNodeFactoryUse
	| nodeWithElements element |

	nodeWithElements := self newNode.
	nodeWithElements nodeFactory:
		(XMLPluggableElementFactory new
			handleElement: 'prefix:test'
			namespaceURI: 'prefixNS'
			attributes: self attributeAssociations
			withClass: self otherElementClass).
	element :=
		nodeWithElements
			addElementNamed: 'prefix:test'
			namespaceURI: 'prefixNS'
			attributes: self attributeAssociations.
	self
		assert: nodeWithElements nodes size = 1;
		assert: element class == self otherElementClass;
		assert: element name = 'prefix:test';
		assert: element namespaceURI = 'prefixNS';
		assertElement: element hasAttributes: self attributes.