tests
testFindElementNamedNamespaceURI
	| nodeWithElements allElements foundElement |

	nodeWithElements := self newNodeWithElements.
	allElements := nodeWithElements allElements.
	foundElement := nodeWithElements findElementNamed: 'four' namespaceURI: 'testNS'.
	self
		assert: foundElement notNil;
		assert: (foundElement isNamed: 'four').
	self assert:
		foundElement ==
			(allElements detect: [:each |
				(each isNamed: 'four') and: [each namespaceURI = 'testNS']]).
	self
		assert: (foundElement findElementNamed: 'four' namespaceURI: 'testNS') == foundElement;
		assert: (nodeWithElements findElementNamed: 'four' namespaceURI: 'absentNS') isNil.