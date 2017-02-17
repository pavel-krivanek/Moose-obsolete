tests
testNewElement
	| nodeWithElements element |

	super testNewElement.

	(nodeWithElements := self newNode)
		nodeFactory:
			(XMLPluggableNodeFactory new
				elementClass: self otherElementClass).
	element := nodeWithElements newElement.
	self
		assert: element class == self otherElementClass;
		assert: element configuration == nodeWithElements configuration;
		assert: element nodeFactory == nodeWithElements nodeFactory.