tests
testAllNodes
	| nodeWithElements allNodes |

	nodeWithElements := self newNodeWithElements.
	allNodes := nodeWithElements allNodes.
	self
		assert: allNodes size = 16;
		assert: (allNodes at: 1) = nodeWithElements;
		assert: (allNodes at: 2) isComment;
		assert: ((allNodes at: 3) isElementNamed: 'zero');
		assert: (allNodes at: 4) isComment;
		assert: ((allNodes at: 5) isElementNamed: 'one');
		assert: ((allNodes at: 6) isStringNode: 'testing one');
		assert: ((allNodes at: 7) isElementNamed: 'two');
		assert: (allNodes at: 8) isPI;
		assert: ((allNodes at: 9) isStringNode: 'testing two');
		assert: ((allNodes at: 10) isElementNamed: 'three');
		assert: ((allNodes at: 11) isElementNamed: 'four');
		assert: ((allNodes at: 12) isStringNode: 'testing three');
		assert: ((allNodes at: 13) isElementNamed: 'prefix:four');
		assert: ((allNodes at: 14) isElementNamed: 'prefix:five');
		assert: ((allNodes at: 15) isElementNamed: 'four');
		assert: (allNodes at: 16) isComment.
	self
		assertList: (allNodes at: 3) allNodes selects: (allNodes copyFrom: 3 to: 15);
		assertList: (allNodes at: 5) allNodes selects: (allNodes copyFrom: 5 to: 8);
		assertList: (allNodes at: 7) allNodes selects: (allNodes copyFrom: 7 to: 7);
		assertList: (allNodes at: 10) allNodes selects: (allNodes copyFrom: 10 to: 12);
		assertList: (allNodes at: 11) allNodes selects: (allNodes copyFrom: 11 to: 11);
		assertList: (allNodes at: 13) allNodes selects: (allNodes copyFrom: 13 to: 14);
		assertList: (allNodes at: 14) allNodes selects: (allNodes copyFrom: 14 to: 14);
		assertList: (allNodes at: 15) allNodes selects: (allNodes copyFrom: 15 to: 15).