tests
testNodeWrapping
	| hg |
	hg := self setupSimpleNumbersHiGraph.
	self assert: (hg nodeWrapping: 999) equals: nil.
	self assert: (hg nodesDict at: 1) equals: (hg nodeWrapping: 1).
	self assert: (hg nodesDict at: 24) equals: (hg nodeWrapping: 24)