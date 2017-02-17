tests
testUsesNamespaces
	| nodeWithElements |

	nodeWithElements := self newNodeWithElements.
	self assert: nodeWithElements usesNamespaces.
	nodeWithElements allElementsDo: [:each |
		self assert: each usesNamespaces].

	nodeWithElements usesNamespaces: false.
	self deny: nodeWithElements usesNamespaces.
	nodeWithElements allElementsDo: [:each |
		self deny: each usesNamespaces.
		self
			shouldnt: [each prefix: 'undeclared']
			raise: XMLNamespaceException].