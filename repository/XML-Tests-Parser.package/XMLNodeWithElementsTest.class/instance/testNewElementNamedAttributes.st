tests
testNewElementNamedAttributes
	| nodeWithElements element |

	super testNewElementNamedAttributes.

	(nodeWithElements := self newNode)
		nodeFactory:
			(XMLPluggableElementFactory new
				handleElement: 'test'
				attributes: self unprefixedAttributeAssociations
				withClass: self otherElementClass;
				attributeListClass: self otherAttributeListClass).
	element :=
		nodeWithElements
			newElementNamed: 'test'
			attributes: self unprefixedAttributeAssociations.
	self
		assert: element class == self otherElementClass;
		assert: element name = 'test';
		assert: element attributeNodes class == self otherAttributeListClass;
		assertElement: element hasAttributes: self unprefixedAttributes;
		assert: element configuration == nodeWithElements configuration;
		assert: element nodeFactory == nodeWithElements nodeFactory.