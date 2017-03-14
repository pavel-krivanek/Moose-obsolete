tests
testAddElementNamedAttributesNodeFactoryUse
	| nodeWithElements element |

	nodeWithElements := self newNode.
	nodeWithElements nodeFactory:
		(XMLPluggableElementFactory new
			handleElement: 'test'
			attributes: self unprefixedAttributeAssociations
			withClass: self otherElementClass).
	element :=
		nodeWithElements
			addElementNamed: 'test'
			attributes: self unprefixedAttributeAssociations.
	self
		assert: nodeWithElements nodes size = 1;
		assert: element class == self otherElementClass;
		assert: element name = 'test';
		assertElement: element hasAttributes: self unprefixedAttributes.