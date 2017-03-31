tests
testFindElementNamedWith
	| nodeWithElements allElements foundElement |

	nodeWithElements := self newNodeWithElements.
	allElements := nodeWithElements allElements.
	foundElement := nodeWithElements findElementNamed: 'four' with: [:each | each hasChildren].
	self
		assert: foundElement notNil;
		assert: (foundElement isNamed: 'four').
	self assert:
		foundElement ==
			(allElements detect: [:each | (each isNamed: 'four') and: [each hasChildren]]).
	self
		assert: (foundElement findElementNamed: 'four' with: [:each | each hasChildren]) == foundElement;
		assert: (nodeWithElements findElementNamed: 'four' with: [:each | false]) isNil.