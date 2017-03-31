tests
testAddString
	| nodeWithElements firstStringNode elementNode lastStringNode |

	nodeWithElements := self newNode.
	firstStringNode := nodeWithElements addString: 'one'.
	self
		assert: (firstStringNode isStringNode: 'one');
		assert: nodeWithElements nodes size = 1;
		assert: nodeWithElements firstNode == firstStringNode.

	self
		assert: (nodeWithElements addString: 'two') == firstStringNode;
		assert: (firstStringNode isStringNode: 'onetwo');
		assert: nodeWithElements nodes size = 1;
		assert: nodeWithElements nodes first == firstStringNode.

	elementNode := nodeWithElements addNode: (self elementClass named: 'three').
	self
		assert: (elementNode isElementNamed: 'three');
		assert: nodeWithElements nodes size = 2;
		assert: nodeWithElements nodes first == firstStringNode;
		assert: nodeWithElements nodes second == elementNode.

	lastStringNode := nodeWithElements addString: 'four'.
	self
		assert: (lastStringNode isStringNode: 'four');
		assert: nodeWithElements nodes size = 3;
		assert: nodeWithElements nodes first == firstStringNode;
		assert: nodeWithElements nodes second == elementNode;
		assert: nodeWithElements nodes third == lastStringNode.