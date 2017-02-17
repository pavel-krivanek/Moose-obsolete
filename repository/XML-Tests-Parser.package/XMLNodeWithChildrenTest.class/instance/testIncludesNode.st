tests
testIncludesNode
	| nodeWithNodes |

	nodeWithNodes := self newNodeWithNodes.
	nodeWithNodes nodes do: [:each |
		self assert: (nodeWithNodes includesNode: each)].
	self deny: (nodeWithNodes includesNode: self newNode).