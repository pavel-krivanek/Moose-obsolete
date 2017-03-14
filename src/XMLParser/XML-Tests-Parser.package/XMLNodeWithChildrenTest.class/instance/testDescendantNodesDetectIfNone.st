tests
testDescendantNodesDetectIfNone
	| nodeWithNodes descendantNodes detectedNode |

	nodeWithNodes := self newNodeWithNodes.
	descendantNodes := nodeWithNodes descendantNodes.
	detectedNode :=
		nodeWithNodes
			descendantNodesDetect: [:each | each isPI]
			ifNone: [self fail].
	self
		assert: detectedNode isPI;
		assert: detectedNode = (descendantNodes detect: [:each | each isPI] ifNone: [#absent]);
		assert:
			(nodeWithNodes
				descendantNodesDetect: [:each | each isElementNamed: 'absent']
				ifNone: [#absent]) = #absent.