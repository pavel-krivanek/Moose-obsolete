tests
testLevels
	| hg |
	hg := self setupSimpleNumbersHiGraph.
	self assert: (hg nodeWrapping: 1) level equals: 0.
	self assert: (hg nodeWrapping: 1) isRootNode.
	self assert: (hg nodeWrapping: 2) level equals: 0.
	self assert: (hg nodeWrapping: 3) level equals: 0.
	self assert: (hg nodeWrapping: 34) level equals: 1.
	self assert: (hg nodeWrapping: 25) level equals: 1.
	self assert: (hg nodeWrapping: 36) level equals: 1.
	self assert: (hg nodeWrapping: 12) level equals: 1