tests
testNewElementNamed
	| nodeWithElements element |

	super testNewElementNamed.

	(nodeWithElements := self newNode)
		nodeFactory:
			(XMLPluggableElementFactory new
				handleElement: 'test' withClass: self otherElementClass).
	element := nodeWithElements newElementNamed: 'test'.
	self
		assert: element class == self otherElementClass;
		assert: element name = 'test';
		assert: element configuration == nodeWithElements configuration;
		assert: element nodeFactory == nodeWithElements nodeFactory.