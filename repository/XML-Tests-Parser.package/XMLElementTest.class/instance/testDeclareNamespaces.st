tests
testDeclareNamespaces
	| element |

	element := self newNode.
	element declareNamespaces: self namespaces.
	self namespaces keysAndValuesDo: [:prefix :uri |
		self assert: (element isDeclaredPrefix: prefix uri: uri)].

	element := self newNode.
	element declareNamespaces: self namespaces associations.
	self namespaces keysAndValuesDo: [:prefix :uri |
		self assert: (element isDeclaredPrefix: prefix uri: uri)]