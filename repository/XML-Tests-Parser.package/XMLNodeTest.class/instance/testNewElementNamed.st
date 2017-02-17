tests
testNewElementNamed
	| node element |

	node := self newNode.
	element := node newElementNamed: 'test'.
	self
		assert: element isElement;
		assert: element name = 'test'.
	node configuration
		ifNotNil: [
			self
				assert: element configuration == node configuration;
				assert: element nodeFactory == node nodeFactory].