tests
testHasStringNodes
	| nodeWithElements |

	nodeWithElements := self newNodeWithElements.
	self deny: nodeWithElements hasStringNodes.
	nodeWithElements allElementsDo: [:element |
		self assert: element hasStringNodes = element stringNodes notEmpty].