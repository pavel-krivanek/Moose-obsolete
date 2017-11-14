tests
testUsesNamespaces
	| nodeWithElements |

	nodeWithElements := self newNodeWithElements.
	self assert: nodeWithElements usesNamespaces.
	nodeWithElements allElementsDo: [:each |
		self assert: each usesNamespaces].

	self
		assert: (nodeWithElements usesNamespaces: false) == nodeWithElements;
		deny: nodeWithElements usesNamespaces.
	nodeWithElements allElementsDo: [:each |
		self deny: each usesNamespaces.
		self
			shouldnt: [each prefix: 'undeclared']
			raise: XMLNamespaceException].

	self
		assert: (nodeWithElements usesNamespaces: true) == nodeWithElements;
		assert: nodeWithElements usesNamespaces.
	nodeWithElements allElementsDo: [:each |
		self assert: each usesNamespaces.
		self
			should: [each prefix: 'undeclaredTwo']
			raise: XMLNamespaceException].