tests
testRemoveNodes
	| nodeWithNodes |

	nodeWithNodes := self newNodeWithNodes.
	self
		assert: nodeWithNodes hasChildren;
		assert: nodeWithNodes removeNodes == nodeWithNodes;
		deny: nodeWithNodes hasChildren.