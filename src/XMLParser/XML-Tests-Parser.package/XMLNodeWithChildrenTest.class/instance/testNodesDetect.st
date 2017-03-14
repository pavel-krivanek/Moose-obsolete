tests
testNodesDetect
	| node detectedNode |

	node := self newNodeWithNodes.
	detectedNode := node nodesDetect: [:each | each isComment].
	self
		assert: detectedNode notNil;
		assert: detectedNode = (node nodes detect: [:each | each isComment]);
		assert: (node nodesDetect: [:each | each isElementNamed: 'absent']) isNil.