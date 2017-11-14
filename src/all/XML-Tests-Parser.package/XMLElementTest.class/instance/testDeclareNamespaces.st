tests
testDeclareNamespaces
	| element |

	element := self newNode.
	self assert: (element declareNamespaces: self namespaces) == element.
	self namespaces keysAndValuesDo: [:prefix :uri |
		self assert: (element isDeclaredPrefix: prefix uri: uri)].

	element := self newNode.
	self assert: (element declareNamespaces: self namespaces associations) == element.
	self namespaces keysAndValuesDo: [:prefix :uri |
		self assert: (element isDeclaredPrefix: prefix uri: uri)].

	(element := self newNode) usesNamespaces: false.
	self
		assert: (element declareNamespaces: #()) == element;
		assert: element usesNamespaces.