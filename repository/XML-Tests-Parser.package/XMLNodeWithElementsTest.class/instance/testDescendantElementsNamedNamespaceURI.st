tests
testDescendantElementsNamedNamespaceURI
	| nodeWithElements descendantElements namedElements |

	nodeWithElements := self newNodeWithElements.
	self assert:
		(nodeWithElements
			descendantElementsNamed: 'four'
			namespaceURI: 'absent') isEmpty.

	descendantElements := nodeWithElements descendantElements.
	namedElements :=
		nodeWithElements
			descendantElementsNamed: 'four'
			namespaceURI: 'testNS'. 
	self
		assert: namedElements size = 2;
		assertList: namedElements
		selects:
			(descendantElements select: [:each |
				(each isNamed: 'four')
					and: [each namespaceURI = 'testNS']]).