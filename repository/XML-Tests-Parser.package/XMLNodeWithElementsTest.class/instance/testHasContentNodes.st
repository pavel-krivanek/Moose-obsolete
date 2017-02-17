tests
testHasContentNodes
	| nodeWithElements |

	nodeWithElements := self newNodeWithElements.
	self assert: nodeWithElements hasContentNodes.
	nodeWithElements allElementsDo: [:element |
		self assert: element hasContentNodes = element contentNodes notEmpty].