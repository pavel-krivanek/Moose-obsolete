testing - class history
testSelectLastSeenPriorToOrIn
	self
		assert: (testData simpleHistory allClassHistories selectLastSeenPriorToOrIn: testData simpleHistory first) size
		equals: 0.
	self
		assert: (testData simpleHistory allClassHistories selectLastSeenPriorToOrIn: testData simpleHistory last) size
		equals: 6