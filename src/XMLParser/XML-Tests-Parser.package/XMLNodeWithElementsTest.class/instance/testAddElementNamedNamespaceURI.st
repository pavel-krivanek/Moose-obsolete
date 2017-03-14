tests
testAddElementNamedNamespaceURI
	| nodeWithElements element |

	nodeWithElements := self newNode.
	element :=
		nodeWithElements
			addElementNamed: 'test'
			namespaceURI: 'defaultNS'.
	self
		assert: nodeWithElements nodes size = 1;
		assert: element isElement;
		assert: element name = 'test';
		assert: element namespaceURI = 'defaultNS'.