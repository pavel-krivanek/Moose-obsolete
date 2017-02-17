tests
testRemoveNodeIfAbsent
	| nodeWithNodes |

	nodeWithNodes := self newNodeWithNodes.
	nodeWithNodes nodes copy do: [:each |
		self assert: (nodeWithNodes includesNode: each).
		self assert:
			(nodeWithNodes
				removeNode: each
				ifAbsent: [self fail]) == each.
		self deny: (nodeWithNodes includesNode: each)].
	self deny: nodeWithNodes hasChildren.
	self assert:
		(nodeWithNodes
			removeNode: self newNode
			ifAbsent: [#absent]) == #absent.