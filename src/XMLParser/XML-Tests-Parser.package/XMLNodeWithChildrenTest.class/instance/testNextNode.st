tests
testNextNode
	| nodeWithNodes nextNode |

	super testNextNode.
	nodeWithNodes := self newNodeWithNodes.
	nextNode := nil.
	nodeWithNodes nodes reverseDo: [:each |
		self assert: each nextNode = nextNode.
		nextNode := each].