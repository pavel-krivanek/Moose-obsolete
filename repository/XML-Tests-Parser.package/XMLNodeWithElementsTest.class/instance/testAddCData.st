tests
testAddCData
	| nodeWithElements cdataNode |

	nodeWithElements := self newNode.
	cdataNode := nodeWithElements addCData: 'test'.
	self
		assert: cdataNode isCData;
		assert: cdataNode string = 'test';
		assert: nodeWithElements nodes size = 1;
		assert: nodeWithElements firstNode == cdataNode.