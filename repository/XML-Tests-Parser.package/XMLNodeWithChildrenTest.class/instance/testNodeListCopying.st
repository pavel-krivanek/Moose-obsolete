tests
testNodeListCopying
	| nodeWithNodes nodeListCopy |

	nodeWithNodes := self newNodeWithNodes.
	nodeListCopy := nodeWithNodes nodes copy.
	self
		assert: nodeListCopy = nodeWithNodes nodes;
		deny: nodeListCopy == nodeWithNodes nodes;
		assert: nodeWithNodes nodes observer == nodeWithNodes;
		assert: nodeListCopy observer isNil.