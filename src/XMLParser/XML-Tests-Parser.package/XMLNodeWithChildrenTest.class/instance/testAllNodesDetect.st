tests
testAllNodesDetect
	| nodeWithNodes allNodes detectedNode |

	nodeWithNodes := self newNodeWithNodes.
	allNodes := nodeWithNodes allNodes.
	detectedNode := nodeWithNodes allNodesDetect: [:each | each isPI].
	self
		assert: detectedNode notNil;
		assert: detectedNode isPI;
		assert: detectedNode = (allNodes detect: [:each | each isPI]);
		assert: (nodeWithNodes allNodesDetect: [:each | each isElementNamed: 'absent']) isNil.