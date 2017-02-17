tests
testNodesDetectIfNone
	| node |

	node := self newNodeWithNodes.
	self assert:
		(node
			nodesDetect: [:each | each isComment]
			ifNone: [self fail]) =
				(node nodes detect: [:each | each isComment]).
	self assert:
		(node
			nodesDetect: [:each | each isElementNamed: 'absent']
			ifNone: [#absent]) = #absent.