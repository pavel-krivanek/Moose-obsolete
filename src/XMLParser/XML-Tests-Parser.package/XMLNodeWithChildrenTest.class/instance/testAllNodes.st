tests
testAllNodes
	| nodeWithNodes allNodes |

	nodeWithNodes := self newNodeWithNodes.
	allNodes := nodeWithNodes allNodes.
	self
		assert: allNodes size = 5;
		assert: allNodes first == nodeWithNodes;
		assert: allNodes second isComment;
		assert: allNodes second string = 'one';
		assert: allNodes third isPI;
		assert: allNodes third target = 'two';
		assert: allNodes third data = 'three';
		assert: allNodes fourth isComment;
		assert: allNodes fourth string = 'four';
		assert: allNodes fifth isPI;
		assert: allNodes fifth target = 'five';
		assert: allNodes fifth data = 'six'.