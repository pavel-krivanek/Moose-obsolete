tests
testDescendantNodesDetect
	| nodeWithNodes descendantNodes detectedNode |

	nodeWithNodes := self newNodeWithNodes.
	descendantNodes := nodeWithNodes descendantNodes.
	detectedNode := nodeWithNodes descendantNodesDetect: [:each | each isPI].
	self
		assert: detectedNode notNil;
		assert: detectedNode isPI;
		assert: detectedNode = (descendantNodes detect: [:each | each isPI]);
		assert: (nodeWithNodes descendantNodesDetect: [:each | each isElementNamed: 'absent']) isNil.