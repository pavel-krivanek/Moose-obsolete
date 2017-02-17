tests
testLastNode
	| nodeWithNodes |

	nodeWithNodes := self newNodeWithNodes.
	nodeWithNodes nodes reversed do: [:each |
		self  assert: nodeWithNodes lastNode = each.
		nodeWithNodes removeNode: each].

	self assert: nodeWithNodes lastNode isNil.