tests
testFirstNode
	| nodeWithNodes |

	nodeWithNodes := self newNodeWithNodes.
	nodeWithNodes nodes copy do: [:each |
		self  assert: nodeWithNodes firstNode = each.
		nodeWithNodes removeNode: each].
	self assert: nodeWithNodes firstNode isNil.