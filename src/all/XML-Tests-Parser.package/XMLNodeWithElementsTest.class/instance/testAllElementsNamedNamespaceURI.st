tests
testAllElementsNamedNamespaceURI
	| nodeWithElements allElements namedElements |

	nodeWithElements := self newNodeWithElements.
	self assert: (nodeWithElements allElementsNamed: 'four' namespaceURI: 'absent') isEmpty.

	allElements := nodeWithElements allElements.
	namedElements := nodeWithElements allElementsNamed: 'four' namespaceURI: 'testNS'. 
	self
		assert: namedElements size = 2;
		assertList: namedElements
		selects:
			(allElements select: [:each |
				(each isNamed: 'four')
					and: [each namespaceURI = 'testNS']]).