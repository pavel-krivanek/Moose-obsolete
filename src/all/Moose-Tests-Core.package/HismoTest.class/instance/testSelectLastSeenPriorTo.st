testing - class history
testSelectLastSeenPriorTo
	self
		assert: (testData simpleHistory allClassHistories selectLastSeenPriorTo: testData simpleHistory first) size
		equals: 0.
	self
		assert: (testData simpleHistory allClassHistories selectLastSeenPriorTo: testData simpleHistory last) size
		equals: 2