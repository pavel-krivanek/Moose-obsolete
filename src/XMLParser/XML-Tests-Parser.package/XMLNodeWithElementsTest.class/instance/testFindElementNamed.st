tests
testFindElementNamed
	| nodeWithElements allElements foundElement |

	nodeWithElements := self newNodeWithElements.
	allElements := nodeWithElements allElements.
	foundElement := nodeWithElements findElementNamed: 'four'.
	self
		assert: foundElement notNil;
		assert: (foundElement isNamed: 'four');
		assert: foundElement == (allElements detect: [:each | each isNamed: 'four']);
		assert: (foundElement findElementNamed: 'four') == foundElement;
		assert: (nodeWithElements findElementNamed: 'absent') isNil.