tests
testNodeAfter
	| nodeWithNodes nodeAfter |

	nodeWithNodes := self newNodeWithNodes.
	nodeAfter := nil.
	nodeWithNodes nodes reverseDo: [:each |
		self assert: (nodeWithNodes nodeAfter: each) = nodeAfter.
		nodeAfter := each].
	self assert: (nodeWithNodes nodeAfter: self newNode) isNil.