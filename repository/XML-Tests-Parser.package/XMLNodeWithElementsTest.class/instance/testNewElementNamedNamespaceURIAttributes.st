tests
testNewElementNamedNamespaceURIAttributes
	| nodeWithElements element |

	super testNewElementNamedNamespaceURIAttributes.

	(nodeWithElements := self newNode)
		nodeFactory:
			(XMLPluggableElementFactory new
				handleElement: 'prefix:test'
				namespaceURI: 'prefixNS'
				attributes: self attributeAssociations
				withClass: self otherElementClass;
				attributeListClass: self otherAttributeListClass).
	element :=
		nodeWithElements
			newElementNamed: 'prefix:test'
			namespaceURI: 'prefixNS'
			attributes: self attributeAssociations.
	self
		assert: element class == self otherElementClass;
		assert: element name = 'prefix:test';
		assert: element namespaceURI = 'prefixNS';
		assert: element attributeNodes class == self otherAttributeListClass;
		assertElement: element hasAttributes: self attributes;
		assert: element configuration == nodeWithElements configuration;
		assert: element nodeFactory == nodeWithElements nodeFactory.