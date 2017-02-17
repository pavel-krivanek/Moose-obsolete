tests
testNodeBefore
	| nodeWithNodes nodeBefore |

	nodeWithNodes := self newNodeWithNodes.
	nodeBefore := nil.
	nodeWithNodes nodes do: [:each |
		self assert: (nodeWithNodes nodeBefore: each) = nodeBefore.
		nodeBefore := each].
	self assert: (nodeWithNodes nodeBefore: self newNode) isNil.