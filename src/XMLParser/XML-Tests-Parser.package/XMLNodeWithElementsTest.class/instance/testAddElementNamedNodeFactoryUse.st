tests
testAddElementNamedNodeFactoryUse
	| nodeWithElements element |

	nodeWithElements := self newNode.
	nodeWithElements nodeFactory:
		(XMLPluggableElementFactory new
			handleElement: 'test'
			withClass: self otherElementClass).
	element := nodeWithElements addElementNamed: 'test'.
	self
		assert: nodeWithElements nodes size = 1;
		assert: element class == self otherElementClass;
		assert: element name = 'test'.
