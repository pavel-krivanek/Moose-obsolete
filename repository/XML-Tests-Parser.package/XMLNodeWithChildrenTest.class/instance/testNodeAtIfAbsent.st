tests
testNodeAtIfAbsent
	| nodeWithNodes |

	nodeWithNodes := self newNodeWithNodes.
	1 to: nodeWithNodes nodes size do: [:i |
		self assert:
			(nodeWithNodes
				nodeAt: i
				ifAbsent: [self fail]) = (nodeWithNodes nodes at: i)].
	self assert:
		(nodeWithNodes
			nodeAt: 0
			ifAbsent: [#absent]) = #absent.
	self assert:
		(nodeWithNodes
			nodeAt: nodeWithNodes nodes size + 1
			ifAbsent: [#absent]) = #absent.