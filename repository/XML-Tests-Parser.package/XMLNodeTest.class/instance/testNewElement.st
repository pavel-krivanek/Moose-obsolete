tests
testNewElement
	| node element |

	node := self newNode.
	element := node newElement.
	self assert: element isElement.
	node configuration
		ifNotNil: [
			self
				assert: element configuration == node configuration;
				assert: element nodeFactory == node nodeFactory].