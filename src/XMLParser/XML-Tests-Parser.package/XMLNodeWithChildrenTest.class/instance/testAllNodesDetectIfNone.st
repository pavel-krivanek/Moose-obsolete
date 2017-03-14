tests
testAllNodesDetectIfNone
	| nodeWithNodes allNodes detectedNode |

	nodeWithNodes := self newNodeWithNodes.
	allNodes := nodeWithNodes allNodes.
	detectedNode :=
		nodeWithNodes
			allNodesDetect: [:each | each isPI]
			ifNone: [self fail].
	self
		assert: detectedNode isPI;
		assert: detectedNode = (allNodes detect: [:each | each isPI] ifNone: [#absent]);
		assert:
			(nodeWithNodes
				allNodesDetect: [:each | each isElementNamed: 'absent']
				ifNone: [#absent]) = #absent.