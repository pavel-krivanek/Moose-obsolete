tests
testNodeAt
	| nodeWithNodes |

	nodeWithNodes := self newNodeWithNodes.
	self assert: (nodeWithNodes nodeAt: 0) isNil.
	1 to: nodeWithNodes nodes size do: [:i |
		self assert: (nodeWithNodes nodeAt: i) = (nodeWithNodes nodes at: i)].
	self assert: (nodeWithNodes nodeAt: nodeWithNodes nodes size + 1) isNil.