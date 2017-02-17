tests
testFindElementNamedNamespaceURIWith
	| nodeWithElements allElements foundElement |

	nodeWithElements := self newNodeWithElements.
	allElements := nodeWithElements allElements.
	foundElement :=
		nodeWithElements
			findElementNamed: 'four'
			namespaceURI: 'testNS'
			with: [:each | each hasChildren].
	self
		assert: foundElement notNil;
		assert: (foundElement isNamed: 'prefix:four').
	self assert:
		foundElement ==
			(allElements detect: [:each |
				(each isNamed: 'four')
					and: [(each namespaceURI = 'testNS')
						and: [each hasChildren]]]).
	self assert:
		(foundElement
			findElementNamed: 'four'
			namespaceURI: 'testNS'
			with: [:each | each hasChildren]) == foundElement.
	self assert:
		(nodeWithElements 
			findElementNamed: 'four'
			namespaceURI: 'testNS'
			with: [:each | false]) isNil.